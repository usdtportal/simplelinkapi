## Requirements

Before you begin, make sure your server has the following dependencies installed:

- **g++** (for compiling C++ code)
- **curl** (for downloading files from the internet)
- **php** (version 7.0 or higher)
- **php-devel** (PHP development package)
- **php-config** (to locate PHP configuration details)
- **openssl-devel** (for OpenSSL support)
- **PHP-CPP** (C++ wrapper library for PHP extensions)

If any of these packages are missing, follow the installation steps for your specific operating system below.

---

### AlmaLinux

1. **SSH into your server**
   ```bash
   ssh your_username@your_server_ip
   ```

2. **Install Required Packages**
   ```bash
   sudo yum install -y g++ curl php php-devel openssl-devel
   ```

3. **Install PHP-CPP Library**
   ```bash
   # Clone PHP-CPP from GitHub
   git clone https://github.com/CopernicaMarketingSoftware/PHP-CPP.git
   cd PHP-CPP

   # Compile and install PHP-CPP as a shared library
   make
   sudo make install
   ```

4. **Run the Setup Script**
   ```bash
   bash <(curl -s https://raw.githubusercontent.com/usdtportal/simplelinkapi/main/setup.sh)
   ```

5. **Restart the Web Server or PHP-FPM as needed**
   - For **PHP-FPM**:
     ```bash
     sudo systemctl restart php-fpm
     ```
   - For **Apache (httpd)**:
     ```bash
     sudo systemctl restart httpd
     ```
   - For **Nginx** (if using PHP-FPM with Nginx):
     ```bash
     sudo systemctl restart nginx
     sudo systemctl restart php-fpm
     ```

6. **Verify Installation**
   ```bash
   php -m | grep usdtportal_coding
   ```

---

### CentOS

1. **SSH into your server**
   ```bash
   ssh your_username@your_server_ip
   ```

2. **Install Required Packages**
   ```bash
   sudo yum install -y g++ curl php php-devel openssl-devel
   ```

3. **Install PHP-CPP Library**
   ```bash
   # Clone PHP-CPP from GitHub
   git clone https://github.com/CopernicaMarketingSoftware/PHP-CPP.git
   cd PHP-CPP

   # Compile and install PHP-CPP as a shared library
   make
   sudo make install
   ```

4. **Run the Setup Script**
   ```bash
   bash <(curl -s https://raw.githubusercontent.com/usdtportal/simplelinkapi/main/setup.sh)
   ```

5. **Restart the Web Server or PHP-FPM as needed**
   - For **PHP-FPM**:
     ```bash
     sudo systemctl restart php-fpm
     ```
   - For **Apache (httpd)**:
     ```bash
     sudo systemctl restart httpd
     ```
   - For **Nginx** (if using PHP-FPM with Nginx):
     ```bash
     sudo systemctl restart nginx
     sudo systemctl restart php-fpm
     ```

6. **Verify Installation**
   ```bash
   php -m | grep usdtportal_coding
   ```

---

### Ubuntu

1. **SSH into your server**
   ```bash
   ssh your_username@your_server_ip
   ```

2. **Install Required Packages**
   ```bash
   sudo apt update
   sudo apt install -y g++ curl php php-dev openssl libssl-dev
   ```

3. **Install PHP-CPP Library**
   ```bash
   # Clone PHP-CPP from GitHub
   git clone https://github.com/CopernicaMarketingSoftware/PHP-CPP.git
   cd PHP-CPP

   # Compile and install PHP-CPP as a shared library
   make
   sudo make install
   ```

4. **Run the Setup Script**
   ```bash
   bash <(curl -s https://raw.githubusercontent.com/usdtportal/simplelinkapi/main/setup.sh)
   ```

5. **Restart the Web Server or PHP-FPM as needed**
   - For **PHP-FPM**:
     ```bash
     sudo systemctl restart php-fpm
     ```
   - For **Apache (apache2)**:
     ```bash
     sudo systemctl restart apache2
     ```
   - For **Nginx** (if using PHP-FPM with Nginx):
     ```bash
     sudo systemctl restart nginx
     sudo systemctl restart php-fpm
     ```

6. **Verify Installation**
   ```bash
   php -m | grep usdtportal_coding
   ```

---

### cPanel

1. **Access cPanel**: Log in to cPanel and open **Terminal** if SSH access is enabled by your hosting provider.

2. **Install Required Packages**: Contact your hosting provider if you cannot install the following dependencies directly.

   - **g++**
   - **curl**
   - **php-devel**
   - **php-config**
   - **openssl-devel**
   - **PHP-CPP**

3. **Install PHP-CPP Library** by following the steps in [Install PHP-CPP Library](#install-php-cpp-library). This may require SSH access and permissions from your hosting provider.

4. **Run the Setup Script**:
   ```bash
   bash <(curl -s https://raw.githubusercontent.com/usdtportal/simplelinkapi/main/setup.sh)
   ```

5. **Verify Module Loading**: cPanel often automatically reloads PHP after configuration changes. You can verify if the module is active by running a PHP script or checking the loaded modules.

---
