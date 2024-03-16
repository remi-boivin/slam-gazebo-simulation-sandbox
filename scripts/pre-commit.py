#!/usr/bin/env python

import json
# Load the JSON coverage data from the file named coverage.json
file_path = './test_results/coverage.json'  # Adjust the file path as necessary

# Open and read the JSON data from the file
with open(file_path, 'r') as file:
    coverage_data = file.read()

data = json.loads(coverage_data)

# Initialize counters
total_lines = 0
covered_lines = 0

# Iterate over each file in the coverage data
for file in data['files']:
    # Iterate over each line in the file
    for line in file['lines']:
        # Check if the line is not marked as non-code
        if not line.get('gcovr/noncode', False):
            total_lines += 1
            # Check if the line was covered (executed at least once)
            if line['count'] > 0:
                covered_lines += 1

# Calculate coverage percentage
if total_lines > 0:
    coverage_percentage = (covered_lines / total_lines) * 100
else:
    coverage_percentage = 0.0

if coverage_percentage >= 90:
    print("All Good")
    exit(0)
elif coverage_percentage >= 80 and coverage_percentage < 90:
    print(f"The tests cover {coverage_percentage:.2f}%")
    exit(0)
else:
    print(f"The tests cover only {coverage_percentage:.2f}%")
    exit(1)
