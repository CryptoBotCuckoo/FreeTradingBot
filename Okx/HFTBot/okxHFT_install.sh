#!/bin/sh

mkdir -p /home/python1/OkxHFTTradingBot
mv okxHFTbot.zip /home/python1/OkxHFTTradingBot
cd /home/python1/OkxHFTTradingBot
unzip okxHFTbot.zip
cp -rf okxHFTbot/*.* ./
cp -rf okxHFTbot/config.ini ./
rm -rf okxHFTbot.zip okxHFTbot
tar zxvf ccxt.tar.gz
rm -rf ccxt.tar.gz
cp -rf printMoney4.service /lib/systemd/system/
systemctl daemon-reload
systemctl enable printMoney4.service
rm -rf printMoney4.service
pip3 install websockets