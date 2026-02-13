# Obfuscation Tool V2
**Python Source Code Obfuscator (CLI)**

<p align="center">
  <img src="https://img.shields.io/badge/python-3.8%2B-blue.svg">
  <img src="https://img.shields.io/badge/license-MIT-green.svg">
  <img src="https://img.shields.io/badge/platform-Termux%20%7C%20Linux%20%7C%20Windows-success.svg">
</p>

Obfuscation Tool V2 is a Python-based CLI tool designed to protect your Python scripts.  
It obfuscates code using multiple layers of compression, encoding, and basic encryption to make it harder to read while keeping it executable.

**Disclaimer:** This tool is for educational and code-protection purposes only. Obfuscation is **not encryption** and does not guarantee complete security.

---

## Features

- Four obfuscation levels to choose from
- Clean CLI interface using `rich`
- Cross-platform support (Windows, Linux, macOS, Termux)
- Works with any Python script
- Lightweight and fast

---

## Project Structure

```text
Obfuscation-ToolV2/
│── Obfuscator_ToolV2.py
│── README.md
│── requirements.txt
```
Clone Repository
# Copy code
```Bash
git clone https://github.com/rinquicklyofficial/Obfuscation-ToolV2.git
cd Obfuscation-ToolV2```
Usage
Run the obfuscator:
# Copy code
```Bash
python Obfuscator_ToolV2.py```
Follow the interactive prompts:
Copy code
Text
Enter INPUT file name: your_script.py
Enter OUTPUT file name: protected.py
Enter obfuscation level (1,2,3,4): 4
Run the resulting obfuscated file:
# Copy code
```Bash
python Obfuscator_ToolV2.py```
Obfuscation Levels
Level
Technique
1
Reverse bytes → Zlib → Base64
2
Reverse bytes → Zlib → Gzip → Base64
3
Reverse bytes → Zlib → LZMA → Gzip → Base64
4
XOR Encryption → Zlib → LZMA → Gzip → Base64
Higher levels increase obfuscation strength and file size.
Example
Original script:
# Copy code
```Python
print("Hello World")```
Obfuscated script (example output):
Copy code
```Python
import base64, zlib
exec(zlib.decompress(base64.b64decode("eJyrVkrLz1eyUkpKLFKqBQA2gQVy"))[::-1])```
How It Works
Reads the input script as raw bytes
Applies compression and encoding layers
Optionally applies XOR encryption for level 4
Wraps the result in a loader script
Loader decodes and executes the original code at runtime
Limitations
Obfuscation is not real encryption
Output can be reverse-engineered
Do not store secrets in obfuscated scripts
Some antivirus software may flag files using exec()
Common Issues
ModuleNotFoundError: rich
Copy code
Bash
```pip install rich```
Permission denied
Copy code
Bash
```chmod +x Obfuscator_ToolV2.py```
License
This project is licensed under the MIT License. You are free to use, modify, and distribute it.
Author
Rin Quickly
Telegram Bot: https://t.me/RinquicklyBot�
GitHub: https://github.com/rinquicklyofficial�
Support
If you find this tool useful, please star the repository on GitHub.
