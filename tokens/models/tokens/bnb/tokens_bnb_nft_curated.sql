{{ config(
        alias = 'nft_curated',
        tags=['static']
        )
}}

SELECT
  name, contract_address, '' as symbol
FROM
  (
    VALUES
    ('Bomber Hero',0x30cc0553f6fa1faf6d7847891b9b36eb559dc618)
  ,('Metamon',0xf24bf668aa087990f1d40ababf841456e771913c)
  ,('Ranger',0xf31913a9c8efe7ce7f08a1c08757c166b572a937)
  ,('Warrior',0x22f3e436df132791140571fc985eb17ab1846494)
  ,('Robber',0xaf9a274c9668d68322b0dcd9043d79cd1ebd41b3)
  ,('Mage',0xc6db06ff6e97a6dc4304f7615cdd392a9cf13f44)
  ,('Hero Assets',0x4cd0ce1d5e10afbcaa565a0fe2a810ef0eb9b7e2)
  ,('Human Memento Explorer',0x736313a9b46f72103dcc73b1c25a136a5fc63183)
  ,('CryptoGodz Sentz',0x52dc204d80aac48bc618d4570b80cc2fa900f93a)
  ,('Bonus Hunter',0x419cee63cb9206b4df853dd6500ee522b154db49)
  ,('Crypto OG',0x2a2635738e457cb81441e6a05fe690a69c2ef180)
  ,('Crypto BABY',0xa99a4fabb9a945f60fb96d6fdf8de7d2ef1e8c36)
  ,('Spot Trader',0x90b5f4a0ab7de9fc3028d2c0b67348ae1a4d3c25)
  ,('Shiller',0x1d44060bbb47d4c217c92cb3edffa0d33d7cf97c)
  ,('Futures Lover',0xb8788bd7ec1a945585b5e76c473a6a7729994386)
  ,('Space SIP Ship',0x6f6a5670a2ede01d58af122297feccab7b3bd344)
  ,('Dragon Mainland Token',0x3a70f8292f0053c97c4b394e2fc98389bde765fb)
  ,('Hardware Miner',0x6741626ed9a06702d3dad18bdbe75983b66f38cc)
  ,('Altcoin Collector',0x996877bfc830ee52b786675d211fdffd2493a0ea)
  ,('Scammer',0xd3f530521daaaeb3720c8d0e797ed38ca1f50305)
  ,('DeFi Farmer',0x5bc2f0ece4f7a85f5f323f7fdc80ff1028f417d4)
  ,('Karastar''s nft',0x2bf5e716181a7ba31d83c19fa3c3bfdeb4da9f0f)
  ,('Human Memento Time Machine',0x6ccca7902cba0ceaa41ebeae2a826219f507153e)
  ,('Zodium12KINDs',0x4c4bd203b7bb3a06825cad642df9f43278eb24c7)
  ,('ZooNFT',0x48f9f93ba55852f7ba5beb55ad9d9cee373c0ad4)
  ,('Brave CAT',0xfc7b644d9c719915b6ff6eed6a81c82dbefcd6c3)
  ,('MonstersClanNft',0x372360677ec2b72cfc5ad89fc3c14b43e2e1a2f5)
  ,('CryptoGodz Legion Badge',0x95d3f160f8484a4220add4f1047e00ab9d886a9b)
  ,('CryptoMines Worker',0x6053b8fc837dc98c54f7692606d632ac5e760488)
  ,('Thetan Hero',0x98eb46cbf76b19824105dfbcfa80ea8ed020c6f4)
  ,('CatBread NFT',0xc448498ddc536ad6f5d437325725dcf504d2d964)
  ,('DreamCard',0xe6965b4f189dbdb2bd65e60abaeb531b6fe9580b)
  ,('Meliora',0x96d4d7707285d1d55725108f0e93515941b4d547)
  ,('NextEarth',0xe4fd432b16c9b1c1e86d0a359fdc270c5e89258d)
  ,('CyberDragon Items',0x87258c37e234366f1a7f7f1320bbc65bcd88d250)
  ,('Binance NFT Mystery Box-BabySwap',0xc1aae3039691cb2569da523e101a5ee58baea3c8)
  ,('EGG CAT',0x23b4dbfb5b3ae13142bb379a9ece574b00bee390)
  ,('StarryNift',0xd9de8f63ea0f18264fa5c17a8f17e8ea06367649)
  ,('CryptoMines Fleet',0xca309aaac2f8527dfff74b5f057a4ac0b43c90af)
  ,('SupeNFT',0x36b0fa90be88222aca9ddf43bda0bb16e0381114)
  ,('Surviving Soldiers Humanoid',0x61c04d963c39bfb1770e28750cc043de799e9374)
  ,('Dehero Card',0x253525b7f8ce8cb0f28f87d41ba90b77b61a6672)
  ,('CryptoMines Spaceship',0xd1204d12995192c23860a06e68e3ad102bbe9877)
  ,('Vibranium Land Card',0x59e777a8f1c6adb361006daa3bce8145716b8dc4)
  ,('ChainColosseum Item',0xacb84816fc02b076226387b919e04a9b71cd45b2)
  ,('MetaGods Character',0xc1e07c19fceac211676a368fff1fdbeff482c6e2)
  ,('Bitcoin Holder',0xb0bb0c5d408c999eaaeaa408874b3b8535bc8fc4)
  ,('Hacker',0xc4594afad15ab2d76440533023ff9c9839cbae9d)
  ,('Binance NFT Mystery Box-StarSharks',0x74e83efc37eddf344a831b7e35225bf754e33767)
  ,('Vibranium Detector Card',0x9c92611c48f28663f2d616542e58e9404e3e8289)
  ,('BYGSpaceShip',0x0ed6b3cd4d009575b63b10f944cd0e6a196b74ae)
  ,('BiswapRobbiesEarn',0xd4220b0b196824c2f548a34c47d81737b0f6b5d6)
  ,('POSI-NFT',0xeca16df8d11d3a160ff7a835a8dd91e0ae296489)
  ,('SharNFT',0x416f1d70c1c22608814d9f36c492efb3ba8cad4c)
  ,('HEROFI',0x3114c0b418c3798339a765d32391440355da9dde)
  ,('StrayFriends',0x3bb10958ca236d5bcc1bb28c28f10fd5260f42f8)
  ,('PixelAssets',0x376f838a24b07dea0a4a1ad540abb8e973aa3ca7)
  ,('CryptoBay Ship',0x41a5d20cd7f20b98124fd34e729b2fc92032a74d)
  ,('AlienWorlds-NFT',0xf3857306a37264f15a19ad37da8a9485e5f7cfb3)
  ,('ForthBox Ham NFT',0x1f599a0281d024bfef7e198bdae78b49a6e87049)
  ,('Defina Card',0xa318d9a2d6900a652fd0c9fea8c57a29b2a63709)
  ,('Epic Hero 3D NFT v2',0xdd581cab6f7643ab11498a4b83a8bcda9eaca29a)
  ,('LimeOdyssey',0x996d1693af547eb14343a773ae628ccdc136d873)
  ,('Epic Hero 3D NFT',0xafdcb0ecad1c8cb22893dca7d6c510dbfda3bbec)
  ,('Dont Play With Kitty',0x8531aca7bab87fc953ada1afb7b1a89bb151b4d2)
  ,('DragonKnight NFT',0xe8779f3e5d10918d7fd8e717837c69d730a33fc0)
  ,('SquidGame-NFT',0xebf2ff608cb582e28ef47aff5edb4e58e19084bd)
  ,('RMetamon',0x982b5345d0f213ecb2a8e6e24336909f59b1d6e3)
  ,('CryptoBlades character',0xc6f252c2cdd4087e30608a35c022ce490b58179b)
  ,('StarMon EGG',0x82bbedd305b97cdffe301bfbafa38a64f94be07c)
  ,('BlockMonsters',0x55a11056e4253ab38cc3b12b48cc9b94718090e2)
  ,('MilitiaGame',0x8a65d3e57b26182c5520551bf360b1844ab94f88)
  ,('Heroes AND Weapons',0x95f6ae731d5f6485c62d899538dae40a00da5972)
  ,('StarMon Child Pet',0x3cbdf961c7da7aee509286de9789fb0dd3a1ddf2)
  ,('Kiss-up State Land',0x8460cc2f040828ff59f72d2bd6cc672fafff1941)
  ,('AZEROTH NFT',0x571ea1a0bd03c770d90dadc08a15144ab71c9829)
  ,('BNBHCharacter',0x6da72f24c56197dcf6b8920bacb183f6ccca8b01)
  ,('CorgiPet',0x52412e049ecacde90aed009fee5c2421e2f30fe7)
  ,('DeathRoadNFT',0x124493e991632e5a2af58116e35d67f5a983afaa)
  ,('CryptoBlades weapon',0x7e091b0a220356b157131c831258a9c98ac8031a)
  ,('CyberCat',0x3256da650f848db5627a9bccc78f922ff753c153)
  ,('Wolf Game',0x1d293cad3476f064cb684a37ede558f8c1114a7a)
  ,('AdventureBunny',0xeff053c77f77868f10b1806407f1bb8f6df4d0f3)
  ,('Miner',0xb1b147c2df9dc4d1bd05e42e4c6fbac78e463455)
  ,('BV_V3',0x47d1f30ddb727360ae623ecfdcfa4dd167b7f2d4)
  ,('Hero Cat Mining Pet',0x8013265cba30309a20c0bfb68ca7df4f21c234b7)
  ,('Defi Warrior BodyPart NFT',0x9b4dc1327c8b8a5fa3989b48699747ed1618eef2)
  ,('Pancake Bunnies',0xdf7952b35f24acf7fc0487d01c8d5690a60dba07)
  ,('Dehero Equip Card',0x42d05d77f088d438590321d96a0b7658bb5ec227)
  ,('CryptoZoon NFT',0x8bbe571b381ee58dd8f2335a8f0a5b42e83bdcfa)
  ,('SamuraiRising',0xc3c3b849ed5164fb626c4a4f78e0675907b2c94e)
  ,('Metamon',0xbe96ee936c45b4cc8c65b803c851d1d4ed15a27b)
  ,('MetaMinerNFT',0x4a910310a9ed12d52973dab4886f2d4d7d1c5e05)
  ,('Spaceship weapon',0x8719b2c9dbe730811970244bdeb869315b793c54)
  ,('Crusaders of Crypto NFTs',0xd209cd6a8c64c1c8748a391c40cd2eaebc86b2ef)
  ,('Wolf Game DAO Wool Pouch',0x5e3ad85a888d8706baa70e3077ac0cdc6dc00937)
  ,('Land of Strife',0xf0867b01ba347eb32f6e0d0151336deda008d930)
  ,('Sheep Dex Positions NFT',0x754ca67efd5951960c43dd78063277ec50a86628)
  ,('FG Family',0x9dc0cf5c7bc061644719db78b61803d484d43037)
  ,('Binamon NFT Collection',0x39f742ba717f6203e081fbc0418fa60f1e245ea1)
  ,('HeroVerse Hero',0x8f65f0e19e7e95701b63abe64974a3d4407793ca)
  ,('Nelo Box Token',0x850547076a7239b9e32cfeb0aef39462f804985e)
  ,('Mount',0xfd7d9c2c8c40eb65364dc4a909ca76773364c7a2)
  ,('KnightWar NFT',0x74d3ea27996f871096341da34ab9ac8f0c63effc)
  ,('Buni Universal Bunicorn',0x86b81f94646337879ddfee8bcb89724f4ae721fe)
  ,('NFT-GODS',0x1f372b60e4b1812030e7a945fd71f65ae53332c4)
  ,('Musk USM LAND',0xb5665e1038c4e17c58ab55b5c591fab52ce83fc4)
  ,('RealFevr BEP721',0x618dcd507d1dcedaed7df0df54728326fd33d22e)
  ,('Human Memento Brigade',0xffa54dd7a3a57051cd3f8c672117305d274e8524)
  ,('Pentas NFT (PENTAS)',0x3afa102b264b5f79ce80fed29e0724f922ba57c7)
  ,('Hashland NFT',0xeea8bd31da9a2169c38968958b6df216381b0f08)
  ,('Binance NFT Mystery Box-Win NFT Horse',0x34b041b533b5a7580df0193c195993d69ef66b69)
  ,('RevomonNFT',0xee35ab1effe4db2344348e3a98a6ef2687f43392)
  ,('CryptoShoujo',0x2129cfb8e63c62d0e119d2597536ee4e1a8e39da)
  ,('Elpis Metaverse Heroes',0xe9156432bc661300722ab1ede425eb2a607dd26c)
  ,('META-5G',0x05653eabefc985676ab9ac0e53a38e01f1fcd1da)
  ,('AirNFTs',0xf5db804101d8600c26598a1ba465166c33cdaa4b)
  ,('IDF Shares',0x0ad9f01c3a09743acfa76871625bc88bf51532e9)
  ,('Binance NFT Mystery Box-Naraka',0x1a9f12a5f0863eef23d6e565fddf31251196a2ce)
  ,('KabyHero',0x943ede056ec47f624028291af252b3f553b86ad2)
  ,('Binamon Z1 Planet NFT Collection',0x6696cdf8e3af9780a3e15d7ffc2fc8d2aa6172c2)
  ,('Defi Warrior NFT',0xd21f97e08599560c721d668962fba875684b03c4)
  ,('CorgiItem',0xdac26d32f7ac55a6ca40c9141c1a4b88eb71ec91)
  ,('CyBall Genesis Pack',0xeaff7ecfd5bc4502b6eea974a936cdc2ee68df06)
  ,('Buni Universal Trainer',0xa40e375bbff05d982f9401311949c6970ea6e523)
  ,('FateOrigin NFT',0x7b116071d8b062ca8728a168e620520f5338681d)
  ,('Binance NFT Mystery Box-Vogue',0x7337a4c74f52fe7f037d4ecc6544b294de04ba3e)
  ,('ChainColosseum Character',0xf245ade9e124e59bae76a5b2db4b3373c3f415ef)
  ,('Metamon Avatar',0x63872646b05f9094ec6e6de03042d31ce24457e1)
  ,('COMT NFT',0x80bf3b55c7054eeaba6251bf684c4016d5ab10bb)
  ,('MoonKnight',0xa7a9a8156c24c4b0ca910c3ba842d1f1ac7200ef)
  ,('CyBloc',0x13b5816396c5095a145af6994688e6e53fda6095)
  ,('AdventureBunnyBox',0xad03ea3fb459a6ab933914954838cd7fd09732d8)
  ,('Binance NFT Mystery Box-Artbox',0x4357c91883e178922de57bfcc70f463f48bfe4fe)
  ,('Binance NFT Mystery Box-Mobox',0x4e781783c1b22e2a571f6f9a5dcd1798646c5eeb)
  ,('Gravis First Ships Collection',0xb7a7095cbaac934c02bd1a319f0c94cba5dc7806)
  ,('CLAM',0x77ab76cc8193cafbe7ec748d52e57b25d184b311)
  ,('Dragon Fruit Dog',0x38fae8721d4322d2f83d4ee44fdfca3553ffed3c)
  ,('Spaceship',0x36154c2f73e3b9bf2a1c71519ddbdc9a460fbaf6)
  ,('Binance NFT Mystery Box-X World Games3',0xcbaa7e7db4c6bba7db12db777303f13599fc9451)
  ,('WazirXNFT',0x23cad0003e3a2b27b12359b25c25dd9a890af8e1)
  ,('Binamon Z1 Planet NFT Collection',0x9678a9b37738cc5c6cf1df39ca9fe4590ebe015c)
  ,('PrelaxNFT',0x35f4512bfe08c0daea41fcbe43b65106f91d953b)
  ,('FwarChar',0x57150a95a55f31460be38bbe270209623ac6b8e2)
  ,('HyperID MultiPass',0x4e6313f8534c83fab5054a42e3d72fc4254091bd)
  ,('Fishy',0xc7cc4c87d667a7d1ca2818e43b3eeb638b093c93)
  ,('Mining Machine',0x7a2c62c02ab8dff7da47157d7aac3e4b04c0dce0)
  ,('Binance NFT Mystery Box-Trey Songz',0x7a7ef062d08e25a24c12936af92feaef03ef4753)
  ,('Hodler Heroes',0xc9579fb6e60b72e1088abeb9baee5ed7c287698b)
  ,('Diamond Box',0x872028d15bd53d11561856909d4d3eaa4e846b64)
  ,('AlchemyToys',0x14a62860de2fdec247d48780ed110dbb794545d8)
  ,('MysteriousCrates',0xbee7a5a2fe488b38c05e1ccd4815e3447c7eb015)
  ,('OVERLORD',0x4f4880f2b4622007601974399b5714eaaefe01cc)
  ,('Catgirl NFT',0xe796f4b5253a4b3edb4bb3f054c03f147122bacd)
  ,('Daffy Panda Ganging Up',0x74839a2058695a5778ac41fcb9ee5a4bc9919424)
  ,('Non-Fungible Baby',0x9f0225d5c92b9cee4024f6406c4f13e546fd91a8)
  ,('JOJO ID',0xedf2b825b0120dd7db3d6479857d24c3e82d00ff)
  ,('HERA721',0x88ef499ab1688de727c21f1b72faaee1a3f455ad)
  ,('Mining Machine',0xf51e8a1fa9d6036ca81a8645f0a8026585c42864)
  ,('Binance NFT Mystery Box-Orlinski',0x9250ffcc9721ea097ba88f6f118444312b7290dc)
  ,('TTK Hero',0xc0bfe67cedc9fe042f335258eb75b9e1baaf1a5d)
  ,('Dehero Equip Package',0xecef084840473df13ce823f943c329c8ddaae698)
  ,('Vested Buni',0x7cdb479acd5efc8b8b432670e70665bc8a5b1234)
  ,('BunnyPark ShareCard',0x85483b73ba152ae366e1895d439235ef91d7a9c5)
  ,('Metamon Potion',0xb9e879719c1271d044a5a3007797613478552d36)
  ,('Binance NFT Mystery Box-RACA',0x252b6d73afbd35919d80297e86690473aadf1b62)
  ,('ZUKIMOBA',0x6b0b11d51c2deec4eb8b7b694fe85a41b5cffb3f)
  ,('Surviving Soldiers PCapsule',0xc65f2c8ac7262a9fbe182c49a5eb810611f86f1d)
  ,('JOJO Bounty NFT',0xd279d7e46f73961812c4853e065d0096a2657a71)
  ,('Musk USM LAND',0x9c4f74d1d0399afc80e2d71daddf3c4c3f886e94)
  ,('XDOGE SUPERHERO',0x1716e6fbd0df078c97d586fa6058908e7f70472a)
  ,('Bake Musk Mixer',0x6efdd0380c9dde9c50ae99669d8ffd9439efcdbd)
  ,('Binance NFT Mystery Box-Nyan Sum',0x8d1e86fcf28be1e77bef765f5dfdeaea923dbe98)
  ,('Dragon Kart NFT',0xfd2f272c658608a501da7487b3b8a37ecf4babdd)
  ,('V-M',0x19c417d95a64f2216b26d8cf95fd5cc82e9c7d17)
  ,('Weapon NFT',0xe5913a0358d1600fbf3d73df2f1e2d791228a8b1)
  ,('Binance Regular NFT',0x1ddb2c0897daf18632662e71fdd2dbdc0eb3a9ec)
  ,('Binance NFT Mystery Box-X World Games',0x760d1b0747105b1c9620c38361e5ffff4b2af08f)
  ,('Mining Machine',0xb8e9b789ad9eeeb9d5936de545edd46aeebb7259)
  ,('DYT HERO',0x1796ec91d636ee56a57885abc6608cd4abfef74d)
  ,('Wanaka NFT',0xf2397580372f8df900e45127ccea1faf7b9df68e)
  ,('GA-HERO NFT',0xb20e1692799c8bb45ccf08086c1224d3df2ed917)
  ,('Binance NFT Mystery Box-T-MAC',0xab71b6be2f7dbd46480d32a5615edbcbd636fed8)
  ,('DemiKnight',0x11d20864cfe0e8fed15c10658c298572792dad65)
  ,('elfinMysteryboxes',0xf87936a222e61fc9f500b7cfaf3082a60a7ff08f)
  ,('MetaFish NFT',0xb917df1f49fcafe761c04ad48625da351ed73d33)
  ,('NFans',0x5bbf803a3966c2aad7050cfab06b0edfe9073980)
  ,('NinjaFT',0x6a89e915d8513abc4389c652b0658c134e6c4554)
  ,('GOD',0xd34eb2d530245a60c6151b6cfa6d247ee92668c7)
  ,('Wanaka Land',0x12f299cb26452b428017340e79f79662ac8d73ef)
  ,('RxcCharacters',0xed778a5e4ef180e52c2ec9d863bf9ff419036b46)
  ,('Binance NFT Mystery Box-Maye Musk',0xdb3a8fb8bacd8ccece587344f3e704abe27f7581)
  ,('Badass Ape',0x9f5f6b5bf9d7781c482f22dc0a6ffa615c942f0c)
  ,('Farm Planet Land NFT Game Pass',0xbc222458b9ac6d2bf28d30ef1647bff7f6a53cb8)
  ,('CyberJ',0x3bfaef014b8e069db975461b5ca71edbbfd30421)
  ,('MoMo Token',0x4eededfe89dad70ab8cbf70e4dd140ff8e6e8ce5)
  ,('Gravis Finance (A)steroid Mining Captains Rank II Collection',0xaf62910169b3db6f54c5d3dbb3e4185c9c6c5c24)
  ,('Dehero Package',0x336bb619f7389ec8b308209244af55561ca38e78)
  ,('BlockWarriorNFT',0x9bb9d231ee5bd6b18bdf1c1986667ff1f078efb9)
  ,('Binance NFT Mystery Box-JOJO',0x2218f0bd337b8be071a20aaf7ff645bd71eae9b9)
  ,('YooShi Family NFT',0x1ef8218c822e6e82b95e446b0566e5843ee4bc4b)
  ,('BinanceBullSoc',0xa46a4920b40f134420b472b16b3328d74d7b6b70)
  ,('Binamon NFT Collection',0xf8210d78ab301db51c1b4d30d757bccf1c62d789)
  ,('GENESIS CAT',0x4e50e484cd84352afc6e138690e9706cb1c6dfa1)
  ,('TCG World Registry - Original Property Right Token',0x31a0d958fa62761309102b89efa2c0c63d590d67)
  ,('Bunny.Rabit',0x9b93b97a11937365ae060186e1d6840fae01df5b)
  ,('DING',0xd4d63f37a13cbc99094afcf8187142af783e29b8)
  ,('RACAPunk',0x6319e6f0243a32928fcd770f76db8ecdcc670c4a)
  ,('CP-NFT',0x746070ef5f8c63b7ef13d1e4447490430ac3c3dd)
  ,('Tag Protocol Hashtag NFT',0x8d2252ce5b346127afcaf3f5472d12aa2c8a618e)
  ,('NOCOVID19NFT',0x95c44cf28d7d8ac12960a4e25f6749410358e874)
  ,('JOJO NFT',0xb45ed70b24e1c45462d04640f3e91db9a7a49713)
  ,('KingsNFT',0xe40a88012852dc814e29bee5cf2ed82d014e597f)
  ,('STARMON BADGE',0x7c160b4bd3460909e5526f117b8c821a8e2ccd4f)
  ,('mike8848',0xf50d54ae6000544e855717e956a997f6ef06e94b)
  ,('Defina Hero Box',0x3f50da5128d712b7c5c7b329a03901bcca3ddaae)
  ,('NinjaFantasyEquipment',0x391287711ff69ff382ffb32fc2a27c2bdf4096a0)
  ,('Ape Heroes',0xfc27ba34347afccb2d386093b9671b53d2294a96)
  ,('Binance NFT Mystery Box-BigTime2',0xbe634cb786b4ea84b0ae21ba35fc5c4956394e30)
  ,('Binance NFT Mystery Box-Apoki',0xd420c8d2caf6a3276800f9991dbea7745a75c4e9)
  ,('DragonCharacter',0x2d4e9deba9e7ee0aa24d0c14c76e5b6b9448d2a1)
  ,('4JPASS',0xc942ceee2d86e3e066ac1f97044e911ced2fe314)
  ,('Binance NFT Mystery Box-X World Games5',0x885f48bb3dc1f4a1463d0ab0e358314ade62a29b)
  ,('MetaMonsta',0x5e4cae511ba25c342d806d6036aefd0c7445c836)
  ,('MilitiaGame',0x4ad0750fcc7561d80710c0b9316f6932bbfc1560)
  ,('YONFT',0x0d17b3a2129c701e9385addccb0a2de6735a914a)
  ,('MetaDogeNFT',0x4f0f0eba750dda31d181ca823fa216a804bb1acb)
  ,('Ertha NFT',0x58e7aacc7208237dbb392fbec362e1ff542f913d)
  ,('META-CLASSIC',0x348a49706cc517a8d4ba9a84f04b9699955e9497)
  ,('SpaceXNaut Dog',0x406f9a5779571e2d8abefb367cdc90d848b88471)
  ,('DNAxCAT NFT',0x57e6ee4a2d1804fa49fe007674f096f748ac3c40)
  ,('BSC BAKE NFT',0x43db8ea81074b31cf2665b600a4086cf36b59445)
  ,('InPoker Black Label',0xdba7aa36a5961ddcc2ede8560c4d3573d1941445)
  ,('TokenErc721',0x4dffd46ea2ca10c8b408971f0ef5f5192e695c9c)
  ,('LottoChain LOTTO NFT',0x31b9566d988edeb27257ad4b1effe9cb9abf8c90)
  ,('Xmas Game',0xf100f5ed523b55c57feb7fd0b8bd783eb254dd49)
  ,('Binance NFT Mystery Box-Seascape',0x201d44a50604e0fcc3b4a47c2b60e01f00bb47dc)
  ,('BunnyPark Dream Car',0xc39e113788a5d003ed4b37f3abe54ed90aba5c6b)
  ,('Binance NFT Mystery Box-Polychain Monsters',0x18ecc8c05e13af984f6b715eb5291c57904f7487)
  ,('MetaDogeLootbox',0x6a2af4a4e4fe856e3281413918236525b3e51277)
  ,('AutoShark Collectibles',0xca56af4bde480b3c177e1a4115189f261c2af034)
  ,('MetaWars Planet',0x1f099dafba907498e701a72da0007d58f88459de)
  ,('Binance NFT Mystery Box-tokidoki batch 2',0xe294b9bfb29e16cd634ac44f22aa29591ee06656)
  ,('POCO Character',0xafe28e660b233fec1bf6421700b0157294bf31c1)
  ,('PetGameCard',0x6c6ee9b4ee43e18e7c418f00efc0868347939f53)
  ,('Binance NFT Mystery Box-X World Games4',0x38e0de05cf7ac8ee52bcd97f31074da0b710388b)
  ,('NinjaHeads',0x4c80bb32ba4a63997f11d9c9223d55841044991a)
  ,('Jackson_Pollock_Binance_Collectibles',0x349dc7976b1ea0230ad3e9e4f8de6d0842d9982d)
  ,('Monster Slayer NFT',0xefa6b5eb085e9a385c9ba5b308326aff3f8d2712)
  ,('Hifi',0x3e8bb868753357be4492958a8f63dfa29432996d)
  ,('Crystal Kingdoms Heroes',0x98354f2ffee436279cbab5bfc7f600bc359dae22)
  ,('Polka City 3D Asset',0x364151edbac312c7a636cfa7996c3a2b6c2ec590)
  ,('MoniwarNFT',0x2be9dd68a11b6fe461e4c376fff7e13a670fa6b3)
  ,('Convoy',0x4691f1272dadda1936ecdbaddfd6ab98e8731bd2)
  ,('Kryptomon',0xc33d69a337b796a9f0f7588169cd874c3987bde9)
  ,('Lordz',0x4a64a475669b02455321d13fd8d2fdea3f1104f8)
  ,('Binance NFT Mystery Box-Gamefi Protocol',0x8c8203c4d3957772a56dd0a64bfb1661a7ce8f07)
  ,('Syn City Blueprint Coupons',0x1ec94be5c72cf0e0524d6ecb6e7bd0ba1700bf70)
  ,('Binance NFT Mystery Box-FE Formula',0x745197dc5d0e3e9e47162315c81caf67c6698613)
  ,('Binance NFT Mystery Box-NFG',0xb286260da012e6bdff2299566da2f3dc50d32c41)
  ,('Warship',0x3ca1299c029b78fd9809b11669b69dbbf3f773da)
  ,('BinawowNFT',0x189a72a6cc72cc9ec285a16e076e96d42247dbf2)
  ,('Featured Community Collection',0x2d956093d27621ec0c4628b77eaeac6c734da02c)
  ,('HeroLootBox',0xe93a167b9773442e583a75d585f051ac18364a03)
  ,('TSP-NFT',0x8bebd5473de92300196b0b9e7ecd0389026ef819)
  ,('DoggyNFT',0x2dca8804dca120085e9b511f18d8511f58faa64c)
  ,('NFTb_NFT',0x836eb8202d4bc2ed14d1d2861e441c69228155cc)
  ,('TriathonLoot',0x4f0c8a8085774b28999f149954c908273d6632df)
  ,('Diamond Box',0x1f70bb2ac9b51d5c2ee32e76188d619d6eaf882a)
  ,('The Moon Walkers Club',0x384f6d76d5528b3a16dcfe35d25944ec7803c28d)
  ,('CryptoZoon Gem',0xd6814f38c5b638b10824ecc56534697caf16a9f2)
  ,('Wolf Game DAO Land - Genesis',0xcdc47b37e4ec36d15b081911fa7fe264e59937c9)
  ,('punkmonster',0xbd36a06cd66732c4066afa8442c3260f0542ba1c)
  ,('Raffle',0x00369e8bd75301e7441b5f9402c062a6fe2e3ec9)
  ,('HowlBike',0x03d9177ffece5e5c947d04debe30b2a1553521f7)
  ,('Dstarlights VCC NFTs',0x29b59ddd190f30d8befff8f55ed13562eb48e6aa)
  ,('Abell Survivor',0xbba09626e63112525640c9f28a0062c9d56e1e5b)
  ,('LittleGhosts',0x98f606a4cdde68b9f68732d21fb9ba8b5510ee48)
  ,('treasureland.dego',0xf7a21ffb762ef2c14d8713b18f5596b4b0b0490a)
  ,('Crystal Kingdoms Heroes',0x0d962465414fa7f59167d5c0f5b240898900b081)
  ,('GoldMiner',0x4a4e7ce662f5004b110045afdddc7253aa9c7bb0)
  ,('POCO Equiment',0xe953c23c25425c5306e159b8f6d6ff9f7374cee9)
  ,('GoldMiner',0x5eb7a1705e2e55e48b818968b255d3ea482a606d)
  ,('GSTO',0x16a2bd823c5ffd84e489f9db270ac7f16e20fe32)
  ,('RPS League',0xfeccbc6dffef9e456e501f936fefab5b96a8bf9e)
  ,('ExtensionPunks',0x28d8ea1c37adc56bfcdee5f5ec8ea078c6cb87fa)
  ,('Strainz',0x2bc47e45abbb6bc55890eab4940aa9946e24560f)
  ,('COSO Equity Token',0x67c943794a9edbcf2e2cc5bdbbdc964a8c4b8b47)
  ,('GAMYFI NFT',0xf7c33c08f739516677e40e7f104d5774510e0059)
  ,('Wolf Game DAO Farmer',0xc975a7e2a7fe23aaec819d2e51d228b5cd01097c)
  ,('CatNIP NFT',0xd48e6504874fad77ff01352112dbc699698651e0)
  ,('Vibranium Game Card',0x09b8290f1cdd8da8715c66e07058636d45024ff0)
  ,('Arcane Items',0xe97a1b9f5d4b849f0d78f58adb7dd91e90e0fb40)
  ,('Goblin Token',0x48c5186010eb6c287f0cf0bf9edef0ee4230fa20)
  ,('StarArk',0xd4fcaf215cf55828148d64677c58277177acf49e)
  ,('FateOrigin BOX NFT',0x8b0b26b97aa4b907dd8dfe71fd0b602d71bb7df4)
  ,('PAD Pack',0xf18b9cdd3083eb1d84ee3cdcca418923ceb5455d)
  ,('Maverick v2 Position',0x116193c58B40D50687c0433B2aa0cC4AE00bC32c)
    ) AS temp_table (name, contract_address)
