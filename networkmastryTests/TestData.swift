//
//  TestData.swift
//  networkmastryTests
//
//  Created by Pardip Bhatti on 24/09/23.
//

import Foundation
// 20 coins
let testCoinsData: Data = """
[
  {
    "id": "bitcoin",
    "symbol": "btc",
    "name": "Bitcoin",
    "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
    "current_price": 26572,
    "market_cap": 518048464893,
    "market_cap_rank": 1,
    "fully_diluted_valuation": 558045928493,
    "total_volume": 5652089610,
    "high_24h": 26635,
    "low_24h": 26550,
    "price_change_24h": -10.864933753215155,
    "price_change_percentage_24h": -0.04087,
    "market_cap_change_24h": -351570907.75891113,
    "market_cap_change_percentage_24h": -0.06782,
    "circulating_supply": 19494843,
    "total_supply": 21000000,
    "max_supply": 21000000,
    "ath": 69045,
    "ath_change_percentage": -61.51199,
    "ath_date": "2021-11-10T14:24:11.849Z",
    "atl": 67.81,
    "atl_change_percentage": 39089.42571,
    "atl_date": "2013-07-06T00:00:00.000Z",
    "roi": null,
    "last_updated": "2023-09-24T17:14:58.046Z",
    "price_change_percentage_24h_in_currency": -0.040871439030177724
  },
  {
    "id": "ethereum",
    "symbol": "eth",
    "name": "Ethereum",
    "image": "https://assets.coingecko.com/coins/images/279/large/ethereum.png?1595348880",
    "current_price": 1591.01,
    "market_cap": 191234810484,
    "market_cap_rank": 2,
    "fully_diluted_valuation": 191234810484,
    "total_volume": 2812742791,
    "high_24h": 1595.83,
    "low_24h": 1589.88,
    "price_change_24h": -1.156568552097724,
    "price_change_percentage_24h": -0.07264,
    "market_cap_change_24h": -275557171.0505371,
    "market_cap_change_percentage_24h": -0.14389,
    "circulating_supply": 120228044.090349,
    "total_supply": 120228044.090349,
    "max_supply": null,
    "ath": 4878.26,
    "ath_change_percentage": -67.3872,
    "ath_date": "2021-11-10T14:24:19.604Z",
    "atl": 0.432979,
    "atl_change_percentage": 367339.9145,
    "atl_date": "2015-10-20T00:00:00.000Z",
    "roi": {
      "times": 79.05097555319408,
      "currency": "btc",
      "percentage": 7905.097555319408
    },
    "last_updated": "2023-09-24T17:14:58.090Z",
    "price_change_percentage_24h_in_currency": -0.07264127464049247
  },
  {
    "id": "tether",
    "symbol": "usdt",
    "name": "Tether",
    "image": "https://assets.coingecko.com/coins/images/325/large/Tether.png?1668148663",
    "current_price": 0.999963,
    "market_cap": 83200692498,
    "market_cap_rank": 3,
    "fully_diluted_valuation": 83200692498,
    "total_volume": 6625944919,
    "high_24h": 1,
    "low_24h": 0.999529,
    "price_change_24h": -0.000208733624151969,
    "price_change_percentage_24h": -0.02087,
    "market_cap_change_24h": -19164998.1169281,
    "market_cap_change_percentage_24h": -0.02303,
    "circulating_supply": 83203741768.415,
    "total_supply": 83203741768.415,
    "max_supply": null,
    "ath": 1.32,
    "ath_change_percentage": -24.41815,
    "ath_date": "2018-07-24T00:00:00.000Z",
    "atl": 0.572521,
    "atl_change_percentage": 74.66956,
    "atl_date": "2015-03-02T00:00:00.000Z",
    "roi": null,
    "last_updated": "2023-09-24T17:10:00.916Z",
    "price_change_percentage_24h_in_currency": -0.020869771032602694
  },
  {
    "id": "binancecoin",
    "symbol": "bnb",
    "name": "BNB",
    "image": "https://assets.coingecko.com/coins/images/825/large/bnb-icon2_2x.png?1644979850",
    "current_price": 210.48,
    "market_cap": 32384407914,
    "market_cap_rank": 4,
    "fully_diluted_valuation": 42096995036,
    "total_volume": 168532398,
    "high_24h": 210.88,
    "low_24h": 209.9,
    "price_change_24h": -0.02737143368230477,
    "price_change_percentage_24h": -0.013,
    "market_cap_change_24h": -20586025.134449005,
    "market_cap_change_percentage_24h": -0.06353,
    "circulating_supply": 153856150,
    "total_supply": 153856150,
    "max_supply": 200000000,
    "ath": 686.31,
    "ath_change_percentage": -69.34572,
    "ath_date": "2021-05-10T07:24:17.097Z",
    "atl": 0.0398177,
    "atl_change_percentage": 528263.97275,
    "atl_date": "2017-10-19T00:00:00.000Z",
    "roi": null,
    "last_updated": "2023-09-24T17:14:58.811Z",
    "price_change_percentage_24h_in_currency": -0.013002624684221552
  },
  {
    "id": "ripple",
    "symbol": "xrp",
    "name": "XRP",
    "image": "https://assets.coingecko.com/coins/images/44/large/xrp-symbol-white-128.png?1605778731",
    "current_price": 0.508718,
    "market_cap": 27084651154,
    "market_cap_rank": 5,
    "fully_diluted_valuation": 50867741449,
    "total_volume": 296816804,
    "high_24h": 0.511224,
    "low_24h": 0.506565,
    "price_change_24h": -0.00137828915672622,
    "price_change_percentage_24h": -0.2702,
    "market_cap_change_24h": -99554839.85379028,
    "market_cap_change_percentage_24h": -0.36622,
    "circulating_supply": 53245240268,
    "total_supply": 99988414766,
    "max_supply": 100000000000,
    "ath": 3.4,
    "ath_change_percentage": -85.03509,
    "ath_date": "2018-01-07T00:00:00.000Z",
    "atl": 0.00268621,
    "atl_change_percentage": 18832.83126,
    "atl_date": "2014-05-22T00:00:00.000Z",
    "roi": null,
    "last_updated": "2023-09-24T17:14:56.482Z",
    "price_change_percentage_24h_in_currency": -0.27020184078605286
  },
  {
    "id": "usd-coin",
    "symbol": "usdc",
    "name": "USDC",
    "image": "https://assets.coingecko.com/coins/images/6319/large/usdc.png?1695374272",
    "current_price": 1,
    "market_cap": 25775819470,
    "market_cap_rank": 6,
    "fully_diluted_valuation": 25775841744,
    "total_volume": 1769500547,
    "high_24h": 1,
    "low_24h": 0.999281,
    "price_change_24h": 0.00022043,
    "price_change_percentage_24h": 0.02205,
    "market_cap_change_24h": 13833833,
    "market_cap_change_percentage_24h": 0.0537,
    "circulating_supply": 25777533477.6597,
    "total_supply": 25777555753.6835,
    "max_supply": null,
    "ath": 1.17,
    "ath_change_percentage": -14.74763,
    "ath_date": "2019-05-08T00:40:28.300Z",
    "atl": 0.877647,
    "atl_change_percentage": 13.91371,
    "atl_date": "2023-03-11T08:02:13.981Z",
    "roi": null,
    "last_updated": "2023-09-24T17:14:57.716Z",
    "price_change_percentage_24h_in_currency": 0.022046457266729096
  },
  {
    "id": "staked-ether",
    "symbol": "steth",
    "name": "Lido Staked Ether",
    "image": "https://assets.coingecko.com/coins/images/13442/large/steth_logo.png?1608607546",
    "current_price": 1591.15,
    "market_cap": 13884096937,
    "market_cap_rank": 7,
    "fully_diluted_valuation": 13884096937,
    "total_volume": 13958869,
    "high_24h": 1595.9,
    "low_24h": 1589.66,
    "price_change_24h": -1.2610860929883074,
    "price_change_percentage_24h": -0.07919,
    "market_cap_change_24h": -1896070.3085765839,
    "market_cap_change_percentage_24h": -0.01365,
    "circulating_supply": 8726257.96909123,
    "total_supply": 8726257.96909123,
    "max_supply": 8726257.96909123,
    "ath": 4829.57,
    "ath_change_percentage": -67.05394,
    "ath_date": "2021-11-10T14:40:47.256Z",
    "atl": 482.9,
    "atl_change_percentage": 229.50207,
    "atl_date": "2020-12-22T04:08:21.854Z",
    "roi": null,
    "last_updated": "2023-09-24T17:14:24.006Z",
    "price_change_percentage_24h_in_currency": -0.07919325668036178
  },
  {
    "id": "dogecoin",
    "symbol": "doge",
    "name": "Dogecoin",
    "image": "https://assets.coingecko.com/coins/images/5/large/dogecoin.png?1547792256",
    "current_price": 0.061562,
    "market_cap": 8682042685,
    "market_cap_rank": 8,
    "fully_diluted_valuation": 8682027922,
    "total_volume": 103660974,
    "high_24h": 0.061715,
    "low_24h": 0.061357,
    "price_change_24h": -0.000049570777242693,
    "price_change_percentage_24h": -0.08046,
    "market_cap_change_24h": -17660616.98776245,
    "market_cap_change_percentage_24h": -0.203,
    "circulating_supply": 141140816383.705,
    "total_supply": 141140576383.705,
    "max_supply": null,
    "ath": 0.731578,
    "ath_change_percentage": -91.59119,
    "ath_date": "2021-05-08T05:08:23.458Z",
    "atl": 0.0000869,
    "atl_change_percentage": 70687.5289,
    "atl_date": "2015-05-06T00:00:00.000Z",
    "roi": null,
    "last_updated": "2023-09-24T17:14:51.226Z",
    "price_change_percentage_24h_in_currency": -0.08045633490143332
  },
  {
    "id": "cardano",
    "symbol": "ada",
    "name": "Cardano",
    "image": "https://assets.coingecko.com/coins/images/975/large/cardano.png?1547034860",
    "current_price": 0.245003,
    "market_cap": 8586624540,
    "market_cap_rank": 9,
    "fully_diluted_valuation": 11025763293,
    "total_volume": 60092866,
    "high_24h": 0.246593,
    "low_24h": 0.244524,
    "price_change_24h": -0.000118464380045508,
    "price_change_percentage_24h": -0.04833,
    "market_cap_change_24h": -9769151.774608612,
    "market_cap_change_percentage_24h": -0.11364,
    "circulating_supply": 35045020830.3234,
    "total_supply": 45000000000,
    "max_supply": 45000000000,
    "ath": 3.09,
    "ath_change_percentage": -92.06229,
    "ath_date": "2021-09-02T06:00:10.474Z",
    "atl": 0.01925275,
    "atl_change_percentage": 1172.70133,
    "atl_date": "2020-03-13T02:22:55.044Z",
    "roi": null,
    "last_updated": "2023-09-24T17:14:59.298Z",
    "price_change_percentage_24h_in_currency": -0.04832883304642891
  },
  {
    "id": "solana",
    "symbol": "sol",
    "name": "Solana",
    "image": "https://assets.coingecko.com/coins/images/4128/large/solana.png?1640133422",
    "current_price": 19.49,
    "market_cap": 8038967605,
    "market_cap_rank": 10,
    "fully_diluted_valuation": 10873526560,
    "total_volume": 112138111,
    "high_24h": 19.65,
    "low_24h": 19.38,
    "price_change_24h": 0.089448,
    "price_change_percentage_24h": 0.46118,
    "market_cap_change_24h": 34303515,
    "market_cap_change_percentage_24h": 0.42854,
    "circulating_supply": 412747780.673495,
    "total_supply": 558283622.562303,
    "max_supply": null,
    "ath": 259.96,
    "ath_change_percentage": -92.50436,
    "ath_date": "2021-11-06T21:54:35.825Z",
    "atl": 0.500801,
    "atl_change_percentage": 3790.88711,
    "atl_date": "2020-05-11T19:35:23.449Z",
    "roi": null,
    "last_updated": "2023-09-24T17:14:53.678Z",
    "price_change_percentage_24h_in_currency": 0.46117798842603586
  },
  {
    "id": "the-open-network",
    "symbol": "ton",
    "name": "Toncoin",
    "image": "https://assets.coingecko.com/coins/images/17980/large/ton_symbol.png?1670498136",
    "current_price": 2.22,
    "market_cap": 7653962702,
    "market_cap_rank": 11,
    "fully_diluted_valuation": 11305409759,
    "total_volume": 12116052,
    "high_24h": 2.31,
    "low_24h": 2.21,
    "price_change_24h": -0.08285457628485515,
    "price_change_percentage_24h": -3.59106,
    "market_cap_change_24h": -306061438.07892895,
    "market_cap_change_percentage_24h": -3.84498,
    "circulating_supply": 3449133573.91469,
    "total_supply": 5094598691.24402,
    "max_supply": null,
    "ath": 5.29,
    "ath_change_percentage": -58.07445,
    "ath_date": "2021-11-12T06:50:02.476Z",
    "atl": 0.519364,
    "atl_change_percentage": 327.09856,
    "atl_date": "2021-09-21T00:33:11.092Z",
    "roi": null,
    "last_updated": "2023-09-24T17:14:58.585Z",
    "price_change_percentage_24h_in_currency": -3.5910585538166653
  },
  {
    "id": "tron",
    "symbol": "trx",
    "name": "TRON",
    "image": "https://assets.coingecko.com/coins/images/1094/large/tron-logo.png?1547035066",
    "current_price": 0.084367,
    "market_cap": 7516154886,
    "market_cap_rank": 12,
    "fully_diluted_valuation": 7516173610,
    "total_volume": 138945166,
    "high_24h": 0.084352,
    "low_24h": 0.083489,
    "price_change_24h": 0.00077645,
    "price_change_percentage_24h": 0.92888,
    "market_cap_change_24h": 57994020,
    "market_cap_change_percentage_24h": 0.77759,
    "circulating_supply": 89125847159.3362,
    "total_supply": 89126069191.3264,
    "max_supply": null,
    "ath": 0.231673,
    "ath_change_percentage": -63.59315,
    "ath_date": "2018-01-05T00:00:00.000Z",
    "atl": 0.00180434,
    "atl_change_percentage": 4574.54474,
    "atl_date": "2017-11-12T00:00:00.000Z",
    "roi": {
      "times": 43.403633084397626,
      "currency": "usd",
      "percentage": 4340.3633084397625
    },
    "last_updated": "2023-09-24T17:14:55.462Z",
    "price_change_percentage_24h_in_currency": 0.9288797447823509
  },
  {
    "id": "polkadot",
    "symbol": "dot",
    "name": "Polkadot",
    "image": "https://assets.coingecko.com/coins/images/12171/large/polkadot.png?1639712644",
    "current_price": 4.04,
    "market_cap": 5157682444,
    "market_cap_rank": 13,
    "fully_diluted_valuation": 5484289044,
    "total_volume": 54100763,
    "high_24h": 4.05,
    "low_24h": 4.01,
    "price_change_24h": 0.02060163,
    "price_change_percentage_24h": 0.51301,
    "market_cap_change_24h": 26575117,
    "market_cap_change_percentage_24h": 0.51792,
    "circulating_supply": 1278157510.85724,
    "total_supply": 1359095933.10768,
    "max_supply": null,
    "ath": 54.98,
    "ath_change_percentage": -92.65912,
    "ath_date": "2021-11-04T14:10:09.301Z",
    "atl": 2.7,
    "atl_change_percentage": 49.62563,
    "atl_date": "2020-08-20T05:48:11.359Z",
    "roi": null,
    "last_updated": "2023-09-24T17:14:57.502Z",
    "price_change_percentage_24h_in_currency": 0.5130060932724562
  },
  {
    "id": "matic-network",
    "symbol": "matic",
    "name": "Polygon",
    "image": "https://assets.coingecko.com/coins/images/4713/large/matic-token-icon.png?1624446912",
    "current_price": 0.5219,
    "market_cap": 4862457820,
    "market_cap_rank": 14,
    "fully_diluted_valuation": 5217526646,
    "total_volume": 72678379,
    "high_24h": 0.523252,
    "low_24h": 0.518627,
    "price_change_24h": 0.00151238,
    "price_change_percentage_24h": 0.29063,
    "market_cap_change_24h": 8748436,
    "market_cap_change_percentage_24h": 0.18024,
    "circulating_supply": 9319469069.28493,
    "total_supply": 10000000000,
    "max_supply": 10000000000,
    "ath": 2.92,
    "ath_change_percentage": -82.10191,
    "ath_date": "2021-12-27T02:08:34.307Z",
    "atl": 0.00314376,
    "atl_change_percentage": 16502.90294,
    "atl_date": "2019-05-10T00:00:00.000Z",
    "roi": {
      "times": 197.44103337585628,
      "currency": "usd",
      "percentage": 19744.103337585628
    },
    "last_updated": "2023-09-24T17:14:55.025Z",
    "price_change_percentage_24h_in_currency": 0.2906253453122658
  },
  {
    "id": "litecoin",
    "symbol": "ltc",
    "name": "Litecoin",
    "image": "https://assets.coingecko.com/coins/images/2/large/litecoin.png?1547033580",
    "current_price": 64.7,
    "market_cap": 4765830609,
    "market_cap_rank": 15,
    "fully_diluted_valuation": 5432665976,
    "total_volume": 170011956,
    "high_24h": 65.25,
    "low_24h": 64.45,
    "price_change_24h": -0.17652633408266638,
    "price_change_percentage_24h": -0.27211,
    "market_cap_change_24h": -21949017.248286247,
    "market_cap_change_percentage_24h": -0.45844,
    "circulating_supply": 73689376.9834713,
    "total_supply": 84000000,
    "max_supply": 84000000,
    "ath": 410.26,
    "ath_change_percentage": -84.22803,
    "ath_date": "2021-05-10T03:13:07.904Z",
    "atl": 1.15,
    "atl_change_percentage": 5532.2834,
    "atl_date": "2015-01-14T00:00:00.000Z",
    "roi": null,
    "last_updated": "2023-09-24T17:14:54.771Z",
    "price_change_percentage_24h_in_currency": -0.27211495675046443
  },
  {
    "id": "shiba-inu",
    "symbol": "shib",
    "name": "Shiba Inu",
    "image": "https://assets.coingecko.com/coins/images/11939/large/shiba.png?1622619446",
    "current_price": 0.00000737,
    "market_cap": 4343729537,
    "market_cap_rank": 16,
    "fully_diluted_valuation": 7370506484,
    "total_volume": 111484455,
    "high_24h": 0.00000766,
    "low_24h": 0.00000734,
    "price_change_24h": -2.48021776777e-7,
    "price_change_percentage_24h": -3.25537,
    "market_cap_change_24h": -145409855.504282,
    "market_cap_change_percentage_24h": -3.23915,
    "circulating_supply": 589329463253469.8,
    "total_supply": 999983215656586,
    "max_supply": null,
    "ath": 0.00008616,
    "ath_change_percentage": -91.4483,
    "ath_date": "2021-10-28T03:54:55.568Z",
    "atl": 5.6366e-11,
    "atl_change_percentage": 13071597.33667,
    "atl_date": "2020-11-28T11:26:25.838Z",
    "roi": null,
    "last_updated": "2023-09-24T17:14:55.681Z",
    "price_change_percentage_24h_in_currency": -3.255367134603465
  },
  {
    "id": "wrapped-bitcoin",
    "symbol": "wbtc",
    "name": "Wrapped Bitcoin",
    "image": "https://assets.coingecko.com/coins/images/7598/large/wrapped_bitcoin_wbtc.png?1548822744",
    "current_price": 26529,
    "market_cap": 4319685129,
    "market_cap_rank": 17,
    "fully_diluted_valuation": 4319685129,
    "total_volume": 18640956,
    "high_24h": 26633,
    "low_24h": 26503,
    "price_change_24h": -0.281557783815515,
    "price_change_percentage_24h": -0.00106,
    "market_cap_change_24h": -3046705.1342306137,
    "market_cap_change_percentage_24h": -0.07048,
    "circulating_supply": 162874.87174305,
    "total_supply": 162874.87174305,
    "max_supply": 162874.87174305,
    "ath": 70643,
    "ath_change_percentage": -62.4621,
    "ath_date": "2021-11-10T14:40:19.650Z",
    "atl": 3139.17,
    "atl_change_percentage": 744.74627,
    "atl_date": "2019-04-02T00:00:00.000Z",
    "roi": null,
    "last_updated": "2023-09-24T17:14:59.465Z",
    "price_change_percentage_24h_in_currency": -0.0010613107304946153
  },
  {
    "id": "bitcoin-cash",
    "symbol": "bch",
    "name": "Bitcoin Cash",
    "image": "https://assets.coingecko.com/coins/images/780/large/bitcoin-cash-circle.png?1594689492",
    "current_price": 207.17,
    "market_cap": 4040290650,
    "market_cap_rank": 18,
    "fully_diluted_valuation": 4348126372,
    "total_volume": 71191184,
    "high_24h": 209.87,
    "low_24h": 207.05,
    "price_change_24h": -1.3449427570775185,
    "price_change_percentage_24h": -0.645,
    "market_cap_change_24h": -30287202.45564747,
    "market_cap_change_percentage_24h": -0.74405,
    "circulating_supply": 19513256.1466508,
    "total_supply": 21000000,
    "max_supply": 21000000,
    "ath": 3785.82,
    "ath_change_percentage": -94.51945,
    "ath_date": "2017-12-20T00:00:00.000Z",
    "atl": 76.93,
    "atl_change_percentage": 169.68768,
    "atl_date": "2018-12-16T00:00:00.000Z",
    "roi": null,
    "last_updated": "2023-09-24T17:14:58.583Z",
    "price_change_percentage_24h_in_currency": -0.6450016628418561
  },
  {
    "id": "chainlink",
    "symbol": "link",
    "name": "Chainlink",
    "image": "https://assets.coingecko.com/coins/images/877/large/chainlink-new-logo.png?1547034700",
    "current_price": 7.1,
    "market_cap": 3957036738,
    "market_cap_rank": 19,
    "fully_diluted_valuation": 7106109262,
    "total_volume": 223089108,
    "high_24h": 7.24,
    "low_24h": 7.04,
    "price_change_24h": 0.058125,
    "price_change_percentage_24h": 0.82493,
    "market_cap_change_24h": 29964178,
    "market_cap_change_percentage_24h": 0.76302,
    "circulating_supply": 556849971.2305644,
    "total_supply": 1000000000,
    "max_supply": 1000000000,
    "ath": 52.7,
    "ath_change_percentage": -86.50086,
    "ath_date": "2021-05-10T00:13:57.214Z",
    "atl": 0.148183,
    "atl_change_percentage": 4700.53622,
    "atl_date": "2017-11-29T00:00:00.000Z",
    "roi": null,
    "last_updated": "2023-09-24T17:14:52.178Z",
    "price_change_percentage_24h_in_currency": 0.8249340938365404
  },
  {
    "id": "dai",
    "symbol": "dai",
    "name": "Dai",
    "image": "https://assets.coingecko.com/coins/images/9956/large/Badge_Dai.png?1687143508",
    "current_price": 0.999546,
    "market_cap": 3838394489,
    "market_cap_rank": 20,
    "fully_diluted_valuation": 3838394489,
    "total_volume": 52960771,
    "high_24h": 1.001,
    "low_24h": 0.999105,
    "price_change_24h": -0.001270442263772487,
    "price_change_percentage_24h": -0.12694,
    "market_cap_change_24h": -11156371.577343464,
    "market_cap_change_percentage_24h": -0.28981,
    "circulating_supply": 3840138180.91196,
    "total_supply": 3840138180.91196,
    "max_supply": null,
    "ath": 1.22,
    "ath_change_percentage": -17.97176,
    "ath_date": "2020-03-13T03:02:50.373Z",
    "atl": 0.88196,
    "atl_change_percentage": 13.3688,
    "atl_date": "2023-03-11T07:50:50.514Z",
    "roi": null,
    "last_updated": "2023-09-24T17:10:00.726Z",
    "price_change_percentage_24h_in_currency": -0.1269405956071202
  }
]

""".data(using: .utf8)!
