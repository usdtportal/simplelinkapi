#!/bin/bash

# Check PHP version
php_version=$(php -r 'echo PHP_VERSION;')
required_version="7.0"

# Function to compare versions
version_compare() {
    printf '%s\n%s' "$1" "$2" | sort -V | head -n1
}

if [[ $(version_compare "$php_version" "$required_version") != "$required_version" ]]; then
    echo "Error: Supported PHP versions are 7.0 and higher. Current PHP version is $php_version."
    exit 1
else
    echo "PHP version $php_version is supported."
fi

# Download module from GitHub
module_url="https://github.com/usdtportal/simplelinkapi/raw/refs/heads/main/usdtportal_coding.so"
module_file="usdtportal_coding.so"
echo "Downloading module from $module_url..."
curl -L -o "$module_file" "$module_url"

# Find PHP modules directory
php_modules_dir=$(php -i | grep '^extension_dir' | awk '{print $3}')
if [[ -z "$php_modules_dir" ]]; then
    echo "Error: Unable to find PHP modules directory."
    exit 1
fi
echo "PHP modules directory: $php_modules_dir"

# Move the module to PHP modules directory
mv "$module_file" "$php_modules_dir/"
echo "Module moved to $php_modules_dir."

# Find php.ini directory
php_ini_dir=$(php --ini | grep 'Scan for additional .ini files in' | awk -F': ' '{print $2}')
if [[ -z "$php_ini_dir" ]]; then
    echo "Error: Unable to find php.ini directory."
    exit 1
fi
echo "php.ini directory: $php_ini_dir"

# Create a new configuration file usdtportal.ini and load the module
echo "extension=$module_file" > "$php_ini_dir/usdtportal.ini"
echo "New configuration file created in $php_ini_dir/usdtportal.ini and module loaded."

echo "Installation completed successfully."
