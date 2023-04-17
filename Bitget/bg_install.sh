#!/bin/sh

mkdir -p /home/python1/BgTradingBot
mv bgbot.zip /home/python1/BgTradingBot
cd /home/python1/BgTradingBot
unzip bgbot.zip
cp -rf bgbot/*.* ./
cp -rf bgbot/config.ini ./
rm -rf bgbot.zip bgbot
tar zxvf ccxt.tar.gz
rm -rf ccxt.tar.gz
cp -rf printMoney1.service /lib/systemd/system/
systemctl daemon-reload
systemctl enable printMoney1.service
rm -rf printMoney1.service

