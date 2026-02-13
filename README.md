# Obfuscation Tool V2
Python Source Code Obfuscator (CLI)
�
￼ ￼ ￼ 

A simple Python CLI tool that obfuscates Python scripts using multiple layers of compression, encoding, and basic encryption. This makes your source code harder to read while keeping it fully executable.
Disclaimer
This tool is for educational and basic code-protection purposes only.
Obfuscation is not encryption and does not guarantee real security.
Features
4 obfuscation levels
Clean CLI interface using rich
Fast and lightweight
Cross-platform (Windows, Linux, macOS, Termux)
Works with any Python script
Simple setup
Project Structure
Copy code
Text
Obfuscation-ToolV2/
│── Obfuscator_ToolV2.py
│── README.md
│── requirements.txt
Requirements
Python 3.8 or higher
Dependency:
Copy code
Bash
pip install rich
The script attempts to install rich automatically if it is missing.
Installation (Termux)
Copy code
Bash
pkg update && pkg upgrade -y
pkg install git python openssh -y
pip install rich
Clone Repository
Copy code
Bash
git clone https://github.com/rinquicklyofficial/Obfuscation-ToolV2.git
cd Obfuscation-ToolV2
Usage
Copy code
Bash
python Obfuscator_ToolV2.py
Follow the prompts:
Copy code
Text
Enter INPUT file name: your_script.py  
Enter OUTPUT file name: protected.py  
Enter obfuscation level (1,2,3,4): 4
Run the obfuscated file:
Copy code
Bash
python protected.py
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
XOR encryption → Zlib → LZMA → Gzip → Base64
Higher level increases obfuscation strength and file size.
Example
Copy code
Python
print("Hello World")
Copy code
Python
import base64, zlib
exec(zlib.decompress(base64.b64decode("eJyrVkrLz1eyUkpKLFKqBQA2gQVy"))[::-1])
How It Works
Reads the script as raw bytes
Applies compression and encoding layers
Wraps the result in a loader script
The loader decodes and executes the original code at runtime
Limitations
This is not encryption
The output can be reverse-engineered
Do not store secrets in obfuscated code
Some antivirus software may flag files that use exec()
Common Issues
ModuleNotFoundError: rich
Copy code
Bash
pip install rich
Permission denied
Copy code
Bash
chmod +x Obfuscator_ToolV2.py
License
MIT License. Free to use, modify, and distribute.
Author
Rin Quickly
Telegram Bot: https://t.me/RinquicklyBot�
GitHub: https://github.com/rinquicklyofficial�
Support
If you find this project useful, consider starring the repository on GitHub.
