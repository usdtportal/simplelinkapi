#!/bin/bash

# Check if required dependencies are installed
dependencies=("g++" "curl" "php" "php-devel" "php-config" "openssl-devel")

echo "Checking for required dependencies..."
missing_dependencies=0
for dep in "${dependencies[@]}"; do
    if ! command -v "$dep" &> /dev/null; then
        echo "Error: $dep is not installed."
        missing_dependencies=$((missing_dependencies + 1))
    fi
done

# Check if PHP-CPP is installed
phpcpp_installed=0
if [ -f "/usr/local/lib/libphpcpp.a" ] || [ -f "/usr/local/lib/libphpcpp.so" ] || [ -f "/usr/lib64/libphpcpp.a" ] || [ -f "/usr/lib64/libphpcpp.so" ]; then
    echo "PHP-CPP is installed."
else
    echo "Error: PHP-CPP library is not found. Please install PHP-CPP and try again."
    phpcpp_installed=1
fi

# If any dependencies or PHP-CPP are missing, exit
if [ "$missing_dependencies" -ne 0 ] || [ "$phpcpp_installed" -ne 0 ]; then
    echo "Please install the missing dependencies and try again."
    exit 1
else
    echo "All required dependencies are installed."
fi

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
curl -L -o "$module
