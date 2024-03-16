#!/bin/bash

# Exit script if any command fails
set -e

# Update package list
echo "Upgrading package list..."
# sudo apt-get update && sudo apt upgrade -y

# # Install necessary packages
# echo "Installing necessary packages..."
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# nvm install 21.7.1

echo "Configuring hooks..."
echo "
#!/bin/sh
. \".husky/_/husky.sh\"

# Define the local directory for storing test results and coverage results

# Create the local directory if it doesn't exist
mkdir -p \"./test_results\"

# Run the Docker container with the volume mapping

docker run --rm -v \"./test_results:/results\" \"ros\" bash -c \"\
    # Command to run tests and generate coverage report here, e.g.,
    colcon test && \
    colcon test-result --all --verbose && \
    lcov --directory . --capture --output-file coverage.info && \
    lcov --extract coverage.info '*/src/*' --output-file coverage_filtered.info &&
    genhtml coverage_filtered.info --output-directory /results &&
    lcov --list coverage.info && \
    gcovr --root . --json --output=/results/coverage.json && \
    cp coverage.info /results/\"

# Check if the test run was successful based on exit status
if [ $? -eq 0 ]; then
    echo \"Tests passed successfully.\"
    python3 scripts/pre-commit.py
else
    echo \"Some tests failed.\"
fi

# Further analysis can be done here by inspecting test result files
# in ./test_results if your test framework generates such files.
echo \"Test and coverage results are available in ./test_results\"
" > .husky/pre-commit

echo "Environment setup complete!"

