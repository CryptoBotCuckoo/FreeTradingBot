# FreeTradingBot
提供各个交易所的交易机器人(Provide trading robots for each exchange)
- [x] Binance(期货(swap), 现货(spot))
- [x] Okx(期货(swap), 现货(spot))

# 计划
- [x] 2023年1月10号之前，发布Binance tradingview直连机器人。
- [x] 2023年1月15号之前，发布Okx tradingview直连机器人。
 
# 安装部署
- [x] 服务器要求：Centos8操作系统, RAM(内存) >= 2G
 
# Tradingview 策略对接格式
- [x] 发布机器人之后，作者会提供一些Tradingview策略，大家可以使用，也可以使用自己的Tradingview策略对接。

{
	"passphrase": "telegram@gogo2rich",
	"exchange": "{{exchange}}",
    "ticker": "{{ticker}}",
	"strategy": "strategy",
	"robot_id": "freebot",
	"period": "1h",
	"trade_mode": "swap_usdt",
	"trade_side": "wt_short",
	"order_price": "{{strategy.order.price}}",
	"msg_from": "tv",
	"order_action": "{{strategy.order.comment}}",
    "time": "{{timenow}}",
	"profit_percent": "0.8",
	"loss_percent": "3.5",
    "leverage": "20",
	"usdt_percent": "0.5",
    "trade_qty": "{{strategy.order.contracts}}",
	"backhand": "0",
    "sell_percent": "100"	
}

- [x] 需要关注的参数：
- [x] period:取值可以是1h，15m等
- [x] trade_side:如果只做空(wt_short), 只做多(wt_long), 多空双向(wt_both)
- [x] leverage:杠杆倍数
- [x] usdt_percent:按本金开单，如果本金是1000U, 这里的0.5, 就是1000U * 0.5% = 5U
- [x] trade_qty:根据策略信号中的开单平仓单位，如果配置了该参数，优先级高于usdt_percent参数，这里是按照1倍的交易合约个数，如果带上杠杆需要除以杠杆倍数
- [x] backhand：反手操作，如果设置为1，如果策略属于多空切换，则改参数设置成1. 否则设置成0
- [x] 其他参数暂时不用关注，这个模板是合约模板
# 免责声明
- [x] 本项目免费提供交易机器人给大家使用，中途遇到bug可以提交Issues，或者在交流群告知作者，但使用中造成的亏损与作者无关。

# 捐赠
- [x] 本项目是开源项目，大家的支持也是对作者最大的动力。
- [x] TRC20 USDT:TEyNzxyGuCHiesy6fr9FW81P42VE4evVXM

# 作者联系方式
- [x] https://t.me/gogo2rich

# 视频介绍
- [x] https://www.youtube.com/watch?v=p_FB_VDH9h0&ab_channel=%E9%87%8F%E5%8C%96%E9%97%A8%E5%BE%92 第一期总体介绍
- [x] https://www.youtube.com/watch?v=RTYUaHBnt1M&t=235s 第三期 免费机器人安装部署教程 
