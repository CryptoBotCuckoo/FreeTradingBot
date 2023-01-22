#!/bin/sh

mkdir -p /home/python1/OkxTradingBot
mv okxbot.zip /home/python1/OkxTradingBot
cd /home/python1/OkxTradingBot
unzip okxbot.zip
cp -rf okxbot/*.* ./
cp -rf okxbot/config.ini ./
rm -rf okxbot.zip okxbot
tar zxvf ccxt.tar.gz
rm -rf ccxt.tar.gz
cp -rf printMoney1.service /lib/systemd/system/
systemctl daemon-reload
systemctl enable printMoney1.service
rm -rf printMoney1.service

