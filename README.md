## Installation

You can install the script by running one of the following commands in your terminal:

**Using `wget`:**

```bash
sudo bash <(wget -qO- https://github.com/decagondev/ft-install/raw/refs/heads/main/install.sh)
```

**Using `curl`:**

```bash
sudo bash <(curl -fsSL https://github.com/decagondev/ft-install/raw/refs/heads/main/install.sh)
```

### Troubleshooting

If you get errors about `/dev/fd/nn` can not be found. Where `nn` is a number. try a nother approach.

**Using `wget`:**
```bash
wget -qO- https://github.com/decagondev/ft-install/raw/refs/heads/main/install.sh > /tmp/install_focustracker.sh && sudo bash /tmp/install_focustracker.sh
```

**Using `curl`:**
```bash
curl -L https://github.com/decagondev/ft-install/raw/refs/heads/main/install.sh > /tmp/install_focustracker.sh && sudo bash /tmp/install_focustracker.sh
```
