#!/bin/bash
cd /home/container

# Make internal Docker IP address available to processes.
INTERNAL_IP=$(ip route get 1 | awk '{print $(NF-2);exit}')
export INTERNAL_IP

# Print current Python version
python --version

# Check if playwright module is installed
if python -c "import importlib.util; exit(0 if importlib.util.find_spec('playwright') else 1)"; then
    echo "Playwright module detected. Installing browsers..."
    python -m playwright install --with-deps
else
    echo "Playwright module not found. Skipping browser installation."
fi

# Replace Startup Variables
MODIFIED_STARTUP=$(echo -e $(echo -e ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g'))
echo -e ":/home/container$ ${MODIFIED_STARTUP}"

# Run the Server
eval ${MODIFIED_STARTUP}