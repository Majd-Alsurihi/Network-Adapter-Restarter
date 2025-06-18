# 🚀 Network Adapter Restarter

A simple PowerShell utility to quickly restart any network adapter (Wi-Fi, Ethernet, etc.) on your Windows machine. This is useful for troubleshooting connectivity issues without manually navigating through Windows settings.

---

## ✨ Features

- 🔢 Lists all network adapters on your system with easy-to-read numbering.
- 🖱️ Lets you select an adapter to restart (disable and re-enable).
- 🔒 Automatically requests administrator privileges if needed.
- 🌐 Works with both Wi-Fi and Ethernet adapters.
- 🚫 No need to permanently change your system’s PowerShell execution policy.

---

## 🖥️ Requirements

- Windows 10 or later
- PowerShell 5.1 or later
- Administrator privileges

---

## ⚙️ How It Works

1. The script lists all network adapters (Wi-Fi, Ethernet, etc.) with a number.
2. You enter the number of the adapter you want to restart.
3. The script disables the selected adapter, waits 3 seconds, then enables it again.

---

## 📝 Usage

### 1. Download or Clone the Repository

Download or clone this repository to your computer.

### 2. Files Included

- `NetworkAdapterRestarter.ps1` — The main PowerShell script.
- `RunNetworkAdapterRestarter.bat` — A batch file that launches the script with the correct permissions and execution policy.

### 3. Run the Tool

1. **Double-click** `RunNetworkAdapterRestarter.bat`.
2. If prompted, allow the script to run as administrator.
3. A PowerShell window will open, listing your network adapters.
4. Enter the number of the adapter you want to restart and press Enter.
5. Wait for the script to finish.

---

## 🛠️ Troubleshooting

- ❌ **Script won’t run:**  
  Make sure you are running as Administrator and using the batch file.
- 🔍 **Adapter not listed:**  
  The script lists all adapters. If you don’t see your adapter, ensure it’s not hidden or disabled in Device Manager.
- 🔑 **Permission errors:**  
  The script must be run with administrator privileges to manage network adapters.

---

## 🔒 Security

- The script does **not** change any system settings except temporarily disabling/enabling the selected network adapter.
- No data is collected or sent anywhere.

---

## 📄 License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.

---

## 🤝 Contributing

Pull requests and suggestions are welcome!

---

## 👤 Author

Majd Alsurihi

---

## ⚠️ Disclaimer

Use at your own risk. Disabling/enabling network adapters may interrupt active connections.