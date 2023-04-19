#!/bin/sh

mkdir -p /home/python1/BgHFTTradingBot
mv bgHFTbot.zip /home/python1/BgHFTTradingBot
cd /home/python1/BgHFTTradingBot
unzip bgHFTbot.zip
cp -rf bgHFTbot/*.* ./
cp -rf bgHFTbot/config.ini ./
rm -rf bgHFTbot.zip bgHFTbot
tar zxvf ccxt.tar.gz
rm -rf ccxt.tar.gz
cp -rf printMoney5.service /lib/systemd/system/
systemctl daemon-reload
systemctl enable printMoney5.service
rm -rf printMoney5.service

