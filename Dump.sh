#!/bin/sh

clear
echo "
██████╗ ██╗   ██╗███╗   ███╗██████╗ ███████╗██████╗ ██╗  ██╗
██╔══██╗██║   ██║████╗ ████║██╔══██╗██╔════╝██╔══██╗██║ ██╔╝
██║  ██║██║   ██║██╔████╔██║██████╔╝███████╗██║  ██║█████╔╝ 
██║  ██║██║   ██║██║╚██╔╝██║██╔═══╝ ╚════██║██║  ██║██╔═██╗ 
██████╔╝╚██████╔╝██║ ╚═╝ ██║██║     ███████║██████╔╝██║  ██╗
╚═════╝  ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚══════╝╚═════╝ ╚═╝  ╚═╝
                DumpSDK • NepMods
"

command -v python3 >/dev/null 2>&1 || apt install -y python3
command -v git >/dev/null 2>&1 || pkg install -y git
python3 -c "import tqdm" >/dev/null 2>&1 || pip install tqdm

[ -d DumpSDK ] || git clone https://github.com/NepMods/DumpSDK.git

cd DumpSDK || exit 1
python3 Dump.py

