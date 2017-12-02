/*
Navicat MySQL Data Transfer

Source Server         : CodingWell
Source Server Version : 100126
Source Host           : localhost:3306
Source Database       : hupu

Target Server Type    : MYSQL
Target Server Version : 100126
File Encoding         : 65001

Date: 2017-12-02 16:56:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(555) DEFAULT NULL,
  `password` varchar(555) DEFAULT NULL,
  `email` varchar(555) DEFAULT NULL,
  `telnumber` int(11) DEFAULT NULL,
  `avatar` varchar(555) DEFAULT NULL,
  `gender` varchar(555) DEFAULT NULL,
  `userinfo` varchar(555) DEFAULT NULL,
  `birthday` varchar(555) DEFAULT NULL,
  `address` varchar(555) DEFAULT NULL,
  `education` varchar(555) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_table
-- ----------------------------
INSERT INTO `user_table` VALUES ('18', 'admin', '$2a$10$/jRvBh81VjQMYPTeEldiGetOWmgCkee.8ICzAe19Xz6/rYB5Qw0Zy', null, null, null, null, null, null, null, null);
INSERT INTO `user_table` VALUES ('20', '123', '$2a$10$l8PYv/5KES.XYVThBNGaMe5n2oEawNSE1wJEh9CDkwhX3CogLWjtG', null, null, null, null, null, null, null, null);
INSERT INTO `user_table` VALUES ('21', '789', '$2a$10$jWdilL7jVVO4DNiTe/hnPupklQy90Wizr82MpBBRwgYq5aAaJLuWC', null, null, null, null, null, null, null, null);
INSERT INTO `user_table` VALUES ('22', '999', '$2a$10$aVsnCeykQhl2FYMZLJSzAupayZNDbx76SlXUK81ktdJY4Z9uxSwYi', null, null, null, null, null, null, null, null);
INSERT INTO `user_table` VALUES ('23', '99', '$2a$10$GH4ya/3mcXeBp06eaesYdObI3nLLozXmoyY0WybBT4/h1z9O5E/lm', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for voice_nba
-- ----------------------------
DROP TABLE IF EXISTS `voice_nba`;
CREATE TABLE `voice_nba` (
  `id` int(11) DEFAULT NULL,
  `href` varchar(555) DEFAULT NULL,
  `title` varchar(555) DEFAULT NULL,
  `up_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `source` varchar(555) DEFAULT NULL,
  `thumb` varchar(555) DEFAULT NULL,
  `info` varchar(555) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of voice_nba
-- ----------------------------
INSERT INTO `voice_nba` VALUES ('2231519', 'https://voice.hupu.com/nba/2231519.html', '保罗-乔治：我们必须坚持做那些奏效的事情', '2017-11-30 16:39:01', 'NBA官网', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/bf59271cdbe7e09809d3cde47f1f971d365f76e9.jpg', '虎扑11月30日讯 早前结束的一场常规赛，雷霆108-121不敌魔术。输掉这场比赛之后，雷霆遭遇三连败，他们目前以8胜12负的战绩排名西部第10。');
INSERT INTO `voice_nba` VALUES ('2231517', 'https://voice.hupu.com/nba/2231517.html', '英格拉姆谈面对杜兰特砍下32分：我就是打球', '2017-11-30 16:30:25', 'Twitter', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/29df3873980e8d747a511814207a4e0af859254f.png', '虎扑11月30日讯 湖人今天以123-127不敌勇士，赛后，湖人前锋布兰登-英格拉姆接受了采访。');
INSERT INTO `voice_nba` VALUES ('2231515', 'https://voice.hupu.com/nba/2231515.html', '克拉克森晒合照祝兰德尔23岁生日快乐', '2017-11-30 16:12:38', 'Instagram', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/32b56fe8d44f81cc0a18266f026da4d90267284b.jpg', '虎扑11月30日讯 今天，湖人球员朱利叶斯-兰德尔迎来了自己的23岁生日。队友乔丹-克拉克森在Instagram上传了一张自己与兰德尔的合影（见新闻配图），并祝他生日快乐。');
INSERT INTO `voice_nba` VALUES ('2231514', 'https://voice.hupu.com/nba/2231514.html', '布兰妮-斯皮尔斯现场观看湖人与勇士的比赛', '2017-11-30 16:06:30', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/5bc44935102733a835596fe67e374ef5c6a5d61b.jpg', '虎扑11月30日讯 湖人在今天的比赛中主场123-127不敌勇士，场边，美国著名歌手布兰妮-斯皮尔斯（Britney Spears）也来到了现场观看比赛（见新闻配图）。');
INSERT INTO `voice_nba` VALUES ('2231512', 'https://voice.hupu.com/nba/2231512.html', '尼克-杨晒自己与克拉克森、兰德尔的合影', '2017-11-30 16:01:06', 'Instagram', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/c46c0d540f8b6769f85d72843d288b527d93b4e3.jpg', '虎扑11月30日讯 勇士在今天的比赛中以127-123战胜了湖人，勇士球员尼克-杨出场14分钟，5投3中得到9分2篮板。');
INSERT INTO `voice_nba` VALUES ('2231511', 'https://voice.hupu.com/nba/2231511.html', '威少得到生涯第110次30+5+5，超越艾弗森', '2017-11-30 16:00:52', 'Basketball-Reference', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/a6fa77fccc3c0ba0e956092b461e1a522660f64d.jpg', '虎扑11月30日讯 雷霆在今天的比赛中以108-121不敌魔术，球队后卫拉塞尔-威斯布鲁克首发出场38分钟，23投11中得到37分11篮板5助攻。');
INSERT INTO `voice_nba` VALUES ('2231507', 'https://voice.hupu.com/nba/2231507.html', '库里：咨询了科比如何在手指有伤的情况下打球', '2017-11-30 15:52:37', 'Twitter', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/5180964c875d23d5615ed07fcd795d480dfafcc2.png', '虎扑11月30日讯 勇士在今天的比赛中以127-123击败湖人，此役，斯蒂芬-库里登场39分钟，20投9中得到28分5篮板7助攻。');
INSERT INTO `voice_nba` VALUES ('2231504', 'https://voice.hupu.com/nba/2231504.html', 'KD谈库里恢复手感：惊讶啥，他就是超级巨星', '2017-11-30 15:30:07', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/2f2c6d0615b629bffd3878e89c532abe5e809f34.png', '虎扑11月30日讯 勇士在今天以127-123击败了湖人，赛后，勇士前锋凯文-杜兰特接受了采访。');
INSERT INTO `voice_nba` VALUES ('2231503', 'https://voice.hupu.com/nba/2231503.html', '格林谈第四节最后干扰英格拉姆：他每次都走右手', '2017-11-30 15:21:00', 'Twitter', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/2b6ab2a9a88dbc48b621e49d82cd3fbe6978f585.jpg', '虎扑11月30日讯 勇士今日经过加时以127-123战胜了湖人，德雷蒙德-格林赛后接受了媒体的采访。');
INSERT INTO `voice_nba` VALUES ('2231502', 'https://voice.hupu.com/nba/2231502.html', '沃顿：英格拉姆会从今天的比赛中学到很多', '2017-11-30 15:18:29', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/c8057bc205ae325d1f7adae91f4d3472b74d8464.png', '虎扑11月30日讯 湖人在今天的比赛中以123-127不敌勇士，赛后，湖人主教练卢克-沃顿接受了采访。');
INSERT INTO `voice_nba` VALUES ('2231500', 'https://voice.hupu.com/nba/2231500.html', '小哈达威晒比赛照：这仅仅是个开始', '2017-11-30 15:10:42', 'Instagram', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/dcf96742512eb1a5ce5f95e93a51f9416b97f3af.jpg', '虎扑11月30日讯 尼克斯球员小蒂姆-哈达威刚刚更新了自己的Instagram，发布了一张球队在今天比赛中的照片。');
INSERT INTO `voice_nba` VALUES ('2231499', 'https://voice.hupu.com/nba/2231499.html', '库里：感觉我们是最好的，但我们并非不可战胜的', '2017-11-30 15:08:00', 'Twitter', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/9c893abee86e29516a63b4bd5a68cb1fce0872d3.jpg', '虎扑11月30日讯 勇士今日经过加时以127-123战胜了湖人，斯蒂芬-库里赛后接受了媒体的采访。');
INSERT INTO `voice_nba` VALUES ('2231495', 'https://voice.hupu.com/nba/2231495.html', 'NBA官方发布今日十支获胜球队的图集', '2017-11-30 14:59:18', 'Instagram', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/48a5d8cbc8c6bb68b23bc80621c4426ae54237ad.jpg', '虎扑11月30日讯 今日NBA共进行了十场比赛，赛后NBA官方在Instagram发布了十支获胜球队的图集。');
INSERT INTO `voice_nba` VALUES ('2231494', 'https://voice.hupu.com/nba/2231494.html', '科尔：接下来的客场会找个时间让伊格达拉休息', '2017-11-30 14:57:50', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/5d4317b18eede097d639ca67a91bd26f8bd452b0.png', '虎扑11月30日讯 勇士在今天的比赛中以127-123击败了湖人，赛后，勇士主教练史蒂夫-科尔接受了采访。');
INSERT INTO `voice_nba` VALUES ('2231493', 'https://voice.hupu.com/nba/2231493.html', '杨：我在比赛里讲了各种垃圾话，对阵湖人很有趣', '2017-11-30 14:56:00', 'Twitter', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/de871d2c59283e75288eff486c091ae2bdb5413a.jpg', '虎扑11月30日讯 勇士今日经过加时以127-123战胜了湖人，尼克-杨赛后接受了媒体的采访。');
INSERT INTO `voice_nba` VALUES ('2231492', 'https://voice.hupu.com/nba/2231492.html', '英格拉姆成为湖人队史第四年轻单场得到30分的球员', '2017-11-30 14:52:22', 'Basketball-Reference', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/647b8ad81361d3d151608c173158d1265d6dd584.jpg', '虎扑11月30日讯 湖人在今天的比赛中123-127不敌勇士，布兰登-英格拉姆表现出色，首发出场44分钟，21投12中得到32分5篮板3助攻。');
INSERT INTO `voice_nba` VALUES ('2231491', 'https://voice.hupu.com/nba/2231491.html', '杜兰特：库里在加时赛命中了几个关键投篮', '2017-11-30 14:45:00', 'Twitter', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/64836270d5394515663d1fa7ad0a484e64b55d7c.jpg', '虎扑11月30日讯 勇士今日经过加时以127-123战胜了湖人，凯文-杜兰特赛后在场边接受了媒体的采访。');
INSERT INTO `voice_nba` VALUES ('2231490', 'https://voice.hupu.com/nba/2231490.html', 'NBA官方评出今日最佳数据：戈登40+15当选', '2017-11-30 14:43:42', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/4b1d882142a6dfe4a043760d4a15d4944000fcd4.jpg', '虎扑11月30日讯 今日NBA官方在推特评选了今日的最佳数据，魔术球员阿龙-戈登以40分15篮板的表现成功当选。');
INSERT INTO `voice_nba` VALUES ('2231489', 'https://voice.hupu.com/nba/2231489.html', '科温顿晒比赛照：场面并不好看，但我们还是赢了', '2017-11-30 14:39:36', 'Instagram', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/942880470b9eb3bb1f8d20be19cd6940dfd1a4ff.jpg', '虎扑11月30日讯 76人球员罗伯特-科温顿今天更新了自己的Instagram，发布了一张自己在比赛中的照片。');
INSERT INTO `voice_nba` VALUES ('2231488', 'https://voice.hupu.com/nba/2231488.html', '波尔津吉斯：感谢所有人的支持，很快就会回归', '2017-11-30 14:38:36', 'Instagram', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/fdf94624caead04daf2cb85f6953fda51fa1689b.jpg', '虎扑11月30日讯 今日尼克斯主场115-86大胜热火，尼克斯球员克里斯塔普斯-波尔津吉斯在比赛首节右脚踝扭伤离场。');
INSERT INTO `voice_nba` VALUES ('2231486', 'https://voice.hupu.com/nba/2231486.html', '安东尼：不允许威少一人揽责，我们一起赢一起输', '2017-11-30 14:36:21', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/9b55400db0d13b68ee39c4b3a36ce75a33423cbe.png', '虎扑11月30日讯 雷霆在今天的比赛中以108-121不敌魔术，赛后，雷霆前锋卡梅罗-安东尼接受了采访。');
INSERT INTO `voice_nba` VALUES ('2231485', 'https://voice.hupu.com/nba/2231485.html', '西蒙斯赛后发鸡汤：冷静的头脑能带来强大的内心与自信', '2017-11-30 14:35:07', 'Instagram', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/44fb48dd79b16b83332b856032fedb021b28acd3.jpg', '虎扑11月30日讯 76人球员本-西蒙斯刚刚更新了自己的Instagram，发布了一张自己在球员通道中的照片。');
INSERT INTO `voice_nba` VALUES ('2231484', 'https://voice.hupu.com/nba/2231484.html', '公牛记者发布波蒂斯和米罗蒂奇打招呼的照片', '2017-11-30 14:30:57', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/a02bc0c337ef81b69b0261c563108431f5a3606a.jpg', '虎扑11月30日讯 今日《芝加哥论坛报》记者K.C. Johnson更新了推特，他发布了一张公牛球员尼古拉-米罗蒂奇在博比-波蒂斯下场休息时伸出手与其击拳打招呼的照片（见新闻配图）。');
INSERT INTO `voice_nba` VALUES ('2231483', 'https://voice.hupu.com/nba/2231483.html', 'TJ-麦康奈尔因肩伤将缺席76人与凯尔特人的比赛', '2017-11-30 14:30:12', 'Twitter', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/89032f1ba4c2a985c9ca9e36bdae2f54424cb732.jpg', '虎扑11月30日讯  在今天76人118-113击败奇才的的比赛中，76人后卫TJ-麦康奈尔由于左肩受伤提前离场。');
INSERT INTO `voice_nba` VALUES ('2231481', 'https://voice.hupu.com/nba/2231481.html', '凯尔-安德森：阿德是完美领袖，用行动说话', '2017-11-30 14:21:11', '圣安东尼奥新闻快报', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/ef623f02e606f9d5e6269d68786aa5a0c034d495.png', '虎扑11月30日讯 马刺在今天的比赛中以104-95击败灰熊，拉马库斯-阿尔德里奇状态神勇，他登场37分钟，24投17中得到41分6篮板1助攻。');
INSERT INTO `voice_nba` VALUES ('2231480', 'https://voice.hupu.com/nba/2231480.html', '托拜厄斯-哈里斯：大学裁判每个回合都要响哨？', '2017-11-30 14:20:32', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/38d3e8d42a251bfdc2b12065c83bcbe629bc7d97.png', '虎扑11月30日讯 活塞球员托拜厄斯-哈里斯刚刚更新了自己的推特，表达了他对NCAA一场比赛中裁判判罚的不满。');
INSERT INTO `voice_nba` VALUES ('2231476', 'https://voice.hupu.com/nba/2231476.html', '麦科勒姆发推称赞英格拉姆：他会是一个大麻烦', '2017-11-30 14:18:04', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/4f1e1701e1aa7e118f773ea98e87e0dc85999459.jpg', '虎扑11月30日讯 开拓者球员CJ-麦科勒姆刚刚更新了自己推特，表达了自己对湖人球员布兰登-英格拉姆的赞美。');
INSERT INTO `voice_nba` VALUES ('2231478', 'https://voice.hupu.com/nba/2231478.html', '小加索尔：我们之前有疑虑，大家看起来没有活力', '2017-11-30 14:18:00', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/47a9bae7f08d52b1658ab15deae02d5722ade373.jpg', '虎扑11月30日讯 灰熊今日以95-104不敌马刺，赛后灰熊中锋马克-加索尔接受了媒体的采访。');
INSERT INTO `voice_nba` VALUES ('2231475', 'https://voice.hupu.com/nba/2231475.html', '准三双！德雷蒙德-格林得到15分11篮板9助攻', '2017-11-30 14:17:59', 'Basketball-Reference', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/21e280d71b0b6f0fa6176dd0c22a5db232809d60.jpg', '虎扑11月30日讯 今日勇士在客场以127-123战胜湖人，勇士球员德雷蒙德-格林出战38分钟，10投5中得到15分11篮板9助攻4抢断的准三双数据。');
INSERT INTO `voice_nba` VALUES ('2231474', 'https://voice.hupu.com/nba/2231474.html', '杜兰特生涯三分命中数升至历史第39位', '2017-11-30 14:12:30', 'Basketball-Reference', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/0c886a2edfe18093e843a7c625acf603bf3c8e7e.jpg', '虎扑11月30日讯 今日勇士客场挑战湖人，勇士球员凯文-杜兰特出场42分钟得到29分7篮板5助攻，其中三分7投3中，这样他职业生涯三分命中数达到了1304，追平迈克-邓利维（1304），升至历史第39位。');
INSERT INTO `voice_nba` VALUES ('2231473', 'https://voice.hupu.com/nba/2231473.html', '阿德：之前的对手都包夹我，今天有很多单防', '2017-11-30 14:09:33', '圣安东尼奥新闻快报', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/01cc8e82451c9651960004c09fba8ab34df70e8b.png', '虎扑11月30日讯 马刺在今天的比赛中以104-95击败灰熊，拉马库斯-阿尔德里奇状态神勇，他登场37分钟，24投17中得到41分6篮板1助攻。');
INSERT INTO `voice_nba` VALUES ('2231472', 'https://voice.hupu.com/nba/2231472.html', '灰熊经理：不考虑交易小加索尔和康利来开始重建', '2017-11-30 14:07:00', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/10fbf11f267caca001bb6d919376f8ae5ea2e5cc.jpg', '虎扑11月30日讯 灰熊总经理克里斯-华莱士接受采访时表示，他不会考虑通过交易走马克-加索尔或者迈克-康利来开始重建，灰熊已经遭遇了9连败。');
INSERT INTO `voice_nba` VALUES ('2231469', 'https://voice.hupu.com/nba/2231469.html', '鲍尔15+10，生涯第四次单场得分与助攻皆上双', '2017-11-30 14:05:38', 'Basketball-Reference', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/290391a6036d9ec15d280b704c1ceef9bd69655c.jpg', '虎扑11月30日讯 湖人在今天的比赛中123-127不敌勇士，球队新秀朗佐-鲍尔首发出场42分钟，得到15分2篮板10助攻。');
INSERT INTO `voice_nba` VALUES ('2231468', 'https://voice.hupu.com/nba/2231468.html', '波波评价阿德：和其他比赛一样，今天他又做到了', '2017-11-30 13:59:48', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/7ecaa6fa8ec70bb3457fe808e3515b94c2820b0e.png', '虎扑11月30日讯 马刺今天主场104-95战胜灰熊，赛后马刺主帅格雷格-波波维奇接受了记者采访。');
INSERT INTO `voice_nba` VALUES ('2231467', 'https://voice.hupu.com/nba/2231467.html', '泰厄斯-琼斯三场首发数据：场均12.3分4抢断', '2017-11-30 13:57:54', '虎扑', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/a2cf30f20ec8771ac4f5685f57cc05c960ba8f56.jpg', '虎扑11月30日讯 今日森林狼客场以120-102战胜鹈鹕，森林狼球员泰厄斯-琼斯首发出战42分钟，9投6中得到16分6助攻4篮板4抢断。');
INSERT INTO `voice_nba` VALUES ('2231465', 'https://voice.hupu.com/nba/2231465.html', '贝尔回忆07年季后赛纳什被撞倒：他承认他有演', '2017-11-30 13:56:03', 'ArizonaSports', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/f4b0be4f0c3fbe1e94b29920c90df04693504b58.png', '虎扑11月30日讯 近日，前太阳球员拉加-贝尔在参加一档播客节目时谈到了2007年西部半决赛中一件争议事件。');
INSERT INTO `voice_nba` VALUES ('2231464', 'https://voice.hupu.com/nba/2231464.html', '多特森成为第11位同一天在两个联盟里打球的球员', '2017-11-30 13:55:40', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/587f33a860e60487aff2088d85f5fd026eb8ea63.png', '虎扑11月30日讯 尼克斯在今天的比赛中以115-86战胜热火，尼克斯球员丹伊恩-多特森出场6分钟，4投2中得到5分。');
INSERT INTO `voice_nba` VALUES ('2231463', 'https://voice.hupu.com/nba/2231463.html', '迈克尔-马龙：如果不控制失误就无法击败任何人', '2017-11-30 13:53:01', '丹佛邮报', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/84cede0e23487cf7a2ec5f56581a9ca82fb6e9f8.jpg', '虎扑11月30日讯 掘金昨天客场惨败于爵士，下半场表现更是让人无法直视，对此掘金主教练迈克尔-马龙在今天接受采访时也做出了回应。');
INSERT INTO `voice_nba` VALUES ('2231462', 'https://voice.hupu.com/nba/2231462.html', '德拉蒙德成为本赛季首位篮板数突破300的球员', '2017-11-30 13:52:44', 'Basketball-Reference', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/3e1017214acaee00f195babfbd91deb2e07fb9d7.jpg', '虎扑11月30日讯 活塞在今天的比赛中以131-107击败太阳，球队中锋安德烈-德拉蒙德首发出场28分钟，8投5中得到13分7篮板7助攻。');
INSERT INTO `voice_nba` VALUES ('2231461', 'https://voice.hupu.com/nba/2231461.html', '英格拉姆32分，刷新个人生涯单场得分纪录', '2017-11-30 13:50:52', 'Basketball-Reference', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/83d7ba6a90401038bbd80441c906fed6a7cf6bed.jpg', '虎扑11月30日讯 湖人在今天的比赛中123-127不敌勇士，湖人球员布兰登-英格拉姆首发出场44分钟，21投12中得到32分5篮板3助攻。');
INSERT INTO `voice_nba` VALUES ('2231460', 'https://voice.hupu.com/nba/2231460.html', '帕克谈出场时间限制：要谨慎，不要让伤病反复', '2017-11-30 13:44:52', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/4bf0177039b07fcc60222bda69df61995cb2e932.png', '虎扑11月30日讯 马刺今天主场104-95战胜灰熊，赛后马刺后卫托尼-帕克接受了记者采访。');
INSERT INTO `voice_nba` VALUES ('2231459', 'https://voice.hupu.com/nba/2231459.html', '勇士五名首发球员得分均上双，今年二月以来首次', '2017-11-30 13:43:51', 'Twitter', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/f89e5b16a1121845fcdc86a0faa726a032dc8f8c.jpg', '虎扑11月30日讯 勇士在今天的比赛中对阵湖人，比赛进行到第四节，勇士五名首发球员的得分全部上双，其中斯蒂芬-库里13分、克莱-汤普森18分、凯文-杜兰特22分、德雷蒙德-格林12分、扎扎-帕楚里亚11分。');
INSERT INTO `voice_nba` VALUES ('2231458', 'https://voice.hupu.com/nba/2231458.html', '西蒙斯谈对手故意犯规：这样的事情不会持续很久', '2017-11-30 13:41:00', 'NBA官网', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/7f07e68394760bf086e6caef0203597c390f6675.jpg', '虎扑11月30日讯 76人今日在主场以118-113击败奇才，76人球员本-西蒙斯赛后接受了媒体的采访。');
INSERT INTO `voice_nba` VALUES ('2231457', 'https://voice.hupu.com/nba/2231457.html', '卡佩拉晒今日扣篮照：又一场胜利', '2017-11-30 13:40:50', 'Twitter', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/ecf7a25b1fd5c3de7461a6e0c74115a87b6d5164.jpg', '虎扑11月30日讯 今日火箭主场以118-97战胜步行者，取得了6连胜。火箭球员克林特-卡佩拉赛后在推特发布了自己在比赛中的扣篮照庆祝胜利（见新闻配图）。');
INSERT INTO `voice_nba` VALUES ('2231456', 'https://voice.hupu.com/nba/2231456.html', '坎特晒比赛照庆祝胜利：漂亮的一仗！', '2017-11-30 13:37:11', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/53fbebe48e31b93bccc4eecb0423ff28a007fc1c.jpg', '虎扑11月30日讯 尼克斯球员埃内斯-坎特刚刚更新了自己的推特，发布了一张自己在比赛中的照片。');
INSERT INTO `voice_nba` VALUES ('2231454', 'https://voice.hupu.com/nba/2231454.html', '小加索尔运动战进球排名队史第一，现役球员中第四人', '2017-11-30 13:35:06', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/e7f064a8b90112a02368fba63a61f96095f39114.png', '虎扑11月30日讯 今日灰熊客场以95-104不敌马刺，灰熊球员马克-加索尔出战36分钟，11投4中得到10分6篮板7助攻。');
INSERT INTO `voice_nba` VALUES ('2231453', 'https://voice.hupu.com/nba/2231453.html', '哈登成为本赛季首位送出200次助攻的球员', '2017-11-30 13:33:54', 'Twitter', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/289380e858ab111ff20940d77789f21178583f75.jpg', '虎扑11月30日讯 火箭在今天的比赛中以118-97战胜了步行者，火箭球员詹姆斯-哈登出场35分钟，22投8中得到29分8篮板10助攻1抢断。');
INSERT INTO `voice_nba` VALUES ('2231452', 'https://voice.hupu.com/nba/2231452.html', '恩比德谈奇才对西蒙斯故意犯规：他终结了比赛', '2017-11-30 13:33:00', 'NBA官网', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/6b269438089809cecd1585879f69fe520bb4aa15.jpg', '虎扑11月30日讯 76人今日在主场以118-113击败奇才，76人球员乔尔-恩比德赛后接受了媒体的采访。');
INSERT INTO `voice_nba` VALUES ('2231450', 'https://voice.hupu.com/nba/2231450.html', '布朗：比赛宗旨很简单，就是打出我们的身高优势', '2017-11-30 13:27:01', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/7976fd1a3f908810cd2cfbd900bd0632320981d3.png', '虎扑11月30日讯 在今日结束的一场常规赛中，76人坐镇主场以118-113力克奇才。赛后76人主教练布雷特-布朗赛后在接受采访时对于球队本场比赛的表现做出了点评。');
INSERT INTO `voice_nba` VALUES ('2231449', 'https://voice.hupu.com/nba/2231449.html', '保罗火箭生涯前7战送出72次助攻，仅有8次失误', '2017-11-30 13:23:25', 'Twitter', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/44e42f3b47fdfc2a477a9861e7929a0dfc98d161.jpg', '虎扑11月30日讯 火箭在今天的比赛中118-97击败步行者，克里斯-保罗首发出场30分钟，8投5中得到13分6篮板7助攻。');
INSERT INTO `voice_nba` VALUES ('2231448', 'https://voice.hupu.com/nba/2231448.html', '活塞本赛季前20场比赛场均得105.8分', '2017-11-30 13:22:18', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/a21516de0aefb1b65a68733f4f5140f9ac45aee3.jpg', '虎扑11月30日讯 活塞在今天的比赛中以131-107战胜太阳，131分是活塞本赛季最高的单场得分。');
INSERT INTO `voice_nba` VALUES ('2231447', 'https://voice.hupu.com/nba/2231447.html', '奥拉迪波：火箭在下半场命中了一些高难度投篮', '2017-11-30 13:19:00', 'Twitter', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/0a352e49071dad32579a874d6448a729aa084961.jpg', '虎扑11月30日讯 步行者今日以97-118不敌火箭，赛后步行者的维克托-奥拉迪波接受了媒体的采访。');
INSERT INTO `voice_nba` VALUES ('2231444', 'https://voice.hupu.com/nba/2231444.html', '鲍尔眼角上方被撞出血，已重新回到场上', '2017-11-30 13:09:26', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/86c9a47894f798be7ca8d106503a331e1f4e9cfc.jpg', '虎扑11月30日讯 湖人在今天的比赛中对阵勇士，湖人球员朗佐-鲍尔眼角上方被撞出血，回到更衣室接受治疗后，现已回到场上。');
INSERT INTO `voice_nba` VALUES ('2231443', 'https://voice.hupu.com/nba/2231443.html', '阿龙-戈登谈结束9连败：现在是时候开始连胜了', '2017-11-30 13:09:00', 'NBA官网', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/d0794bb452560eb12538275472f5eff20b980173.jpg', '虎扑11月30日讯 今日魔术主场以121-108战胜雷霆，结束了9连败，魔术球员阿龙-戈登出战44分钟，23投13中得到40分15篮板4助攻4抢断。');
INSERT INTO `voice_nba` VALUES ('2231442', 'https://voice.hupu.com/nba/2231442.html', '锡伯杜谈戴维斯被驱逐：场上充满了身体对抗', '2017-11-30 13:07:02', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/b0a8ebc3e44e46c0b13f6d1a2406820b85e81d0f.jpg', '虎扑11月30日讯 鹈鹕在今天的比赛中102-120不敌森林狼，鹈鹕球员安东尼-戴维斯在比赛中因不满裁判判罚被驱逐出场。赛后，森林狼主帅汤姆-锡伯杜谈到了这一事件。');
INSERT INTO `voice_nba` VALUES ('2231441', 'https://voice.hupu.com/nba/2231441.html', '戈登成为魔术队史首位得到40+15+4+4的球员', '2017-11-30 13:05:35', 'Twitter', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/12391732a061cdc631e30817549d7f2f8a4337b2.jpg', '虎扑11月30日讯 今日魔术主场以121-108战胜雷霆，魔术球员阿龙-戈登出战44分钟，23投13中得到40分15篮板4助攻4抢断。');
INSERT INTO `voice_nba` VALUES ('2231440', 'https://voice.hupu.com/nba/2231440.html', '比克斯塔夫：比赛节奏较快，我们出现了很多失误', '2017-11-30 13:04:31', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/fbee479d4055bf674a6bbbbcdd16446f0933d346.png', '虎扑11月30日讯 在刚刚结束的一场常规赛中，灰熊客场以95-104不敌马刺。赛后灰熊临时主教练JB-比克斯塔夫在接受采访时，对于本场比赛球队的表现做出了点评。');
INSERT INTO `voice_nba` VALUES ('2231439', 'https://voice.hupu.com/nba/2231439.html', '特雷沃-布克：我们的表现源于保持自信', '2017-11-30 13:04:28', 'Twitter', 'https://c1.hoopchina.com.cn/uploads/star/event/images/171130/43bc3b01a43f52ccb9654959781e9d179c1c6d31.png', '虎扑11月30日讯 在刚刚结束的一场常规赛中，篮网客场以109-104力克小牛。本场比赛篮网球员特雷沃-布克表现出色，出场28分钟，13投8中，得到16分10篮板2助攻。赛后布克在场边接受了采访。');
INSERT INTO `voice_nba` VALUES ('2231438', 'https://voice.hupu.com/nba/2231438.html', '洛瑞8个三分创个人生涯单场新高', '2017-11-30 13:03:07', 'Twitter', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/98b812be9a02042fcc1693526b5b1046cf48f9d5.jpg', '虎扑11月30日讯 猛龙今日在主场以126-113击败黄蜂，猛龙后卫凯尔-洛瑞本场比赛命中了生涯新高8个三分，并且得到了赛季新高的36分。');
INSERT INTO `voice_nba` VALUES ('2231436', 'https://voice.hupu.com/nba/2231436.html', '莱恩-安德森：哈登和保罗的表现令人难以置信', '2017-11-30 12:53:00', 'NBA官网', 'https://c2.hoopchina.com.cn/uploads/star/event/images/171130/49e1b1d43ed17e9c1dbf44c1f51df7133c9e0588.jpg', '虎扑11月30日讯 火箭今日以118-97战胜了步行者，拿到了6连胜。火箭的莱恩-安德森赛后接受了媒体的采访。');
