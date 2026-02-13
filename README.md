<a name="readme-top"></a>

<div align="center">
  <img src="https://img.shields.io/badge/Python-3.8+-blue?style=for-the-badge&logo=python&logoColor=white" alt="Python Version">
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License">
  <img src="https://img.shields.io/badge/Platform-Termux%20%7C%20Linux%20%7C%20Windows-success?style=for-the-badge" alt="Platform">
  <img src="https://img.shields.io/badge/Maintained%3F-yes-brightgreen?style=for-the-badge" alt="Maintained">
</div>

<br />
<div align="center">
  <h1 align="center">Obfuscation Tool V2</h1>
  <p align="center">
    <b>Advanced Python Source Code Obfuscator (CLI)</b>
    <br />
    Protect your logic with multi-layer compression, encoding, and XOR encryption.
    <br />
    <a href="https://github.com/rinquicklyofficial/Obfuscation-ToolV2/issues">Report Bug</a>
    ·
    <a href="https://t.me/RinquicklyBot">Get Support</a>
  </p>
</div>


[![Test Obfuscator Tool](https://github.com/rinquicklyofficial/Obfuscation-ToolV2/actions/workflows/TestTool.yml/badge.svg)](https://github.com/rinquicklyofficial/Obfuscation-ToolV2/actions/workflows/TestTool.yml)
---

## 📖 Overview

**Obfuscation Tool V2** is a lightweight yet powerful CLI utility designed to transform readable Python scripts into obfuscated payloads. By layering `Zlib`, `Gzip`, `LZMA`, and `Base64`, it makes static analysis significantly harder while ensuring the script remains fully functional and executable.

> [!IMPORTANT]
> **Disclaimer:** This tool is for educational and code-protection purposes. Obfuscation is **not** true encryption; determined actors can eventually deobfuscate the code. Never store plain-text secrets (API keys, passwords) in your source code.

---

## ✨ Key Features

* 🚀 **4 Levels of Protection:** Choose the intensity of obfuscation based on your needs.
* 🎨 **Rich CLI:** Beautiful terminal interface powered by the `rich` library.
* 📦 **Zero Dependency Payloads:** The obfuscated output runs on standard Python without needing this tool installed.
* 🛡️ **XOR Encryption:** Level 4 includes a dynamic XOR layer for added complexity.
* 📱 **Cross-Platform:** Runs seamlessly on Windows, Linux, macOS, and Termux.

---

## ⚙️ How It Works

The tool follows a recursive transformation pipeline to wrap your code:

1.  **Read:** Ingests your script as raw bytes.
2.  **Transform:** Reverses byte order or applies XOR keys.
3.  **Compress:** Shrinks the payload using `Zlib` / `Gzip` / `LZMA`.
4.  **Encode:** Converts binary data into `Base64` strings.
5.  **Inject:** Wraps the final string into an `exec()` loader.



---

## 🚀 Getting Started

### Prerequisites
Make sure you have Python 3.8 or higher installed.

```bash
pip install rich
chmod +x setup.sh
./setup.sh
