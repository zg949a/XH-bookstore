-- A：文学名著
-- B：科幻小说
-- C：外国名著
-- D：玄幻小说

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `classID` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `class` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (1, 'https://ts1.cn.mm.bing.net/th/id/R-C.e6fdbe2b99aaace50d216eec959cd519?rik=hPqCLwOTSjZdqw&riu=http%3a%2f%2fi.gtimg.cn%2fqqlive%2fimg%2fjpgcache%2ffiles%2fqqvideo%2fj%2fjvhuaf93hh858fs.jpg&ehk=rrBCT65Mqv4N%2b336sGqZrA4P8puIj36r912OBgYLQAI%3d&risl=&pid=ImgRaw&r=0', '测试', 'A', '文学名著');
INSERT INTO `banner` VALUES (2, 'https://img.zcool.cn/community/01cde455dacbf06ac7251df8038155.jpg@1280w_1l_2o_100sh.jpg', '测试', 'B', '科幻小说');
INSERT INTO `banner` VALUES (3, 'https://img.zcool.cn/community/01d57a5aa7e340a80121246d853bcc.jpeg', '测试', 'C', '外国名著');
INSERT INTO `banner` VALUES (4, 'https://tse2-mm.cn.bing.net/th/id/OIP-C.84ZMZQSCYwpk9ijFaCESZwAAAA?rs=1&pid=ImgDetMain', '测试', 'D', '玄幻小说');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `image` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `currentID` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'newTable' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `cate` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
	`tag` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `classID` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '水浒传正版学生版中小学生课外阅读书籍五六七八年级水浒传学生版四大名著白话文版四大名著青少版5年级必北京教育出版社', '67', 'https://p1.ssl.qhimg.com/t019f3d9a45fabe8cd5.jpg', '文学名著','水浒传', 'A');
INSERT INTO `goods` VALUES (2, '流浪地球书正版包邮刘慈欣少年科幻科学小说6册任选 中小学生青少年课外阅读书长篇科幻文学全集悬疑小说 现当代文学畅销书籍', '159', 'https://puui.qpic.cn/vcover_vt_pic/0/3fvg46217gw800n1566963547/0','科幻小说', '流浪地球', 'B');
INSERT INTO `goods` VALUES (3, '龚俊推荐平凡的世界全三册新版路遥原著书茅盾文学奖学校八年级课外阅读经典书目中国现当代文学经典小说散文随笔畅销书学习', '88', 'https://ts1.cn.mm.bing.net/th/id/R-C.2571bce960b6ca110764829e5f66700e?rik=KhSdK4AMDsjGIw&riu=http%3a%2f%2fn.sinaimg.cn%2fsinakd202072s%2f544%2fw640h704%2f20200702%2f5ba9-ivrxcey2715717.jpg&ehk=%2feea7rWo6zJZAi1%2fasAxeAQiEqDFNY7GYA4cUHSFjG4%3d&risl=&pid=ImgRaw&r=0', '文学名著','平凡的世界',  'A');
INSERT INTO `goods` VALUES (4, '当当网正版书籍 红楼梦 精装版高中语文读整本书阅读 全本120回 足本典藏无障碍疑难字注音解词释义文学经典国学名著 商务印书馆', '59', 'https://ts1.cn.mm.bing.net/th/id/R-C.58d3477deb490e6922cf47a8a6eb93d9?rik=PJ1i6hFBlZ5N1A&riu=http%3a%2f%2fimg11.360buyimg.com%2fpopWaterMark%2fjfs%2ft1225%2f196%2f559267549%2f360692%2fa9d114d6%2f5537ed50Nf802d69a.jpg&ehk=VG6f19ATGpuYCL00fHOmAj3riItkyEv%2bthqkfv7rfMo%3d&risl=&pid=ImgRaw&r=0', '文学名著','红楼梦',  'A');
INSERT INTO `goods` VALUES (5, '三体原著全集3册 刘慈欣雨果作品流浪地球作者科幻小说作品集全套', '60', 'https://tse3-mm.cn.bing.net/th/id/OIP-C.3cM8n3w6u2PuD1W6KQgGzwHaKl?rs=1&pid=ImgDetMain', '科幻小说','三体',  'B');
INSERT INTO `goods` VALUES (6, '斗破苍穹漫画书任选斗破苍穹小说改编漫画全集动漫斗破苍穹的漫画书天蚕土豆科幻玄幻武侠中国致公出版社新华书店正版', '68', 'https://tse3-mm.cn.bing.net/th/id/OIP-C.lXDbApx4pG1VoYhwQsIYIAHaHa?rs=1&pid=ImgDetMain', '玄幻小说','斗破苍穹',  'D');
INSERT INTO `goods` VALUES (7, '【完整版 认准正版】活着余华作品集活着原著2021新版 精装 阅读经典长篇张艺谋电影当代文学小说的书籍畅销书易烊千玺推荐阅读', '70', 'https://img12.360buyimg.com/n1/jfs/t1/47079/14/1115/431744/5cecdb9dEf419586d/accef03fa957212e.png', '文学名著','活着',  'A');
INSERT INTO `goods` VALUES (8, '认准正版】瓦尔登湖 梭罗著名家全译本无删减外国现当代经典小说读物世界名著 初高中小学生课外阅读物世界畅销国外书籍抖音推荐', '49', 'https://tse4-mm.cn.bing.net/th/id/OIP-C.Llt561A5X6E8hkadNacHXgHaKY?rs=1&pid=ImgDetMain', '外国名著','瓦尔登湖',  'C');
INSERT INTO `goods` VALUES (9, '完美世界小说全集全套玄幻畅销书籍完结无删减合订大厚本5册辰东】', '99', 'https://bookcover.yuewen.com/qdbimg/349573/c_22246296000281002/300', '玄幻小说','完美世界', 'D');
INSERT INTO `goods` VALUES (10, '遮天小说全集全套完结版经典玄幻武侠穿越书籍畅销书排行榜大厚本', '118', 'https://ts1.cn.mm.bing.net/th/id/R-C.398e8adf116164375a5053754585e564?rik=MzmsmV8UbHwskQ&riu=http%3a%2f%2fwww.meiwen1314.com%2fuploads%2fallimg%2f210316%2f1-210316215Q1927.jpg&ehk=qHXurZpZeWrnfzWiy3wDmxXPpsOQURdTKHQr9YtdyAA%3d&risl=&pid=ImgRaw&r=0', '玄幻小说', '遮天','D');
INSERT INTO `goods` VALUES (11, '神墓小说全集原版完结典藏版实体书全套正版 套装精修 辰东 原著经典玄幻神魔武侠小说读物文学作品 穿越小说重生玄幻 作家出版社', '99', 'https://www.wanwupai.com/upload/product/20190915-1/20141002d48404e004436b5d0fb14b65.jpg', '玄幻小说','神墓', 'D');
INSERT INTO `goods` VALUES (12, '【单本/套装任选】剑来小说全套1-42册 烽火戏诸侯著《雪中悍刀行作》实体书全新长篇古典仙侠力作玄幻武侠小说书籍畅销 正版', '29', 'https://ts1.cn.mm.bing.net/th/id/R-C.a6ff1e8725600b0e1918a903a37761f0?rik=xwKn4irLBwHQUw&riu=http%3a%2f%2fimg.pinsuu.com%2fimage%2f205.jpg&ehk=8bHTtJHi%2bPWKHzZeA55mnsLmb6vMpaMuN1ilaYSbHoM%3d&risl=&pid=ImgRaw&r=0', '玄幻小说', '剑来','D');
INSERT INTO `goods` VALUES (13, '狂神玄幻小说全集全套完结版 玄幻小说大厚合订2本内容完结大结局', '348', 'https://tse3-mm.cn.bing.net/th/id/OIP-C.Wk8DnB_V3Fbs5nO0ZVZ5zwAAAA?rs=1&pid=ImgDetMain', '玄幻小说','狂神', 'D');
INSERT INTO `goods` VALUES (14, '莽荒纪小说全集3本全套大厚本完整版上中下我吃西红柿玄幻白菜价', '699', 'https://img.ting55.com/2017/01/9179.jpg!300', '玄幻小说','莽荒纪', 'D');
INSERT INTO `goods` VALUES (15, '傅雷家书正版原著八年级下册必读课外书名著初中生初二课外阅读书籍必读完整版老师推荐人教版世界文学名著读物人民教育出版社','123', 'https://gw.alicdn.com/bao/uploaded/i2/247777394/O1CN01E031NJ24UVI4OfK7P_!!247777394.jpg_Q75.jpg_.webp', '文学名著', '傅雷家书', 'A');
INSERT INTO `goods` VALUES (16,'红星照耀中国西行漫记斯诺原版无删减完整版原著语文教材八年级上阅读书初中生课外书必读红色经典书籍正版现货','110', 'https://gw.alicdn.com/imgextra/i3/2138504097/O1CN01bDMSqC1g8TNImLud9_!!2138504097.jpg_Q75.jpg_.webp', '外国名著', '红星照耀中国', 'C');
INSERT INTO `goods` VALUES (17, '边城沈从文正版高中必读原著原版完整版人民作家文学小说高中版教育书籍十月畅销书文艺世界名著 中学生课外阅读花山文艺出版社','199', 'https://gw.alicdn.com/imgextra/i3/901499946/O1CN01jruCgi2NLK7ukFQdi_!!2-item_pic.png_.webp', '文学名著', '边城', 'A');
INSERT INTO `goods` VALUES (18, '钢铁是怎样炼成的正版原著人民教育出版社初中八年级下册语文课外书文学图书和名著8八下课外阅读人教版练成钢铁是怎么炼成的','199', 'https://gw.alicdn.com/imgextra/O1CNA141o3Pp1LNx2gLX064_!!459371288-0-psf.jpg_Q75.jpg_.webp', '外国名著', '钢铁是怎样炼成的', 'C');
INSERT INTO `goods` VALUES (19, '老友爱人和大麻烦：马修派瑞回忆录中文版老友记小钱钱演员马修派瑞自传外国文学人物传记畅销书籍Matthew Perry译林出版社旗舰店','79', 'https://gw.alicdn.com/imgextra/i3/1668491224/O1CN01XnpIED1Kudgayzpyr_!!0-item_pic.jpg_Q75.jpg_.webp', '外国名著', '老友记', 'C');
INSERT INTO `goods` VALUES (20, '正版 呼啸山庄 英文原版小说 Wuthering Heights 企鹅经典布面精装 简奥斯汀著英国文学读物商品 英文版进口书籍','89', 'https://gw.alicdn.com/imgextra/i2/2157923729/O1CN01i0O4kV1dPvfnAjXgY_!!0-item_pic.jpg_Q75.jpg_.webp', '文学名著', '呼啸山庄', 'C');
INSERT INTO `goods` VALUES (21, '造神年代 中国科幻基石丛书 长篇科幻小说 刘慈欣 那多联合推荐 《三体》之后的中国科幻代表作 人工智能时代的启示录 新华正版', '129', 'https://gw.alicdn.com/imgextra/O1CN01sfqlJC1CP1QWtcZI6_!!101450072-0-picasso.jpg_Q75.jpg_.webp', '科幻小说','造神年代',  'B');
INSERT INTO `goods` VALUES (22, '亚特兰蒂斯人类起源三部曲 基因战争+末日病毒+美丽新世界全3册套装 历史科幻结合 科幻悬疑小说 凤凰新华书店旗舰店', '329', 'https://gw.alicdn.com/imgextra/i1/288902762/O1CN01AykY711WH2mluLT1m_!!0-item_pic.jpg_Q75.jpg_.webp', '科幻小说','亚特兰蒂斯人类起源三部曲',  'B');
INSERT INTO `goods` VALUES (23, '星髓正版书科幻小说 雨果奖得主罗伯特.里德力著 宇宙星球中的人类文明争端史诗级场面深刻思想智慧书籍全套短篇小说集作品', '89', 'https://gw.alicdn.com/imgextra/i3/2263306098/O1CN01FZgOBK1uuw4amsqJX_!!0-item_pic.jpg_Q75.jpg_.webp', '科幻小说','星髓',  'B');
INSERT INTO `goods` VALUES (24, '现货正版 六爻壹 鹏程万里 Priest著 杀破狼小说 六爻小说 悬疑推理恐怖惊悚古装玄幻武侠小说青春文学默读12后新作大哥镇魂有匪', '129', 'https://gw.alicdn.com/imgextra/i2/412207609/O1CN01uiVjNo264yR4K4H56_!!0-item_pic.jpg_Q75.jpg_.webp', '玄幻小说','六爻', 'D');
INSERT INTO `goods` VALUES (25, '【赠手绘卡+书签+新增番外】司命 人气作家九鹭非香著 都市奇幻小说仙侠经典修订版青春文学言情爱情武侠仙侠玄幻小说新华书店正版', '99', 'https://gw.alicdn.com/imgextra/O1CNA1TpDdFt1CP1QQqVA8g_!!101450072-0-psf.jpg_Q75.jpg_.webp', '玄幻小说','司命', 'D');
INSERT INTO `goods` VALUES (26, '正版现货 惟我独仙典藏版1-2-3-4-5-6-7-8-9-10-11册全套全集 已完结任选组合 唐家三少玄幻小说唯我独仙小说惟我独仙全套', '799', 'https://gw.alicdn.com/imgextra/i3/2535611270/O1CN01l2Iqnt1LFhrybmpJF_!!0-item_pic.jpg_Q75.jpg_.webp', '玄幻小说','惟我独仙', 'D');

-- ----------------------------
-- Table structure for goodsdetails
-- ----------------------------
DROP TABLE IF EXISTS `goodsdetails`;
CREATE TABLE `goodsdetails`  (
  `book_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `details` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `topimage` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`book_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'newTable' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goodsdetails
-- ----------------------------
INSERT INTO `goodsdetails` VALUES (1, '水浒传正版学生版中小学生课外阅读书籍五六七八年级水浒传学生版四大名著白话文版四大名著青少版5年级必北京教育出版社','https://p1.ssl.qhimg.com/t019f3d9a45fabe8cd5.jpg', '67', 'https://p1.ssl.qhimg.com/t019f3d9a45fabe8cd5.jpg');
INSERT INTO `goodsdetails` VALUES (2, '流浪地球书正版包邮刘慈欣少年科幻科学小说6册任选 中小学生青少年课外阅读书长篇科幻文学全集悬疑小说 现当代文学畅销书籍', 'https://puui.qpic.cn/vcover_vt_pic/0/3fvg46217gw800n1566963547/0', '159', 'https://puui.qpic.cn/vcover_vt_pic/0/3fvg46217gw800n1566963547/0');
INSERT INTO `goodsdetails` VALUES (3, '龚俊推荐平凡的世界全三册新版路遥原著书茅盾文学奖学校八年级课外阅读经典书目中国现当代文学经典小说散文随笔畅销书学习','https://ts1.cn.mm.bing.net/th/id/R-C.2571bce960b6ca110764829e5f66700e?rik=KhSdK4AMDsjGIw&riu=http%3a%2f%2fn.sinaimg.cn%2fsinakd202072s%2f544%2fw640h704%2f20200702%2f5ba9-ivrxcey2715717.jpg&ehk=%2feea7rWo6zJZAi1%2fasAxeAQiEqDFNY7GYA4cUHSFjG4%3d&risl=&pid=ImgRaw&r=0', '88', 'https://ts1.cn.mm.bing.net/th/id/R-C.2571bce960b6ca110764829e5f66700e?rik=KhSdK4AMDsjGIw&riu=http%3a%2f%2fn.sinaimg.cn%2fsinakd202072s%2f544%2fw640h704%2f20200702%2f5ba9-ivrxcey2715717.jpg&ehk=%2feea7rWo6zJZAi1%2fasAxeAQiEqDFNY7GYA4cUHSFjG4%3d&risl=&pid=ImgRaw&r=0');
INSERT INTO `goodsdetails` VALUES (4, '当当网正版书籍 红楼梦 精装版高中语文读整本书阅读 全本120回 足本典藏无障碍疑难字注音解词释义文学经典国学名著 商务印书馆', 'https://ts1.cn.mm.bing.net/th/id/R-C.58d3477deb490e6922cf47a8a6eb93d9?rik=PJ1i6hFBlZ5N1A&riu=http%3a%2f%2fimg11.360buyimg.com%2fpopWaterMark%2fjfs%2ft1225%2f196%2f559267549%2f360692%2fa9d114d6%2f5537ed50Nf802d69a.jpg&ehk=VG6f19ATGpuYCL00fHOmAj3riItkyEv%2bthqkfv7rfMo%3d&risl=&pid=ImgRaw&r=0', '59', 'https://ts1.cn.mm.bing.net/th/id/R-C.58d3477deb490e6922cf47a8a6eb93d9?rik=PJ1i6hFBlZ5N1A&riu=http%3a%2f%2fimg11.360buyimg.com%2fpopWaterMark%2fjfs%2ft1225%2f196%2f559267549%2f360692%2fa9d114d6%2f5537ed50Nf802d69a.jpg&ehk=VG6f19ATGpuYCL00fHOmAj3riItkyEv%2bthqkfv7rfMo%3d&risl=&pid=ImgRaw&r=0');
INSERT INTO `goodsdetails` VALUES (5, '三体原著全集3册 刘慈欣雨果作品流浪地球作者科幻小说作品集全套', 'https://tse3-mm.cn.bing.net/th/id/OIP-C.3cM8n3w6u2PuD1W6KQgGzwHaKl?rs=1&pid=ImgDetMain', '60', 'https://tse3-mm.cn.bing.net/th/id/OIP-C.3cM8n3w6u2PuD1W6KQgGzwHaKl?rs=1&pid=ImgDetMain');
INSERT INTO `goodsdetails` VALUES (6, '斗破苍穹漫画书任选斗破苍穹小说改编漫画全集动漫斗破苍穹的漫画书天蚕土豆科幻玄幻武侠中国致公出版社新华书店正版', 'https://tse3-mm.cn.bing.net/th/id/OIP-C.lXDbApx4pG1VoYhwQsIYIAHaHa?rs=1&pid=ImgDetMain', '68', 'https://tse3-mm.cn.bing.net/th/id/OIP-C.lXDbApx4pG1VoYhwQsIYIAHaHa?rs=1&pid=ImgDetMain');
INSERT INTO `goodsdetails` VALUES (7, '【完整版 认准正版】活着余华作品集活着原著2021新版 精装 阅读经典长篇张艺谋电影当代文学小说的书籍畅销书易烊千玺推荐阅读', 'https://img12.360buyimg.com/n1/jfs/t1/47079/14/1115/431744/5cecdb9dEf419586d/accef03fa957212e.png', '70', 'https://img12.360buyimg.com/n1/jfs/t1/47079/14/1115/431744/5cecdb9dEf419586d/accef03fa957212e.png');
INSERT INTO `goodsdetails` VALUES (8, '认准正版】瓦尔登湖 梭罗著名家全译本无删减外国现当代经典小说读物世界名著 初高中小学生课外阅读物世界畅销国外书籍抖音推荐', 'https://tse4-mm.cn.bing.net/th/id/OIP-C.Llt561A5X6E8hkadNacHXgHaKY?rs=1&pid=ImgDetMain', '49', 'https://tse4-mm.cn.bing.net/th/id/OIP-C.Llt561A5X6E8hkadNacHXgHaKY?rs=1&pid=ImgDetMain');
INSERT INTO `goodsdetails` VALUES (9, '完美世界小说全集全套玄幻畅销书籍完结无删减合订大厚本5册辰东】', 'https://bookcover.yuewen.com/qdbimg/349573/c_22246296000281002/300', '99', 'https://bookcover.yuewen.com/qdbimg/349573/c_22246296000281002/300');
INSERT INTO `goodsdetails` VALUES (10, '遮天小说全集全套完结版经典玄幻武侠穿越书籍畅销书排行榜大厚本', 'https://ts1.cn.mm.bing.net/th/id/R-C.398e8adf116164375a5053754585e564?rik=MzmsmV8UbHwskQ&riu=http%3a%2f%2fwww.meiwen1314.com%2fuploads%2fallimg%2f210316%2f1-210316215Q1927.jpg&ehk=qHXurZpZeWrnfzWiy3wDmxXPpsOQURdTKHQr9YtdyAA%3d&risl=&pid=ImgRaw&r=0', '118', 'https://ts1.cn.mm.bing.net/th/id/R-C.398e8adf116164375a5053754585e564?rik=MzmsmV8UbHwskQ&riu=http%3a%2f%2fwww.meiwen1314.com%2fuploads%2fallimg%2f210316%2f1-210316215Q1927.jpg&ehk=qHXurZpZeWrnfzWiy3wDmxXPpsOQURdTKHQr9YtdyAA%3d&risl=&pid=ImgRaw&r=0');
INSERT INTO `goodsdetails` VALUES (11, '神墓小说全集原版完结典藏版实体书全套正版 套装精修 辰东 原著经典玄幻神魔武侠小说读物文学作品 穿越小说重生玄幻 作家出版社', 'https://www.wanwupai.com/upload/product/20190915-1/20141002d48404e004436b5d0fb14b65.jpg', '99', 'https://www.wanwupai.com/upload/product/20190915-1/20141002d48404e004436b5d0fb14b65.jpg');
INSERT INTO `goodsdetails` VALUES (12, '【单本/套装任选】剑来小说全套1-42册 烽火戏诸侯著《雪中悍刀行作》实体书全新长篇古典仙侠力作玄幻武侠小说书籍畅销 正版', 'https://ts1.cn.mm.bing.net/th/id/R-C.a6ff1e8725600b0e1918a903a37761f0?rik=xwKn4irLBwHQUw&riu=http%3a%2f%2fimg.pinsuu.com%2fimage%2f205.jpg&ehk=8bHTtJHi%2bPWKHzZeA55mnsLmb6vMpaMuN1ilaYSbHoM%3d&risl=&pid=ImgRaw&r=0', '29', 'https://ts1.cn.mm.bing.net/th/id/R-C.a6ff1e8725600b0e1918a903a37761f0?rik=xwKn4irLBwHQUw&riu=http%3a%2f%2fimg.pinsuu.com%2fimage%2f205.jpg&ehk=8bHTtJHi%2bPWKHzZeA55mnsLmb6vMpaMuN1ilaYSbHoM%3d&risl=&pid=ImgRaw&r=0');
INSERT INTO `goodsdetails` VALUES (13, '狂神玄幻小说全集全套完结版 玄幻小说大厚合订2本内容完结大结局', 'https://tse3-mm.cn.bing.net/th/id/OIP-C.Wk8DnB_V3Fbs5nO0ZVZ5zwAAAA?rs=1&pid=ImgDetMain', '348', 'https://tse3-mm.cn.bing.net/th/id/OIP-C.Wk8DnB_V3Fbs5nO0ZVZ5zwAAAA?rs=1&pid=ImgDetMain');
INSERT INTO `goodsdetails` VALUES (14, '莽荒纪小说全集3本全套大厚本完整版上中下我吃西红柿玄幻白菜价', 'https://img.ting55.com/2017/01/9179.jpg!300', '699', 'https://img.ting55.com/2017/01/9179.jpg!300');
INSERT INTO `goodsdetails` VALUES (15, '傅雷家书正版原著 八年级下册必读课外书名著 初中生初二课外阅读书籍必读完整版老师推荐人教版 世界文学名著读物人民教育出版社', 'https://gw.alicdn.com/bao/uploaded/i2/247777394/O1CN01E031NJ24UVI4OfK7P_!!247777394.jpg_Q75.jpg_.webp', '123', 'https://gw.alicdn.com/bao/uploaded/i2/247777394/O1CN01E031NJ24UVI4OfK7P_!!247777394.jpg_Q75.jpg_.webp');
INSERT INTO `goodsdetails` VALUES (16,'红星照耀中国西行漫记斯诺原版无删减完整版原著语文教材八年级上阅读书初中生课外书必读红色经典书籍正版现货', 'https://gw.alicdn.com/imgextra/i3/2138504097/O1CN01bDMSqC1g8TNImLud9_!!2138504097.jpg_Q75.jpg_.webp', '110', 'https://gw.alicdn.com/imgextra/i3/2138504097/O1CN01bDMSqC1g8TNImLud9_!!2138504097.jpg_Q75.jpg_.webp');
INSERT INTO `goodsdetails` VALUES (17, '边城沈从文正版高中必读原著原版完整版人民作家文学小说高中版教育书籍十月畅销书文艺世界名著 中学生课外阅读花山文艺出版社','https://gw.alicdn.com/imgextra/i3/901499946/O1CN01jruCgi2NLK7ukFQdi_!!2-item_pic.png_.webp','199', 'https://gw.alicdn.com/imgextra/i3/901499946/O1CN01jruCgi2NLK7ukFQdi_!!2-item_pic.png_.webp');
INSERT INTO `goodsdetails` VALUES (18, '钢铁是怎样炼成的正版原著人民教育出版社初中八年级下册语文课外书文学图书和名著8八下课外阅读人教版练成钢铁是怎么炼成的', 'https://gw.alicdn.com/imgextra/O1CNA141o3Pp1LNx2gLX064_!!459371288-0-psf.jpg_Q75.jpg_.webp','199', 'https://gw.alicdn.com/imgextra/O1CNA141o3Pp1LNx2gLX064_!!459371288-0-psf.jpg_Q75.jpg_.webp');
INSERT INTO `goodsdetails` VALUES (19, '老友爱人和大麻烦：马修派瑞回忆录中文版老友记小钱钱演员马修派瑞自传外国文学人物传记畅销书籍Matthew Perry译林出版社旗舰店', 'https://gw.alicdn.com/imgextra/i3/1668491224/O1CN01XnpIED1Kudgayzpyr_!!0-item_pic.jpg_Q75.jpg_.webp', '79', 'https://gw.alicdn.com/imgextra/i3/1668491224/O1CN01XnpIED1Kudgayzpyr_!!0-item_pic.jpg_Q75.jpg_.webp');
INSERT INTO `goodsdetails` VALUES (20, '正版 呼啸山庄 英文原版小说 Wuthering Heights 企鹅经典布面精装 简奥斯汀著英国文学读物商品 英文版进口书籍', 'https://gw.alicdn.com/imgextra/i2/2157923729/O1CN01i0O4kV1dPvfnAjXgY_!!0-item_pic.jpg_Q75.jpg_.webp', '89', 'https://gw.alicdn.com/imgextra/i2/2157923729/O1CN01i0O4kV1dPvfnAjXgY_!!0-item_pic.jpg_Q75.jpg_.webp');
INSERT INTO `goodsdetails` VALUES (21, '造神年代 中国科幻基石丛书 长篇科幻小说 刘慈欣 那多联合推荐 《三体》之后的中国科幻代表作 人工智能时代的启示录 新华正版', 'https://gw.alicdn.com/imgextra/O1CN01sfqlJC1CP1QWtcZI6_!!101450072-0-picasso.jpg_Q75.jpg_.webp', '129', 'https://gw.alicdn.com/imgextra/O1CN01sfqlJC1CP1QWtcZI6_!!101450072-0-picasso.jpg_Q75.jpg_.webp');
INSERT INTO `goodsdetails` VALUES (22, '亚特兰蒂斯人类起源三部曲 基因战争+末日病毒+美丽新世界全3册套装 历史科幻结合 科幻悬疑小说 凤凰新华书店旗舰店', 'https://gw.alicdn.com/imgextra/i1/288902762/O1CN01AykY711WH2mluLT1m_!!0-item_pic.jpg_Q75.jpg_.webp', '329', 'https://gw.alicdn.com/imgextra/i1/288902762/O1CN01AykY711WH2mluLT1m_!!0-item_pic.jpg_Q75.jpg_.webp');
INSERT INTO `goodsdetails` VALUES (23, '星髓正版书科幻小说 雨果奖得主罗伯特.里德力著宇宙星球中的人类文明争端史诗级场面深刻思想智慧书籍全套短篇小说集作品', 'https://gw.alicdn.com/imgextra/i3/2263306098/O1CN01FZgOBK1uuw4amsqJX_!!0-item_pic.jpg_Q75.jpg_.webp', '89', 'https://gw.alicdn.com/imgextra/i3/2263306098/O1CN01FZgOBK1uuw4amsqJX_!!0-item_pic.jpg_Q75.jpg_.webp');
INSERT INTO `goodsdetails` VALUES (24, '现货正版 六爻壹 鹏程万里 Priest著 杀破狼小说 六爻小说 悬疑推理恐怖惊悚古装玄幻武侠小说青春文学默读12后新作大哥镇魂有匪', 'https://gw.alicdn.com/imgextra/i2/412207609/O1CN01uiVjNo264yR4K4H56_!!0-item_pic.jpg_Q75.jpg_.webp', '129', 'https://gw.alicdn.com/imgextra/i2/412207609/O1CN01uiVjNo264yR4K4H56_!!0-item_pic.jpg_Q75.jpg_.webp');
INSERT INTO `goodsdetails` VALUES (25, '【赠手绘卡+书签+新增番外】司命 人气作家九鹭非香著 都市奇幻小说仙侠经典修订版青春文学言情爱情武侠仙侠玄幻小说新华书店正版', 'https://gw.alicdn.com/imgextra/O1CNA1TpDdFt1CP1QQqVA8g_!!101450072-0-psf.jpg_Q75.jpg_.webp', '99', 'https://gw.alicdn.com/imgextra/O1CNA1TpDdFt1CP1QQqVA8g_!!101450072-0-psf.jpg_Q75.jpg_.webp');
INSERT INTO `goodsdetails` VALUES (26, '正版现货 惟我独仙典藏版1-2-3-4-5-6-7-8-9-10-11册全套全集 已完结任选组合 唐家三少玄幻小说唯我独仙小说惟我独仙全套', 'https://gw.alicdn.com/imgextra/i3/2535611270/O1CN01l2Iqnt1LFhrybmpJF_!!0-item_pic.jpg_Q75.jpg_.webp', '799', 'https://gw.alicdn.com/imgextra/i3/2535611270/O1CN01l2Iqnt1LFhrybmpJF_!!0-item_pic.jpg_Q75.jpg_.webp');

-- ----------------------------
-- Table structure for keywords
-- ----------------------------
DROP TABLE IF EXISTS `keywords`;
CREATE TABLE `keywords`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'content',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'newTable' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of keywords
-- ----------------------------
INSERT INTO `keywords` VALUES (1, '三体');
INSERT INTO `keywords` VALUES (2, '活着');
INSERT INTO `keywords` VALUES (3, '球状闪电');
INSERT INTO `keywords` VALUES (4, '神墓');
INSERT INTO `keywords` VALUES (5, '斗破苍穹');
INSERT INTO `keywords` VALUES (6, '莽荒纪');
INSERT INTO `keywords` VALUES (7, '三国演义');
INSERT INTO `keywords` VALUES (8, '平凡的世界');


-- ----------------------------
-- Table structure for my_users
-- ----------------------------
DROP TABLE IF EXISTS `my_users`;
CREATE TABLE `my_users`  (
  `user_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of my_users
-- ----------------------------
INSERT INTO `my_users` VALUES ('001');
INSERT INTO `my_users` VALUES ('002');
INSERT INTO `my_users` VALUES ('003');
INSERT INTO `my_users` VALUES ('004');
INSERT INTO `my_users` VALUES ('005');
INSERT INTO `my_users` VALUES ('006');
INSERT INTO `my_users` VALUES ('007');
INSERT INTO `my_users` VALUES ('008');

-- ----------------------------
-- Table structure for purchase_history
-- ----------------------------
DROP TABLE IF EXISTS `purchase_history`;
CREATE TABLE `purchase_history`  (
  `user_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `book_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_id`, `book_id`) USING BTREE,
  INDEX `book_id`(`book_id`) USING BTREE,
  CONSTRAINT `purchase_history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `my_users` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `purchase_history_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `goodsdetails` (`book_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase_history
-- ----------------------------
INSERT INTO `purchase_history` VALUES ('001', '1');
INSERT INTO `purchase_history` VALUES ('003', '1');
INSERT INTO `purchase_history` VALUES ('008', '10');
INSERT INTO `purchase_history` VALUES ('007', '11');
INSERT INTO `purchase_history` VALUES ('005', '12');
INSERT INTO `purchase_history` VALUES ('008', '12');
INSERT INTO `purchase_history` VALUES ('008', '14');
INSERT INTO `purchase_history` VALUES ('001', '2');
INSERT INTO `purchase_history` VALUES ('002', '2');
INSERT INTO `purchase_history` VALUES ('002', '3');
INSERT INTO `purchase_history` VALUES ('004', '3');
INSERT INTO `purchase_history` VALUES ('001', '4');
INSERT INTO `purchase_history` VALUES ('003', '4');
INSERT INTO `purchase_history` VALUES ('005', '4');
INSERT INTO `purchase_history` VALUES ('005', '5');
INSERT INTO `purchase_history` VALUES ('004', '6');
INSERT INTO `purchase_history` VALUES ('006', '6');
INSERT INTO `purchase_history` VALUES ('002', '7');
INSERT INTO `purchase_history` VALUES ('006', '7');
INSERT INTO `purchase_history` VALUES ('007', '7');
INSERT INTO `purchase_history` VALUES ('003', '8');
INSERT INTO `purchase_history` VALUES ('006', '8');
INSERT INTO `purchase_history` VALUES ('004', '9');
INSERT INTO `purchase_history` VALUES ('007', '9');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `openid` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `session_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'newTable' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

-- ----------------------------
-- Table structure for recommend 推荐数据放在这里
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend`  (
	`id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `cate` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
	`tag` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `classID` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recommend  近测试数据
-- ----------------------------
INSERT INTO `recommend` VALUES (18, '钢铁是怎样炼成的正版原著人民教育出版社初中八年级下册语文课外书文学图书和名著8八下课外阅读人教版练成钢铁是怎么炼成的','199', 'https://gw.alicdn.com/imgextra/O1CNA141o3Pp1LNx2gLX064_!!459371288-0-psf.jpg_Q75.jpg_.webp', '外国名著', '钢铁是怎样炼成的', 'C');
INSERT INTO `recommend` VALUES (19, '老友爱人和大麻烦：马修派瑞回忆录中文版老友记小钱钱演员马修派瑞自传外国文学人物传记畅销书籍Matthew Perry译林出版社旗舰店','79', 'https://gw.alicdn.com/imgextra/i3/1668491224/O1CN01XnpIED1Kudgayzpyr_!!0-item_pic.jpg_Q75.jpg_.webp', '外国名著', '老友记', 'C');
INSERT INTO `recommend` VALUES (20, '正版 呼啸山庄 英文原版小说 Wuthering Heights 企鹅经典布面精装 简奥斯汀著英国文学读物商品 英文版进口书籍','89', 'https://gw.alicdn.com/imgextra/i2/2157923729/O1CN01i0O4kV1dPvfnAjXgY_!!0-item_pic.jpg_Q75.jpg_.webp', '文学名著', '呼啸山庄' ,'C');
INSERT INTO `recommend` VALUES (21, '造神年代 中国科幻基石丛书 长篇科幻小说 刘慈欣 那多联合推荐 《三体》之后的中国科幻代表作 人工智能时代的启示录 新华正版', '129', 'https://gw.alicdn.com/imgextra/O1CN01sfqlJC1CP1QWtcZI6_!!101450072-0-picasso.jpg_Q75.jpg_.webp', '科幻小说','造神年代',  'B');
INSERT INTO `recommend` VALUES (22, '亚特兰蒂斯人类起源三部曲 基因战争+末日病毒+美丽新世界全3册套装 历史科幻结合 科幻悬疑小说 凤凰新华书店旗舰店', '329', 'https://gw.alicdn.com/imgextra/i1/288902762/O1CN01AykY711WH2mluLT1m_!!0-item_pic.jpg_Q75.jpg_.webp', '科幻小说','亚特兰蒂斯人类起源三部曲',  'B');
INSERT INTO `recommend` VALUES (23, '星髓正版书科幻小说 雨果奖得主罗伯特.里德力著 宇宙星球中的人类文明争端史诗级场面深刻思想智慧书籍全套短篇小说集作品', '89', 'https://gw.alicdn.com/imgextra/i3/2263306098/O1CN01FZgOBK1uuw4amsqJX_!!0-item_pic.jpg_Q75.jpg_.webp', '科幻小说','星髓',  'B')
