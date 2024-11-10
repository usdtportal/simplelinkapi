
### AlmaLinux

```bash
# Connect to your server
ssh your_username@your_server_ip

# Run the setup script from GitHub
bash <(curl -s https://raw.githubusercontent.com/usdtportal/simplelinkapi/main/setup.sh)

# Restart PHP-FPM if required
sudo systemctl restart php-fpm
```

---

### CentOS

```bash
# Connect to your server
ssh your_username@your_server_ip

# Run the setup script from GitHub
bash <(curl -s https://raw.githubusercontent.com/usdtportal/simplelinkapi/main/setup.sh)

# Restart PHP-FPM if required
sudo systemctl restart php-fpm
```

---

### Ubuntu

```bash
# Connect to your server
ssh your_username@your_server_ip

# Run the setup script from GitHub
bash <(curl -s https://raw.githubusercontent.com/usdtportal/simplelinkapi/main/setup.sh)

# Restart Apache or PHP-FPM as needed
sudo systemctl restart apache2   # For Apache
sudo systemctl restart php-fpm   # For PHP-FPM
```

---

### cPanel

1. **Access cPanel**: Log in to cPanel and open **Terminal** if your hosting provider enables SSH access.
2. **Run the Script**: In the terminal, use:
   ```bash
   bash <(curl -s https://raw.githubusercontent.com/usdtportal/simplelinkapi/main/setup.sh)
   ```
3. **Check Module Loading**: cPanel may auto-reload PHP, but you can confirm by checking PHP modules or contacting support.
