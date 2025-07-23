#!/bin/bash
echo "[+] Activating BisQue virtual environment..."

echo "[+] Copying code from /mnt/bisque-dev to /source (excluding data and modules)..."
cp -r /mnt/bisque-dev/config-defaults/* /source/config-defaults/ 

source /usr/lib/bisque/bin/activate

echo "[+] Reinstalling BisQue server package..."
cd /source

bq-admin server stop && cd bqserver && python setup.py install && cd .. && bq-admin deploy && bq-admin server start

echo "✅ BisQue restart complete."199