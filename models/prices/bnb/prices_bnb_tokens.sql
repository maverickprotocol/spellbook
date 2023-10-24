{{ config(
        schema='prices_bnb',
        alias = 'tokens',
        materialized='table',
        file_format = 'delta',
        tags = ['static']
        )
}}
SELECT 
    token_id
    , blockchain
    , symbol
    , contract_address
    , decimals
FROM
(
    VALUES

    ('1inch-1inch', 'bnb', '1INCH', 0x111111111117dc0aa78b770fa6a738034120c302, 18),
    ('aave-new', 'bnb', 'AAVE', 0xfb6115445bff7b52feb98650c87f44907e58f802, 18),
    --('abnbc-abnbc', 'bnb', 'ABNBC', 0xe85afccdafbe7f2b096f268e31cce3da8da2990a, 18),
    ('ada-cardano', 'bnb', 'ADA', 0x3ee2200efb3400fabb9aacf31297cbdd1d435d47, 18),
    ('adx-adex', 'bnb', 'ADX', 0x6bff4fb161347ad7de4a625ae5aa3a1ca7077819, 18),
    ('aggl-aggleio', 'bnb', 'AGGL', 0x1042aa383cab145dc77121ca75650804a5c134ff, 18),
    ('ankr-ankr-network', 'bnb', 'ANKR', 0xf307910a4c7bbc79691fd374889b36d8531b08e3, 18),
    ('atom-cosmos', 'bnb', 'ATOM', 0x0eb3a705fc54725037cc9e008bdede697f62f335, 18),
    ('auto-auto', 'bnb', 'AUTO', 0x1cff458b364d0d328d4c9d59d10be7d22d01953d, 18),
    ('axlusdc-axelar-usd-coin', 'bnb', 'axlUSDC', 0x4268b8f0b87b6eae5d897996e6b845ddbd99adf3, 6),
    ('axs-axie-infinity', 'bnb', 'AXS', 0x715d400f88c167884bbcc41c5fea407ed4d2f8a0, 18),
    ('banana-apeswap-finance', 'bnb', 'BANANA', 0x603c7f932ed1fc6575303d8fb018fdcbb0f39a95, 18),
    ('bat-basic-attention-token', 'bnb', 'BAT', 0x101d82428437127bF1608F699CD651e6Abf9766E, 18),
    ('bch-bitcoin-cash', 'bnb', 'BCH', 0x8ff795a6f4d97e7887c79bea79aba5cc76444adf, 18),
    ('best-bitpanda-ecosystem-token', 'bnb', 'BEST', 0x667bebff5cda3c4a460b514ab478da0a8cf80910, 18),
    ('beth-binance-beacon-eth', 'bnb', 'BETH', 0x250632378e573c6be1ac2f97fcdf00515d0aa91b, 18),
    ('betu-betu', 'bnb', 'BETU', 0x0df1b3f30865c5b324797f8db9d339514cac4e94, 18),
    ('bifi-beefyfinance', 'bnb', 'BIFI', 0xca3f508b8e4dd382ee878a314789373d80a5190a, 18),
    ('blz-bluzelle', 'bnb', 'BLZ', 0x935a544bf5816e3a7c13db2efe3009ffda0acda2, 18),
    ('bnb-binance-coin', 'bnb', 'WBNB', 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, 18),
    ('bscpad-bscpad', 'bnb', 'BSCPAD', 0x5a3010d4d8d3b5fb49f8b6e57fb9e48063f16700, 18),
    ('btcb-binance-bitcoin', 'bnb', 'BTCB', 0x7130d2a12b9bcbfae4f2634d864a1ee1ce3ead9c, 18),
    ('bts-bitshares', 'bnb', 'BTS', 0xc2e1acef50ae55661855e8dcb72adb182a3cc259, 18),
    ('btt-bittorrent', 'bnb', 'BTT', 0x8595f9da7b868b1822194faed312235e43007b49, 18),
    ('bund-bundles', 'bnb', 'BUND', 0x9c1a3e3a69f83bdf98a51e4a552bbc2e479d45e7, 18),
    ('burger-burger-swap', 'bnb', 'BURGER', 0xae9269f27437f0fcbc232d39ec814844a51d6b8f, 18),
    ('busd-binance-usd', 'bnb', 'BUSD', 0xe9e7cea3dedca5984780bafc599bd69add087d56, 18),
    ('c98-coin98', 'bnb', 'C98', 0xaec945e04baf28b135fa7c640f624f8d90f1c3a6, 18),
    ('cake-pancakeswap', 'bnb', 'CAKE', 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82, 18),
    ('comp-compoundd', 'bnb', 'COMP', 0x52ce071bd9b1c4b00a0b92d298c512478cad67e8, 18),
    ('cummies-cumrocket', 'bnb', 'CUMMIES', 0x27ae27110350b98d564b9a3eed31baebc82d878d, 18),
    ('dai-dai', 'bnb', 'DAI', 0x1af3f329e8be154074d8769d1ffa4ee058b1dbc3, 18),
    ('dex-dexira', 'bnb', 'DEX', 0x147e07976e1ae78287c33aafaab87760d32e50a5, 18),
    ('dexe-dexe', 'bnb', 'DEXE', 0x039cb485212f996a9dbb85a9a75d898f94d38da6, 18),
    ('dexshare-dexshare', 'bnb', 'DEXSHARE', 0xf4914e6d97a75f014acfcf4072f11be5cffc4ca6, 18),
    ('dg-decentral-games', 'bnb', 'DG', 0x9fdc3ae5c814b79dca2556564047c5e7e5449c19, 18),
    ('dodo-dodo', 'bnb', 'DODO', 0x67ee3cb086f8a16f34bee3ca72fad36f7db929e2, 18),
    ('doge-dogecoin', 'bnb', 'DOGE', 0x4206931337dc273a630d328da6441786bfad668f, 8),
    ('dot-polkadot', 'bnb', 'DOT', 0x7083609fce4d1d8dc0c979aab8c869ea2c873402, 18),
    ('eos-eos', 'bnb', 'EOS', 0x56b6fb708fc5732dec1afc8d8556423a2edccbd6, 18),
    ('eps-ellipsis', 'bnb', 'EPS', 0xa7f552078dcc247c2684336020c03648500c6d9f, 18),
    ('eth-ethereum', 'bnb', 'ETH', 0x2170ed0880ac9a755fd29b2688956bd959f933f8, 18),
    ('farm-harvest-finance', 'bnb', 'FARM', 0x4b5c23cac08a567ecf0c1ffca8372a45a5d33743, 18),
    ('fetch-ai', 'bnb', 'FET', 0x031b41e504677879370e9dbcf937283a8691fa7f, 18),
    ('fil-filecoin', 'bnb', 'FIL', 0x0d8ce2a99bb6e3b7db580ed848240e4a0f9ae153, 18),
    ('for-fortube', 'bnb', 'FOR', 0x658a109c5900bc6d2357c87549b651670e5b0539, 18),
    ('frax-frax', 'bnb', 'FRAX', 0x29ced01c447166958605519f10dcf8b0255fb379, 18),
    ('ftm-fantom', 'bnb', 'FTM', 0xAD29AbB318791D579433D831ed122aFeAf29dcfe, 18),
    ('fxs-frax-share', 'bnb', 'FXS', 0xde2f075f6f14eb9d96755b24e416a53e736ca363, 18),
    -- ('gala-gala', 'bnb', 'GALA', 0x7ddee176f665cd201f93eede625770e2fd911990, 18), -- fake token
    ('gny-gny', 'bnb', 'GNY', 0xe4a4ad6e0b773f47d28f548742a23efd73798332, 18),
    ('inj-injective-protocol', 'bnb', 'INJ', 0xa2b726b1145a4773f68593cf171187d8ebe4d495, 18),
    ('iotx-iotex', 'bnb', 'IOTX', 0x9678e42cebeb63f23197d726b29b1cb20d0064e5, 18),
    ('iq-everipedia', 'bnb', 'IQ', 0x0e37d70b51ffa2b98b4d34a5712c5291115464e3, 18),
    ('jade-jade-protocol', 'bnb', 'JADE', 0x7ad7242a99f21aa543f9650a56d141c57e4f6081, 9),
    ('knc-kyber-network', 'bnb', 'KNC', 0xfe56d5892bdffc7bf58f2e84be1b2c32d21c308b, 18),
    ('link-chainlink', 'bnb', 'LINK', 0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd, 18),
    ('loot-lootex-token', 'bnb', 'LOOT', 0x14a9a94e555fdd54c21d7f7e328e61d7ebece54b, 18),
    ('ltc-litecoin', 'bnb', 'LTC', 0x4338665cbb7b2485a8855a139b75d5e34ab0db94, 18),
    ('lto-lto-network', 'bnb', 'LTO', 0x857b222fc79e1cbbf8ca5f78cb133d1b7cf34bbd, 18),
    ('luna-luna-wormhole', 'bnb', 'LUNA', 0x156ab3346823b651294766e23e6cf87254d68962, 6),
    ('maha-mahadao', 'bnb', 'MAHA', 0xce86f7fcd3b40791f63b86c3ea3b8b355ce2685b, 18),
    ('math-math', 'bnb', 'MATH', 0xf218184af829cf2b0019f8e6f0b2423498a36983, 18),
    ('matic-polygon', 'bnb', 'MATIC', 0xcc42724c6683b7e57334c4e856f4c9965ed682bd, 18),
    ('mbox-mobox', 'bnb', 'MBOX', 0x3203c9e46ca618c8c1ce5dc67e7e9d75f5da2377, 18),
    ('mdx-mdex', 'bnb', 'MDX', 0x9c65ab58d8d978db963e63f2bfb7121627e3a739, 18),
    --('med-medibloc-qrc20', 'bnb', 'MED', 0xf50155cffd6c9a3634edfd6a00850016fe02c4dc, 9),
    ('meta-metadium', 'bnb', 'META', 0x04073d16c6a08c27e8bbebe262ea4d1c6fa4c772, 18),
    ('mir-mirror-protocol', 'bnb', 'MIR', 0x5b6dcf557e2abe2323c48445e8cc948910d8c2c9, 18),
    ('mtv-multivac', 'bnb', 'MTV', 0x8aa688ab789d1848d131c65d98ceaa8875d97ef1, 18),
    ('nft-apenft', 'bnb', 'NFT', 0xfaab744db9def8e13194600ed02bc5d5bed3b85c, 16),
    ('om-mantra-dao', 'bnb', 'OM', 0xf78d2e7936f5fe18308a3b2951a93b6c4a41f5e2, 18),
    ('one-harmony', 'bnb', 'ONE', 0x04baf95fd4c52fd09a56d840baee0ab8d7357bf0, 18),
    ('ont-ontology', 'bnb', 'ONT', 0xfd7b3a77848f1c2d67e05e54d78d174a0c850335, 18),
    ('orbs-orbs', 'bnb', 'ORBS', 0xebd49b26169e1b52c04cfd19fcf289405df55f80, 18),
    ('pets-micropets', 'bnb', 'PETS', 0xa77346760341460b42c230ca6d21d4c8e743fa9c, 18),
    ('pmon-polychain-monsters', 'bnb', 'PMON', 0x1796ae0b0fa4862485106a0de9b654efe301d0b2, 18),
    ('pols-polkastarter', 'bnb', 'POLS', 0x7e624fa0e1c4abfd309cc15719b7e2580887f570, 18),
    ('prq-parsiq', 'bnb', 'PRQ', 0xd21d29b38374528675c34936bf7d5dd693d2a577, 18),
    ('radar-radar', 'bnb', 'RADAR', 0xf03a2dc374d494fbe894563fe22ee544d826aa50, 18),
    ('ramp-ramp', 'bnb', 'RAMP', 0x8519ea49c997f50ceffa444d240fb655e89248aa, 18),
    ('reef-reef', 'bnb', 'REEF', 0xf21768ccbc73ea5b6fd3c687208a7c2def2d966e, 18),
    ('ren-republic-protocol', 'bnb', 'REN', 0xea3c7383b9bc4ac15fcdadce07e2e25cc6e7b627, 18),
    ('renbtc-renbtc', 'bnb', 'RENBTC', 0xfce146bf3146100cfe5db4129cf6c82b0ef4ad8c, 8),
    ('ruby-ruby-play-network', 'bnb', 'RUBY', 0xf7722aa0714096f1fb5ef83e6041cebb4d58a08e, 12),
    ('rune-thorchain', 'bnb', 'RUNE', 0xa9776b590bfc2f956711b3419910a5ec1f63153e, 18),
    ('safemoon-safemoon', 'bnb', 'SAFEMOON', 0x8076c74c5e3f5852037f31ff0093eeb8c8add8d3, 9),
    --('sbd-steem-dollars', 'bnb', 'SBD', 0x3bf7e66b905bf2aaa08c45f0bdab0c4b26c36d4a, 9),
    ('soul-phantasma', 'bnb', 'SOUL', 0x67d012f731c23f0313cea1186d0121779c77fcfe, 8),
    ('super-superfarm', 'bnb', 'SUPER', 0x51ba0b044d96c3abfca52b64d733603ccc4f0d4d, 18),
    ('sushi-sushi', 'bnb', 'SUSHI', 0x947950bcc74888a40ffa2593c5798f11fc9124c4, 18),
    ('swap-trustswap', 'bnb', 'SWAP', 0x82443a77684a7da92fdcb639c8d2bd068a596245, 18),
    ('sxp-swipe', 'bnb', 'SXP', 0x47bead2563dcbf3bf2c9407fea4dc236faba485a, 18),
    ('titano-titano', 'bnb', 'TITANO', 0x4e3cabd3ad77420ff9031d19899594041c420aee, 18),
    ('tlm-alien-worlds', 'bnb', 'TLM', 0x2222227e22102fe3322098e4cbfe18cfebd57c95, 4),
    ('tpt-token-pocket', 'bnb', 'TPT', 0xeca41281c24451168a37211f0bc2b8645af45092, 4),
    ('tusd-trueusd', 'bnb', 'TUSD', 0x14016e85a25aeb13065688cafb43044c2ef86784, 18),
    ('uni-uniswap', 'bnb', 'UNI', 0xbf5140a22578168fd562dccf235e5d43a02ce9b1, 18),
    ('usdc-usd-coin', 'bnb', 'USDC', 0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d, 18),
    ('usdex-usdex', 'bnb', 'USDEX', 0x829c09fcc46d9fd31967272aba245bef9f727f93, 18),
    ('usdt-tether', 'bnb', 'USDT', 0x55d398326f99059ff775485246999027b3197955, 18),
    ('ust-terrausd', 'bnb', 'UST', 0x23396cf899ca06c4472205fc903bdb4de249d6fc, 18),
    ('ust-ust-wormhole', 'bnb', 'UST', 0x3d4350cd54aef9f9b2c29435e0fa809957b3f30a, 6),
    ('vai-vai', 'bnb', 'VAI', 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7, 18),
    ('vidt-v-id', 'bnb', 'VIDT', 0x3f515f0a8e93f2e2f891ceeb3db4e62e202d7110, 18),
    ('win-winklink', 'bnb', 'WIN', 0xaef0d72a118ce24fee3cd1d43d383897d05b4e99, 18),
    ('woo-wootrade', 'bnb', 'WOO', 0x4691937a7508860f876c9c0a2a617e7d9e945d4b, 18),
    ('xct-citadelone', 'bnb', 'XCT', 0xe8670901e86818745b28c8b30b17986958fce8cc, 6),
    ('xpr-proton', 'bnb', 'XPR', 0x5de3939b2f811a61d830e6f52d13b066881412ab, 4),
    ('xrp-xrp', 'bnb', 'XRP', 0x1d2f0da169ceb9fc7b3144628db156f3f6c60dbe, 18),
    ('xvs-venus', 'bnb', 'XVS', 0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63, 18),
    ('zel-zelcash', 'bnb', 'FLUX', 0x1ab6478b47270ff05af11a012ac17b098758e193, 18),
    ('zil-zilliqa', 'bnb', 'ZIL', 0xb86abcb37c3a4b64f74f59301aff131a1becc787, 12),
    ('znn-zenon', 'bnb', 'Znn', 0x84b174628911896a3b87fa6980d05dbc2ee74836, 8),
    ('azy-amazy', 'bnb', 'AZY', 0x7b665B2F633d9363b89A98b094B1F9E732Bd8F86, 18),
    ('tbc-terablock', 'bnb', 'TBC', 0x9798df2f5d213a872c787bd03b2b91f54d0d04a1, 18),
    ('sps-splintershards', 'bnb', 'SPS', 0x1633b7157e7638c4d6593436111bf125ee74703f, 18),
    ('dec-dark-energy-crystals', 'bnb', 'DEC', 0xe9d7023f2132d55cbd4ee1f78273cb7a3e74f10a, 3),
    ('sfm-safemoon', 'bnb', 'SFM', 0x42981d0bfbaf196529376ee702f2a9eb9092fcb5, 9),
    ('mnft-marvelous-nfts', 'bnb', 'MNFT', 0x33be7644c0e489b3a0c639d103392d4f3e338158, 18),
    ('bets-betswirl', 'bnb', 'BETS', 0x3e0a7c7db7bb21bda290a80c9811de6d47781671, 18),
    ('floki-floki-inu', 'bnb', 'FLOKI', 0xfb5b838b6cfeedc2873ab27866079ac55363d37e, 9),
    ('wom-wombat-exchange', 'bnb', 'WOM', 0xad6742a35fb341a9cc6ad674738dd8da98b94fb1, 18),
    ('hay-hay', 'bnb', 'HAY', 0x0782b6d8c4551b9760e74c0545a9bcd90bdc41e5, 18),
    ('bnbx-stader-bnbx', 'bnb', 'BNBx', 0x1bdd3cf7f79cfb8edbb955f20ad99211551ba275, 18),
    ('air-aircoin', 'bnb' ,'AIR', 0xd8a2ae43fd061d24acd538e3866ffc2c05151b53, 18),
    ('eternal-cryptomines-eternal', 'bnb', 'ETERNAL', 0xd44fd09d74cd13838f137b590497595d6b3feea4, 18),
    ('hero-metahero', 'bnb', 'HERO', 0xd40bedb44c081d2935eeba6ef5a3c8a31a1bbe13, 18),
    ('milo-milo-inu', 'bnb', 'MILO', 0xd9de2b1973e57dc9dba90c35d6cd940ae4a3cbe1, 9),
    ('fsv-filesystemvideo', 'bnb', 'FSV', 0xe9c7a827a4ba133b338b844c19241c864e95d75f, 6),
    ('msc-monster-slayer-cash', 'bnb', 'MSC', 0x8C784C49097Dcc637b93232e15810D53871992BF, 18),
    ('dome-everdome', 'bnb', 'DOME', 0x475bfaa1848591ae0e6ab69600f48d828f61a80e, 18),
    ('sea-sharkshakesea', 'bnb', 'SEA', 0x26193c7fa4354ae49ec53ea2cebc513dc39a10aa, 18),
    ('xps-x-parallel-space', 'bnb', 'XPS', 0x8e9b87cad37610d60120a1f48aa1036e24a3831a, 18),
    ('gst-gunstar-metaverse', 'bnb', 'GST', 0x4a2c860cec6471b9f5f5a336eb4f38bb21683c98, 18),
    ('bsw-biswap', 'bnb', 'BSW', 0x965f527d9159dce6288a2219db51fc6eef120dd1, 18),
    ('mines-of-dalarnia-dar','bnb', 'DAR', 0x23ce9e926048273ef83be0a3a8ba9cb6d45cd978, 6),
    ('chr-chroma', 'bnb', 'CHR', 0xf9cec8d50f6c8ad3fb6dccec577e05aa32b224fe,6),
    ('fgd-freedom-god-dao', 'bnb', 'FGD', 0x0566b9a8ffb8908682796751eed00722da967be0, 18),
    ('twt-trust-wallet-token','bnb', 'TWT', 0x4b0f1812e5df2a09796481ff14017e6005508003, 18),
    ('bfg-betfury', 'bnb' ,'BFG' ,0xbb46693ebbea1ac2070e59b4d043b47e2e095f86 ,18),
    ('avax-avalanche' ,'bnb' ,'AVAX' ,0x1ce0c2827e2ef14d5c4f29a091d735a204794041 ,18),
    ('ipad-infinity-pad' ,'bnb' ,'IPAD' ,0xf07dfc2ad28ab5b09e8602418d2873fcb95e1744 ,18),
    ('gal-galxe' ,'bnb' ,'GAL' ,0xe4cc45bb5dbda06db6183e8bf016569f40497aa5 ,18),
    ('raca-radio-caca','bnb' ,'RACA' ,0x12bb890508c125661e03b09ec06e404bc9289040 ,18),
    ('doge-dogecoin','bnb' ,'DOGE' ,0xba2ae424d960c26247dd6c32edc70b295c744c43 ,8),
    ('cow-coinwind-token','bnb' ,'COW' ,0x422e3af98bc1de5a1838be31a56f75db4ad43730 ,18),
    ('time-time' ,'bnb' ,'TIME' ,0x26619fa1d4c957c58096bbbeca6588dcfb12e109 ,18),
    ('fuse-fuse-token-on-bsc' ,'bnb' ,'FUSE' ,0x5857c96dae9cf8511b08cb07f85753c472d36ea3 ,18),
    ('dxct-dnaxcat' ,'bnb' ,'DXCT' ,0x5b1baec64af6dc54e6e04349315919129a6d3c23 ,18),
    ('sfo-starfish-os' ,'bnb' ,'SFO' ,0xc544d8ab2b5ed395b96e3ec87462801eca579ae1 ,18),
    ('baby-babyswap' ,'bnb' ,'BABY' ,0x53e562b9b7e5e94b81f10e96ee70ad06df3d2657 ,18),
    ('sol-solana' ,'bnb' ,'SOL' ,0x570a5d26f7765ecb712c0924e4de545b89fd43df ,18),
    ('trx-tron' ,'bnb' ,'TRX' ,0xce7de646e7208a4ef112cb6ed5038fa6cc6b12e3 ,18),
    ('sss-starsharks' ,'bnb' ,'SSS' ,0xc3028fbc1742a16a5d69de1b334cbce28f5d7eb3 ,18)    ,
    ('sfp-safepal-token', 'bnb' ,'SFP' ,0xd41fdb03ba84762dd66a0af1a6c8540ff1ba5dfb ,18),
    ('ssg-surviving-soldiers','bnb' ,'SSG' ,0xa0c8c80ed6b7f09f885e826386440b2349f0da7e ,18),
    ('bnx-binaryx' ,'bnb' ,'BNX' ,0x8c851d1a123ff703bd1f9dabe631b69902df5f97 ,18),
    ('elephant-elephant-money' ,'bnb' ,'ELEPHANT' ,0xe283d0e3b8c102badf5e8166b73e02d96d92f688 ,9),
    ('fist-fisttoken','bnb' ,'FIST' ,0xc9882def23bc42d53895b8361d0b1edc7570bc6a ,6),
    ('usdd-usdd' ,'bnb' ,'USDD' ,0xd17479997f34dd9156deef8f95a52d81d265be9c ,18),
    ('alpaca-alpaca-finance','bnb' ,'ALPACA' ,0x8f0528ce5ef7b51152a59745befdd91d97091d2f ,18),
    ('ppp-playposeidon-nft' ,'bnb' ,'PPP' ,0xce355300b9d7909f577640a3fb179cf911a23fbb ,18),
    ('ape-apecoin', 'bnb' ,'APE' ,0x0b079b33b6e72311c6be245f9f660cc385029fc3,18),
    --('metis-metis-token','bnb' ,'Metis' ,0xe552fb52a4f19e44ef5a967632dbc320b0820639 ,18), -- bad price feed and will be replaced by new contract
    ('bob-bob', 'bnb', 'BOB', 0xb0b195aefa3650a6908f15cdac7d92f8a5791b0b, 18),
    ('fb-fbbank', 'bnb', 'FB', 0x770F030FDBf63EBF1C939De8BCFf8943C2C2d454, 2),
    ('mdb-mdb', 'bnb', 'MDB+', 0x9f8bb16f49393eea4331a39b69071759e54e16ea, 18),
    ('mdb-milliondollarbaby', 'bnb', 'MDB', 0x0557a288a93ed0df218785f2787dac1cd077f8f3, 18),
    ('walv-alvey-chain', 'bnb', 'wALV', 0x256d1fce1b1221e8398f65f9b36033ce50b2d497, 18),
    ('loop-loopnetwork', 'bnb', 'LOOP', 0xce186ad6430e2fe494a22c9edbd4c68794a28b35, 18),
    ('phm-phantom-protocol', 'bnb', 'PHM', 0x4399AE7538c33cA24edD4C28C5dd7Ce9a80acF81, 18),
    ('drip-drip-network', 'bnb', 'DRIP', 0x20f663CEa80FaCE82ACDFA3aAE6862d246cE0333, 18),
    ('fur-furio', 'bnb', '$FUR', 0x48378891d6E459ca9a56B88b406E8F4eAB2e39bF, 18),
    ('pstn-piston', 'bnb', 'PSTN', 0xBfACD29427fF376FF3BC22dfFB29866277cA5Fb4, 18),
    ('ocean-ocean-protocol', 'bnb', 'OCEAN', 0x3516141b1ac8751c2042a8a1bc411ab8655464ac, 18),
    ('ole-openleverage', 'bnb', 'OLE', 0xa865197a84e780957422237b5d152772654341f3, 18),
    ('stg-stargatetoken','bnb','STG',0xb0d502e938ed5f4df2e681fe6e419ff29631d62b,18),
    ('ico-axelar', 'bnb', 'AXL', 0x8b1f4432f943c465a973fedc6d7aa50fc96f1f65, 6),
    ('lvl-level','bnb','LVL',0xb64e280e9d1b5dbec4accedb2257a87b400db149,18),
    ('ghny-grizzly-honey','bnb','GHNY',0xa045e37a0d1dd3a45fefb8803d22457abc0a728a,18),
    ('grain-granary','bnb','GRAIN',0x8f87a7d376821c7b2658a005aaf190ec778bf37a,18),
    ('oath-oath','bnb','OATH',0xd3c6ceedd1cc7bd4304f72b011d53441d631e662,18),
    ('wbeth-wrapped-beacon-eth','bnb','WBETH',0xa2e3356610840701bdf5611a53974510ae27e2e1,18),
    ('edu-edu-coin', 'bnb', 'EDU', 0xbdeae1ca48894a1759a8374d63925f21f2ee2639, 18),
    ('id2-space-id', 'bnb', 'ID', 0x2dff88a56767223a5529ea5960da7a3f5f766406, 18),
    ('ankrbnb-ankr-staked-bnb', 'bnb', 'ankrBNB', 0x52F24a5e03aee338Da5fd9Df68D2b6FAe1178827, 18),
    ('stkbnb-pstake-staked-bnb', 'bnb', 'STKBNB', 0xc2e9d07f66a89c44062459a47a0d2dc038e4fb16, 18)
) as temp (token_id, blockchain, symbol, contract_address, decimals)
where contract_address not in (
    0x2ab0e9e4ee70fff1fb9d67031e44f6410170d00e -- bXEN has bad price feed.
    ,0x43f3918ff115081cfbfb256a5bde1e8d181f2907 -- ANT (aragon) doesn't exists on BSC, it's a scam-token address.
    ,0x7ddee176f665cd201f93eede625770e2fd911990 -- GALA doesn't exists on BSC, it's a scam-token address.
    ,0xe552fb52a4f19e44ef5a967632dbc320b0820639 -- METIS has bad price feed since PolyNetwork incident and will be replaced by new contract
)
