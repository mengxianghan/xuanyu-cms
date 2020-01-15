/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : xuanyucms

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 15/01/2020 21:50:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for info_column
-- ----------------------------
DROP TABLE IF EXISTS `info_column`;
CREATE TABLE `info_column`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '上级栏目',
  `template_id` int(11) NULL DEFAULT NULL COMMENT '模板',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT 100 COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '信息-栏目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info_column
-- ----------------------------
INSERT INTO `info_column` VALUES (1, '新闻', 0, 1, 1, 100, '2019-07-05 14:20:10', '2019-07-14 18:51:17');
INSERT INTO `info_column` VALUES (2, '公司动态', 1, 1, 1, 100, '2019-07-05 14:20:23', '2019-07-05 14:20:23');
INSERT INTO `info_column` VALUES (3, '行业新闻', 1, 1, 1, 100, '2019-07-05 14:20:37', '2019-07-05 14:20:37');
INSERT INTO `info_column` VALUES (4, '公司简介', 0, 3, 1, 100, '2019-07-06 08:53:13', '2019-08-05 15:48:23');
INSERT INTO `info_column` VALUES (5, '公司介绍', 4, 3, 1, 100, '2019-07-06 08:53:20', '2019-07-06 08:53:20');
INSERT INTO `info_column` VALUES (6, '案例', 0, 1, 1, 100, '2019-07-12 21:58:34', '2019-12-02 15:33:45');
INSERT INTO `info_column` VALUES (7, NULL, NULL, NULL, NULL, NULL, '2019-08-05 15:40:42', '2019-08-05 15:40:42');
INSERT INTO `info_column` VALUES (9, NULL, NULL, NULL, NULL, NULL, '2019-08-05 15:40:53', '2019-08-05 15:40:53');
INSERT INTO `info_column` VALUES (11, NULL, NULL, NULL, NULL, NULL, '2019-08-05 15:48:13', '2019-08-05 15:48:13');
INSERT INTO `info_column` VALUES (12, NULL, NULL, NULL, NULL, NULL, '2019-08-05 15:48:23', '2019-08-05 15:48:23');
INSERT INTO `info_column` VALUES (13, '测试2', 2, 1, 1, 99, '2019-11-17 22:35:59', '2019-11-17 22:35:59');
INSERT INTO `info_column` VALUES (14, NULL, NULL, NULL, NULL, NULL, '2019-11-24 09:50:24', '2019-11-24 09:50:24');

-- ----------------------------
-- Table structure for info_news
-- ----------------------------
DROP TABLE IF EXISTS `info_news`;
CREATE TABLE `info_news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `column_id` int(11) NULL DEFAULT NULL COMMENT '所属栏目',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `sub_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `seo_keywords` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SEO关键字',
  `seo_description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SEO描述',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `source` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩略图',
  `is_recommend` int(1) NULL DEFAULT NULL COMMENT '推荐',
  `is_hot` int(1) NULL DEFAULT NULL COMMENT '热点',
  `external_links` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外部链接',
  `tag` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '信息-新闻表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info_news
-- ----------------------------
INSERT INTO `info_news` VALUES (1, 2, '测试tag', '', '', '', '', '', '', '72a12164-b4e9-41f8-a08f-c06185e6a20a', 0, 0, '', 'cms,后台,测试1234', 1, 100, '2019-08-11 09:51:51', '2019-12-09 21:44:11');
INSERT INTO `info_news` VALUES (2, 3, '测试2', '', '', '', '', '', '', '49aaf956-f6eb-4178-842d-5a0909370f15', 0, 1, '', '', 1, 99, '2019-11-20 16:51:25', '2019-12-09 21:44:24');
INSERT INTO `info_news` VALUES (3, 13, '标题', '副标题', 'SEO关键词', 'SEO描述', '<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14px; text-align: right; white-space: nowrap; background-color: #ffffff;\">内容</span></p>', '作者', '来源', '1d98e879-b40e-445a-814b-9a20b856353f', 1, 0, '外部链接', '自由,民主', 1, 99, '2019-12-05 09:01:50', '2019-12-09 21:44:18');

-- ----------------------------
-- Table structure for info_single
-- ----------------------------
DROP TABLE IF EXISTS `info_single`;
CREATE TABLE `info_single`  (
  `column_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '信息-栏目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info_single
-- ----------------------------
INSERT INTO `info_single` VALUES (4, '公司简介', '<p><img src=\"http://xuanyucms.lc/uploads/38efa14f4350d509eac3a7cac09f86d5.png\" alt=\"\" width=\"151\" height=\"90\" /><img src=\"http://xuanyucms.lc/uploads/b49005cecde412003ccf992e39bf7ffd.jpg\" alt=\"\" width=\"100\" height=\"178\" />公司简介</p>', '2019-12-05 11:55:23', '2019-12-05 11:55:23');
INSERT INTO `info_single` VALUES (5, '公司介绍', '<p>内容1...阿斯蒂芬阿斯蒂芬阿斯蒂芬</p>', '2019-11-29 16:37:03', '2019-11-29 16:37:03');

-- ----------------------------
-- Table structure for info_tag
-- ----------------------------
DROP TABLE IF EXISTS `info_tag`;
CREATE TABLE `info_tag`  (
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '信息-标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info_tag
-- ----------------------------
INSERT INTO `info_tag` VALUES ('cms', 1, 100, '2019-12-09 21:44:11', '2019-12-09 21:44:11');
INSERT INTO `info_tag` VALUES ('争辩', 1, 100, '2019-07-12 10:41:23', '2019-07-12 10:41:33');
INSERT INTO `info_tag` VALUES ('台湾', 1, 100, '2019-07-12 11:34:36', '2019-07-12 11:34:36');
INSERT INTO `info_tag` VALUES ('后台', 1, 100, '2019-12-09 21:44:11', '2019-12-09 21:44:11');
INSERT INTO `info_tag` VALUES ('新闻', 1, 100, '2019-07-12 10:41:16', '2019-07-12 10:41:33');
INSERT INTO `info_tag` VALUES ('核武器', 1, 100, '2019-07-12 10:41:26', '2019-07-12 10:41:33');
INSERT INTO `info_tag` VALUES ('民主', 1, 100, '2019-12-09 21:44:18', '2019-12-09 21:44:18');
INSERT INTO `info_tag` VALUES ('洗澡', 1, 100, '2019-07-12 11:34:36', '2019-07-12 11:34:36');
INSERT INTO `info_tag` VALUES ('测试111', 1, 100, '2019-12-05 16:03:27', '2019-12-05 16:03:27');
INSERT INTO `info_tag` VALUES ('测试1234', 1, 100, '2019-12-09 21:44:11', '2019-12-09 21:44:11');
INSERT INTO `info_tag` VALUES ('自由', 1, 100, '2019-12-09 21:44:18', '2019-12-09 21:44:18');
INSERT INTO `info_tag` VALUES ('轩宇', 1, 100, '2019-07-14 19:07:53', '2019-07-14 19:07:53');

-- ----------------------------
-- Table structure for info_template
-- ----------------------------
DROP TABLE IF EXISTS `info_template`;
CREATE TABLE `info_template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `menu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视图',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '信息-模板表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info_template
-- ----------------------------
INSERT INTO `info_template` VALUES (1, '新闻', 'caad3a5a-ee87-4a44-b533-d5e23dc549fb', 1, 100, '2019-07-05 11:07:33', '2019-11-21 15:48:54');
INSERT INTO `info_template` VALUES (3, '单页', '18589585-7a9a-48d7-89e0-f18e046b8d02', 1, 100, '2019-07-05 13:49:18', '2019-11-21 15:52:56');

-- ----------------------------
-- Table structure for mall_brand
-- ----------------------------
DROP TABLE IF EXISTS `mall_brand`;
CREATE TABLE `mall_brand`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `links` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城-商品品牌表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_brand
-- ----------------------------
INSERT INTO `mall_brand` VALUES (1, '三星', '111', '111', 1, 99, '2019-12-26 21:10:50', '2019-12-30 22:30:34');

-- ----------------------------
-- Table structure for mall_category
-- ----------------------------
DROP TABLE IF EXISTS `mall_category`;
CREATE TABLE `mall_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '上级分类',
  `pinyin` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拼音',
  `spinyin` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首拼',
  `full_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '完整名称',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城-商品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_category
-- ----------------------------
INSERT INTO `mall_category` VALUES (1, '手机类型', 0, NULL, NULL, NULL, 1, 99, '2019-12-29 14:59:32', '2019-12-29 15:00:23');
INSERT INTO `mall_category` VALUES (2, '充值卡', 0, NULL, NULL, NULL, 1, 99, '2019-12-29 15:00:32', '2019-12-29 15:00:32');
INSERT INTO `mall_category` VALUES (3, '手机配件', 0, NULL, NULL, NULL, 1, 99, '2019-12-29 15:00:41', '2019-12-29 15:00:41');
INSERT INTO `mall_category` VALUES (4, 'CDMA手机', 1, NULL, NULL, NULL, 1, 99, '2019-12-29 18:40:07', '2019-12-29 18:40:07');
INSERT INTO `mall_category` VALUES (5, 'GSM手机', 1, NULL, NULL, NULL, 1, 99, '2019-12-29 18:40:14', '2019-12-29 18:40:14');
INSERT INTO `mall_category` VALUES (6, '3G手机', 1, NULL, NULL, NULL, 1, 99, '2019-12-29 18:40:19', '2019-12-29 18:40:19');
INSERT INTO `mall_category` VALUES (7, '双模手机', 1, NULL, NULL, NULL, 1, 99, '2019-12-29 18:40:24', '2019-12-29 18:40:24');
INSERT INTO `mall_category` VALUES (8, '小灵通/固话充值卡', 2, NULL, NULL, NULL, 1, 99, '2019-12-29 18:40:32', '2019-12-29 18:40:32');
INSERT INTO `mall_category` VALUES (9, '移动手机充值卡', 2, NULL, NULL, NULL, 1, 99, '2019-12-29 18:40:37', '2019-12-29 18:40:37');
INSERT INTO `mall_category` VALUES (10, '联通手机充值卡', 2, NULL, NULL, NULL, 1, 99, '2019-12-29 18:40:51', '2019-12-29 18:40:51');
INSERT INTO `mall_category` VALUES (11, '充电器', 3, NULL, NULL, NULL, 1, 99, '2019-12-29 18:40:58', '2019-12-29 18:40:58');
INSERT INTO `mall_category` VALUES (12, '耳机', 3, NULL, NULL, NULL, 1, 99, '2019-12-29 18:41:03', '2019-12-29 18:41:03');
INSERT INTO `mall_category` VALUES (13, '电池', 3, NULL, NULL, NULL, 1, 99, '2019-12-29 18:41:08', '2019-12-29 18:41:08');
INSERT INTO `mall_category` VALUES (14, '读卡器和内存卡', 3, NULL, NULL, NULL, 1, 99, '2019-12-29 18:41:14', '2019-12-29 18:41:14');

-- ----------------------------
-- Table structure for mall_category_bak
-- ----------------------------
DROP TABLE IF EXISTS `mall_category_bak`;
CREATE TABLE `mall_category_bak`  (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '上级分类',
  `pinyin` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '拼音',
  `spinyin` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首拼',
  `full_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '完整名称',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城-商品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_category_bak
-- ----------------------------
INSERT INTO `mall_category_bak` VALUES (1, '食品调味', 0, 'kuai', 'kuai', '食品调味', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (2, '休闲食品', 1, 'xiuxianshipin', 'xxsp', '食品调味|休闲食品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (3, '零食大礼包', 2, 'lingshoudalibao', 'lsdlb', '食品调味|休闲食品|零食大礼包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (4, '休闲零食', 2, 'xiuxianlingshi', 'xxls', '食品调味|休闲食品|休闲零食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (5, '膨化食品', 2, 'penghuashipin', 'phsp', '食品调味|休闲食品|膨化食品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (6, '坚果炒货', 2, 'jianguochaohuo', 'jgch', '食品调味|休闲食品|坚果炒货', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (7, '肉干/熟食', 2, 'rougan/shushi', 'rg/ss', '食品调味|休闲食品|肉干/熟食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (8, '蜜饯果干', 2, 'mijianguogan', 'mjgg', '食品调味|休闲食品|蜜饯果干', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (9, '糖果/巧克力', 2, 'tangguo/qiaokeli', 'tg/qkl', '食品调味|休闲食品|糖果/巧克力', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (10, '饼干蛋糕', 2, 'binggandangao', 'bgdg', '食品调味|休闲食品|饼干蛋糕', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (11, '中华老字号', 2, 'zhonghualaozihao', 'zhlzh', '食品调味|休闲食品|中华老字号', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (12, '粽子', 2, 'zongzi', 'zz', '食品调味|休闲食品|粽子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (13, '月饼', 2, 'yuebing', 'yb', '食品调味|休闲食品|月饼', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (14, '卡券', 2, 'kaquan', 'kq', '食品调味|休闲食品|卡券', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (15, '休闲食品', 2, 'xiuxianshipin', 'xxsp', '食品调味|休闲食品|休闲食品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (16, '肉干熟食', 2, 'rouganshushi', 'rgss', '食品调味|休闲食品|肉干熟食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (17, '肉干/ 熟食', 2, 'rougan/ shushi', 'rg/ ss', '食品调味|休闲食品|肉干/ 熟食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (18, '冷饮冻食', 1, 'lengyindongshi', 'lyds', '食品调味|冷饮冻食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (19, '水饺/馄饨', 18, 'shuijiao/huntun', 'sj/ht', '食品调味|冷饮冻食|水饺/馄饨', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (20, '汤圆/元宵', 18, 'tangyuan/yuanxiao', 'ty/yx', '食品调味|冷饮冻食|汤圆/元宵', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (21, '火锅丸料', 18, 'huoguowanliao', 'hgwl', '食品调味|冷饮冻食|火锅丸料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (22, '奶酪/黄油', 18, 'nailao/huangyou', 'nl/hy', '食品调味|冷饮冻食|奶酪/黄油', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (23, '方便速食', 18, 'fangbiansushi', 'fbss', '食品调味|冷饮冻食|方便速食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (24, '面点/面食', 18, 'miandian/mianshi', 'md/ms', '食品调味|冷饮冻食|面点/面食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (25, '冰淇淋', 18, 'bingqilin', 'bql', '食品调味|冷饮冻食|冰淇淋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (26, '冷藏饮料', 18, 'lengzangyinliao', 'lzyl', '食品调味|冷饮冻食|冷藏饮料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (27, '低温奶', 18, 'diwennai', 'dwn', '食品调味|冷饮冻食|低温奶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (28, '烘焙半成品', 18, 'hongbeibanchengpin', 'hbbcp', '食品调味|冷饮冻食|烘焙半成品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (29, '馒头', 18, 'mantou', 'mt', '食品调味|冷饮冻食|馒头', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (30, '年糕', 18, 'niangao', 'ng', '食品调味|冷饮冻食|年糕', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (31, '手抓饼', 18, 'shouzhuabing', 'szb', '食品调味|冷饮冻食|手抓饼', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (32, '油炸小食', 18, 'youzhaxiaoshi', 'yzxs', '食品调味|冷饮冻食|油炸小食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (33, '方便菜', 18, 'fangbiancai', 'fbc', '食品调味|冷饮冻食|方便菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (34, '水饺/馄炖', 18, 'shuijiao/hundun', 'sj/hd', '食品调味|冷饮冻食|水饺/馄炖', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (35, '粮油调味', 1, 'liangyoudiaowei', 'lydw', '食品调味|粮油调味', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (36, '方便食品', 35, 'fangbianshipin', 'fbsp', '食品调味|粮油调味|方便食品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (37, '调味品', 35, 'diaoweipin', 'dwp', '食品调味|粮油调味|调味品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (38, '食用油', 35, 'shiyongyou', 'syy', '食品调味|粮油调味|食用油', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (39, '南北干货', 35, 'nanbeiganhuo', 'nbgh', '食品调味|粮油调味|南北干货', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (40, '米', 35, 'mi', 'm', '食品调味|粮油调味|米', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (41, '有机食品', 35, 'youjishipin', 'yjsp', '食品调味|粮油调味|有机食品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (42, '面', 35, 'mian', 'm', '食品调味|粮油调味|面', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (43, '杂粮', 35, 'zaliang', 'zl', '食品调味|粮油调味|杂粮', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (44, '烘焙原料', 35, 'hongbeiyuanliao', 'hbyl', '食品调味|粮油调味|烘焙原料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (45, '调和油', 35, 'diaoheyou', 'dhy', '食品调味|粮油调味|调和油', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (46, '葵花籽油', 35, 'kuihuaziyou', 'khzy', '食品调味|粮油调味|葵花籽油', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (47, '花生油', 35, 'huashengyou', 'hsy', '食品调味|粮油调味|花生油', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (48, '进口食品', 1, 'jinkoushipin', 'jksp', '食品调味|进口食品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (49, '粮油调味', 48, 'liangyoudiaowei', 'lydw', '食品调味|进口食品|粮油调味', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (50, '冲调品', 48, 'chongdiaopin', 'cdp', '食品调味|进口食品|冲调品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (51, '牛奶乳品', 48, 'niunairupin', 'nnrp', '食品调味|进口食品|牛奶乳品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (52, '糖果/巧克力', 48, 'tangguo/qiaokeli', 'tg/qkl', '食品调味|进口食品|糖果/巧克力', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (53, '休闲零食', 48, 'xiuxianlingshi', 'xxls', '食品调味|进口食品|休闲零食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (54, '饼干蛋糕', 48, 'binggandangao', 'bgdg', '食品调味|进口食品|饼干蛋糕', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (55, '水', 48, 'shui', 's', '食品调味|进口食品|水', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (56, '饮料', 48, 'yinliao', 'yl', '食品调味|进口食品|饮料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (57, '咖啡豆/咖啡粉', 48, 'kafeidou/kafeifen', 'kfd/kff', '食品调味|进口食品|咖啡豆/咖啡粉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (58, '米面调味', 48, 'mimiandiaowei', 'mmdw', '食品调味|进口食品|米面调味', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (59, '方便食品', 48, 'fangbianshipin', 'fbsp', '食品调味|进口食品|方便食品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (60, '食品礼券', 1, 'shipinliquan', 'splq', '食品调味|食品礼券', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (61, '月饼', 60, 'yuebing', 'yb', '食品调味|食品礼券|月饼', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (62, '卡券', 60, 'kaquan', 'kq', '食品调味|食品礼券|卡券', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (63, '粽子', 60, 'zongzi', 'zz', '食品调味|食品礼券|粽子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (64, '大闸蟹', 60, 'dazhaxie', 'dzx', '食品调味|食品礼券|大闸蟹', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (65, '中外香烟', 1, 'xiangyan', 'xy', '食品调味|中外香烟', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (66, '国产香烟', 65, 'guochanxiangyan', 'gcxy', '食品调味|中外香烟|国产香烟', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (67, '国外香烟', 65, 'guowaixiangyan', 'gwxy', '食品调味|中外香烟|国外香烟', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (68, '调味品', 1, 'diaoweipin', 'dwp', '食品调味|调味品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (69, '冷冻速食', 1, 'lengdongsushi', 'ldss', '食品调味|冷冻速食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (70, '方便食品', 69, 'fangbianshipin', 'fbsp', '食品调味|冷冻速食|方便食品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (71, '冲调谷物', 1, 'chongdiaoguwu', 'cdgw', '食品调味|冲调谷物', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (72, '成人奶粉', 71, 'chengrennaifen', 'crnf', '食品调味|冲调谷物|成人奶粉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (73, '中西药品', 1, 'zhongxiyaopin', 'zxyp', '食品调味|中西药品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (74, '国产香烟', 73, 'guochanxiangyan', 'gcxy', '食品调味|中西药品|国产香烟', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (75, '？粮油调味', 1, '？liangyoudiaowei', '？lydw', '食品调味|？粮油调味', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (76, '调味品', 75, 'diaoweipin', 'dwp', '食品调味|？粮油调味|调味品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (77, '方便食品', 75, 'fangbianshipin', 'fbsp', '食品调味|？粮油调味|方便食品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (78, '米', 75, 'mi', 'm', '食品调味|？粮油调味|米', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (79, '冷冻食品', 1, 'lengdongshipin', 'ldsp', '食品调味|冷冻食品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (80, '火锅丸料', 79, 'huoguowanliao', 'hgwl', '食品调味|冷冻食品|火锅丸料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (81, '休息零食', 1, 'xiuxilingshi', 'xxls', '食品调味|休息零食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (82, '休闲零食', 81, 'xiuxianlingshi', 'xxls', '食品调味|休息零食|休闲零食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (83, '进口商品', 1, 'jinkoushangpin', 'jksp', '食品调味|进口商品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (84, '冲调品', 83, 'chongdiaopin', 'cdp', '食品调味|进口商品|冲调品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (85, '？食品礼劵', 1, '？shipinlijuan', '？splj', '食品调味|？食品礼劵', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (86, '月饼', 85, 'yuebing', 'yb', '食品调味|？食品礼劵|月饼', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (87, '食品礼劵', 1, 'shipinlijuan', 'splj', '食品调味|食品礼劵', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (88, '月饼', 87, 'yuebing', 'yb', '食品调味|食品礼劵|月饼', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (89, '休闲零食', 1, 'xiuxianlingshi', 'xxls', '食品调味|休闲零食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (90, '糖果/巧克力', 89, 'tangguo/qiaokeli', 'tg/qkl', '食品调味|休闲零食|糖果/巧克力', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (91, '健康饮食', 1, 'jiankangyinshi', 'jkys', '食品调味|健康饮食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (92, '饮料', 91, 'yinliao', 'yl', '食品调味|健康饮食|饮料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (93, '茗茶', 1, 'mingcha', 'mc', '食品调味|茗茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (94, '绿茶', 93, 'lvcha', 'lc', '食品调味|茗茶|绿茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (95, '酒水饮料', 0, 'jiushuiyinliao', 'jsyl', '酒水饮料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (96, '中外名酒', 95, 'zhongwaimingjiu', 'zwmj', '酒水饮料|中外名酒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (97, '白酒', 96, 'baijiu', 'bj', '酒水饮料|中外名酒|白酒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (98, '洋酒', 96, 'yangjiu', 'yj', '酒水饮料|中外名酒|洋酒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (99, '葡萄酒', 96, 'putaojiu', 'ptj', '酒水饮料|中外名酒|葡萄酒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (100, '啤酒', 96, 'pijiu', 'pj', '酒水饮料|中外名酒|啤酒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (101, '黄酒/养生酒', 96, 'huangjiu/yangshengjiu', 'hj/ysj', '酒水饮料|中外名酒|黄酒/养生酒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (102, '收藏酒/陈年老酒', 96, 'shouzangjiu/chennianlaojiu', 'szj/cnlj', '酒水饮料|中外名酒|收藏酒/陈年老酒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (103, '米酒', 96, 'mijiu', 'mj', '酒水饮料|中外名酒|米酒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (104, '饮料', 95, 'yinliao', 'yl', '酒水饮料|饮料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (105, '碳酸饮料', 104, 'tansuanyinliao', 'tsyl', '酒水饮料|饮料|碳酸饮料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (106, '蛋白质饮料', 104, 'danbaizhiyinliao', 'dbzyl', '酒水饮料|饮料|蛋白质饮料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (107, '功能饮料', 104, 'gongnengyinliao', 'gnyl', '酒水饮料|饮料|功能饮料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (108, '果味饮料', 104, 'guoweiyinliao', 'gwyl', '酒水饮料|饮料|果味饮料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (109, '茶饮料', 104, 'chayinliao', 'cyl', '酒水饮料|饮料|茶饮料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (110, '即饮咖啡', 104, 'jiyinkafei', 'jykf', '酒水饮料|饮料|即饮咖啡', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (111, '乳酸菌饮料', 104, 'rusuanjunyinliao', 'rsjyl', '酒水饮料|饮料|乳酸菌饮料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (112, '凉茶', 104, 'liangcha', 'lc', '酒水饮料|饮料|凉茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (113, '酸梅汤', 104, 'suanmeitang', 'smt', '酒水饮料|饮料|酸梅汤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (114, '牛奶乳品', 95, 'niunairupin', 'nnrp', '酒水饮料|牛奶乳品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (115, '牛奶', 114, 'niunai', 'nn', '酒水饮料|牛奶乳品|牛奶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (116, '乳酸菌乳品', 114, 'rusuanjunrupin', 'rsjrp', '酒水饮料|牛奶乳品|乳酸菌乳品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (117, '酸奶', 114, 'suannai', 'sn', '酒水饮料|牛奶乳品|酸奶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (118, '水', 95, 'shui', 's', '酒水饮料|水', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (119, '纯净水/矿泉水', 118, 'chunjingshui', 'cjs', '酒水饮料|水|纯净水/矿泉水', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (120, '苏打水', 118, 'sudashui', 'sds', '酒水饮料|水|苏打水', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (121, '母婴水', 118, 'muyingshui', 'mys', '酒水饮料|水|母婴水', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (122, '气泡水', 118, 'qipaoshui', 'qps', '酒水饮料|水|气泡水', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (123, '冲调谷物', 95, 'chongdiaoguwu', 'cdgw', '酒水饮料|冲调谷物', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (124, '蜂蜜/柚子茶', 123, 'fengmi/youzicha', 'fm/yzc', '酒水饮料|冲调谷物|蜂蜜/柚子茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (125, '饮料', 123, 'yinliao', 'yl', '酒水饮料|冲调谷物|饮料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (126, '咖啡/奶茶', 123, 'kafei/naicha', 'kf/nc', '酒水饮料|冲调谷物|咖啡/奶茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (127, '牛奶乳品', 123, 'niunairupin', 'nnrp', '酒水饮料|冲调谷物|牛奶乳品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (128, '代餐/谷粉/麦片', 123, 'daican/gufen', 'dc/gf', '酒水饮料|冲调谷物|代餐/谷粉/麦片', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (129, '成人奶粉', 123, 'chengrennaifen', 'crnf', '酒水饮料|冲调谷物|成人奶粉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (130, '豆浆', 123, 'doujiang', 'dj', '酒水饮料|冲调谷物|豆浆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (131, '蜂蜜/蜂类制品', 123, 'fengmi/fengleizhipin', 'fm/flzp', '酒水饮料|冲调谷物|蜂蜜/蜂类制品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (132, '麦片谷物冲饮', 123, 'maipianguwuchongyin', 'mpgwcy', '酒水饮料|冲调谷物|麦片谷物冲饮', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (133, '茗茶', 95, 'mingcha', 'mc', '酒水饮料|茗茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (134, '普洱', 133, 'puer', 'pe', '酒水饮料|茗茶|普洱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (135, '黑茶', 133, 'heicha', 'hc', '酒水饮料|茗茶|黑茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (136, '绿茶', 133, 'lvcha', 'lc', '酒水饮料|茗茶|绿茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (137, '花草茶', 133, 'huacaocha', 'hcc', '酒水饮料|茗茶|花草茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (138, '花果茶', 133, 'huaguocha', 'hgc', '酒水饮料|茗茶|花果茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (139, '乌龙茶', 133, 'wulongcha', 'wlc', '酒水饮料|茗茶|乌龙茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (140, '白茶', 133, 'baicha', 'bc', '酒水饮料|茗茶|白茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (141, '红茶', 133, 'hongcha', 'hc', '酒水饮料|茗茶|红茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (142, '养生茶', 133, 'yangshengcha', 'ysc', '酒水饮料|茗茶|养生茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (143, '铁观音', 133, 'tieguanyin', 'tgy', '酒水饮料|茗茶|铁观音', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (144, '龙井', 133, 'longjing', 'lj', '酒水饮料|茗茶|龙井', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (145, '茶礼盒', 133, 'chalihe', 'clh', '酒水饮料|茗茶|茶礼盒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (146, '其他茶', 133, 'qitacha', 'qtc', '酒水饮料|茗茶|其他茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (147, '冷饮冻食', 95, 'lengyindongshi', 'lyds', '酒水饮料|冷饮冻食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (148, '冰淇淋', 147, 'bingqilin', 'bql', '酒水饮料|冷饮冻食|冰淇淋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (149, '名茶', 95, 'mingcha', 'mc', '酒水饮料|名茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (150, '绿茶', 149, 'lvcha', 'lc', '酒水饮料|名茶|绿茶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (151, '手机/数码/电脑', 0, 'diannaobangong', 'dnbg', '手机/数码/电脑', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (152, '游戏设备', 151, 'youxishebei', 'yxsb', '手机/数码/电脑|游戏设备', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (153, '游戏软件', 152, 'youxiruanjian', 'yxrj', '手机/数码/电脑|游戏设备|游戏软件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (154, '游戏耳机', 152, 'youxierji', 'yxej', '手机/数码/电脑|游戏设备|游戏耳机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (155, '游戏周边', 152, 'youxizhoubian', 'yxzb', '手机/数码/电脑|游戏设备|游戏周边', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (156, '游戏机', 152, 'youxiji', 'yxj', '手机/数码/电脑|游戏设备|游戏机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (157, '手柄/方向盘', 152, 'shoubing/fangxiangpan', 'sb/fxp', '手机/数码/电脑|游戏设备|手柄/方向盘', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (158, '办公设备', 151, 'bangongshebei', 'bgsb', '手机/数码/电脑|办公设备', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (159, '白板', 158, 'baiban', 'bb', '手机/数码/电脑|办公设备|白板', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (160, '投影配件', 158, 'touyingpeijian', 'typj', '手机/数码/电脑|办公设备|投影配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (161, '碎纸机', 158, 'suizhiji', 'szj', '手机/数码/电脑|办公设备|碎纸机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (162, '传真设备', 158, 'chuanzhenshebei', 'czsb', '手机/数码/电脑|办公设备|传真设备', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (163, '装订/封装机', 158, 'zhuangding/fengzhuangji', 'zd/fzj', '手机/数码/电脑|办公设备|装订/封装机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (164, '会议音频视频', 158, 'huiyiyinpinshipin', 'hyypsp', '手机/数码/电脑|办公设备|会议音频视频', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (165, '收银机', 158, 'shouyinji', 'syj', '手机/数码/电脑|办公设备|收银机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (166, '扫描设备', 158, 'saomiaoshebei', 'smsb', '手机/数码/电脑|办公设备|扫描设备', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (167, '考勤机', 158, 'kaoqinji', 'kqj', '手机/数码/电脑|办公设备|考勤机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (168, '保险柜', 158, 'baoxianju', 'bxj', '手机/数码/电脑|办公设备|保险柜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (169, '打印机', 158, 'dayinji', 'dyj', '手机/数码/电脑|办公设备|打印机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (170, '办公家具', 158, 'bangongjiaju', 'bgjj', '手机/数码/电脑|办公设备|办公家具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (171, '投影机', 158, 'touyingji', 'tyj', '手机/数码/电脑|办公设备|投影机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (172, '复合机', 158, 'fuheji', 'fhj', '手机/数码/电脑|办公设备|复合机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (173, '验钞/点钞机', 158, 'yanchao/dianchaoji', 'yc/dcj', '手机/数码/电脑|办公设备|验钞/点钞机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (174, '安防监控', 158, 'anfangjiankong', 'afjk', '手机/数码/电脑|办公设备|安防监控', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (175, '多功能一体机', 158, 'duogongnengyitiji', 'dgnytj', '手机/数码/电脑|办公设备|多功能一体机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (176, '外设产品', 151, 'waishechanpin', 'wscp', '手机/数码/电脑|外设产品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (177, '线缆', 176, 'xianlan', 'xl', '手机/数码/电脑|外设产品|线缆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (178, '网络仪表仪器', 176, 'wangluoyibiaoyiqi', 'wlybyq', '手机/数码/电脑|外设产品|网络仪表仪器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (179, '电脑工具', 176, 'diannaogongju', 'dngj', '手机/数码/电脑|外设产品|电脑工具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (180, '键盘', 176, 'jianpan', 'jp', '手机/数码/电脑|外设产品|键盘', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (181, '摄像头', 176, 'shexiangtou', 'sxt', '手机/数码/电脑|外设产品|摄像头', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (182, '硬盘盒', 176, 'yingpanhe', 'yph', '手机/数码/电脑|外设产品|硬盘盒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (183, '电玩', 176, 'dianwan', 'dw', '手机/数码/电脑|外设产品|电玩', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (184, 'UPS电源', 176, 'upsdianyuan', 'upsdy', '手机/数码/电脑|外设产品|UPS电源', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (185, '鼠标垫', 176, 'shubiaodian', 'sbd', '手机/数码/电脑|外设产品|鼠标垫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (186, '手写板', 176, 'shouxieban', 'sxb', '手机/数码/电脑|外设产品|手写板', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (187, 'U盘', 176, 'upan', 'up', '手机/数码/电脑|外设产品|U盘', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (188, '游戏设备', 176, 'youxishebei', 'yxsb', '手机/数码/电脑|外设产品|游戏设备', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (189, '鼠标', 176, 'shubiao', 'sb', '手机/数码/电脑|外设产品|鼠标', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (190, '电脑清洁', 176, 'diannaoqingjie', 'dnqj', '手机/数码/电脑|外设产品|电脑清洁', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (191, '移动硬盘', 176, 'yidongyingpan', 'ydyp', '手机/数码/电脑|外设产品|移动硬盘', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (192, '键鼠套装', 176, 'jianshutaozhuang', 'jstz', '手机/数码/电脑|外设产品|键鼠套装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (193, '文具/耗材', 151, 'wenju/haocai', 'wj/hc', '手机/数码/电脑|文具/耗材', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (194, '笔类', 193, 'bilei', 'bl', '手机/数码/电脑|文具/耗材|笔类', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (195, '本册/便签', 193, 'bence/bianqian', 'bc/bq', '手机/数码/电脑|文具/耗材|本册/便签', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (196, '学生文具', 193, 'xueshengwenju', 'xswj', '手机/数码/电脑|文具/耗材|学生文具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (197, '墨盒', 193, 'mohe', 'mh', '手机/数码/电脑|文具/耗材|墨盒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (198, '计算器', 193, 'jisuanqi', 'jsq', '手机/数码/电脑|文具/耗材|计算器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (199, '画具画材', 193, 'huajuhuacai', 'hjhc', '手机/数码/电脑|文具/耗材|画具画材', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (200, '财会用品', 193, 'caihuiyongpin', 'chyp', '手机/数码/电脑|文具/耗材|财会用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (201, '纸类', 193, 'zhilei', 'zl', '手机/数码/电脑|文具/耗材|纸类', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (202, '硒鼓/墨粉', 193, 'xigu/mofen', 'xg/mf', '手机/数码/电脑|文具/耗材|硒鼓/墨粉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (203, '刻录碟片/附件', 193, 'keludiepian/fujian', 'kldp/fj', '手机/数码/电脑|文具/耗材|刻录碟片/附件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (204, '文件管理', 193, 'wenjianguanli', 'wjgl', '手机/数码/电脑|文具/耗材|文件管理', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (205, '色带', 193, 'sedai', 'sd', '手机/数码/电脑|文具/耗材|色带', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (206, '办公文具', 193, 'bangongwenju', 'bgwj', '手机/数码/电脑|文具/耗材|办公文具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (207, '电脑配件', 151, 'diannaopeijian', 'dnpj', '手机/数码/电脑|电脑配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (208, '装机配件', 207, 'zhuangjipeijian', 'zjpj', '手机/数码/电脑|电脑配件|装机配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (209, '电源', 207, 'dianyuan', 'dy', '手机/数码/电脑|电脑配件|电源', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (210, '硬盘', 207, 'yingpan', 'yp', '手机/数码/电脑|电脑配件|硬盘', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (211, '内存', 207, 'neicun', 'nc', '手机/数码/电脑|电脑配件|内存', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (212, 'SSD固态硬盘', 207, 'ssdgutaiyingpan', 'ssdgtyp', '手机/数码/电脑|电脑配件|SSD固态硬盘', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (213, '机箱', 207, 'jixiang', 'jx', '手机/数码/电脑|电脑配件|机箱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (214, '散热器', 207, 'sanreqi', 'srq', '手机/数码/电脑|电脑配件|散热器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (215, '刻录机/光驱', 207, 'keluji/guangqu', 'klj/gq', '手机/数码/电脑|电脑配件|刻录机/光驱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (216, '声卡/扩展卡', 207, 'shengka/kuozhanka', 'sk/kzk', '手机/数码/电脑|电脑配件|声卡/扩展卡', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (217, '显卡', 207, 'xianka', 'xk', '手机/数码/电脑|电脑配件|显卡', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (218, 'CPU', 207, 'cpu', 'cpu', '手机/数码/电脑|电脑配件|CPU', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (219, '显示器', 207, 'xianshiqi', 'xsq', '手机/数码/电脑|电脑配件|显示器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (220, '主板', 207, 'zhuban', 'zb', '手机/数码/电脑|电脑配件|主板', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (221, '网络产品', 151, 'wangluochanpin', 'wlcp', '手机/数码/电脑|网络产品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (222, '网络配件', 221, 'wangluopeijian', 'wlpj', '手机/数码/电脑|网络产品|网络配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (223, '网卡', 221, 'wangka', 'wk', '手机/数码/电脑|网络产品|网卡', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (224, '交换机', 221, 'jiaohuanji', 'jhj', '手机/数码/电脑|网络产品|交换机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (225, '4G/3G上网', 221, '4g/3gshangwang', '4g/3gsw', '手机/数码/电脑|网络产品|4G/3G上网', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (226, '网络盒子', 221, 'wangluohezi', 'wlhz', '手机/数码/电脑|网络产品|网络盒子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (227, '路由器', 221, 'luyouqi', 'lyq', '手机/数码/电脑|网络产品|路由器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (228, '网络存储', 221, 'wangluocunchu', 'wlcc', '手机/数码/电脑|网络产品|网络存储', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (229, '电脑整机', 151, 'diannaozhengji', 'dnzj', '手机/数码/电脑|电脑整机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (230, '台式机', 229, 'taishiji', 'tsj', '手机/数码/电脑|电脑整机|台式机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (231, '笔记本配件', 229, 'bijibenpeijian', 'bjbpj', '手机/数码/电脑|电脑整机|笔记本配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (232, '平板电脑配件', 229, 'pingbandiannaopeijian', 'pbdnpj', '手机/数码/电脑|电脑整机|平板电脑配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (233, '游戏本', 229, 'youxiben', 'yxb', '手机/数码/电脑|电脑整机|游戏本', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (234, '服务器/工作站', 229, 'fuwuqi/gongzuozhan', 'fwq/gzz', '手机/数码/电脑|电脑整机|服务器/工作站', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (235, '一体机', 229, 'yitiji', 'ytj', '手机/数码/电脑|电脑整机|一体机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (236, '平板电脑', 229, 'pingbandiannao', 'pbdn', '手机/数码/电脑|电脑整机|平板电脑', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (237, '笔记本', 229, 'bijiben', 'bjb', '手机/数码/电脑|电脑整机|笔记本', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (238, '图书音像', 151, 'tushuyinxiang', 'tsyx', '手机/数码/电脑|图书音像', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (239, '少儿', 238, 'shaoer', 'se', '手机/数码/电脑|图书音像|少儿', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (240, '人文社科', 238, 'renwensheke', 'rwsk', '手机/数码/电脑|图书音像|人文社科', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (241, '人文设科', 238, 'renwensheke', 'rwsk', '手机/数码/电脑|图书音像|人文设科', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (242, '影音娱乐', 151, 'yingyinyule', 'yyyl', '手机/数码/电脑|影音娱乐', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (243, 'MP3/MP4', 242, 'mp3/mp4', 'mp3/mp4', '手机/数码/电脑|影音娱乐|MP3/MP4', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (244, 'MP3/MP4配件', 242, 'mp3/mp4peijian', 'mp3/mp4pj', '手机/数码/电脑|影音娱乐|MP3/MP4配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (245, '专业音频', 242, 'zhuanyeyinpin', 'zyyp', '手机/数码/电脑|影音娱乐|专业音频', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (246, '便携/无线音箱', 242, 'bianxie/wuxianyinxiang', 'bx/wxyx', '手机/数码/电脑|影音娱乐|便携/无线音箱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (247, '收音机', 242, 'shouyinji', 'syj', '手机/数码/电脑|影音娱乐|收音机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (248, '智能设备', 242, 'zhinengshebei', 'znsb', '手机/数码/电脑|影音娱乐|智能设备', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (249, '耳机/耳麦', 242, 'erji/ermai', 'ej/em', '手机/数码/电脑|影音娱乐|耳机/耳麦', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (250, '音箱/音响', 242, 'yinxiang/yinxiang', 'yx/yx', '手机/数码/电脑|影音娱乐|音箱/音响', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (251, '高清播放器', 242, 'gaoqingbofangqi', 'gqbfq', '手机/数码/电脑|影音娱乐|高清播放器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (252, '麦克风', 242, 'maikefeng', 'mkf', '手机/数码/电脑|影音娱乐|麦克风', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (253, '手机通讯', 151, 'shoujitongxun', 'sjtx', '手机/数码/电脑|手机通讯', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (254, '对讲机', 253, 'duijiangji', 'djj', '手机/数码/电脑|手机通讯|对讲机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (255, '手机', 253, 'shouji', 'sj', '手机/数码/电脑|手机通讯|手机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (256, '手机配件', 151, 'shoujipeijian', 'sjpj', '手机/数码/电脑|手机配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (257, 'iPhone配件', 256, 'iphonepeijian', 'iphonepj', '手机/数码/电脑|手机配件|iPhone配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (258, '便携/无线音响', 256, 'bianxie/wuxianyinxiang', 'bx/wxyx', '手机/数码/电脑|手机配件|便携/无线音响', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (259, '充电器', 256, 'chongdianqi', 'cdq', '手机/数码/电脑|手机配件|充电器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (260, '创意配件', 256, 'chuangyipeijian', 'cypj', '手机/数码/电脑|手机配件|创意配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (261, '手机保护套', 256, 'shoujibaohutao', 'sjbht', '手机/数码/电脑|手机配件|手机保护套', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (262, '手机存储卡', 256, 'shoujicunchuka', 'sjcck', '手机/数码/电脑|手机配件|手机存储卡', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (263, '手机支架', 256, 'shoujizhijia', 'sjzj', '手机/数码/电脑|手机配件|手机支架', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (264, '手机电池', 256, 'shoujidianchi', 'sjdc', '手机/数码/电脑|手机配件|手机电池', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (265, '手机耳机', 256, 'shoujierji', 'sjej', '手机/数码/电脑|手机配件|手机耳机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (266, '手机贴膜', 256, 'shoujitiemo', 'sjtm', '手机/数码/电脑|手机配件|手机贴膜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (267, '手机饰品', 256, 'shoujishipin', 'sjsp', '手机/数码/电脑|手机配件|手机饰品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (268, '拍照配件', 256, 'paizhaopeijian', 'pzpj', '手机/数码/电脑|手机配件|拍照配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (269, '数据线', 256, 'shujuxian', 'sjx', '手机/数码/电脑|手机配件|数据线', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (270, '蓝牙耳机', 256, 'lanyaerji', 'lyej', '手机/数码/电脑|手机配件|蓝牙耳机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (271, '车载配件', 256, 'chezaipeijian', 'czpj', '手机/数码/电脑|手机配件|车载配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (272, '摄影摄像', 151, 'sheyingshexiang', 'sysx', '手机/数码/电脑|摄影摄像', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (273, '单反相机', 272, 'danfanxiangji', 'dfxj', '手机/数码/电脑|摄影摄像|单反相机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (274, '单电/微单相机', 272, 'dandian/weidanxiangji', 'dd/wdxj', '手机/数码/电脑|摄影摄像|单电/微单相机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (275, '影棚器材', 272, 'yingpengqicai', 'ypqc', '手机/数码/电脑|摄影摄像|影棚器材', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (276, '户外器材', 272, 'huwaiqicai', 'hwqc', '手机/数码/电脑|摄影摄像|户外器材', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (277, '拍立得', 272, 'pailide', 'pld', '手机/数码/电脑|摄影摄像|拍立得', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (278, '摄像机', 272, 'shexiangji', 'sxj', '手机/数码/电脑|摄影摄像|摄像机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (279, '数码相机', 272, 'shumaxiangji', 'smxj', '手机/数码/电脑|摄影摄像|数码相机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (280, '数码相框', 272, 'shumaxiangkuang', 'smxk', '手机/数码/电脑|摄影摄像|数码相框', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (281, '运动相机', 272, 'yundongxiangji', 'ydxj', '手机/数码/电脑|摄影摄像|运动相机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (282, '镜头', 272, 'jingtou', 'jt', '手机/数码/电脑|摄影摄像|镜头', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (283, '数码配件', 151, 'shumapeijian', 'smpj', '手机/数码/电脑|数码配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (284, '三脚架/云台', 283, 'sanjiaojia/yuntai', 'sjj/yt', '手机/数码/电脑|数码配件|三脚架/云台', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (285, '存储卡', 283, 'cunchuka', 'cck', '手机/数码/电脑|数码配件|存储卡', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (286, '数码支架', 283, 'shumazhijia', 'smzj', '手机/数码/电脑|数码配件|数码支架', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (287, '机身附件', 283, 'jishenfujian', 'jsfj', '手机/数码/电脑|数码配件|机身附件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (288, '滤镜', 283, 'lvjing', 'lj', '手机/数码/电脑|数码配件|滤镜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (289, '相机清洁/贴膜', 283, 'xiangjiqingjie/tiemo', 'xjqj/tm', '手机/数码/电脑|数码配件|相机清洁/贴膜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (290, '移动电源', 283, 'yidongdianyuan', 'yddy', '手机/数码/电脑|数码配件|移动电源', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (291, '读卡器', 283, 'dukaqi', 'dkq', '手机/数码/电脑|数码配件|读卡器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (292, '镜头附件', 283, 'jingtoufujian', 'jtfj', '手机/数码/电脑|数码配件|镜头附件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (293, '闪光灯/手柄', 283, 'shanguangdeng/shoubing', 'sgd/sb', '手机/数码/电脑|数码配件|闪光灯/手柄', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (294, '智能设备', 151, 'zhinengshebei', 'znsb', '手机/数码/电脑|智能设备', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (295, 'VR眼镜', 294, 'vryanjing', 'vryj', '手机/数码/电脑|智能设备|VR眼镜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (296, '体感车', 294, 'tiganche', 'tgc', '手机/数码/电脑|智能设备|体感车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (297, '健康监测', 294, 'jiankangjiance', 'jkjc', '手机/数码/电脑|智能设备|健康监测', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (298, '无人机', 294, 'wurenji', 'wrj', '手机/数码/电脑|智能设备|无人机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (299, '智能家居', 294, 'zhinengjiaju', 'znjj', '手机/数码/电脑|智能设备|智能家居', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (300, '智能手环', 294, 'zhinengshouhuan', 'znsh', '手机/数码/电脑|智能设备|智能手环', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (301, '智能手表', 294, 'zhinengshoubiao', 'znsb', '手机/数码/电脑|智能设备|智能手表', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (302, '智能机器人', 294, 'zhinengjiqiren', 'znjqr', '手机/数码/电脑|智能设备|智能机器人', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (303, '智能配饰', 294, 'zhinengpeishi', 'znps', '手机/数码/电脑|智能设备|智能配饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (304, '运动跟踪器', 294, 'yundonggenzongqi', 'ydgzq', '手机/数码/电脑|智能设备|运动跟踪器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (305, '电子教育', 151, 'dianzijiaoyu', 'dzjy', '手机/数码/电脑|电子教育', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (306, '复读机', 305, 'fuduji', 'fdj', '手机/数码/电脑|电子教育|复读机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (307, '学生平板', 305, 'xueshengpingban', 'xspb', '手机/数码/电脑|电子教育|学生平板', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (308, '录音笔', 305, 'luyinbi', 'lyb', '手机/数码/电脑|电子教育|录音笔', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (309, '早教益智', 305, 'zaojiaoyizhi', 'zjyz', '手机/数码/电脑|电子教育|早教益智', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (310, '点读机/笔', 305, 'dianduji/bi', 'ddj/b', '手机/数码/电脑|电子教育|点读机/笔', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (311, '电子词典', 305, 'dianzicidian', 'dzcd', '手机/数码/电脑|电子教育|电子词典', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (312, '电纸书', 305, 'dianzhishu', 'dzs', '手机/数码/电脑|电子教育|电纸书', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (313, '文具耗材', 151, 'wenjuhaocai', 'wjhc', '手机/数码/电脑|文具耗材', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (314, '笔类', 313, 'bilei', 'bl', '手机/数码/电脑|文具耗材|笔类', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (315, '服饰/鞋靴', 0, 'fushineiyi', 'fsny', '服饰/鞋靴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (316, '服饰配件', 315, 'fushipeijian', 'fspj', '服饰/鞋靴|服饰配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (317, '毛线/布面料', 316, 'maoxian/bumianliao', 'mx/bml', '服饰/鞋靴|服饰配件|毛线/布面料', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (318, '女士腰带/礼盒', 316, 'nvshiyaodai/lihe', 'nsyd/lh', '服饰/鞋靴|服饰配件|女士腰带/礼盒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (319, '男士丝巾/围巾', 316, 'nanshisijin/weijin', 'nssj/wj', '服饰/鞋靴|服饰配件|男士丝巾/围巾', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (320, '口罩', 316, 'kouzhao', 'kz', '服饰/鞋靴|服饰配件|口罩', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (321, '老花镜', 316, 'laohuajing', 'lhj', '服饰/鞋靴|服饰配件|老花镜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (322, '棒球帽', 316, 'bangqiumao', 'bqm', '服饰/鞋靴|服饰配件|棒球帽', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (323, '女士丝巾/围巾/披肩', 316, 'nvshisijin/weijin/pijian', 'nssj/wj/pj', '服饰/鞋靴|服饰配件|女士丝巾/围巾/披肩', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (324, '贝雷帽', 316, 'beileimao', 'blm', '服饰/鞋靴|服饰配件|贝雷帽', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (325, '光学镜架/镜片', 316, 'guangxuejingjia/jingpian', 'gxjj/jp', '服饰/鞋靴|服饰配件|光学镜架/镜片', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (326, '钥匙扣', 316, 'yaochikou', 'yck', '服饰/鞋靴|服饰配件|钥匙扣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (327, '毛线帽', 316, 'maoxianmao', 'mxm', '服饰/鞋靴|服饰配件|毛线帽', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (328, '领带/领结/领带夹', 316, 'lingdai/lingjie/lingdaijia', 'ld/lj/ldj', '服饰/鞋靴|服饰配件|领带/领结/领带夹', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (329, '太阳镜', 316, 'taiyangjing', 'tyj', '服饰/鞋靴|服饰配件|太阳镜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (330, '袖扣', 316, 'xiukou', 'xk', '服饰/鞋靴|服饰配件|袖扣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (331, '耳罩/耳包', 316, 'erzhao/erbao', 'ez/eb', '服饰/鞋靴|服饰配件|耳罩/耳包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (332, '礼帽', 316, 'limao', 'lm', '服饰/鞋靴|服饰配件|礼帽', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (333, '保暖手套', 316, 'maoxianshoutao', 'mxst', '服饰/鞋靴|服饰配件|保暖手套', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (334, '装饰眼镜', 316, 'zhuangshiyanjing', 'zsyj', '服饰/鞋靴|服饰配件|装饰眼镜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (335, '防辐射眼镜', 316, 'fangfusheyanjing', 'ffsyj', '服饰/鞋靴|服饰配件|防辐射眼镜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (336, '鸭舌帽', 316, 'yashemao', 'ysm', '服饰/鞋靴|服饰配件|鸭舌帽', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (337, '遮阳伞/雨伞', 316, 'zheyangsan/yusan', 'zys/ys', '服饰/鞋靴|服饰配件|遮阳伞/雨伞', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (338, '男士腰带/礼盒', 316, 'nanshiyaodai/lihe', 'nsyd/lh', '服饰/鞋靴|服饰配件|男士腰带/礼盒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (339, '假领', 316, 'jialing', 'jl', '服饰/鞋靴|服饰配件|假领', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (340, '防晒手套', 316, 'fangshaishoutao', 'fsst', '服饰/鞋靴|服饰配件|防晒手套', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (341, '真皮手套', 316, 'zhenpishoutao', 'zpst', '服饰/鞋靴|服饰配件|真皮手套', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (342, '围巾/手套/帽子套装', 316, 'weijin/shoutao/maozitaozhuang', 'wj/st/mztz', '服饰/鞋靴|服饰配件|围巾/手套/帽子套装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (343, '遮阳帽', 316, 'zheyangmao', 'zym', '服饰/鞋靴|服饰配件|遮阳帽', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (344, '游泳镜', 316, 'youyongjing', 'yyj', '服饰/鞋靴|服饰配件|游泳镜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (345, '其他', 316, 'qita', 'qt', '服饰/鞋靴|服饰配件|其他', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (346, '内衣', 315, 'neiyi', 'ny', '服饰/鞋靴|内衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (347, '女式内裤', 346, 'nvshineiku', 'nsnk', '服饰/鞋靴|内衣|女式内裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (348, '男式内裤', 346, 'nanshineiku', 'nsnk', '服饰/鞋靴|内衣|男式内裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (349, '秋衣秋裤', 346, 'qiuyiqiuku', 'qyqk', '服饰/鞋靴|内衣|秋衣秋裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (350, '休闲棉袜', 346, 'xiuxianmianwa', 'xxmw', '服饰/鞋靴|内衣|休闲棉袜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (351, '睡衣/家居服', 346, 'shuiyi/jiajufu', 'sy/jjf', '服饰/鞋靴|内衣|睡衣/家居服', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (352, '连裤袜/丝袜', 346, 'liankuwa/siwa', 'lkw/sw', '服饰/鞋靴|内衣|连裤袜/丝袜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (353, '塑身美体', 346, 'sushenmeiti', 'ssmt', '服饰/鞋靴|内衣|塑身美体', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (354, '打底裤袜', 346, 'dadikuwa', 'ddkw', '服饰/鞋靴|内衣|打底裤袜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (355, '美腿袜', 346, 'meituiwa', 'mtw', '服饰/鞋靴|内衣|美腿袜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (356, '内衣配件', 346, 'neiyipeijian', 'nypj', '服饰/鞋靴|内衣|内衣配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (357, '保暖内衣', 346, 'baonuanneiyi', 'bnny', '服饰/鞋靴|内衣|保暖内衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (358, '情侣睡衣', 346, 'qinglvshuiyi', 'qlsy', '服饰/鞋靴|内衣|情侣睡衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (359, '文胸', 346, 'wenxiong', 'wx', '服饰/鞋靴|内衣|文胸', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (360, '情趣内衣', 346, 'qingquneiyi', 'qqny', '服饰/鞋靴|内衣|情趣内衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (361, '大码内衣', 346, 'damaneiyi', 'dmny', '服饰/鞋靴|内衣|大码内衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (362, '文胸套装', 346, 'wenxiongtaozhuang', 'wxtz', '服饰/鞋靴|内衣|文胸套装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (363, '商务男袜', 346, 'shangwunanwa', 'swnw', '服饰/鞋靴|内衣|商务男袜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (364, '少女文胸', 346, 'shaonvwenxiong', 'snwx', '服饰/鞋靴|内衣|少女文胸', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (365, '泳衣', 346, 'yongyi', 'yy', '服饰/鞋靴|内衣|泳衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (366, '抹胸', 346, 'moxiong', 'mx', '服饰/鞋靴|内衣|抹胸', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (367, '男士内裤', 346, 'nanshineiku', 'nsnk', '服饰/鞋靴|内衣|男士内裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (368, '女士内裤', 346, 'nvshineiku', 'nsnk', '服饰/鞋靴|内衣|女士内裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (369, '男装', 315, 'nanzhuang', 'nz', '服饰/鞋靴|男装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (370, '西裤', 369, 'xiku', 'xk', '服饰/鞋靴|男装|西裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (371, '羊绒衫', 369, 'yangrongshan', 'yrs', '服饰/鞋靴|男装|羊绒衫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (372, '休闲裤', 369, 'xiuxianku', 'xxk', '服饰/鞋靴|男装|休闲裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (373, '卫裤/运动裤', 369, 'weiku/yundongku', 'wk/ydk', '服饰/鞋靴|男装|卫裤/运动裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (374, '唐装/中山装', 369, 'tangzhuang/zhongshanzhuang', 'tz/zsz', '服饰/鞋靴|男装|唐装/中山装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (375, '设计师/潮牌', 369, 'shejishi/chaopai', 'sjs/cp', '服饰/鞋靴|男装|设计师/潮牌', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (376, '工装', 369, 'gongzhuang', 'gz', '服饰/鞋靴|男装|工装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (377, '衬衫', 369, 'chenshan', 'cs', '服饰/鞋靴|男装|衬衫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (378, '真皮皮衣', 369, 'zhenpipiyi', 'zppy', '服饰/鞋靴|男装|真皮皮衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (379, '针织衫', 369, 'zhenzhishan', 'zzs', '服饰/鞋靴|男装|针织衫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (380, '中老年男装', 369, 'zhonglaoniannanzhuang', 'zlnnz', '服饰/鞋靴|男装|中老年男装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (381, '羊毛衫', 369, 'yangmaoshan', 'yms', '服饰/鞋靴|男装|羊毛衫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (382, '牛仔裤', 369, 'niuziku', 'nzk', '服饰/鞋靴|男装|牛仔裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (383, '西服', 369, 'xifu', 'xf', '服饰/鞋靴|男装|西服', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (384, '西服套装', 369, 'xifutaozhuang', 'xftz', '服饰/鞋靴|男装|西服套装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (385, '马甲/背心', 369, 'majia/beixin', 'mj/bx', '服饰/鞋靴|男装|马甲/背心', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (386, '加绒裤', 369, 'jiarongku', 'jrk', '服饰/鞋靴|男装|加绒裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (387, '卫衣', 369, 'weiyi', 'wy', '服饰/鞋靴|男装|卫衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (388, 'T恤', 369, 'txu', 'tx', '服饰/鞋靴|男装|T恤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (389, 'POLO衫', 369, 'poloshan', 'polos', '服饰/鞋靴|男装|POLO衫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (390, '夹克', 369, 'jiake', 'jk', '服饰/鞋靴|男装|夹克', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (391, '大码男装', 369, 'damananzhuang', 'dmnz', '服饰/鞋靴|男装|大码男装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (392, '仿皮皮衣', 369, 'fangpipiyi', 'fppy', '服饰/鞋靴|男装|仿皮皮衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (393, '短裤', 369, 'duanku', 'dk', '服饰/鞋靴|男装|短裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (394, '毛呢大衣', 369, 'maonidayi', 'mndy', '服饰/鞋靴|男装|毛呢大衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (395, '风衣', 369, 'fengyi', 'fy', '服饰/鞋靴|男装|风衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (396, '羽绒服', 369, 'yurongfu', 'yrf', '服饰/鞋靴|男装|羽绒服', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (397, '女装', 315, 'nvzhuang', 'nz', '服饰/鞋靴|女装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (398, '小西装', 397, 'xiaoxizhuang', 'xxz', '服饰/鞋靴|女装|小西装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (399, '半身裙', 397, 'banshenqun', 'bsq', '服饰/鞋靴|女装|半身裙', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (400, '大码女装', 397, 'damanvzhuang', 'dmnz', '服饰/鞋靴|女装|大码女装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (401, '牛仔裤', 397, 'niuziku', 'nzk', '服饰/鞋靴|女装|牛仔裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (402, '休闲裤', 397, 'xiuxianku', 'xxk', '服饰/鞋靴|女装|休闲裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (403, '婚纱', 397, 'hunsha', 'hs', '服饰/鞋靴|女装|婚纱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (404, '羊绒衫', 397, 'yangrongshan', 'yrs', '服饰/鞋靴|女装|羊绒衫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (405, '中老年女装', 397, 'zhonglaoniannvzhuang', 'zlnnz', '服饰/鞋靴|女装|中老年女装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (406, '毛衣', 397, 'maoyi', 'my', '服饰/鞋靴|女装|毛衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (407, '连衣裙', 397, 'lianyiqun', 'lyq', '服饰/鞋靴|女装|连衣裙', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (408, '皮草', 397, 'picao', 'pc', '服饰/鞋靴|女装|皮草', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (409, '正装裤', 397, 'zhengzhuangku', 'zzk', '服饰/鞋靴|女装|正装裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (410, '旗袍/唐装', 397, 'qipao/tangzhuang', 'qp/tz', '服饰/鞋靴|女装|旗袍/唐装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (411, '短裤', 397, 'duanku', 'dk', '服饰/鞋靴|女装|短裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (412, '卫衣', 397, 'weiyi', 'wy', '服饰/鞋靴|女装|卫衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (413, '仿皮皮衣', 397, 'fangpipiyi', 'fppy', '服饰/鞋靴|女装|仿皮皮衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (414, '毛呢大衣', 397, 'maonidayi', 'mndy', '服饰/鞋靴|女装|毛呢大衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (415, 'T恤', 397, 'txu', 'tx', '服饰/鞋靴|女装|T恤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (416, '吊带/背心', 397, 'diaodai/beixin', 'dd/bx', '服饰/鞋靴|女装|吊带/背心', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (417, '打底裤', 397, 'dadiku', 'ddk', '服饰/鞋靴|女装|打底裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (418, '衬衫', 397, 'chenshan', 'cs', '服饰/鞋靴|女装|衬衫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (419, '礼服', 397, 'lifu', 'lf', '服饰/鞋靴|女装|礼服', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (420, '真皮皮衣', 397, 'zhenpipiyi', 'zppy', '服饰/鞋靴|女装|真皮皮衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (421, '马甲', 397, 'majia', 'mj', '服饰/鞋靴|女装|马甲', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (422, '加绒裤', 397, 'jiarongku', 'jrk', '服饰/鞋靴|女装|加绒裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (423, '设计师/潮牌', 397, 'shejishi/chaopai', 'sjs/cp', '服饰/鞋靴|女装|设计师/潮牌', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (424, '风衣', 397, 'fengyi', 'fy', '服饰/鞋靴|女装|风衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (425, '短外套', 397, 'duanwaitao', 'dwt', '服饰/鞋靴|女装|短外套', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (426, '雪纺衫', 397, 'xuefangshan', 'xfs', '服饰/鞋靴|女装|雪纺衫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (427, '针织衫', 397, 'zhenzhishan', 'zzs', '服饰/鞋靴|女装|针织衫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (428, '打底衫', 397, 'dadishan', 'dds', '服饰/鞋靴|女装|打底衫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (429, '羽绒服', 397, 'yurongfu', 'yrf', '服饰/鞋靴|女装|羽绒服', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (430, '奢侈品', 315, 'shechipin', 'scp', '服饰/鞋靴|奢侈品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (431, '时尚女鞋', 315, 'shishangnvxie', 'ssnx', '服饰/鞋靴|时尚女鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (432, '内增高', 431, 'neizenggao', 'nzg', '服饰/鞋靴|时尚女鞋|内增高', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (433, '凉鞋', 431, 'liangxie', 'lx', '服饰/鞋靴|时尚女鞋|凉鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (434, '单鞋', 431, 'danxie', 'dx', '服饰/鞋靴|时尚女鞋|单鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (435, '坡跟鞋', 431, 'pogenxie', 'pgx', '服饰/鞋靴|时尚女鞋|坡跟鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (436, '女靴', 431, 'nvxue', 'nx', '服饰/鞋靴|时尚女鞋|女靴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (437, '妈妈鞋', 431, 'mamaxie', 'mmx', '服饰/鞋靴|时尚女鞋|妈妈鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (438, '布鞋/绣花鞋', 431, 'buxie/xiuhuaxie', 'bx/xhx', '服饰/鞋靴|时尚女鞋|布鞋/绣花鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (439, '拖鞋/人字拖', 431, 'tuoxie/renzituo', 'tx/rzt', '服饰/鞋靴|时尚女鞋|拖鞋/人字拖', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (440, '松糕鞋', 431, 'songgaoxie', 'sgx', '服饰/鞋靴|时尚女鞋|松糕鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (441, '特色鞋', 431, 'tesexie', 'tsx', '服饰/鞋靴|时尚女鞋|特色鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (442, '筒靴', 431, 'tongxue', 'tx', '服饰/鞋靴|时尚女鞋|筒靴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (443, '踝靴', 431, 'huaixue', 'hx', '服饰/鞋靴|时尚女鞋|踝靴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (444, '防水台', 431, 'fangshuitai', 'fst', '服饰/鞋靴|时尚女鞋|防水台', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (445, '雨鞋/雨靴', 431, 'yuxie/yuxue', 'yx/yx', '服饰/鞋靴|时尚女鞋|雨鞋/雨靴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (446, '雪地靴', 431, 'xuedixue', 'xdx', '服饰/鞋靴|时尚女鞋|雪地靴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (447, '鞋配件', 431, 'xiepeijian', 'xpj', '服饰/鞋靴|时尚女鞋|鞋配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (448, '马丁靴', 431, 'madingxue', 'mdx', '服饰/鞋靴|时尚女鞋|马丁靴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (449, '高跟鞋', 431, 'gaogenxie', 'ggx', '服饰/鞋靴|时尚女鞋|高跟鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (450, '鱼嘴鞋', 431, 'yuzuixie', 'yzx', '服饰/鞋靴|时尚女鞋|鱼嘴鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (451, '流行男鞋', 315, 'liuxingnanxie', 'lxnx', '服饰/鞋靴|流行男鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (452, '传统布鞋', 451, 'chuantongbuxie', 'ctbx', '服饰/鞋靴|流行男鞋|传统布鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (453, '凉鞋/沙滩鞋', 451, 'liangxie/shatanxie', 'lx/stx', '服饰/鞋靴|流行男鞋|凉鞋/沙滩鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (454, '功能鞋', 451, 'gongnengxie', 'gnx', '服饰/鞋靴|流行男鞋|功能鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (455, '商务休闲鞋', 451, 'shangwuxiuxianxie', 'swxxx', '服饰/鞋靴|流行男鞋|商务休闲鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (456, '增高鞋', 451, 'zenggaoxie', 'zgx', '服饰/鞋靴|流行男鞋|增高鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (457, '定制鞋', 451, 'dingzhixie', 'dzx', '服饰/鞋靴|流行男鞋|定制鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (458, '拖鞋/人字拖', 451, 'tuoxie/renzituo', 'tx/rzt', '服饰/鞋靴|流行男鞋|拖鞋/人字拖', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (459, '正装鞋', 451, 'zhengzhuangxie', 'zzx', '服饰/鞋靴|流行男鞋|正装鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (460, '男靴', 451, 'nanxue', 'nx', '服饰/鞋靴|流行男鞋|男靴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (461, '雨鞋/雨靴', 451, 'yuxie/yuxue', 'yx/yx', '服饰/鞋靴|流行男鞋|雨鞋/雨靴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (462, '鞋配件', 451, 'xiepeijian', 'xpj', '服饰/鞋靴|流行男鞋|鞋配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (463, '母婴用品', 0, 'muying', 'my', '母婴用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (464, '喂养用品', 463, 'weiyangyongpin', 'wyyp', '母婴用品|喂养用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (465, '儿童餐具', 464, 'ertongcanju', 'etcj', '母婴用品|喂养用品|儿童餐具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (466, '吸乳/储奶', 464, 'xiru/chunai', 'xr/cn', '母婴用品|喂养用品|吸乳/储奶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (467, '奶瓶奶嘴', 464, 'naipingnaizui', 'npnz', '母婴用品|喂养用品|奶瓶奶嘴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (468, '日常用品', 464, 'richangyongpin', 'rcyp', '母婴用品|喂养用品|日常用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (469, '水壶/水杯', 464, 'shuihu/shuibei', 'sh/sb', '母婴用品|喂养用品|水壶/水杯', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (470, '奶粉', 463, 'naifen', 'nf', '母婴用品|奶粉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (471, '1段', 470, '1duan', '1d', '母婴用品|奶粉|1段', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (472, '2段', 470, '2duan', '2d', '母婴用品|奶粉|2段', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (473, '3段', 470, '3duan', '3d', '母婴用品|奶粉|3段', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (474, '4段及以上', 470, '4duanjiyishang', '4djys', '母婴用品|奶粉|4段及以上', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (475, '孕妈奶粉', 470, 'yunmanaifen', 'ymnf', '母婴用品|奶粉|孕妈奶粉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (476, '特殊配方奶粉', 470, 'teshupeifangnaifen', 'tspfnf', '母婴用品|奶粉|特殊配方奶粉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (477, '妈妈专区', 463, 'mamazhuanqu', 'mmzq', '母婴用品|妈妈专区', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (478, '产后/恢复', 477, 'chanhou/huifu', 'ch/hf', '母婴用品|妈妈专区|产后/恢复', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (479, '孕妈服饰', 477, 'yunmafushi', 'ymfs', '母婴用品|妈妈专区|孕妈服饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (480, '孕妈用品', 477, 'yunmayongpin', 'ymyp', '母婴用品|妈妈专区|孕妈用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (481, '孕期营养', 477, 'yunqiyingyang', 'yqyy', '母婴用品|妈妈专区|孕期营养', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (482, '宝宝出行', 477, 'baobaochuxing', 'bbcx', '母婴用品|妈妈专区|宝宝出行', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (483, '婴童寝具', 463, 'yingtongqinju', 'ytqj', '母婴用品|婴童寝具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (484, '寝具用品', 483, 'qinjuyongpin', 'qjyp', '母婴用品|婴童寝具|寝具用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (485, '抱被/睡袋', 483, 'baobei/shuidai', 'bb/sd', '母婴用品|婴童寝具|抱被/睡袋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (486, '安全座椅', 463, 'anquanzuoyi', 'aqzy', '母婴用品|安全座椅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (487, '儿童安全座椅', 486, 'ertonganquanzuoyi', 'etaqzy', '母婴用品|安全座椅|儿童安全座椅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (488, '安全提篮', 486, 'anquantilan', 'aqtl', '母婴用品|安全座椅|安全提篮', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (489, '寝居服饰', 463, 'qinjufushi', 'qjfs', '母婴用品|寝居服饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (490, '儿童家居服', 489, 'ertongjiajufu', 'etjjf', '母婴用品|寝居服饰|儿童家居服', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (491, '儿童配饰', 489, 'ertongpeishi', 'etps', '母婴用品|寝居服饰|儿童配饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (492, '洗护用品', 463, 'xihuyongpin', 'xhyp', '母婴用品|洗护用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (493, '口腔清洁', 492, 'kouqiangqingjie', 'kqqj', '母婴用品|洗护用品|口腔清洁', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (494, '妈妈用品', 492, 'mamayongpin', 'mmyp', '母婴用品|洗护用品|妈妈用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (495, '安全防护', 492, 'anquanfanghu', 'aqfh', '母婴用品|洗护用品|安全防护', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (496, '日常护理', 492, 'richanghuli', 'rchl', '母婴用品|洗护用品|日常护理', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (497, '日常用品', 492, 'richangyongpin', 'rcyp', '母婴用品|洗护用品|日常用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (498, '洗澡沐浴', 492, 'xizaomuyu', 'xzmy', '母婴用品|洗护用品|洗澡沐浴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (499, '洗衣液/皂', 492, 'xiyiye/zao', 'xyy/z', '母婴用品|洗护用品|洗衣液/皂', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (500, '润肤护肤', 492, 'runfuhufu', 'rfhf', '母婴用品|洗护用品|润肤护肤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (501, '驱蚊防晒', 492, 'quwenfangshai', 'qwfs', '母婴用品|洗护用品|驱蚊防晒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (502, '防晒驱蚊', 492, 'fangshaiquwen', 'fsqw', '母婴用品|洗护用品|防晒驱蚊', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (503, '童装', 463, 'tongzhuang', 'tz', '母婴用品|童装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (504, '保暖冬季', 503, 'baonuandongji', 'bndj', '母婴用品|童装|保暖冬季', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (505, '儿童内衣', 503, 'ertongneiyi', 'etny', '母婴用品|童装|儿童内衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (506, '婴幼/连体', 503, 'yingyou/lianti', 'yy/lt', '母婴用品|童装|婴幼/连体', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (507, '婴童毛巾', 503, 'yingtongmaojin', 'ytmj', '母婴用品|童装|婴童毛巾', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (508, '婴童泳装', 503, 'yingtongyongzhuang', 'ytyz', '母婴用品|童装|婴童泳装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (509, '婴童配饰', 503, 'yingtongpeishi', 'ytps', '母婴用品|童装|婴童配饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (510, '清凉夏装', 503, 'qingliangxiazhuang', 'qlxz', '母婴用品|童装|清凉夏装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (511, '表演服', 503, 'biaoyanfu', 'byf', '母婴用品|童装|表演服', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (512, '寝居服饰', 503, 'qinjufushi', 'qjfs', '母婴用品|童装|寝居服饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (513, '童车童床', 463, 'tongchetongchuang', 'tctc', '母婴用品|童车童床', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (514, '儿童家具', 513, 'ertongjiaju', 'etjj', '母婴用品|童车童床|儿童家具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (515, '儿童家居', 513, 'ertongjiaju', 'etjj', '母婴用品|童车童床|儿童家居', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (516, '推车', 513, 'tuiche', 'tc', '母婴用品|童车童床|推车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (517, '游戏车', 513, 'youxiche', 'yxc', '母婴用品|童车童床|游戏车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (518, '自行车', 513, 'zixingche', 'zxc', '母婴用品|童车童床|自行车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (519, '童鞋', 463, 'tongxie', 'tx', '母婴用品|童鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (520, '儿童皮鞋', 519, 'ertongpixie', 'etpx', '母婴用品|童鞋|儿童皮鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (521, '凉鞋/布鞋', 519, 'liangxie/buxie', 'lx/bx', '母婴用品|童鞋|凉鞋/布鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (522, '夏季舒适鞋', 519, 'xiajishushixie', 'xjssx', '母婴用品|童鞋|夏季舒适鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (523, '机能鞋/学步鞋', 519, 'jinengxie/xuebuxie', 'jnx/xbx', '母婴用品|童鞋|机能鞋/学步鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (524, '棉鞋', 519, 'mianxie', 'mx', '母婴用品|童鞋|棉鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (525, '运动鞋', 519, 'yundongxie', 'ydx', '母婴用品|童鞋|运动鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (526, '纸尿裤', 463, 'zhiniaoku', 'znk', '母婴用品|纸尿裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (527, 'L', 526, 'l', 'l', '母婴用品|纸尿裤|L', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (528, 'M', 526, 'm', 'm', '母婴用品|纸尿裤|M', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (529, 'NB', 526, 'nb', 'nb', '母婴用品|纸尿裤|NB', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (530, 'S', 526, 's', 's', '母婴用品|纸尿裤|S', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (531, 'XL', 526, 'xl', 'xl', '母婴用品|纸尿裤|XL', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (532, 'XXL', 526, 'xxl', 'xxl', '母婴用品|纸尿裤|XXL', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (533, 'XXXL', 526, 'xxxl', 'xxxl', '母婴用品|纸尿裤|XXXL', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (534, '营养辅食', 463, 'yingyangfushi', 'yyfs', '母婴用品|营养辅食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (535, '婴童营养品', 534, 'yingtongyingyangpin', 'ytyyp', '母婴用品|营养辅食|婴童营养品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (536, '婴童饮品', 534, 'yingtongyinpin', 'ytyp', '母婴用品|营养辅食|婴童饮品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (537, '成人营养', 534, 'chengrenyingyang', 'cryy', '母婴用品|营养辅食|成人营养', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (538, '益生菌', 534, 'yishengjun', 'ysj', '母婴用品|营养辅食|益生菌', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (539, '米粉/面条', 534, 'mifen/miantiao', 'mf/mt', '母婴用品|营养辅食|米粉/面条', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (540, '糖果/零食', 534, 'tangguo/lingshi', 'tg/ls', '母婴用品|营养辅食|糖果/零食', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (541, '肉类/果泥', 534, 'roulei/guoni', 'rl/gn', '母婴用品|营养辅食|肉类/果泥', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (542, '饼干/果冻', 534, 'binggan/guodong', 'bg/gd', '母婴用品|营养辅食|饼干/果冻', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (543, '辅食佐餐', 534, 'fushizuocan', 'fszc', '母婴用品|营养辅食|辅食佐餐', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (544, '美妆护肤', 0, 'meizhuanghufu', 'mzhf', '美妆护肤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (545, '面部护肤', 544, 'mianbuhufu', 'mbhf', '美妆护肤|面部护肤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (546, '护肤礼盒', 545, 'hufulihe', 'hflh', '美妆护肤|面部护肤|护肤礼盒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (547, '卸妆', 545, 'xiezhuang', 'xz', '美妆护肤|面部护肤|卸妆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (548, '洁面', 545, 'jiemian', 'jm', '美妆护肤|面部护肤|洁面', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (549, '爽肤水/化妆水', 545, 'shuangfushui/huazhuangshui', 'sfs/hzs', '美妆护肤|面部护肤|爽肤水/化妆水', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (550, '乳液/面霜', 545, 'ruye/mianshuang', 'ry/ms', '美妆护肤|面部护肤|乳液/面霜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (551, '精华/肌底液', 545, 'jinghua/jidiye', 'jh/jdy', '美妆护肤|面部护肤|精华/肌底液', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (552, '眼霜', 545, 'yanshuang', 'ys', '美妆护肤|面部护肤|眼霜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (553, '睡眠面膜', 545, 'shuimianmianmo', 'smmm', '美妆护肤|面部护肤|睡眠面膜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (554, '面膜', 545, 'mianmo', 'mm', '美妆护肤|面部护肤|面膜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (555, '唇膜', 545, 'chunmo', 'cm', '美妆护肤|面部护肤|唇膜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (556, '润唇膏', 545, 'runchungao', 'rcg', '美妆护肤|面部护肤|润唇膏', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (557, '眼膜', 545, 'yanmo', 'ym', '美妆护肤|面部护肤|眼膜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (558, '喷雾', 545, 'penwu', 'pw', '美妆护肤|面部护肤|喷雾', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (559, 'T区护理', 545, 'tquhuli', 'tqhl', '美妆护肤|面部护肤|T区护理', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (560, '防晒', 545, 'fangshai', 'fs', '美妆护肤|面部护肤|防晒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (561, '剃须', 545, 'tixu', 'tx', '美妆护肤|面部护肤|剃须', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (562, '香水彩妆', 544, 'xiangshuicaizhuang', 'xscz', '美妆护肤|香水彩妆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (563, '隔离乳', 562, 'geliru', 'glr', '美妆护肤|香水彩妆|隔离乳', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (564, '粉底液/膏', 562, 'fendiye/gao', 'fdy/g', '美妆护肤|香水彩妆|粉底液/膏', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (565, '气垫', 562, 'qidian', 'qd', '美妆护肤|香水彩妆|气垫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (566, '睫毛膏/增长液', 562, 'jiemaogao/zengzhangye', 'jmg/zzy', '美妆护肤|香水彩妆|睫毛膏/增长液', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (567, '香水', 562, 'xiangshui', 'xs', '美妆护肤|香水彩妆|香水', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (568, '口红/唇彩', 562, 'kouhong/chuncai', 'kh/cc', '美妆护肤|香水彩妆|口红/唇彩', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (569, '腮红/胭脂', 562, 'saihong/yanzhi', 'sh/yz', '美妆护肤|香水彩妆|腮红/胭脂', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (570, '眼影', 562, 'yanying', 'yy', '美妆护肤|香水彩妆|眼影', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (571, '眉笔/眉粉', 562, 'meibi/meifen', 'mb/mf', '美妆护肤|香水彩妆|眉笔/眉粉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (572, '眼线笔/眼线液', 562, 'yanxianbi/yanxianye', 'yxb/yxy', '美妆护肤|香水彩妆|眼线笔/眼线液', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (573, '蜜粉/散粉', 562, 'mifen/sanfen', 'mf/sf', '美妆护肤|香水彩妆|蜜粉/散粉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (574, '遮瑕', 562, 'zhexia', 'zx', '美妆护肤|香水彩妆|遮瑕', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (575, '修容/高光/阴影', 562, 'xiurong/gaoguang/yinying', 'xr/gg/yy', '美妆护肤|香水彩妆|修容/高光/阴影', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (576, '美甲', 562, 'meijia', 'mj', '美妆护肤|香水彩妆|美甲', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (577, '美妆工具', 562, 'meizhuanggongju', 'mzgj', '美妆护肤|香水彩妆|美妆工具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (578, '口红唇彩', 562, 'kouhongchuncai', 'khcc', '美妆护肤|香水彩妆|口红唇彩', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (579, '个护清洁', 0, 'gehuqingjie', 'ghqj', '个护清洁', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (580, '清洁工具', 579, 'qingjiegongju', 'qjgj', '个护清洁|清洁工具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (581, '拖把', 580, 'tuoba', 'tb', '个护清洁|清洁工具|拖把', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (582, '垃圾袋', 580, 'lajidai', 'ljd', '个护清洁|清洁工具|垃圾袋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (583, '垃圾桶', 580, 'lajitong', 'ljt', '个护清洁|清洁工具|垃圾桶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (584, '扫把', 580, 'saoba', 'sb', '个护清洁|清洁工具|扫把', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (585, '脸盆/水桶', 580, 'lianpen/shuitong', 'lp/st', '个护清洁|清洁工具|脸盆/水桶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (586, '抹布/百洁布', 580, 'mobu/baijiebu', 'mb/bjb', '个护清洁|清洁工具|抹布/百洁布', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (587, '手套/鞋套/围裙', 580, 'shoutao/xietao/weiqun', 'st/xt/wq', '个护清洁|清洁工具|手套/鞋套/围裙', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (588, '清洁刷具', 580, 'qingjieshuaju', 'qjsj', '个护清洁|清洁工具|清洁刷具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (589, '一次性清洁用品', 580, 'yicixingqingjieyongpin', 'ycxqjyp', '个护清洁|清洁工具|一次性清洁用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (590, '净化除味', 580, 'jinghuachuwei', 'jhcw', '个护清洁|清洁工具|净化除味', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (591, '浴室用品', 580, '　yushiyongpin', '　ysyp', '个护清洁|清洁工具|浴室用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (592, '洗发护发', 579, 'xifahufa', 'xfhf', '个护清洁|洗发护发', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (593, '进口洗发水', 592, 'jinkouxifashui', 'jkxfs', '个护清洁|洗发护发|进口洗发水', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (594, '洗发水', 592, 'xifashui', 'xfs', '个护清洁|洗发护发|洗发水', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (595, '护发素', 592, 'hufasu', 'hfs', '个护清洁|洗发护发|护发素', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (596, '发膜', 592, 'famo', 'fm', '个护清洁|洗发护发|发膜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (597, '洗护套装', 592, 'xihutaozhuang', 'xhtz', '个护清洁|洗发护发|洗护套装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (598, '护发精油', 592, 'hufajingyou', 'hfjy', '个护清洁|洗发护发|护发精油', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (599, '纸品湿巾', 579, 'zhipinshijin', 'zpsj', '个护清洁|纸品湿巾', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (600, '抽纸', 599, 'chouzhi', 'cz', '个护清洁|纸品湿巾|抽纸', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (601, '卷纸', 599, 'juanzhi', 'jz', '个护清洁|纸品湿巾|卷纸', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (602, '手帕纸', 599, 'shoupazhi', 'spz', '个护清洁|纸品湿巾|手帕纸', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (603, '湿巾', 599, 'shijin', 'sj', '个护清洁|纸品湿巾|湿巾', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (604, '厨房纸巾', 599, 'chufangzhijin', 'cfzj', '个护清洁|纸品湿巾|厨房纸巾', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (605, '商务用纸', 599, 'shangwuyongzhi', 'swyz', '个护清洁|纸品湿巾|商务用纸', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (606, '卷巾', 599, 'juanjin', 'jj', '个护清洁|纸品湿巾|卷巾', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (607, '口腔护理', 579, 'kouqianghuli', 'kqhl', '个护清洁|口腔护理', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (608, '牙贴', 607, 'yatie', 'yt', '个护清洁|口腔护理|牙贴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (609, '假牙清洁', 607, 'jiayaqingjie', 'jyqj', '个护清洁|口腔护理|假牙清洁', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (610, '口喷', 607, 'koupen', 'kp', '个护清洁|口腔护理|口喷', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (611, '牙刷/牙线', 607, 'yashuayaxian', 'ysyx', '个护清洁|口腔护理|牙刷/牙线', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (612, '牙膏/牙粉', 607, 'yagao/yafen', 'yg/yf', '个护清洁|口腔护理|牙膏/牙粉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (613, '漱口水', 607, 'shukoushui', 'sks', '个护清洁|口腔护理|漱口水', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (614, '发型设计', 579, 'faxingsheji', 'fxsj', '个护清洁|发型设计', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (615, '染发', 614, 'ranfa', 'rf', '个护清洁|发型设计|染发', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (616, '发胶', 614, 'fajiao', 'fj', '个护清洁|发型设计|发胶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (617, '发蜡/泥', 614, 'fala/ni', 'fl/n', '个护清洁|发型设计|发蜡/泥', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (618, '弹力素', 614, 'danlisu', 'dls', '个护清洁|发型设计|弹力素', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (619, '摩丝', 614, 'mosi', 'ms', '个护清洁|发型设计|摩丝', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (620, '啫喱', 614, 'zheli', 'zl', '个护清洁|发型设计|啫喱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (621, '定型喷雾', 614, 'dingxingpenwu', 'dxpw', '个护清洁|发型设计|定型喷雾', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (622, '蓬蓬粉', 614, 'pengpengfen', 'ppf', '个护清洁|发型设计|蓬蓬粉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (623, '烫发', 614, 'tangfa', 'tf', '个护清洁|发型设计|烫发', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (624, '假发', 614, 'jiafa', 'jf', '个护清洁|发型设计|假发', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (625, '美发工具', 614, 'meifagongju', 'mfgj', '个护清洁|发型设计|美发工具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (626, '进口染发', 614, 'jinkouranfa', 'jkrf', '个护清洁|发型设计|进口染发', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (627, '嗜喱', 614, 'shili', 'sl', '个护清洁|发型设计|嗜喱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (628, '身体护理', 579, 'shentihuli', 'sthl', '个护清洁|身体护理', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (629, '手足', 628, 'shouzu', 'sz', '个护清洁|身体护理|手足', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (630, '香薰精油', 628, 'xiangxunjingyou', 'xxjy', '个护清洁|身体护理|香薰精油', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (631, '美颈', 628, 'meijing', 'mj', '个护清洁|身体护理|美颈', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (632, '润肤', 628, 'runfu', 'rf', '个护清洁|身体护理|润肤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (633, '进口沐浴露', 628, 'jinkoumuyulu', 'jkmyl', '个护清洁|身体护理|进口沐浴露', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (634, '沐浴露', 628, 'muyulu', 'myl', '个护清洁|身体护理|沐浴露', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (635, '精油', 628, 'jingyou', 'jy', '个护清洁|身体护理|精油', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (636, '浴盐', 628, 'yuyan', 'yy', '个护清洁|身体护理|浴盐', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (637, '磨砂膏', 628, 'moshagao', 'msg', '个护清洁|身体护理|磨砂膏', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (638, '香皂', 628, 'xiangzao', 'xz', '个护清洁|身体护理|香皂', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (639, '美胸', 628, 'meixiong', 'mx', '个护清洁|身体护理|美胸', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (640, '纤体塑形', 628, 'xiantisuxing', 'xtsx', '个护清洁|身体护理|纤体塑形', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (641, '护手霜', 628, 'hushoushuang', 'hss', '个护清洁|身体护理|护手霜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (642, '脱毛膏/工具', 628, 'tuomaogao/gongju', 'tmg/gj', '个护清洁|身体护理|脱毛膏/工具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (643, '男士洗液', 628, 'nanshixiye', 'nsxy', '个护清洁|身体护理|男士洗液', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (644, '花露水', 628, 'hualushui', 'hls', '个护清洁|身体护理|花露水', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (645, '身体护体套装', 628, 'shentihutitaozhuang', 'sthttz', '个护清洁|身体护理|身体护体套装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (646, '洗手液', 628, 'xishouye', 'xsy', '个护清洁|身体护理|洗手液', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (647, '香体露/狐臭净味', 628, 'xiangtilu', 'xtl', '个护清洁|身体护理|香体露/狐臭净味', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (648, '女性护理', 579, 'nvxinghuli', 'nxhl', '个护清洁|女性护理', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (649, '卫生护垫', 648, 'weishenghudian', 'wshd', '个护清洁|女性护理|卫生护垫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (650, '卫生巾', 648, 'weishengjin', 'wsj', '个护清洁|女性护理|卫生巾', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (651, '脱毛膏', 648, 'tuomaogao', 'tmg', '个护清洁|女性护理|脱毛膏', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (652, '私密护理', 648, 'simihuli', 'smhl', '个护清洁|女性护理|私密护理', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (653, '卫生护理', 648, 'weishenghuli', 'wshl', '个护清洁|女性护理|卫生护理', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (654, '家庭清洁', 579, 'jiatingqingjie', 'jtqj', '个护清洁|家庭清洁', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (655, '洗洁精', 654, 'xijiejing', 'xjj', '个护清洁|家庭清洁|洗洁精', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (656, '消毒液', 654, 'xiaoduye', 'xdy', '个护清洁|家庭清洁|消毒液', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (657, '油污净', 654, 'youwujing', 'ywj', '个护清洁|家庭清洁|油污净', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (658, '洁厕剂', 654, 'jieceji', 'jcj', '个护清洁|家庭清洁|洁厕剂', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (659, '除湿干燥剂', 654, 'chushiganzaoji', 'csgzj', '个护清洁|家庭清洁|除湿干燥剂', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (660, '地板清洁剂', 654, 'dibanqingjieji', 'dbqjj', '个护清洁|家庭清洁|地板清洁剂', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (661, '驱蚊驱虫', 579, 'quwenquchong', 'qwqc', '个护清洁|驱蚊驱虫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (662, '杀蟑', 661, 'shazhang', 'sz', '个护清洁|驱蚊驱虫|杀蟑', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (663, '驱鼠', 661, 'qushu', 'qs', '个护清洁|驱蚊驱虫|驱鼠', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (664, '除螨', 661, 'chuman', 'cm', '个护清洁|驱蚊驱虫|除螨', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (665, '灭蚁', 661, 'mieyi', 'my', '个护清洁|驱蚊驱虫|灭蚁', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (666, '驱蝇', 661, 'quying', 'qy', '个护清洁|驱蚊驱虫|驱蝇', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (667, '驱蚊止痒', 661, 'quwen', 'qw', '个护清洁|驱蚊驱虫|驱蚊止痒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (668, '清洁用品', 579, 'qingjieyongpin', 'qjyp', '个护清洁|清洁用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (669, '一次性用品', 668, 'yicixingyongpin', 'ycxyp', '个护清洁|清洁用品|一次性用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (670, '衣物清洁', 579, 'yiwuqingjie', 'ywqj', '个护清洁|衣物清洁', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (671, '洗衣液', 670, 'xiyiye', 'xyy', '个护清洁|衣物清洁|洗衣液', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (672, '洗衣粉', 670, 'xiyifen', 'xyf', '个护清洁|衣物清洁|洗衣粉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (673, '洗衣皂', 670, 'xiyizao', 'xyz', '个护清洁|衣物清洁|洗衣皂', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (674, '柔顺剂', 670, 'roushunji', 'rsj', '个护清洁|衣物清洁|柔顺剂', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (675, '凝珠', 670, 'ningzhu', 'nz', '个护清洁|衣物清洁|凝珠', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (676, '除菌液', 670, 'chujunye', 'cjy', '个护清洁|衣物清洁|除菌液', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (677, '纸巾湿巾', 579, 'zhijinshijin', 'zjsj', '个护清洁|纸巾湿巾', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (678, '手帕纸', 677, 'shoupazhi', 'spz', '个护清洁|纸巾湿巾|手帕纸', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (679, '抽纸', 677, 'chouzhi', 'cz', '个护清洁|纸巾湿巾|抽纸', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (680, '水果', 0, 'shuiguo', 'sg', '水果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (681, '红色', 680, 'hongse', 'hs', '水果|红色', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (682, '荔枝', 681, 'lizhi', 'lz', '水果|红色|荔枝', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (683, '草莓', 681, 'caomei', 'cm', '水果|红色|草莓', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (684, '山楂', 681, 'shanzha', 'sz', '水果|红色|山楂', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (685, '红毛丹', 681, 'hongmaodan', 'hmd', '水果|红色|红毛丹', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (686, '水蜜桃', 681, 'shuimitao', 'smt', '水果|红色|水蜜桃', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (687, '石榴', 681, 'shiliu', 'sl', '水果|红色|石榴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (688, '火龙果', 681, 'huolongguo', 'hlg', '水果|红色|火龙果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (689, '红提', 681, 'hongti', 'ht', '水果|红色|红提', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (690, '莲雾', 681, 'lianwu', 'lw', '水果|红色|莲雾', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (691, '红苹果', 681, 'hongpingguo', 'hpg', '水果|红色|红苹果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (692, '油桃', 681, 'youtao', 'yt', '水果|红色|油桃', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (693, '毛桃', 681, 'maotao', 'mt', '水果|红色|毛桃', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (694, '冬枣', 681, 'dongzao', 'dz', '水果|红色|冬枣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (695, '车厘子/樱桃', 681, 'chelizi/yingtao', 'clz/yt', '水果|红色|车厘子/樱桃', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (696, '蛇果', 681, 'sheguo', 'sg', '水果|红色|蛇果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (697, '加力果', 681, 'jialiguo', 'jlg', '水果|红色|加力果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (698, '黄色', 680, 'huangse', 'hs', '水果|黄色', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (699, '柿子', 698, 'shizi', 'sz', '水果|黄色|柿子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (700, '枇杷', 698, 'pipa', 'pp', '水果|黄色|枇杷', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (701, '杏子', 698, 'xingzi', 'xz', '水果|黄色|杏子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (702, '桔/橘', 698, 'jie/ju', 'j/j', '水果|黄色|桔/橘', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (703, '西柚', 698, 'xiyou', 'xy', '水果|黄色|西柚', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (704, '菠萝/凤梨', 698, 'boluo/fengli', 'bl/fl', '水果|黄色|菠萝/凤梨', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (705, '龙眼', 698, 'longyan', 'ly', '水果|黄色|龙眼', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (706, '波罗蜜', 698, 'boluomi', 'blm', '水果|黄色|波罗蜜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (707, '香蕉', 698, 'xiangjiao', 'xj', '水果|黄色|香蕉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (708, '木瓜', 698, 'mugua', 'mg', '水果|黄色|木瓜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (709, '柚子', 698, 'youzi', 'yz', '水果|黄色|柚子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (710, '橙子', 698, 'chengzi', 'cz', '水果|黄色|橙子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (711, '榴莲', 698, 'liulian', 'll', '水果|黄色|榴莲', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (712, '柠檬', 698, 'ningmeng', 'nm', '水果|黄色|柠檬', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (713, '芒果', 698, 'mangguo', 'mg', '水果|黄色|芒果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (714, '梨子', 698, 'lizi', 'lz', '水果|黄色|梨子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (715, '甜瓜', 698, 'tiangua', 'tg', '水果|黄色|甜瓜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (716, '哈密瓜', 698, 'hamigua', 'hmg', '水果|黄色|哈密瓜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (717, '菠萝蜜', 698, 'boluomi', 'blm', '水果|黄色|菠萝蜜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (718, '紫色', 680, 'zise', 'zs', '水果|紫色', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (719, '李子/黑布林', 718, 'lizi/heibulin', 'lz/hbl', '水果|紫色|李子/黑布林', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (720, '人参果', 718, 'rencanguo', 'rcg', '水果|紫色|人参果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (721, '百香果', 718, 'baixiangguo', 'bxg', '水果|紫色|百香果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (722, '黑布林', 718, 'heibulin', 'hbl', '水果|紫色|黑布林', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (723, '山竹', 718, 'shanzhu', 'sz', '水果|紫色|山竹', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (724, '甘蔗', 718, 'ganzhe', 'gz', '水果|紫色|甘蔗', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (725, '无花果', 718, 'wuhuaguo', 'whg', '水果|紫色|无花果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (726, '杨梅', 718, 'yangmei', 'ym', '水果|紫色|杨梅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (727, '李子', 718, 'lizi', 'lz', '水果|紫色|李子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (728, '葡萄', 718, 'putao', 'pt', '水果|紫色|葡萄', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (729, '蓝色', 680, 'lanse', 'ls', '水果|蓝色', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (730, '蓝莓', 729, 'lanmei', 'lm', '水果|蓝色|蓝莓', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (731, '白色', 680, 'baise', 'bs', '水果|白色', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (732, '香瓜', 731, 'xianggua', 'xg', '水果|白色|香瓜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (733, '椰子', 731, 'yezi', 'yz', '水果|白色|椰子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (734, '白地瓜', 731, 'baidigua', 'bdg', '水果|白色|白地瓜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (735, '雪莲果', 731, 'xuelianguo', 'xlg', '水果|白色|雪莲果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (736, '绿色', 680, 'lvse', 'ls', '水果|绿色', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (737, '西瓜', 736, 'xigua', 'xg', '水果|绿色|西瓜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (738, '青提', 736, 'qingti', 'qt', '水果|绿色|青提', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (739, '杨桃', 736, 'yangtao', 'yt', '水果|绿色|杨桃', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (740, '牛油果', 736, 'niuyouguo', 'nyg', '水果|绿色|牛油果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (741, '黄瓜', 736, 'huanggua', 'hg', '水果|绿色|黄瓜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (742, '黄西瓜', 736, 'huangxigua', 'hxg', '水果|绿色|黄西瓜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (743, '番石榴', 736, 'fanshiliu', 'fsl', '水果|绿色|番石榴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (744, '橄榄', 736, 'ganlan', 'gl', '水果|绿色|橄榄', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (745, '释迦', 736, 'shijia', 'sj', '水果|绿色|释迦', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (746, '青梨', 736, 'qingli', 'ql', '水果|绿色|青梨', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (747, '奇异果/猕猴桃', 736, 'qiyiguo/mihoutao', 'qyg/mht', '水果|绿色|奇异果/猕猴桃', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (748, '青苹果', 736, 'qingpingguo', 'qpg', '水果|绿色|青苹果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (749, '干果', 0, 'ganguo', 'gg', '干果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (750, '黄色', 749, 'huangse', 'hs', '干果|黄色', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (751, '红枣', 750, 'hongzao', 'hz', '干果|黄色|红枣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (752, '榛子', 750, 'zhenzi', 'zz', '干果|黄色|榛子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (753, '杏干', 750, 'xinggan', 'xg', '干果|黄色|杏干', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (754, '板栗', 750, 'banli', 'bl', '干果|黄色|板栗', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (755, '松子', 750, 'songzi', 'sz', '干果|黄色|松子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (756, '甜角', 750, 'tianjiao', 'tj', '干果|黄色|甜角', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (757, '夏威夷果', 750, 'xiaweiyiguo', 'xwyg', '干果|黄色|夏威夷果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (758, '干桂圆', 750, 'ganguiyuan', 'ggy', '干果|黄色|干桂圆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (759, '无花果干', 750, 'wuhuaguogan', 'whgg', '干果|黄色|无花果干', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (760, '巴旦木', 750, 'badanmu', 'bdm', '干果|黄色|巴旦木', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (761, '枸杞', 750, 'gouqi', 'gq', '干果|黄色|枸杞', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (762, '柿饼', 750, 'shibing', 'sb', '干果|黄色|柿饼', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (763, '香蕉片', 750, 'xiangjiaopian', 'xjp', '干果|黄色|香蕉片', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (764, '碧根果', 750, 'bigenguo', 'bgg', '干果|黄色|碧根果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (765, '开心果', 750, 'kaixinguo', 'kxg', '干果|黄色|开心果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (766, '花生', 750, 'huasheng', 'hs', '干果|黄色|花生', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (767, '瓜子', 750, 'guazi', 'gz', '干果|黄色|瓜子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (768, '杏仁', 750, 'xingren', 'xr', '干果|黄色|杏仁', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (769, '蚕豆', 750, 'candou', 'cd', '干果|黄色|蚕豆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (770, '葡萄干', 750, 'putaogan', 'ptg', '干果|黄色|葡萄干', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (771, '核桃', 750, 'hetao', 'ht', '干果|黄色|核桃', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (772, '腰果', 750, 'yaoguo', 'yg', '干果|黄色|腰果', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (773, '豌豆粒', 750, 'wandouli', 'wdl', '干果|黄色|豌豆粒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (774, '菜类', 0, 'cailei', 'cl', '菜类', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (775, '其他', 774, 'qita', 'qt', '菜类|其他', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (776, '芽苗菜', 775, 'yamiaocai', 'ymc', '菜类|其他|芽苗菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (777, '花菜', 775, 'huacai', 'hc', '菜类|其他|花菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (778, '根茎类', 774, 'genjinglei', 'gjl', '菜类|根茎类', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (779, '蒜苔', 778, 'suantai', 'st', '菜类|根茎类|蒜苔', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (780, '红薯', 778, 'hongshu', 'hs', '菜类|根茎类|红薯', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (781, '山药', 778, 'shanyao', 'sy', '菜类|根茎类|山药', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (782, '芦笋', 778, 'lusun', 'ls', '菜类|根茎类|芦笋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (783, '生姜', 778, 'shengjiang', 'sj', '菜类|根茎类|生姜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (784, '土豆', 778, 'tudou', 'td', '菜类|根茎类|土豆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (785, '葱', 778, 'cong', 'c', '菜类|根茎类|葱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (786, '藜蒿', 778, 'lihao', 'lh', '菜类|根茎类|藜蒿', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (787, '藕', 778, 'ou', 'o', '菜类|根茎类|藕', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (788, '牛蒡', 778, 'niubang', 'nb', '菜类|根茎类|牛蒡', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (789, '卜留克', 778, 'buliuke', 'blk', '菜类|根茎类|卜留克', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (790, '莴苣', 778, 'woju', 'wj', '菜类|根茎类|莴苣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (791, '洋葱', 778, 'yangcong', 'yc', '菜类|根茎类|洋葱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (792, '蒜头', 778, 'suantou', 'st', '菜类|根茎类|蒜头', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (793, '萝卜', 778, 'luobu', 'lb', '菜类|根茎类|萝卜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (794, '叶菜类', 774, 'yecailei', 'ycl', '菜类|叶菜类', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (795, '娃娃菜', 794, 'wawacai', 'wwc', '菜类|叶菜类|娃娃菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (796, '卷心菜', 794, 'juanxincai', 'jxc', '菜类|叶菜类|卷心菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (797, '香菜', 794, 'xiangcai', 'xc', '菜类|叶菜类|香菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (798, '雪里红', 794, 'xuelihong', 'xlh', '菜类|叶菜类|雪里红', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (799, '紫苏', 794, 'zisu', 'zs', '菜类|叶菜类|紫苏', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (800, '菜苔', 794, 'caitai', 'ct', '菜类|叶菜类|菜苔', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (801, '马齿苋', 794, 'machixian', 'mcx', '菜类|叶菜类|马齿苋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (802, '荠菜', 794, 'jicai', 'jc', '菜类|叶菜类|荠菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (803, '芥蓝', 794, 'jielan', 'jl', '菜类|叶菜类|芥蓝', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (804, '香椿', 794, 'xiangchun', 'xc', '菜类|叶菜类|香椿', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (805, '空心菜', 794, 'kongxincai', 'kxc', '菜类|叶菜类|空心菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (806, '大白菜', 794, 'dabaicai', 'dbc', '菜类|叶菜类|大白菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (807, '小白菜', 794, 'xiaobaicai', 'xbc', '菜类|叶菜类|小白菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (808, '紫甘蓝', 794, 'ziganlan', 'zgl', '菜类|叶菜类|紫甘蓝', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (809, '生菜', 794, 'shengcai', 'sc', '菜类|叶菜类|生菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (810, '菠菜', 794, 'bocai', 'bc', '菜类|叶菜类|菠菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (811, '韭菜', 794, 'jiucai', 'jc', '菜类|叶菜类|韭菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (812, '芹菜', 794, 'qincai', 'qc', '菜类|叶菜类|芹菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (813, '苦苣', 794, 'kuju', 'kj', '菜类|叶菜类|苦苣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (814, '油麦菜', 794, 'youmaicai', 'ymc', '菜类|叶菜类|油麦菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (815, '绿甘蓝', 794, 'lvganlan', 'lgl', '菜类|叶菜类|绿甘蓝', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (816, '秋葵', 794, 'qiukui', 'qk', '菜类|叶菜类|秋葵', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (817, '茴香', 794, 'huixiang', 'hx', '菜类|叶菜类|茴香', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (818, '苋菜', 794, 'xiancai', 'xc', '菜类|叶菜类|苋菜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (819, '菌类', 774, 'junlei', 'jl', '菜类|菌类', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (820, '茶树菇', 819, 'chashugu', 'csg', '菜类|菌类|茶树菇', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (821, '海鲜菇', 819, 'haixiangu', 'hxg', '菜类|菌类|海鲜菇', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (822, '香菇', 819, 'xianggu', 'xg', '菜类|菌类|香菇', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (823, '金针菇', 819, 'jinzhengu', 'jzg', '菜类|菌类|金针菇', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (824, '草菇', 819, 'caogu', 'cg', '菜类|菌类|草菇', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (825, '平菇', 819, 'pinggu', 'pg', '菜类|菌类|平菇', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (826, '银耳', 819, 'yiner', 'ye', '菜类|菌类|银耳', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (827, '木耳', 819, 'muer', 'me', '菜类|菌类|木耳', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (828, '茄果瓜类', 774, 'qieguogualei', 'qggl', '菜类|茄果瓜类', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (829, '四季豆', 828, 'sijidou', 'sjd', '菜类|茄果瓜类|四季豆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (830, '玉米', 828, 'yumi', 'ym', '菜类|茄果瓜类|玉米', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (831, '蛇豆', 828, 'shedou', 'sd', '菜类|茄果瓜类|蛇豆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (832, '毛豆', 828, 'maodou', 'md', '菜类|茄果瓜类|毛豆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (833, '刀豆', 828, 'daodou', 'dd', '菜类|茄果瓜类|刀豆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (834, '架豆', 828, 'jiadou', 'jd', '菜类|茄果瓜类|架豆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (835, '佛手瓜', 828, 'foshougua', 'fsg', '菜类|茄果瓜类|佛手瓜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (836, '丝瓜', 828, 'sigua', 'sg', '菜类|茄果瓜类|丝瓜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (837, '黄瓜', 828, 'huanggua', 'hg', '菜类|茄果瓜类|黄瓜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (838, '苦瓜', 828, 'kugua', 'kg', '菜类|茄果瓜类|苦瓜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (839, '豌豆', 828, 'wandou', 'wd', '菜类|茄果瓜类|豌豆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (840, '豇豆', 828, 'jiangdou', 'jd', '菜类|茄果瓜类|豇豆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (841, '扁豆', 828, 'biandou', 'bd', '菜类|茄果瓜类|扁豆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (842, '茄子', 828, 'qiezi', 'qz', '菜类|茄果瓜类|茄子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (843, '番茄', 828, 'fanqie', 'fq', '菜类|茄果瓜类|番茄', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (844, '西葫芦', 828, 'xihulu', 'xhl', '菜类|茄果瓜类|西葫芦', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (845, '南瓜', 828, 'nangua', 'ng', '菜类|茄果瓜类|南瓜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (846, '冬瓜', 828, 'donggua', 'dg', '菜类|茄果瓜类|冬瓜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (847, '家禽豆制品', 774, 'jiaqindouzhipin', 'jqdzp', '菜类|家禽豆制品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (848, '千张', 847, 'qianzhang', 'qz', '菜类|家禽豆制品|千张', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (849, '豆腐', 847, 'doufu', 'df', '菜类|家禽豆制品|豆腐', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (850, '香干', 847, 'xianggan', 'xg', '菜类|家禽豆制品|香干', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (851, '鸡蛋', 847, 'jidan', 'jd', '菜类|家禽豆制品|鸡蛋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (852, '葱姜蒜椒', 774, 'congjiangsuanjiao', 'cjsj', '菜类|葱姜蒜椒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (853, '辣椒', 852, 'lajiao', 'lj', '菜类|葱姜蒜椒|辣椒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (854, '家居家装', 0, 'jiajujiazhuang', 'jjjz', '家居家装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (855, '家纺', 854, 'jiafang', 'jf', '家居家装|家纺', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (856, '毯子', 855, 'tanzi', 'tz', '家居家装|家纺|毯子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (857, '毛巾浴巾', 855, 'maojinyujin', 'mjyj', '家居家装|家纺|毛巾浴巾', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (858, '被子', 855, 'beizi', 'bz', '家居家装|家纺|被子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (859, '床单/床笠', 855, 'chuangdan/chuangli', 'cd/cl', '家居家装|家纺|床单/床笠', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (860, '电热毯', 855, 'dianretan', 'drt', '家居家装|家纺|电热毯', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (861, '蚊帐', 855, 'wenzhang', 'wz', '家居家装|家纺|蚊帐', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (862, '凉席', 855, 'liangxi', 'lx', '家居家装|家纺|凉席', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (863, '沙发垫套/椅垫', 855, 'shafadiantao/yidian', 'sfdt/yd', '家居家装|家纺|沙发垫套/椅垫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (864, '抱枕靠垫', 855, 'baozhenkaodian', 'bzkd', '家居家装|家纺|抱枕靠垫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (865, '窗帘/窗纱', 855, 'chuanglian/chuangsha', 'cl/cs', '家居家装|家纺|窗帘/窗纱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (866, '桌布/罩件', 855, 'zhuobu/zhaojian', 'zb/zj', '家居家装|家纺|桌布/罩件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (867, '布艺软饰', 855, 'buyiruanshi', 'byrs', '家居家装|家纺|布艺软饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (868, '地毯', 855, 'ditan', 'dt', '家居家装|家纺|地毯', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (869, '床垫/床褥', 855, 'chuangdian/chuangru', 'cd/cr', '家居家装|家纺|床垫/床褥', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (870, '床品套件', 855, 'chuangpintaojian', 'cptj', '家居家装|家纺|床品套件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (871, '枕芯', 855, 'zhenxin', 'zx', '家居家装|家纺|枕芯', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (872, '生活日用', 854, 'shenghuoriyong', 'shry', '家居家装|生活日用', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (873, '保暖防护', 872, 'baonuanfanghu', 'bnfh', '家居家装|生活日用|保暖防护', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (874, '缝纫/针织用品', 872, 'fengren/zhenzhiyongpin', 'fr/zzyp', '家居家装|生活日用|缝纫/针织用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (875, '雨伞雨具', 872, 'yusanyuju', 'ysyj', '家居家装|生活日用|雨伞雨具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (876, '浴室用品', 872, 'yushiyongpin', 'ysyp', '家居家装|生活日用|浴室用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (877, '洗晒/熨烫', 872, 'xishai/yuntang', 'xs/yt', '家居家装|生活日用|洗晒/熨烫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (878, '净化除味', 872, 'jinghuachuwei', 'jhcw', '家居家装|生活日用|净化除味', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (879, '厨具', 872, 'chuju', 'cj', '家居家装|生活日用|厨具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (880, '皮具护理', 872, 'pijuhuli', 'pjhl', '家居家装|生活日用|皮具护理', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (881, '家装软饰', 854, 'jiazhuangruanshi', 'jzrs', '家居家装|家装软饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (882, '手工/十字绣', 881, 'shougong/shizixiu', 'sg/szx', '家居家装|家装软饰|手工/十字绣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (883, '花瓶花艺', 881, 'huapinghuayi', 'hphy', '家居家装|家装软饰|花瓶花艺', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (884, '装饰摆件', 881, 'zhuangshibaijian', 'zsbj', '家居家装|家装软饰|装饰摆件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (885, '相框/照片墙', 881, 'xiangkuang/zhaopianqiang', 'xk/zpq', '家居家装|家装软饰|相框/照片墙', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (886, '香薰蜡烛', 881, 'xiangxunlazhu', 'xxlz', '家居家装|家装软饰|香薰蜡烛', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (887, '装饰字画', 881, 'zhuangshizihua', 'zszh', '家居家装|家装软饰|装饰字画', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (888, '钟饰', 881, 'zhongshi', 'zs', '家居家装|家装软饰|钟饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (889, '帘艺隔断', 881, 'lianyigeduan', 'lygd', '家居家装|家装软饰|帘艺隔断', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (890, '节庆饰品', 881, 'jieqingshipin', 'jqsp', '家居家装|家装软饰|节庆饰品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (891, '创意家居', 881, 'chuangyijiaju', 'cyjj', '家居家装|家装软饰|创意家居', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (892, '墙贴/装饰贴', 881, 'qiangtie/zhuangshitie', 'qt/zst', '家居家装|家装软饰|墙贴/装饰贴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (893, '家装零件', 881, 'jiazhuanglingjian', 'jzlj', '家居家装|家装软饰|家装零件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (894, '生活用品', 854, 'shenghuoyongpin', 'shyp', '家居家装|生活用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (895, '浴室用品', 894, 'yushiyongpin', 'ysyp', '家居家装|生活用品|浴室用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (896, '？家纺', 854, '？jiafang', '？jf', '家居家装|？家纺', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (897, '？毛巾浴巾', 896, '？maojinyujin', '？mjyj', '家居家装|？家纺|？毛巾浴巾', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (898, '电器/厨具', 0, 'jiayongdianqi', 'jydq', '电器/厨具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (899, '厨房小电', 898, 'chufangxiaodian', 'cfxd', '电器/厨具|厨房小电', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (900, '电饭煲', 899, 'dianfanbao', 'dfb', '电器/厨具|厨房小电|电饭煲', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (901, '豆浆机', 899, 'doujiangji', 'djj', '电器/厨具|厨房小电|豆浆机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (902, '多用途锅', 899, 'duoyongtuguo', 'dytg', '电器/厨具|厨房小电|多用途锅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (903, '煮蛋器', 899, 'zhudanqi', 'zdq', '电器/厨具|厨房小电|煮蛋器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (904, '电饼铛', 899, 'dianbingdang', 'dbd', '电器/厨具|厨房小电|电饼铛', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (905, '电水壶/热水瓶', 899, 'dianshuihu/reshuiping', 'dsh/rsp', '电器/厨具|厨房小电|电水壶/热水瓶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (906, '咖啡机', 899, 'kafeiji', 'kfj', '电器/厨具|厨房小电|咖啡机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (907, '榨汁机/原汁机', 899, 'zhazhiji/yuanzhiji', 'zzj/yzj', '电器/厨具|厨房小电|榨汁机/原汁机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (908, '其它厨房电器', 899, 'qitachufangdianqi', 'qtcfdq', '电器/厨具|厨房小电|其它厨房电器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (909, '养生壶/煎药壶', 899, 'yangshenghu/jianyaohu', 'ysh/jyh', '电器/厨具|厨房小电|养生壶/煎药壶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (910, '电烤箱', 899, 'diankaoxiang', 'dkx', '电器/厨具|厨房小电|电烤箱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (911, '酸奶机', 899, 'suannaiji', 'snj', '电器/厨具|厨房小电|酸奶机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (912, '微波炉', 899, 'weibolu', 'wbl', '电器/厨具|厨房小电|微波炉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (913, '电热饭盒', 899, 'dianrefanhe', 'drfh', '电器/厨具|厨房小电|电热饭盒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (914, '电烧烤炉', 899, 'dianshaokaolu', 'dskl', '电器/厨具|厨房小电|电烧烤炉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (915, '电磁炉', 899, 'diancilu', 'dcl', '电器/厨具|厨房小电|电磁炉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (916, '面包机', 899, 'mianbaoji', 'mbj', '电器/厨具|厨房小电|面包机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (917, '料理机', 899, 'liaoliji', 'llj', '电器/厨具|厨房小电|料理机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (918, '电炖锅', 899, 'diandunguo', 'ddg', '电器/厨具|厨房小电|电炖锅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (919, '电压力锅', 899, 'dianyaliguo', 'dylg', '电器/厨具|厨房小电|电压力锅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (920, '其他厨房电器', 899, 'qitachufangdianqi', 'qtcfdq', '电器/厨具|厨房小电|其他厨房电器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (921, '生活电器', 898, 'shenghuodianqi', 'shdq', '电器/厨具|生活电器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (922, '电子灭蚊器', 921, 'dianzimiewenqi', 'dzmwq', '电器/厨具|生活电器|电子灭蚊器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (923, '加湿器', 921, 'jiashiqi', 'jsq', '电器/厨具|生活电器|加湿器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (924, '电熨斗', 921, 'dianyundou', 'dyd', '电器/厨具|生活电器|电熨斗', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (925, '挂烫机', 921, 'guatangji', 'gtj', '电器/厨具|生活电器|挂烫机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (926, '吸尘器', 921, 'xichenqi', 'xcq', '电器/厨具|生活电器|吸尘器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (927, '毛球修剪器', 921, 'maoqiuxiujianqi', 'mqxjq', '电器/厨具|生活电器|毛球修剪器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (928, '电话机', 921, 'dianhuaji', 'dhj', '电器/厨具|生活电器|电话机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (929, '净化器', 921, 'jinghuaqi', 'jhq', '电器/厨具|生活电器|净化器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (930, '取暖电器', 921, 'qunuandianqi', 'qndq', '电器/厨具|生活电器|取暖电器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (931, '生活电器配件', 921, 'shenghuodianqipeijian', 'shdqpj', '电器/厨具|生活电器|生活电器配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (932, '其它生活电器', 921, 'qitashenghuodianqi', 'qtshdq', '电器/厨具|生活电器|其它生活电器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (933, '干衣机/洗衣机', 921, 'ganyiji', 'gyj', '电器/厨具|生活电器|干衣机/洗衣机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (934, '收录机/录音机', 921, 'shoulu/yinji', 'sl/yj', '电器/厨具|生活电器|收录机/录音机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (935, '电风扇', 921, 'dianfengshan', 'dfs', '电器/厨具|生活电器|电风扇', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (936, '饮水机', 921, 'yinshuiji', 'ysj', '电器/厨具|生活电器|饮水机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (937, '挂烫机/熨斗', 921, 'guatangji/yundou', 'gtj/yd', '电器/厨具|生活电器|挂烫机/熨斗', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (938, '吸尘器/除螨仪', 921, 'xichenqi/chumanyi', 'xcq/cmy', '电器/厨具|生活电器|吸尘器/除螨仪', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (939, '净水器', 921, 'jingshuiqi', 'jsq', '电器/厨具|生活电器|净水器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (940, '除湿机', 921, 'chushiji', 'csj', '电器/厨具|生活电器|除湿机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (941, '清洁机', 921, 'qingjieji', 'qjj', '电器/厨具|生活电器|清洁机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (942, '扫地机器人', 921, 'saodijiqiren', 'sdjqr', '电器/厨具|生活电器|扫地机器人', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (943, '冷风扇', 921, 'lengfengshan', 'lfs', '电器/厨具|生活电器|冷风扇', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (944, '其他生活电器', 921, 'qitashenghuodianqi', 'qtshdq', '电器/厨具|生活电器|其他生活电器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (945, '个护健康', 898, 'gehujiankang', 'ghjk', '电器/厨具|个护健康', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (946, '剃须刀', 945, 'tixudao', 'txd', '电器/厨具|个护健康|剃须刀', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (947, '吹风机', 945, 'chuifengji', 'cfj', '电器/厨具|个护健康|吹风机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (948, '卷/直发器', 945, 'juan/zhifaqi', 'j/zfq', '电器/厨具|个护健康|卷/直发器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (949, '电子秤/厨房秤', 945, 'dianzicheng/chufangcheng', 'dzc/cfc', '电器/厨具|个护健康|电子秤/厨房秤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (950, '其它健康电器', 945, 'qitajiankangdianqi', 'qtjkdq', '电器/厨具|个护健康|其它健康电器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (951, '电子秤', 945, 'dianzicheng', 'dzc', '电器/厨具|个护健康|电子秤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (952, '按摩椅', 945, 'anmoyi', 'amy', '电器/厨具|个护健康|按摩椅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (953, '口腔护理', 945, 'kouqianghuli', 'kqhl', '电器/厨具|个护健康|口腔护理', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (954, '足浴盆', 945, 'zuyupen', 'zyp', '电器/厨具|个护健康|足浴盆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (955, '美容器', 945, 'meirongqi', 'mrq', '电器/厨具|个护健康|美容器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (956, '按摩器', 945, 'anmoqi', 'amq', '电器/厨具|个护健康|按摩器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (957, '理发器', 945, 'lifaqi', 'lfq', '电器/厨具|个护健康|理发器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (958, '剃/脱毛器', 945, 'ti/tuomaoqi', 't/tmq', '电器/厨具|个护健康|剃/脱毛器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (959, '电吹风', 945, 'dianchuifeng', 'dcf', '电器/厨具|个护健康|电吹风', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (960, '家庭影音', 898, 'jiatingyingyin', 'jtyy', '电器/厨具|家庭影音', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (961, '拉杆广场音箱/户外音响', 960, 'laganguangchangyinxiang/huwaiyinxiang', 'lggcyx/hwyx', '电器/厨具|家庭影音|拉杆广场音箱/户外音响', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (962, '厨卫大电', 898, 'chuweidadian', 'cwdd', '电器/厨具|厨卫大电', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (963, '燃气灶', 962, 'ranqizao', 'rqz', '电器/厨具|厨卫大电|燃气灶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (964, '洗碗机', 962, 'xiwanji', 'xwj', '电器/厨具|厨卫大电|洗碗机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (965, '消毒柜', 962, 'xiaoduju', 'xdj', '电器/厨具|厨卫大电|消毒柜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (966, '油烟机', 962, 'youyanji', 'yyj', '电器/厨具|厨卫大电|油烟机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (967, '大家电', 898, 'dajiadian', 'djd', '电器/厨具|大家电', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (968, '家庭影院', 967, 'jiatingyingyuan', 'jtyy', '电器/厨具|大家电|家庭影院', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (969, '功放', 967, 'gongfang', 'gf', '电器/厨具|大家电|功放', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (970, '冰箱', 967, 'bingxiang', 'bx', '电器/厨具|大家电|冰箱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (971, '冷柜/冰吧', 967, 'lengju/bingba', 'lj/bb', '电器/厨具|大家电|冷柜/冰吧', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (972, '家电配件', 967, 'jiadianpeijian', 'jdpj', '电器/厨具|大家电|家电配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (973, '回音壁/Soundbar', 967, 'huiyinbi/soundbar', 'hyb/soundbar', '电器/厨具|大家电|回音壁/Soundbar', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (974, 'DVD/电视盒子', 967, 'dvd/dianshihezi', 'dvd/dshz', '电器/厨具|大家电|DVD/电视盒子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (975, '洗衣机', 967, 'xiyiji', 'xyj', '电器/厨具|大家电|洗衣机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (976, '迷你音响', 967, 'miniyinxiang', 'mnyx', '电器/厨具|大家电|迷你音响', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (977, '空调', 967, 'kongdiao', 'kd', '电器/厨具|大家电|空调', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (978, '酒柜', 967, 'jiuju', 'jj', '电器/厨具|大家电|酒柜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (979, 'Hi/Fi专区', 967, 'hi/fizhuanqu', 'hi/fizq', '电器/厨具|大家电|Hi/Fi专区', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (980, '平板电视', 967, 'pingbandianshi', 'pbds', '电器/厨具|大家电|平板电视', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (981, '五金家装', 898, 'wujinjiazhuang', 'wjjz', '电器/厨具|五金家装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (982, '插座', 981, 'chazuo', 'cz', '电器/厨具|五金家装|插座', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (983, '刀剪菜板', 898, 'daojiancaiban', 'djcb', '电器/厨具|刀剪菜板', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (984, '刀具套装', 983, 'daojutaozhuang', 'djtz', '电器/厨具|刀剪菜板|刀具套装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (985, '剪刀', 983, 'jiandao', 'jd', '电器/厨具|刀剪菜板|剪刀', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (986, '多功能刀', 983, 'duogongnengdao', 'dgnd', '电器/厨具|刀剪菜板|多功能刀', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (987, '瓜果刀/刨', 983, 'guaguodao/bao', 'ggd/b', '电器/厨具|刀剪菜板|瓜果刀/刨', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (988, '砧板', 983, 'zhenban', 'zb', '电器/厨具|刀剪菜板|砧板', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (989, '菜刀', 983, 'caidao', 'cd', '电器/厨具|刀剪菜板|菜刀', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (990, '厨房配件', 898, 'chufangpeijian', 'cfpj', '电器/厨具|厨房配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (991, '保鲜盒', 990, 'baoxianhe', 'bxh', '电器/厨具|厨房配件|保鲜盒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (992, '储物/置物架', 990, 'chuwu/zhiwujia', 'cw/zwj', '电器/厨具|厨房配件|储物/置物架', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (993, '厨房DIY/小工具', 990, 'chufangdiy/xiaogongju', 'cfdiy/xgj', '电器/厨具|厨房配件|厨房DIY/小工具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (994, '烘焙/烧烤', 990, 'hongbei/shaokao', 'hb/sk', '电器/厨具|厨房配件|烘焙/烧烤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (995, '饭盒/提锅', 990, 'fanhe/tiguo', 'fh/tg', '电器/厨具|厨房配件|饭盒/提锅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (996, '其他', 990, 'qita', 'qt', '电器/厨具|厨房配件|其他', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (997, '水具酒具', 898, 'shuijujiuju', 'sjjj', '电器/厨具|水具酒具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (998, '保温壶', 997, 'baowenhu', 'bwh', '电器/厨具|水具酒具|保温壶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (999, '保温杯', 997, 'baowenbei', 'bwb', '电器/厨具|水具酒具|保温杯', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1000, '塑料杯', 997, 'suliaobei', 'slb', '电器/厨具|水具酒具|塑料杯', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1001, '杯具套装', 997, 'beijutaozhuang', 'bjtz', '电器/厨具|水具酒具|杯具套装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1002, '玻璃杯', 997, 'bolibei', 'blb', '电器/厨具|水具酒具|玻璃杯', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1003, '运动水壶', 997, 'yundongshuihu', 'ydsh', '电器/厨具|水具酒具|运动水壶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1004, '酒杯/酒具', 997, 'jiubei/jiuju', 'jb/jj', '电器/厨具|水具酒具|酒杯/酒具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1005, '陶瓷/马克杯', 997, 'taoci/makebei', 'tc/mkb', '电器/厨具|水具酒具|陶瓷/马克杯', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1006, '烹饪锅具', 898, 'pengrenguoju', 'prgj', '电器/厨具|烹饪锅具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1007, '压力锅', 1006, 'yaliguo', 'ylg', '电器/厨具|烹饪锅具|压力锅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1008, '奶锅', 1006, 'naiguo', 'ng', '电器/厨具|烹饪锅具|奶锅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1009, '水壶', 1006, 'shuihu', 'sh', '电器/厨具|烹饪锅具|水壶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1010, '汤锅', 1006, 'tangguo', 'tg', '电器/厨具|烹饪锅具|汤锅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1011, '火锅', 1006, 'huoguo', 'hg', '电器/厨具|烹饪锅具|火锅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1012, '炒锅', 1006, 'chaoguo', 'cg', '电器/厨具|烹饪锅具|炒锅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1013, '煎锅', 1006, 'jianguo', 'jg', '电器/厨具|烹饪锅具|煎锅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1014, '煲类', 1006, 'baolei', 'bl', '电器/厨具|烹饪锅具|煲类', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1015, '蒸锅', 1006, 'zhengguo', 'zg', '电器/厨具|烹饪锅具|蒸锅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1016, '锅具套装', 1006, 'guojutaozhuang', 'gjtz', '电器/厨具|烹饪锅具|锅具套装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1017, '茶具/咖啡具', 898, 'chaju/kafeiju', 'cj/kfj', '电器/厨具|茶具/咖啡具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1018, '咖啡具', 1017, 'kafeiju', 'kfj', '电器/厨具|茶具/咖啡具|咖啡具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1019, '整套茶具', 1017, 'zhengtaochaju', 'ztcj', '电器/厨具|茶具/咖啡具|整套茶具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1020, '茶具配件', 1017, 'chajupeijian', 'cjpj', '电器/厨具|茶具/咖啡具|茶具配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1021, '茶叶罐', 1017, 'chayeguan', 'cyg', '电器/厨具|茶具/咖啡具|茶叶罐', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1022, '茶壶', 1017, 'chahu', 'ch', '电器/厨具|茶具/咖啡具|茶壶', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1023, '茶宠摆件', 1017, 'chachongbaijian', 'ccbj', '电器/厨具|茶具/咖啡具|茶宠摆件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1024, '茶杯', 1017, 'chabei', 'cb', '电器/厨具|茶具/咖啡具|茶杯', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1025, '茶盘茶托', 1017, 'chapanchatuo', 'cpct', '电器/厨具|茶具/咖啡具|茶盘茶托', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1026, '酒店用品', 898, 'jiudianyongpin', 'jdyp', '电器/厨具|酒店用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1027, '自助餐炉', 1026, 'zizhucanlu', 'zzcl', '电器/厨具|酒店用品|自助餐炉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1028, '酒店水具', 1026, 'jiudianshuiju', 'jdsj', '电器/厨具|酒店用品|酒店水具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1029, '酒店餐具', 1026, 'jiudiancanju', 'jdcj', '电器/厨具|酒店用品|酒店餐具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1030, '餐具', 898, 'canju', 'cj', '电器/厨具|餐具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1031, '一次性用品', 1030, 'yicixingyongpin', 'ycxyp', '电器/厨具|餐具|一次性用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1032, '果盘/果篮', 1030, 'guopan/guolan', 'gp/gl', '电器/厨具|餐具|果盘/果篮', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1033, '碗/碟/盘', 1030, 'wan/die/pan', 'w/d/p', '电器/厨具|餐具|碗/碟/盘', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1034, '筷勺/刀叉', 1030, 'kuaishao/daocha', 'ks/dc', '电器/厨具|餐具|筷勺/刀叉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1035, '餐具套装', 1030, 'canjutaozhuang', 'cjtz', '电器/厨具|餐具|餐具套装', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1036, '一次性', 1030, 'yicixing', 'ycx', '电器/厨具|餐具|一次性', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1037, '其他', 1030, 'qita', 'qt', '电器/厨具|餐具|其他', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1038, '运动健康', 0, 'yundongjiankang', 'ydjk', '运动健康', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1039, '户外鞋服', 1038, 'huwaixiefu', 'hwxf', '运动健康|户外鞋服', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1040, '羽绒服/棉服', 1039, 'yurongfu/mianfu', 'yrf/mf', '运动健康|户外鞋服|羽绒服/棉服', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1041, '工装鞋', 1039, 'gongzhuangxie', 'gzx', '运动健康|户外鞋服|工装鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1042, '户外袜', 1039, 'huwaiwa', 'hww', '运动健康|户外鞋服|户外袜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1043, '滑雪服', 1039, 'huaxuefu', 'hxf', '运动健康|户外鞋服|滑雪服', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1044, '冲锋衣裤', 1039, 'chongfengyiku', 'cfyk', '运动健康|户外鞋服|冲锋衣裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1045, '功能内衣', 1039, 'gongnengneiyi', 'gnny', '运动健康|户外鞋服|功能内衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1046, '军迷服饰', 1039, 'junmifushi', 'jmfs', '运动健康|户外鞋服|军迷服饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1047, '沙滩/凉拖', 1039, 'shatan/liangtuo', 'st/lt', '运动健康|户外鞋服|沙滩/凉拖', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1048, 'T恤', 1039, 'txu', 'tx', '运动健康|户外鞋服|T恤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1049, '户外风衣', 1039, 'huwaifengyi', 'hwfy', '运动健康|户外鞋服|户外风衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1050, '越野跑鞋', 1039, 'yueyepaoxie', 'yypx', '运动健康|户外鞋服|越野跑鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1051, '速干衣裤', 1039, 'suganyiku', 'sgyk', '运动健康|户外鞋服|速干衣裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1052, '雪地靴', 1039, 'xuedixue', 'xdx', '运动健康|户外鞋服|雪地靴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1053, '溯溪鞋', 1039, 'suxixie', 'sxx', '运动健康|户外鞋服|溯溪鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1054, '休闲衣裤', 1039, 'xiuxianyiku', 'xxyk', '运动健康|户外鞋服|休闲衣裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1055, '徒步鞋', 1039, 'tubuxie', 'tbx', '运动健康|户外鞋服|徒步鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1056, '登山鞋', 1039, 'dengshanxie', 'dsx', '运动健康|户外鞋服|登山鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1057, '软壳衣裤', 1039, 'ruanqiaoyiku', 'rqyk', '运动健康|户外鞋服|软壳衣裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1058, '抓绒衣裤', 1039, 'zhuarongyiku', 'zryk', '运动健康|户外鞋服|抓绒衣裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1059, '户外装备', 1038, 'huwaizhuangbei', 'hwzb', '运动健康|户外装备', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1060, '登山攀岩', 1059, 'dengshanpanyan', 'dspy', '运动健康|户外装备|登山攀岩', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1061, '便携桌椅床', 1059, 'bianxiezhuoyichuang', 'bxzyc', '运动健康|户外装备|便携桌椅床', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1062, '户外照明', 1059, 'huwaizhaoming', 'hwzm', '运动健康|户外装备|户外照明', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1063, '极限户外', 1059, 'jixianhuwai', 'jxhw', '运动健康|户外装备|极限户外', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1064, '野餐用品', 1059, 'yecanyongpin', 'ycyp', '运动健康|户外装备|野餐用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1065, '户外工具', 1059, 'huwaigongju', 'hwgj', '运动健康|户外装备|户外工具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1066, '户外配饰', 1059, 'huwaipeishi', 'hwps', '运动健康|户外装备|户外配饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1067, '滑雪装备', 1059, 'huaxuezhuangbei', 'hxzb', '运动健康|户外装备|滑雪装备', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1068, '救援装备', 1059, 'jiuyuanzhuangbei', 'jyzb', '运动健康|户外装备|救援装备', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1069, '户外仪表', 1059, 'huwaiyibiao', 'hwyb', '运动健康|户外装备|户外仪表', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1070, '望远镜', 1059, 'wangyuanjing', 'wyj', '运动健康|户外装备|望远镜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1071, '旅行装备', 1059, 'lvxingzhuangbei', 'lxzb', '运动健康|户外装备|旅行装备', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1072, '冲浪潜水', 1059, 'chonglangqianshui', 'clqs', '运动健康|户外装备|冲浪潜水', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1073, '军迷用品', 1059, 'junmiyongpin', 'jmyp', '运动健康|户外装备|军迷用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1074, '帐篷/垫子', 1059, 'zhangpeng/dianzi', 'zp/dz', '运动健康|户外装备|帐篷/垫子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1075, '睡袋/吊床', 1059, 'shuidai/diaochuang', 'sd/dc', '运动健康|户外装备|睡袋/吊床', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1076, '背包/水袋', 1059, 'beibao', 'bb', '运动健康|户外装备|背包/水袋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1077, '健身训练', 1038, 'jianshenxunlian', 'jsxl', '运动健康|健身训练', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1078, '其他器械', 1077, 'qitaqixie', 'qtqx', '运动健康|健身训练|其他器械', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1079, '踏步机', 1077, 'tabuji', 'tbj', '运动健康|健身训练|踏步机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1080, '椭圆机', 1077, 'tuoyuanji', 'tyj', '运动健康|健身训练|椭圆机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1081, '综合训练器', 1077, 'zonghexunlianqi', 'zhxlq', '运动健康|健身训练|综合训练器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1082, '瑜伽用品', 1077, 'yujiayongpin', 'yjyp', '运动健康|健身训练|瑜伽用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1083, '仰卧板/收腹机', 1077, 'yangwoban/shoufuji', 'ywb/sfj', '运动健康|健身训练|仰卧板/收腹机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1084, '运动护具', 1077, 'yundonghuju', 'ydhj', '运动健康|健身训练|运动护具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1085, '跑步机', 1077, 'paobuji', 'pbj', '运动健康|健身训练|跑步机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1086, '武术搏击', 1077, 'wushuboji', 'wsbj', '运动健康|健身训练|武术搏击', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1087, '哑铃', 1077, 'yaling', 'yl', '运动健康|健身训练|哑铃', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1088, '甩脂机', 1077, 'shuaizhiji', 'szj', '运动健康|健身训练|甩脂机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1089, '动感单车', 1077, 'donggandanche', 'dgdc', '运动健康|健身训练|动感单车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1090, '垂钓用品', 1038, 'chuidiaoyongpin', 'cdyp', '运动健康|垂钓用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1091, '浮漂', 1090, 'fupiao', 'fp', '运动健康|垂钓用品|浮漂', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1092, '钓鱼配件', 1090, 'diaoyupeijian', 'dypj', '运动健康|垂钓用品|钓鱼配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1093, '渔具包', 1090, 'yujubao', 'yjb', '运动健康|垂钓用品|渔具包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1094, '辅助装备', 1090, 'fuzhuzhuangbei', 'fzzb', '运动健康|垂钓用品|辅助装备', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1095, '钓竿', 1090, 'diaogan', 'dg', '运动健康|垂钓用品|钓竿', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1096, '钓箱钓椅', 1090, 'diaoxiangdiaoyi', 'dxdy', '运动健康|垂钓用品|钓箱钓椅', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1097, '运动服饰', 1038, 'yundongfushi', 'ydfs', '运动健康|运动服饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1098, '棉服', 1097, 'mianfu', 'mf', '运动健康|运动服饰|棉服', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1099, '乒羽网服', 1097, 'pingyuwangfu', 'pywf', '运动健康|运动服饰|乒羽网服', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1100, '运动配饰', 1097, 'yundongpeishi', 'ydps', '运动健康|运动服饰|运动配饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1101, '运动背心', 1097, 'yundongbeixin', 'ydbx', '运动健康|运动服饰|运动背心', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1102, '健身服', 1097, 'jianshenfu', 'jsf', '运动健康|运动服饰|健身服', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1103, '卫衣/套头衫', 1097, 'weiyi/taotoushan', 'wy/tts', '运动健康|运动服饰|卫衣/套头衫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1104, 'T恤', 1097, 'txu', 'tx', '运动健康|运动服饰|T恤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1105, '运动裤', 1097, 'yundongku', 'ydk', '运动健康|运动服饰|运动裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1106, '毛衫/线衫', 1097, 'maoshan/xianshan', 'ms/xs', '运动健康|运动服饰|毛衫/线衫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1107, '夹克/风衣', 1097, 'jiake/fengyi', 'jk/fy', '运动健康|运动服饰|夹克/风衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1108, '体育用品', 1038, 'tiyuyongpin', 'tyyp', '运动健康|体育用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1109, '棋牌麻将', 1108, 'qipaimajiang', 'qpmj', '运动健康|体育用品|棋牌麻将', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1110, '羽毛球', 1108, 'yumaoqiu', 'ymq', '运动健康|体育用品|羽毛球', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1111, '足球', 1108, 'zuqiu', 'zq', '运动健康|体育用品|足球', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1112, '台球', 1108, 'taiqiu', 'tq', '运动健康|体育用品|台球', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1113, '网球', 1108, 'wangqiu', 'wq', '运动健康|体育用品|网球', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1114, '篮球', 1108, 'lanqiu', 'lq', '运动健康|体育用品|篮球', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1115, '轮滑滑板', 1108, 'lunhuahuaban', 'lhhb', '运动健康|体育用品|轮滑滑板', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1116, '高尔夫', 1108, 'gaoerfu', 'gef', '运动健康|体育用品|高尔夫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1117, '乒乓球', 1108, 'pingpangqiu', 'ppq', '运动健康|体育用品|乒乓球', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1118, '排球', 1108, 'paiqiu', 'pq', '运动健康|体育用品|排球', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1119, '游泳用品', 1038, 'youyongyongpin', 'yyyp', '运动健康|游泳用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1120, '游泳配件', 1119, 'youyongpeijian', 'yypj', '运动健康|游泳用品|游泳配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1121, '泳镜', 1119, 'yongjing', 'yj', '运动健康|游泳用品|泳镜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1122, '男士泳衣', 1119, 'nanshiyongyi', 'nsyy', '运动健康|游泳用品|男士泳衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1123, '女士泳衣', 1119, 'nvshiyongyi', 'nsyy', '运动健康|游泳用品|女士泳衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1124, '泳帽', 1119, 'yongmao', 'ym', '运动健康|游泳用品|泳帽', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1125, '比基尼', 1119, 'bijini', 'bjn', '运动健康|游泳用品|比基尼', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1126, '游泳包防水包', 1119, 'youyongbaofangshuibao', 'yybfsb', '运动健康|游泳用品|游泳包防水包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1127, '骑行运动', 1038, 'qixingyundong', 'qxyd', '运动健康|骑行运动', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1128, '穿戴装备', 1127, 'chuandaizhuangbei', 'cdzb', '运动健康|骑行运动|穿戴装备', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1129, '城市自行车', 1127, 'chengshizixingche', 'cszxc', '运动健康|骑行运动|城市自行车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1130, '骑行服', 1127, 'qixingfu', 'qxf', '运动健康|骑行运动|骑行服', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1131, '山地车', 1127, 'shandiche', 'sdc', '运动健康|骑行运动|山地车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1132, '折叠车', 1127, 'zhedieche', 'zdc', '运动健康|骑行运动|折叠车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1133, '电动车', 1127, 'diandongche', 'ddc', '运动健康|骑行运动|电动车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1134, '平衡车', 1127, 'pinghengche', 'phc', '运动健康|骑行运动|平衡车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1135, '运动鞋包', 1038, 'yundongxiebao', 'ydxb', '运动健康|运动鞋包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1136, '专项运动鞋', 1135, 'zhuanxiangyundongxie', 'zxydx', '运动健康|运动鞋包|专项运动鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1137, '拖鞋', 1135, 'tuoxie', 'tx', '运动健康|运动鞋包|拖鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1138, '篮球鞋', 1135, 'lanqiuxie', 'lqx', '运动健康|运动鞋包|篮球鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1139, '跑步鞋', 1135, 'paobuxie', 'pbx', '运动健康|运动鞋包|跑步鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1140, '板鞋', 1135, 'banxie', 'bx', '运动健康|运动鞋包|板鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1141, '训练鞋', 1135, 'xunlianxie', 'xlx', '运动健康|运动鞋包|训练鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1142, '足球鞋', 1135, 'zuqiuxie', 'zqx', '运动健康|运动鞋包|足球鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1143, '乒羽网鞋', 1135, 'pingyuwangxie', 'pywx', '运动健康|运动鞋包|乒羽网鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1144, '运动包', 1135, 'yundongbao', 'ydb', '运动健康|运动鞋包|运动包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1145, '休闲鞋', 1135, 'xiuxianxie', 'xxx', '运动健康|运动鞋包|休闲鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1146, '帆布鞋', 1135, 'fanbuxie', 'fbx', '运动健康|运动鞋包|帆布鞋', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1147, '玩具乐器', 0, 'wanjuleqi', 'wjlq', '玩具乐器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1148, '玩具', 1147, 'dongmanwanju', 'dmwj', '玩具乐器|玩具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1149, '动漫玩具', 1148, 'dianyingzhoubian', 'dyzb', '玩具乐器|玩具|动漫玩具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1150, '毛绒布艺', 1148, 'maorong/buyi', 'mr/by', '玩具乐器|玩具|毛绒布艺', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1151, '健身玩具', 1148, 'jianshenwanju', 'jswj', '玩具乐器|玩具|健身玩具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1152, '遥控/电动', 1148, 'yaokong/diandong', 'yk/dd', '玩具乐器|玩具|遥控/电动', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1153, '模型玩具', 1148, 'moxingwanju', 'mxwj', '玩具乐器|玩具|模型玩具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1154, '创意减压', 1148, 'chuangyijianya', 'cyjy', '玩具乐器|玩具|创意减压', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1155, '益智玩具', 1148, 'yizhiwanju', 'yzwj', '玩具乐器|玩具|益智玩具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1156, 'DIY玩具', 1148, 'diywanju', 'diywj', '玩具乐器|玩具|DIY玩具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1157, '娃娃玩具', 1148, 'wawawanju', 'wwwj', '玩具乐器|玩具|娃娃玩具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1158, '积木拼插', 1148, 'jimupincha', 'jmpc', '玩具乐器|玩具|积木拼插', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1159, '学习/棋类', 1148, 'xuexi/qilei', 'xx/ql', '玩具乐器|玩具|学习/棋类', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1160, '儿童箱包', 1148, 'ertongxiangbao', 'etxb', '玩具乐器|玩具|儿童箱包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1161, '吹奏乐器', 1148, 'chuizouleqi', 'czlq', '玩具乐器|玩具|吹奏乐器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1162, '婴幼玩具', 1148, 'yingyouwanju', 'yywj', '玩具乐器|玩具|婴幼玩具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1163, '弹奏乐器', 1148, 'danzouleqi', 'dzlq', '玩具乐器|玩具|弹奏乐器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1164, '情景玩具', 1148, 'qingjingwanju', 'qjwj', '玩具乐器|玩具|情景玩具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1165, '游戏车', 1148, 'youxiche', 'yxc', '玩具乐器|玩具|游戏车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1166, '球类玩具', 1148, 'qiuleiwanju', 'qlwj', '玩具乐器|玩具|球类玩具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1167, '绘画彩泥', 1148, 'huihuacaini', 'hhcn', '玩具乐器|玩具|绘画彩泥', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1168, '玩具车', 1148, 'wanjuche', 'wjc', '玩具乐器|玩具|玩具车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1169, '乐器', 1147, 'leqi', 'lq', '玩具乐器|乐器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1170, '弹奏乐器', 1169, 'gangqin', 'gq', '玩具乐器|乐器|弹奏乐器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1171, '吹奏乐器', 1169, 'xiyangguanxian', 'xygx', '玩具乐器|乐器|吹奏乐器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1172, '乐器配件', 1169, 'leqipeijian', 'lqpj', '玩具乐器|乐器|乐器配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1173, '工艺礼品乐器', 1169, 'gongyilipinleqi', 'gylplq', '玩具乐器|乐器|工艺礼品乐器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1174, '民族管弦乐器', 1169, 'minzuguanxianleqi', 'mzgxlq', '玩具乐器|乐器|民族管弦乐器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1175, '打击乐器', 1169, 'dajileqi', 'djlq', '玩具乐器|乐器|打击乐器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1176, '电脑音乐', 1169, 'diannaoyinle', 'dnyl', '玩具乐器|乐器|电脑音乐', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1177, '吹奏乐器', 1169, 'kouqin/koufengqin/shudi', 'kq/kfq/sd', '玩具乐器|乐器|吹奏乐器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1178, '手风琴', 1169, 'shoufengqin', 'sfq', '玩具乐器|乐器|手风琴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1179, '乐器玩具', 1169, 'leqiwanju', 'lqwj', '玩具乐器|乐器|乐器玩具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1180, '文具用品', 0, 'wenjuyongpin', 'wjyp', '文具用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1181, '文具/耗材', 1180, 'wenju/haocai', 'wj/hc', '文具用品|文具/耗材', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1182, '办公文具', 1181, 'bangongwenju', 'bgwj', '文具用品|文具/耗材|办公文具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1183, '笔类', 1181, 'bilei', 'bl', '文具用品|文具/耗材|笔类', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1184, '本册/便签', 1181, 'bence/bianqian', 'bc/bq', '文具用品|文具/耗材|本册/便签', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1185, '学生文具', 1181, 'xueshengwenju', 'xswj', '文具用品|文具/耗材|学生文具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1186, '墨盒', 1181, 'mohe', 'mh', '文具用品|文具/耗材|墨盒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1187, '计算器', 1181, 'jisuanqi', 'jsq', '文具用品|文具/耗材|计算器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1188, '画具画材', 1181, 'huajuhuacai', 'hjhc', '文具用品|文具/耗材|画具画材', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1189, '财会用品', 1181, 'caihuiyongpin', 'chyp', '文具用品|文具/耗材|财会用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1190, '纸类', 1181, 'z', 'z', '文具用品|文具/耗材|纸类', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1191, '硒鼓/墨粉', 1181, 'xigu/mofen', 'xg/mf', '文具用品|文具/耗材|硒鼓/墨粉', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1192, '刻录碟片/附件', 1181, 'keludiepian/fujian', 'kldp/fj', '文具用品|文具/耗材|刻录碟片/附件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1193, '文件管理', 1181, 'wenjianguanli', 'wjgl', '文具用品|文具/耗材|文件管理', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1194, '色带', 1181, 'sedai', 'sd', '文具用品|文具/耗材|色带', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1195, '电池', 1181, 'dianchi', 'dc', '文具用品|文具/耗材|电池', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1196, '文具耗材', 1180, 'wenjuhaocai', 'wjhc', '文具用品|文具耗材', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1197, '画具画材', 1196, 'huajuhuacai', 'hjhc', '文具用品|文具耗材|画具画材', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1198, '医药保健', 0, 'yiyaobaojian', 'yybj', '医药保健', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1199, '中西药品', 1198, 'zhongxiyaopin', 'zxyp', '医药保健|中西药品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1200, '跌打损伤', 1199, 'diedasunshang', 'ddss', '医药保健|中西药品|跌打损伤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1201, '补益安神', 1199, 'zibuyangsheng', 'zbys', '医药保健|中西药品|补益安神', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1202, '母婴孕产', 1199, 'muyingyunchan', 'myyc', '医药保健|中西药品|母婴孕产', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1203, '肠胃用药', 1199, 'changweiyongyao', 'cwyy', '医药保健|中西药品|肠胃用药', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1204, '感冒发烧', 1199, 'ganmaofashao', 'gmfs', '医药保健|中西药品|感冒发烧', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1205, '其他', 1199, 'qita', 'qt', '医药保健|中西药品|其他', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1206, '滋补养生', 1198, 'zibuyangsheng', 'zbys', '医药保健|滋补养生', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1207, '精制中药', 1206, 'jingzhizhongyao', 'jzzy', '医药保健|滋补养生|精制中药', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1208, '男性健康', 1206, 'nanxingjiankang', 'nxjk', '医药保健|滋补养生|男性健康', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1209, '补钙维矿', 1206, 'bugaiweikuang', 'bgwk', '医药保健|滋补养生|补钙维矿', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1210, '营养保健', 1206, 'yingyangbaojian', 'yybj', '医药保健|滋补养生|营养保健', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1211, '计生情趣', 1198, 'jishengqingqu', 'jsqq', '医药保健|计生情趣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1212, '避孕套', 1211, 'biyuntao', 'byt', '医药保健|计生情趣|避孕套', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1213, '中西医药', 1198, 'zhongxiyiyao', 'zxyy', '医药保健|中西医药', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1214, '跌打损伤', 1213, 'diedasunshang', 'ddss', '医药保健|中西医药|跌打损伤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1215, '皮肤', 1198, 'pifu', 'pf', '医药保健|皮肤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1216, '祛痘除疤', 1215, 'qudouchuba', 'qdcb', '医药保健|皮肤|祛痘除疤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1217, '祛斑痤疮', 1215, 'qubancuochuang', 'qbcc', '医药保健|皮肤|祛斑痤疮', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1218, '脚气', 1215, 'jiaoqi', 'jq', '医药保健|皮肤|脚气', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1219, '灰指甲', 1215, 'huizhijia', 'hzj', '医药保健|皮肤|灰指甲', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1220, '皮炎湿疹', 1215, 'piyanshizhen', 'pysz', '医药保健|皮肤|皮炎湿疹', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1221, '抗菌止痒', 1215, 'kangjunzhiyang', 'kjzy', '医药保健|皮肤|抗菌止痒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1222, '银屑病', 1215, 'yinxiebing', 'yxb', '医药保健|皮肤|银屑病', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1223, '皮肤过敏', 1215, 'pifuguomin', 'pfgm', '医药保健|皮肤|皮肤过敏', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1224, '带状疱疹', 1215, 'daizhuangpaozhen', 'dzpz', '医药保健|皮肤|带状疱疹', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1225, '滋补养身', 1198, 'zibuyangshen', 'zbys', '医药保健|滋补养身', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1226, '营养保健', 1225, 'yingyangbaojian', 'yybj', '医药保健|滋补养身|营养保健', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1227, '礼品箱包', 0, 'lipinxiangbao', 'lpxb', '礼品箱包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1228, '奢侈品', 1227, 'shechipin', 'scp', '礼品箱包|奢侈品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1229, '配件', 1228, 'peijian', 'pj', '礼品箱包|奢侈品|配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1230, '饰品', 1228, 'shipin', 'sp', '礼品箱包|奢侈品|饰品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1231, '名品腕表', 1228, 'mingpinwanbiao', 'mpwb', '礼品箱包|奢侈品|名品腕表', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1232, '箱包', 1228, 'xiangbao', 'xb', '礼品箱包|奢侈品|箱包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1233, '高档化妆品', 1228, 'gaodanghuazhuangpin', 'gdhzp', '礼品箱包|奢侈品|高档化妆品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1234, '太阳镜/眼镜框', 1228, 'taiyangjing/yanjingkuang', 'tyj/yjk', '礼品箱包|奢侈品|太阳镜/眼镜框', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1235, '服饰', 1228, 'fushi', 'fs', '礼品箱包|奢侈品|服饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1236, '钱包', 1228, 'qianbao', 'qb', '礼品箱包|奢侈品|钱包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1237, '腰带', 1228, 'yaodai', 'yd', '礼品箱包|奢侈品|腰带', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1238, '礼品', 1227, 'lipin', 'lp', '礼品箱包|礼品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1239, '工艺礼品', 1238, 'gongyilipin', 'gylp', '礼品箱包|礼品|工艺礼品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1240, '军刀军具', 1238, 'jundaojunju', 'jdjj', '礼品箱包|礼品|军刀军具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1241, '鲜花', 1238, 'xianhua', 'xh', '礼品箱包|礼品|鲜花', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1242, '火机烟具', 1238, 'huojiyanju', 'hjyj', '礼品箱包|礼品|火机烟具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1243, '古董文玩', 1238, 'gudongwenwan', 'gdww', '礼品箱包|礼品|古董文玩', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1244, '礼盒礼券', 1238, 'liheliquan', 'lhlq', '礼品箱包|礼品|礼盒礼券', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1245, '婚庆节庆', 1238, 'hunqingjieqing', 'hqjq', '礼品箱包|礼品|婚庆节庆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1246, '礼品文具', 1238, 'lipinwenju', 'lpwj', '礼品箱包|礼品|礼品文具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1247, '收藏品', 1238, 'shouzangpin', 'szp', '礼品箱包|礼品|收藏品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1248, '创意礼品', 1238, 'chuangyilipin', 'cylp', '礼品箱包|礼品|创意礼品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1249, '礼品定制', 1238, 'lipindingzhi', 'lpdz', '礼品箱包|礼品|礼品定制', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1250, '美妆礼品', 1238, 'meizhuanglipin', 'mzlp', '礼品箱包|礼品|美妆礼品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1251, '精品男包', 1227, 'jingpinnanbao', 'jpnb', '礼品箱包|精品男包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1252, '卡包名片夹', 1251, 'kabaomingpianjia', 'kbmpj', '礼品箱包|精品男包|卡包名片夹', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1253, '钥匙包', 1251, 'yaochibao', 'ycb', '礼品箱包|精品男包|钥匙包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1254, '男士钱包', 1251, 'nanshiqianbao', 'nsqb', '礼品箱包|精品男包|男士钱包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1255, '商务公文包', 1251, 'shangwugongwenbao', 'swgwb', '礼品箱包|精品男包|商务公文包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1256, '男士手包', 1251, 'nanshishoubao', 'nssb', '礼品箱包|精品男包|男士手包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1257, '双肩包', 1251, 'shuangjianbao', 'sjb', '礼品箱包|精品男包|双肩包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1258, '单肩/斜挎包', 1251, 'danjian/xiekuabao', 'dj/xkb', '礼品箱包|精品男包|单肩/斜挎包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1259, '功能箱包', 1227, 'gongnengxiangbao', 'gnxb', '礼品箱包|功能箱包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1260, '书包', 1259, 'shubao', 'sb', '礼品箱包|功能箱包|书包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1261, '休闲运动包', 1259, 'xiuxianyundongbao', 'xxydb', '礼品箱包|功能箱包|休闲运动包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1262, '登山包', 1259, 'dengshanbao', 'dsb', '礼品箱包|功能箱包|登山包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1263, '相机包', 1259, 'xiangjibao', 'xjb', '礼品箱包|功能箱包|相机包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1264, '妈咪包', 1259, 'mamibao', 'mmb', '礼品箱包|功能箱包|妈咪包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1265, '腰包/胸包', 1259, 'yaobao/xiongbao', 'yb/xb', '礼品箱包|功能箱包|腰包/胸包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1266, '电脑包', 1259, 'diannaobao', 'dnb', '礼品箱包|功能箱包|电脑包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1267, '旅行包', 1259, 'lvxingbao', 'lxb', '礼品箱包|功能箱包|旅行包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1268, '拉杆包', 1259, 'laganbao', 'lgb', '礼品箱包|功能箱包|拉杆包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1269, '旅行配件', 1259, 'lvxingpeijian', 'lxpj', '礼品箱包|功能箱包|旅行配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1270, '拉杆箱', 1259, 'laganxiang', 'lgx', '礼品箱包|功能箱包|拉杆箱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1271, '潮流女包', 1227, 'chaoliunvbao', 'clnb', '礼品箱包|潮流女包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1272, '单肩包', 1271, 'danjianbao', 'djb', '礼品箱包|潮流女包|单肩包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1273, '钱包', 1271, 'qianbao', 'qb', '礼品箱包|潮流女包|钱包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1274, '卡包/零钱包', 1271, 'kabao/lingqianbao', 'kb/lqb', '礼品箱包|潮流女包|卡包/零钱包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1275, '钥匙包', 1271, 'yaochibao', 'ycb', '礼品箱包|潮流女包|钥匙包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1276, '双肩包', 1271, 'shuangjianbao', 'sjb', '礼品箱包|潮流女包|双肩包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1277, '手提包', 1271, 'shoutibao', 'stb', '礼品箱包|潮流女包|手提包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1278, '斜挎包', 1271, 'xiekuabao', 'xkb', '礼品箱包|潮流女包|斜挎包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1279, '手拿包', 1271, 'shounabao', 'snb', '礼品箱包|潮流女包|手拿包', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1280, '婚庆', 1227, 'hunqing', 'hq', '礼品箱包|婚庆', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1281, '婚庆礼品/用品', 1280, 'hunqinglipin/yongpin', 'hqlp/yp', '礼品箱包|婚庆|婚庆礼品/用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1282, '珠宝/钟表', 0, 'zhubao', 'zb', '珠宝/钟表', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1283, '彩宝', 1282, 'caibao', 'cb', '珠宝/钟表|彩宝', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1284, '手镯/手链', 1283, 'shouzhuo/shoulian', 'sz/sl', '珠宝/钟表|彩宝|手镯/手链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1285, '其他天然宝石', 1283, 'qitatianranbaoshi', 'qttrbs', '珠宝/钟表|彩宝|其他天然宝石', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1286, '碧玺', 1283, 'bixi', 'bx', '珠宝/钟表|彩宝|碧玺', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1287, '葡萄石', 1283, 'putaoshi', 'pts', '珠宝/钟表|彩宝|葡萄石', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1288, '项链/吊坠', 1283, 'xianglian/diaozhui', 'xl/dz', '珠宝/钟表|彩宝|项链/吊坠', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1289, '耳饰', 1283, 'ershi', 'es', '珠宝/钟表|彩宝|耳饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1290, '珊瑚', 1283, 'shanhu', 'sh', '珠宝/钟表|彩宝|珊瑚', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1291, '祖母绿', 1283, 'zumulv', 'zml', '珠宝/钟表|彩宝|祖母绿', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1292, '戒指', 1283, 'jiezhi', 'jz', '珠宝/钟表|彩宝|戒指', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1293, '红宝石/蓝宝石', 1283, 'hongbaoshi/lanbaoshi', 'hbs/lbs', '珠宝/钟表|彩宝|红宝石/蓝宝石', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1294, '琥珀/蜜蜡', 1283, 'hupo/mila', 'hp/ml', '珠宝/钟表|彩宝|琥珀/蜜蜡', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1295, '坦桑石', 1283, 'tansangshi', 'tss', '珠宝/钟表|彩宝|坦桑石', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1296, '银饰', 1282, 'yinshi', 'ys', '珠宝/钟表|银饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1297, '银手链/脚链', 1296, 'yinshoulian/jiaolian', 'ysl/jl', '珠宝/钟表|银饰|银手链/脚链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1298, '银耳饰', 1296, 'yinershi', 'yes', '珠宝/钟表|银饰|银耳饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1299, '银手镯', 1296, 'yinshouzhuo', 'ysz', '珠宝/钟表|银饰|银手镯', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1300, '宝宝银饰', 1296, 'baobaoyinshi', 'bbys', '珠宝/钟表|银饰|宝宝银饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1301, '银吊坠/项链', 1296, 'yindiaozhui/xianglian', 'ydz/xl', '珠宝/钟表|银饰|银吊坠/项链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1302, '银戒指', 1296, 'yinjiezhi', 'yjz', '珠宝/钟表|银饰|银戒指', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1303, '翡翠玉石', 1282, 'feicuiyushi', 'fcys', '珠宝/钟表|翡翠玉石', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1304, '手镯/手串', 1303, 'shouzhuo/shouchuan', 'sz/sc', '珠宝/钟表|翡翠玉石|手镯/手串', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1305, '玉石孤品', 1303, 'yushigupin', 'ysgp', '珠宝/钟表|翡翠玉石|玉石孤品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1306, '项链/吊坠', 1303, 'xianglian/diaozhui', 'xl/dz', '珠宝/钟表|翡翠玉石|项链/吊坠', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1307, '挂件/摆件/把件', 1303, 'guajian/baijian/bajian', 'gj/bj/bj', '珠宝/钟表|翡翠玉石|挂件/摆件/把件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1308, '戒指', 1303, 'jiezhi', 'jz', '珠宝/钟表|翡翠玉石|戒指', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1309, '耳饰', 1303, 'ershi', 'es', '珠宝/钟表|翡翠玉石|耳饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1310, '水晶玛瑙', 1282, 'shuijingmanao', 'sjmn', '珠宝/钟表|水晶玛瑙', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1311, '摆件/挂件', 1310, 'baijian/guajian', 'bj/gj', '珠宝/钟表|水晶玛瑙|摆件/挂件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1312, '耳饰', 1310, 'ershi', 'es', '珠宝/钟表|水晶玛瑙|耳饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1313, '戒指', 1310, 'jiezhi', 'jz', '珠宝/钟表|水晶玛瑙|戒指', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1314, '手镯/手链/脚链', 1310, 'shouzhuo/shoulian/jiaolian', 'sz/sl/jl', '珠宝/钟表|水晶玛瑙|手镯/手链/脚链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1315, '头饰/胸针', 1310, 'toushi/xiongzhen', 'ts/xz', '珠宝/钟表|水晶玛瑙|头饰/胸针', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1316, '项链/吊坠', 1310, 'xianglian/diaozhui', 'xl/dz', '珠宝/钟表|水晶玛瑙|项链/吊坠', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1317, '金银投资', 1282, 'jinyintouzi', 'jytz', '珠宝/钟表|金银投资', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1318, '投资银', 1317, 'touziyin', 'tzy', '珠宝/钟表|金银投资|投资银', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1319, '投资收藏', 1317, 'touzishouzang', 'tzsz', '珠宝/钟表|金银投资|投资收藏', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1320, '投资金', 1317, 'touzijin', 'tzj', '珠宝/钟表|金银投资|投资金', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1321, '黄金', 1282, 'huangjin', 'hj', '珠宝/钟表|黄金', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1322, '黄金耳饰', 1321, 'huangjinershi', 'hjes', '珠宝/钟表|黄金|黄金耳饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1323, '黄金吊坠', 1321, 'huangjindiaozhui', 'hjdz', '珠宝/钟表|黄金|黄金吊坠', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1324, '黄金项链', 1321, 'huangjinxianglian', 'hjxl', '珠宝/钟表|黄金|黄金项链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1325, '黄金手镯/手链/脚链', 1321, 'huangjinshouzhuo/shoulian/jiaolian', 'hjsz/sl/jl', '珠宝/钟表|黄金|黄金手镯/手链/脚链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1326, '黄金转运珠', 1321, 'huangjinzhuanyunzhu', 'hjzyz', '珠宝/钟表|黄金|黄金转运珠', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1327, '黄金戒指', 1321, 'huangjinjiezhi', 'hjjz', '珠宝/钟表|黄金|黄金戒指', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1328, '铂金', 1282, 'bojin', 'bj', '珠宝/钟表|铂金', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1329, '铂金项链', 1328, 'bojinxianglian', 'bjxl', '珠宝/钟表|铂金|铂金项链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1330, '铂金耳饰', 1328, 'bojinershi', 'bjes', '珠宝/钟表|铂金|铂金耳饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1331, '铂金手镯/手链/脚链', 1328, 'bojinshouzhuo/shoulian/jiaolian', 'bjsz/sl/jl', '珠宝/钟表|铂金|铂金手镯/手链/脚链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1332, '铂金戒指', 1328, 'bojinjiezhi', 'bjjz', '珠宝/钟表|铂金|铂金戒指', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1333, '木手串/把件', 1282, 'mushouchuan/bajian', 'msc/bj', '珠宝/钟表|木手串/把件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1334, '黄花梨', 1333, 'huanghuali', 'hhl', '珠宝/钟表|木手串/把件|黄花梨', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1335, '檀香', 1333, 'tanxiang', 'tx', '珠宝/钟表|木手串/把件|檀香', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1336, '菩提', 1333, 'puti', 'pt', '珠宝/钟表|木手串/把件|菩提', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1337, '金丝楠', 1333, 'jinsinan', 'jsn', '珠宝/钟表|木手串/把件|金丝楠', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1338, '沉香木', 1333, 'chenxiangmu', 'cxm', '珠宝/钟表|木手串/把件|沉香木', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1339, '橄榄核/核桃', 1333, 'ganlanhe/hetao', 'glh/ht', '珠宝/钟表|木手串/把件|橄榄核/核桃', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1340, '小叶紫檀', 1333, 'xiaoyezitan', 'xyzt', '珠宝/钟表|木手串/把件|小叶紫檀', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1341, '时尚饰品', 1282, 'shishangshipin', 'sssp', '珠宝/钟表|时尚饰品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1342, '毛衣链', 1341, 'maoyilian', 'myl', '珠宝/钟表|时尚饰品|毛衣链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1343, '戒指', 1341, 'jiezhi', 'jz', '珠宝/钟表|时尚饰品|戒指', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1344, '发饰/发卡', 1341, 'fashi/faka', 'fs/fk', '珠宝/钟表|时尚饰品|发饰/发卡', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1345, '手链/脚链', 1341, 'shoulian/jiaolian', 'sl/jl', '珠宝/钟表|时尚饰品|手链/脚链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1346, '饰品配件', 1341, 'shipinpeijian', 'sppj', '珠宝/钟表|时尚饰品|饰品配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1347, '婚庆饰品', 1341, 'hunqingshipin', 'hqsp', '珠宝/钟表|时尚饰品|婚庆饰品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1348, '耳饰', 1341, 'ershi', 'es', '珠宝/钟表|时尚饰品|耳饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1349, '胸针', 1341, 'xiongzhen', 'xz', '珠宝/钟表|时尚饰品|胸针', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1350, '项链', 1341, 'xianglian', 'xl', '珠宝/钟表|时尚饰品|项链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1351, 'K金饰品', 1282, 'kjinshipin', 'kjsp', '珠宝/钟表|K金饰品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1352, 'K金项链', 1351, 'kjinxianglian', 'kjxl', '珠宝/钟表|K金饰品|K金项链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1353, 'K金吊坠', 1351, 'kjindiaozhui', 'kjdz', '珠宝/钟表|K金饰品|K金吊坠', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1354, 'K金耳饰', 1351, 'kjinershi', 'kjes', '珠宝/钟表|K金饰品|K金耳饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1355, 'K金手镯/手链/脚链', 1351, 'kjinshouzhuo/shoulian/jiaolian', 'kjsz/sl/jl', '珠宝/钟表|K金饰品|K金手镯/手链/脚链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1356, 'K金戒指', 1351, 'kjinjiezhi', 'kjjz', '珠宝/钟表|K金饰品|K金戒指', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1357, '珍珠', 1282, 'zhenzhu', 'zz', '珠宝/钟表|珍珠', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1358, '珍珠耳饰', 1357, 'zhenzhuershi', 'zzes', '珠宝/钟表|珍珠|珍珠耳饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1359, '珍珠吊坠', 1357, 'zhenzhudiaozhui', 'zzdz', '珠宝/钟表|珍珠|珍珠吊坠', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1360, '珍珠戒指', 1357, 'zhenzhujiezhi', 'zzjz', '珠宝/钟表|珍珠|珍珠戒指', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1361, '珍珠胸针', 1357, 'zhenzhuxiongzhen', 'zzxz', '珠宝/钟表|珍珠|珍珠胸针', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1362, '珍珠项链', 1357, 'zhenzhuxianglian', 'zzxl', '珠宝/钟表|珍珠|珍珠项链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1363, '珍珠手链', 1357, 'zhenzhushoulian', 'zzsl', '珠宝/钟表|珍珠|珍珠手链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1364, '钻石', 1282, 'zuanshi', 'zs', '珠宝/钟表|钻石', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1365, '钻石手镯/手链', 1364, 'zuanshishouzhuo/shoulian', 'zssz/sl', '珠宝/钟表|钻石|钻石手镯/手链', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1366, '钻石耳饰', 1364, 'zuanshiershi', 'zses', '珠宝/钟表|钻石|钻石耳饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1367, '钻石项链/吊坠', 1364, 'zuanshixianglian/diaozhui', 'zsxl/dz', '珠宝/钟表|钻石|钻石项链/吊坠', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1368, '钻戒', 1364, 'zuanjie', 'zj', '珠宝/钟表|钻石|钻戒', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1369, '裸钻', 1364, 'luozuan', 'lz', '珠宝/钟表|钻石|裸钻', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1370, '钟表', 1282, 'zhongbiao', 'zb', '珠宝/钟表|钟表', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1371, '国表', 1370, 'guobiao', 'gb', '珠宝/钟表|钟表|国表', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1372, '德表', 1370, 'debiao', 'db', '珠宝/钟表|钟表|德表', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1373, '挂钟', 1370, 'guazhong', 'gz', '珠宝/钟表|钟表|挂钟', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1374, '日韩表', 1370, 'rihanbiao', 'rhb', '珠宝/钟表|钟表|日韩表', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1375, '欧美表', 1370, 'oumeibiao', 'omb', '珠宝/钟表|钟表|欧美表', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1376, '瑞表', 1370, 'ruibiao', 'rb', '珠宝/钟表|钟表|瑞表', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1377, '钟表配件', 1370, 'zhongbiaopeijian', 'zbpj', '珠宝/钟表|钟表|钟表配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1378, '闹钟', 1370, 'naozhong', 'nz', '珠宝/钟表|钟表|闹钟', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1379, '汽车用品', 0, 'qicheyongpin', 'qcyp', '汽车用品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1380, '全新汽车', 1379, 'quanxinqiche', 'qxqc', '汽车用品|全新汽车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1381, '微型车', 1380, 'weixingche', 'wxc', '汽车用品|全新汽车|微型车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1382, '紧凑型车', 1380, 'jincouxingche', 'jcxc', '汽车用品|全新汽车|紧凑型车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1383, '维修保养', 1379, 'weixiubaoyang', 'wxby', '汽车用品|维修保养', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1384, '汽车玻璃', 1383, 'qicheboli', 'qcbl', '汽车用品|维修保养|汽车玻璃', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1385, '刹车片', 1383, 'chachepian', 'ccp', '汽车用品|维修保养|刹车片', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1386, '贴膜', 1383, 'tiemo', 'tm', '汽车用品|维修保养|贴膜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1387, '防冻液', 1383, 'fangdongye', 'fdy', '汽车用品|维修保养|防冻液', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1388, '雨刷', 1383, 'yushua', 'ys', '汽车用品|维修保养|雨刷', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1389, '蓄电池', 1383, 'xudianchi', 'xdc', '汽车用品|维修保养|蓄电池', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1390, '轮胎', 1383, 'luntai', 'lt', '汽车用品|维修保养|轮胎', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1391, '卤素灯', 1383, 'lusudeng', 'lsd', '汽车用品|维修保养|卤素灯', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1392, '机油滤清器', 1383, 'jiyoulvqingqi', 'jylqq', '汽车用品|维修保养|机油滤清器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1393, '维修配件', 1383, 'weixiupeijian', 'wxpj', '汽车用品|维修保养|维修配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1394, '底盘装甲/护板', 1383, 'dipanzhuangjia/huban', 'dpzj/hb', '汽车用品|维修保养|底盘装甲/护板', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1395, '机油', 1383, 'jiyou', 'jy', '汽车用品|维修保养|机油', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1396, '正时皮带', 1383, 'zhengshipidai', 'zspd', '汽车用品|维修保养|正时皮带', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1397, '轮毂', 1383, 'lungu', 'lg', '汽车用品|维修保养|轮毂', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1398, '减震器', 1383, 'jianzhenqi', 'jzq', '汽车用品|维修保养|减震器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1399, '改装配件', 1383, 'gaizhuangpeijian', 'gzpj', '汽车用品|维修保养|改装配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1400, '火花塞', 1383, 'huohuasai', 'hhs', '汽车用品|维修保养|火花塞', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1401, '汽车喇叭', 1383, 'qichelaba', 'qclb', '汽车用品|维修保养|汽车喇叭', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1402, '添加剂', 1383, 'tianjiaji', 'tjj', '汽车用品|维修保养|添加剂', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1403, '后视镜', 1383, 'houshijing', 'hsj', '汽车用品|维修保养|后视镜', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1404, '柴机油/辅助油', 1383, 'chaijiyou/fuzhuyou', 'cjy/fzy', '汽车用品|维修保养|柴机油/辅助油', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1405, '汽修工具', 1383, 'qixiugongju', 'qxgj', '汽车用品|维修保养|汽修工具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1406, '车载电器', 1379, 'chezaidianqi', 'czdq', '汽车用品|车载电器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1407, '车载吸尘器', 1406, 'chezaixichenqi', 'czxcq', '汽车用品|车载电器|车载吸尘器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1408, '车载冰箱', 1406, 'chezaibingxiang', 'czbx', '汽车用品|车载电器|车载冰箱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1409, '汽车音响', 1406, 'qicheyinxiang', 'qcyx', '汽车用品|车载电器|汽车音响', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1410, '行车记录仪', 1406, 'xingchejiluyi', 'xcjly', '汽车用品|车载电器|行车记录仪', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1411, '安全预警仪', 1406, 'anquanyujingyi', 'aqyjy', '汽车用品|车载电器|安全预警仪', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1412, '倒车雷达', 1406, 'daocheleida', 'dcld', '汽车用品|车载电器|倒车雷达', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1413, '车载生活电器', 1406, 'chezaishenghuodianqi', 'czshdq', '汽车用品|车载电器|车载生活电器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1414, '车载影音', 1406, 'chezaiyingyin', 'czyy', '汽车用品|车载电器|车载影音', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1415, '电源', 1406, 'dianyuan', 'dy', '汽车用品|车载电器|电源', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1416, '导航仪', 1406, 'daohangyi', 'dhy', '汽车用品|车载电器|导航仪', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1417, '车载蓝牙', 1406, 'chezailanya', 'czly', '汽车用品|车载电器|车载蓝牙', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1418, '车机', 1406, 'cheji', 'cj', '汽车用品|车载电器|车机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1419, '车载电器配件', 1406, 'chezaidianqipeijian', 'czdqpj', '汽车用品|车载电器|车载电器配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1420, '车载电台', 1406, 'chezaidiantai', 'czdt', '汽车用品|车载电器|车载电台', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1421, '车载净化器', 1406, 'chezaijinghuaqi', 'czjhq', '汽车用品|车载电器|车载净化器', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1422, '安全自驾', 1379, 'anquanzijia', 'aqzj', '汽车用品|安全自驾', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1423, '摩托车装备', 1422, 'motuochezhuangbei', 'mtczb', '汽车用品|安全自驾|摩托车装备', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1424, '自驾野营', 1422, 'zijiayeying', 'zjyy', '汽车用品|安全自驾|自驾野营', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1425, '防盗设备', 1422, 'fangdaoshebei', 'fdsb', '汽车用品|安全自驾|防盗设备', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1426, '摩托车', 1422, 'motuoche', 'mtc', '汽车用品|安全自驾|摩托车', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1427, '储物箱', 1422, 'chuwuxiang', 'cwx', '汽车用品|安全自驾|储物箱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1428, '应急救援', 1422, 'yingjijiuyuan', 'yjjy', '汽车用品|安全自驾|应急救援', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1429, '充气泵', 1422, 'chongqibeng', 'cqb', '汽车用品|安全自驾|充气泵', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1430, '胎压监测', 1422, 'taiyajiance', 'tyjc', '汽车用品|安全自驾|胎压监测', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1431, '地锁', 1422, 'disuo', 'ds', '汽车用品|安全自驾|地锁', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1432, '保温箱', 1422, 'baowenxiang', 'bwx', '汽车用品|安全自驾|保温箱', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1433, '汽车装饰', 1379, 'qichezhuangshi', 'qczs', '汽车用品|汽车装饰', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1434, '后备箱垫', 1433, 'houbeixiangdian', 'hbxd', '汽车用品|汽车装饰|后备箱垫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1435, '香水', 1433, 'xiangshui', 'xs', '汽车用品|汽车装饰|香水', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1436, '挂件摆件', 1433, 'guajianbaijian', 'gjbj', '汽车用品|汽车装饰|挂件摆件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1437, '座垫', 1433, 'zuodian', 'zd', '汽车用品|汽车装饰|座垫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1438, '车内除味剂', 1433, 'cheneichuweiji', 'cncwj', '汽车用品|汽车装饰|车内除味剂', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1439, '车身装饰件', 1433, 'cheshenzhuangshijian', 'cszsj', '汽车用品|汽车装饰|车身装饰件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1440, '脚垫', 1433, 'jiaodian', 'jd', '汽车用品|汽车装饰|脚垫', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1441, '功能小件', 1433, 'gongnengxiaojian', 'gnxj', '汽车用品|汽车装饰|功能小件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1442, '方向盘套', 1433, 'fangxiangpantao', 'fxpt', '汽车用品|汽车装饰|方向盘套', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1443, '座套', 1433, 'zuotao', 'zt', '汽车用品|汽车装饰|座套', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1444, '车衣', 1433, 'cheyi', 'cy', '汽车用品|汽车装饰|车衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1445, '头枕腰靠', 1433, 'touzhenyaokao', 'tzyk', '汽车用品|汽车装饰|头枕腰靠', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1446, '美容清洗', 1379, 'meirongqingxi', 'mrqx', '汽车用品|美容清洗', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1447, '洗车配件', 1446, 'xichepeijian', 'xcpj', '汽车用品|美容清洗|洗车配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1448, '清洁剂', 1446, 'qingjieji', 'qjj', '汽车用品|美容清洗|清洁剂', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1449, '玻璃水', 1446, 'bolishui', 'bls', '汽车用品|美容清洗|玻璃水', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1450, '洗车水枪', 1446, 'xicheshuiqiang', 'xcsq', '汽车用品|美容清洗|洗车水枪', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1451, '车蜡', 1446, 'chela', 'cl', '汽车用品|美容清洗|车蜡', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1452, '洗车机', 1446, 'xicheji', 'xcj', '汽车用品|美容清洗|洗车机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1453, '打蜡机', 1446, 'dalaji', 'dlj', '汽车用品|美容清洗|打蜡机', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1454, '洗车工具', 1446, 'xichegongju', 'xcgj', '汽车用品|美容清洗|洗车工具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1455, '洗车毛巾', 1446, 'xichemaojin', 'xcmj', '汽车用品|美容清洗|洗车毛巾', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1456, '补漆笔', 1446, 'buqibi', 'bqb', '汽车用品|美容清洗|补漆笔', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1457, '配件', 1379, 'peijian', 'pj', '汽车用品|配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1458, '五金电子', 0, 'wujindianzi', 'wjdz', '五金电子', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1459, '电动工具', 1458, 'diandonggongju', 'ddgj', '五金电子|电动工具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1460, '配件', 1459, 'peijian', 'pj', '五金电子|电动工具|配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1461, '风炮', 1459, 'fengpao', 'fp', '五金电子|电动工具|风炮', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1462, '手动工具', 1458, 'shoudonggongju', 'sdgj', '五金电子|手动工具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1463, '螺丝刀', 1462, 'luosidao', 'lsd', '五金电子|手动工具|螺丝刀', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1464, '锁具/钥匙', 1458, 'suoju', 'sj', '五金电子|锁具/钥匙', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1465, '锁具', 1464, 'suoju', 'sj', '五金电子|锁具/钥匙|锁具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1466, '钥匙/配件', 1464, 'yaochi/peijian', 'yc/pj', '五金电子|锁具/钥匙|钥匙/配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1467, '其他', 0, 'qita（xin）', 'qt（x）', '其他', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1468, '其它', 0, 'qita', 'qt', '其它', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1469, '品调味', 0, 'pindiaowei', 'pdw', '品调味', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1470, '进口食品', 1469, 'jinkoushipin', 'jksp', '品调味|进口食品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1471, '冲调品', 1470, 'chongdiaopin', 'cdp', '品调味|进口食品|冲调品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1472, '休闲食品', 1469, 'xiuxianshipin', 'xxsp', '品调味|休闲食品', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1473, '糖果/巧克力', 1472, 'tangguo/qiaokeli', 'tg/qkl', '品调味|休闲食品|糖果/巧克力', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1474, '多美滋立即补水润白美容膏', 0, 'duomeizilijibushuirunbaimeironggao', 'dmzljbsrbmrg', '多美滋立即补水润白美容膏', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1475, '个户清洁', 0, 'gehuqingjie', 'ghqj', '个户清洁', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1476, '清洁工具', 1475, 'qingjiegongju', 'qjgj', '个户清洁|清洁工具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1477, '拖把', 1476, 'tuoba', 'tb', '个户清洁|清洁工具|拖把', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1478, '美妆中其他', 0, 'meizhuangzhongqita', 'mzzqt', '美妆中其他', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1479, '服饰鞋靴', 0, 'fushixiexue', 'fsxx', '服饰鞋靴', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1480, '内衣', 1479, 'neiyi', 'ny', '服饰鞋靴|内衣', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1481, '女士内裤', 1480, 'nvshineiku', 'nsnk', '服饰鞋靴|内衣|女士内裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1482, '男士内裤', 1480, 'nanshineiku', 'nsnk', '服饰鞋靴|内衣|男士内裤', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1483, '电器厨具', 0, 'dianqichuju', 'dqcj', '电器厨具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1484, '厨房配件', 1483, 'chufangpeijian', 'cfpj', '电器厨具|厨房配件', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');
INSERT INTO `mall_category_bak` VALUES (1485, '厨房DIY/小工具', 1484, 'chufangdiy/xiaogongju', 'cfdiy/xgj', '电器厨具|厨房配件|厨房DIY/小工具', 1, 99, '2019-12-29 23:07:28', '2019-12-29 23:09:19');

-- ----------------------------
-- Table structure for mall_classify
-- ----------------------------
DROP TABLE IF EXISTS `mall_classify`;
CREATE TABLE `mall_classify`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `parent_id` int(11) NULL DEFAULT NULL COMMENT '上级分类',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城-展示分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_classify
-- ----------------------------
INSERT INTO `mall_classify` VALUES (1, '3C数码', 0, 1, 99, '2019-12-26 21:25:27', '2019-12-26 21:25:27');
INSERT INTO `mall_classify` VALUES (2, '手机', 1, 1, 99, '2019-12-26 21:25:33', '2019-12-26 21:25:33');

-- ----------------------------
-- Table structure for mall_goods
-- ----------------------------
DROP TABLE IF EXISTS `mall_goods`;
CREATE TABLE `mall_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城-商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for mall_tag
-- ----------------------------
DROP TABLE IF EXISTS `mall_tag`;
CREATE TABLE `mall_tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商城-商品标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mall_tag
-- ----------------------------
INSERT INTO `mall_tag` VALUES (2, '推荐', 1, 99, '2019-12-26 21:47:38', '2019-12-26 21:47:38');
INSERT INTO `mall_tag` VALUES (3, '新品', 1, 99, '2019-12-26 21:47:44', '2019-12-26 21:47:44');
INSERT INTO `mall_tag` VALUES (4, '促销', 1, 99, '2019-12-26 21:47:50', '2019-12-26 21:47:50');
INSERT INTO `mall_tag` VALUES (5, '热门', 1, 99, '2019-12-26 21:47:55', '2019-12-26 21:47:55');

-- ----------------------------
-- Table structure for sys_auth
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth`;
CREATE TABLE `sys_auth`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色|用户 id',
  `type` int(1) NULL DEFAULT NULL COMMENT '类型：1=角色，2=用户',
  `menu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单',
  `is_half` int(1) NULL DEFAULT NULL COMMENT '是否半选',
  `auth_button_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限，多个使用,分割',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_auth
-- ----------------------------
INSERT INTO `sys_auth` VALUES ('5baddea4-ba13-42d1-91ef-700fa36fa469', 1, '0a2ba2e9-e9e2-4bbf-a836-5fb7aa3af41e', 0, '33a11403-54b3-450f-b47c-eaa5b1347e16', '2019-11-28 16:49:54', '2019-11-28 16:49:54');
INSERT INTO `sys_auth` VALUES ('5baddea4-ba13-42d1-91ef-700fa36fa469', 1, '0a2ba2e9-e9e2-4bbf-a836-5fb7aa3af41e', 0, '3a790535-dde9-4596-ac91-d123cd4ef278', '2019-11-28 16:49:54', '2019-11-28 16:49:54');
INSERT INTO `sys_auth` VALUES ('5baddea4-ba13-42d1-91ef-700fa36fa469', 1, '0a2ba2e9-e9e2-4bbf-a836-5fb7aa3af41e', 0, '3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '2019-11-28 16:49:54', '2019-11-28 16:49:54');
INSERT INTO `sys_auth` VALUES ('5baddea4-ba13-42d1-91ef-700fa36fa469', 1, '0a2ba2e9-e9e2-4bbf-a836-5fb7aa3af41e', 0, '', '2019-11-28 16:49:54', '2019-11-28 16:49:54');
INSERT INTO `sys_auth` VALUES ('5baddea4-ba13-42d1-91ef-700fa36fa469', 1, '5e173c49-a81f-4a5e-869d-4cb76c2ca419', 1, '', '2019-11-28 16:49:54', '2019-11-28 16:49:54');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', 2, '91128d91-2386-4d6b-8e5c-f023c63c57ec', 0, '33a11403-54b3-450f-b47c-eaa5b1347e16', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', 2, '91128d91-2386-4d6b-8e5c-f023c63c57ec', 0, '3a790535-dde9-4596-ac91-d123cd4ef278', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', 2, '91128d91-2386-4d6b-8e5c-f023c63c57ec', 0, '3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', 2, '91128d91-2386-4d6b-8e5c-f023c63c57ec', 0, '0b6d7a2a-91e6-4ed2-ab03-3906f57b46d0', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', 2, '91128d91-2386-4d6b-8e5c-f023c63c57ec', 0, '972659d8-4c43-4f93-9229-857a63c20714', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', 2, '91128d91-2386-4d6b-8e5c-f023c63c57ec', 0, '4ac84963-f166-4474-b617-777abf6956c8', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', 2, '91128d91-2386-4d6b-8e5c-f023c63c57ec', 0, '283437d9-c1b1-4a5c-9e24-242c0bcded18', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', 2, '91128d91-2386-4d6b-8e5c-f023c63c57ec', 0, 'df1408bf-a355-4474-90a9-04ae5ecf087e', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', 2, 'efa26c50-67b2-464b-ae90-e98438bd5b4b', 0, '33a11403-54b3-450f-b47c-eaa5b1347e16', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', 2, 'efa26c50-67b2-464b-ae90-e98438bd5b4b', 0, '3a790535-dde9-4596-ac91-d123cd4ef278', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', 2, '91128d91-2386-4d6b-8e5c-f023c63c57ec', 1, '', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', 2, '5e173c49-a81f-4a5e-869d-4cb76c2ca419', 1, '', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', 2, 'efa26c50-67b2-464b-ae90-e98438bd5b4b', 1, '', '2019-12-03 15:11:01', '2019-12-03 15:11:01');

-- ----------------------------
-- Table structure for sys_auth_button
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_button`;
CREATE TABLE `sys_auth_button`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `key` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Key',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-权限按钮表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_auth_button
-- ----------------------------
INSERT INTO `sys_auth_button` VALUES ('0b6d7a2a-91e6-4ed2-ab03-3906f57b46d0', '导出', 'export', 1, 99, '2019-11-21 09:15:45', '2019-11-21 09:15:45');
INSERT INTO `sys_auth_button` VALUES ('283437d9-c1b1-4a5c-9e24-242c0bcded18', '复制', 'copy', 1, 99, '2019-11-28 20:03:18', '2019-11-28 20:03:18');
INSERT INTO `sys_auth_button` VALUES ('33a11403-54b3-450f-b47c-eaa5b1347e16', '新增', 'insert', 1, 99, '2019-11-20 09:34:33', '2019-11-20 09:34:33');
INSERT INTO `sys_auth_button` VALUES ('3a790535-dde9-4596-ac91-d123cd4ef278', '编辑', 'edit', 1, 99, '2019-11-20 09:34:41', '2019-11-20 09:34:41');
INSERT INTO `sys_auth_button` VALUES ('3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '删除', 'delete', 1, 99, '2019-11-20 09:34:51', '2019-11-20 09:34:51');
INSERT INTO `sys_auth_button` VALUES ('41fa64dc-ed83-428b-bba3-dcf9753cfa3e', '设置权限', 'setAuth', 1, 99, '2019-11-29 10:08:29', '2019-11-29 10:08:29');
INSERT INTO `sys_auth_button` VALUES ('4ac84963-f166-4474-b617-777abf6956c8', '新增下级', 'insertNext', 1, 99, '2019-11-28 20:01:13', '2019-11-28 20:01:13');
INSERT INTO `sys_auth_button` VALUES ('972659d8-4c43-4f93-9229-857a63c20714', '上传', 'upload', 1, 99, '2019-11-21 09:15:56', '2019-11-21 09:15:56');
INSERT INTO `sys_auth_button` VALUES ('df1408bf-a355-4474-90a9-04ae5ecf087e', '保存', 'save', 1, 99, '2019-11-28 20:12:07', '2019-11-28 20:12:07');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基本配置-名称',
  `domain_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基本配置-域名',
  `copyright` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基本配置-版权',
  `status` int(1) NULL DEFAULT NULL COMMENT '基本配置-状态',
  `close_explain` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '基本配置-关闭说明',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SEO-标题',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SEO-关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SEO-描述',
  `script` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SEO-代码【统计、商桥等】',
  `upload_dir` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传目录',
  `allowed_file_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '允许的文件类型',
  `allowed_file_size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '允许的文件大小，单位：MB',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, 'XUANYU CMS', 'http://xuanyucms.lc', '', 1, '', '', '', '', '', '/uploads', '*', '2');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `parent_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级部门',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('0255ccdb-bd0d-46fd-841e-5c35e41fd0f2', '研发部门', '032b12c4-e76d-467a-81ff-7fe2df84fae0', '', '18810622636', '1056811341@qq.com', 1, 99, '2019-07-01 20:05:15', '2019-11-28 12:26:42');
INSERT INTO `sys_dept` VALUES ('032b12c4-e76d-467a-81ff-7fe2df84fae0', '北京总公司', '50caf116-0275-499f-95fa-fa1c736bb3ea', '123123', '1231231', '23123123', 1, 99, '2019-06-30 21:51:38', '2019-11-21 17:16:14');
INSERT INTO `sys_dept` VALUES ('245658e1-e9dc-49e6-9bba-fcc262d97886', '市场部门', '9a165e4c-1a3c-4384-9535-544fe324bc02', '', '', '', 1, 99, '2019-07-01 20:06:42', '2019-11-21 17:16:14');
INSERT INTO `sys_dept` VALUES ('36e1579b-b3dc-4583-8d05-75ad594894e3', '运维部门', '032b12c4-e76d-467a-81ff-7fe2df84fae0', '', '', '', 1, 99, '2019-07-01 20:05:52', '2019-11-21 17:16:14');
INSERT INTO `sys_dept` VALUES ('50caf116-0275-499f-95fa-fa1c736bb3ea', '集团', '0', '', '', '', 1, 99, '2019-06-13 15:14:06', '2019-11-22 09:11:28');
INSERT INTO `sys_dept` VALUES ('54bae11c-7365-4a74-826b-49984445c69d', '测试部门', '032b12c4-e76d-467a-81ff-7fe2df84fae0', '', '', '', 1, 99, '2019-07-01 20:05:34', '2019-11-21 17:16:14');
INSERT INTO `sys_dept` VALUES ('723e2d62-c501-4e0d-be53-e8a1b6ef8260', '财务部门', '9a165e4c-1a3c-4384-9535-544fe324bc02', '', '', '', 1, 99, '2019-07-01 20:06:51', '2019-11-21 17:16:14');
INSERT INTO `sys_dept` VALUES ('73f9b462-7bdb-4332-8912-8dec98cea8ca', '财务部门', '032b12c4-e76d-467a-81ff-7fe2df84fae0', '', '', '', 1, 99, '2019-07-01 20:05:46', '2019-11-21 17:16:14');
INSERT INTO `sys_dept` VALUES ('9a165e4c-1a3c-4384-9535-544fe324bc02', '山东分公司', '50caf116-0275-499f-95fa-fa1c736bb3ea', '', '', '', 1, 99, '2019-07-01 20:06:30', '2019-11-21 17:16:14');
INSERT INTO `sys_dept` VALUES ('d4e58f51-a848-4ea0-b2dd-cacf61524605', '市场部门', '032b12c4-e76d-467a-81ff-7fe2df84fae0', '', '', '', 1, 99, '2019-07-01 20:05:25', '2019-11-21 17:16:14');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Key',
  `dict_dir_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统字典目录',
  `dict_dir_key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统字典目录值',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('174c8253-5bca-4af1-8db3-6beb3e776725', '个', 'ge', 'ffd94f83-01e4-47ff-93d7-1f2e7d365ade', 'measureUnit', 1, 99, '2020-01-15 21:20:43', '2020-01-15 21:31:26');
INSERT INTO `sys_dict` VALUES ('1e1f7452-7207-47af-ad5e-2a3974f59d7b', '套', 'tao', 'ffd94f83-01e4-47ff-93d7-1f2e7d365ade', 'measureUnit', 1, 99, '2020-01-15 21:22:29', '2020-01-15 21:31:26');
INSERT INTO `sys_dict` VALUES ('2cf75ae7-4a93-4099-8696-976332daa018', '件', 'jian', 'ffd94f83-01e4-47ff-93d7-1f2e7d365ade', 'measureUnit', 1, 99, '2020-01-15 21:21:14', '2020-01-15 21:31:26');
INSERT INTO `sys_dict` VALUES ('352a67ac-eed5-438e-ae78-fbf68d640cf6', '只', 'zhi', 'ffd94f83-01e4-47ff-93d7-1f2e7d365ade', 'measureUnit', 1, 99, '2020-01-15 21:20:54', '2020-01-15 21:31:26');
INSERT INTO `sys_dict` VALUES ('4452ab68-4482-4d28-8111-90804ffb6b04', '箱', 'xiang', 'ffd94f83-01e4-47ff-93d7-1f2e7d365ade', 'measureUnit', 1, 99, '2020-01-15 21:22:08', '2020-01-15 21:31:26');
INSERT INTO `sys_dict` VALUES ('6afa069f-4af0-413f-a59c-491aabe04ada', '组', 'zu', 'ffd94f83-01e4-47ff-93d7-1f2e7d365ade', 'measureUnit', 1, 99, '2020-01-15 21:22:21', '2020-01-15 21:31:26');
INSERT INTO `sys_dict` VALUES ('71f236a0-751a-4ff9-870b-9df788e04f59', '双', 'shuang', 'ffd94f83-01e4-47ff-93d7-1f2e7d365ade', 'measureUnit', 1, 99, '2020-01-15 21:21:56', '2020-01-15 21:31:26');
INSERT INTO `sys_dict` VALUES ('9e0d6a60-5e22-40f0-994d-e3caaf385a4a', '瓶', 'ping', 'ffd94f83-01e4-47ff-93d7-1f2e7d365ade', 'measureUnit', 1, 99, '2020-01-15 21:21:31', '2020-01-15 21:31:26');
INSERT INTO `sys_dict` VALUES ('bf638f95-7c5a-4368-8f85-b37338b71077', '盒', 'he', 'ffd94f83-01e4-47ff-93d7-1f2e7d365ade', 'measureUnit', 1, 99, '2020-01-15 21:21:23', '2020-01-15 21:31:26');
INSERT INTO `sys_dict` VALUES ('d8945bdc-a58b-45a8-876e-4915023123ca', '打', 'da', 'ffd94f83-01e4-47ff-93d7-1f2e7d365ade', 'measureUnit', 1, 99, '2020-01-15 21:22:36', '2020-01-15 21:31:26');

-- ----------------------------
-- Table structure for sys_dict_dir
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_dir`;
CREATE TABLE `sys_dict_dir`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `key` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Key',
  `parent_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级目录',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-字典目录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_dir
-- ----------------------------
INSERT INTO `sys_dict_dir` VALUES ('f6f92ddc-91fd-4289-814e-329110f37335', '商城', 'mall', '0', 99, '2020-01-15 21:16:42', '2020-01-15 21:18:40');
INSERT INTO `sys_dict_dir` VALUES ('ffd94f83-01e4-47ff-93d7-1f2e7d365ade', '计量单位', 'measureUnit', 'f6f92ddc-91fd-4289-814e-329110f37335', 99, '2020-01-15 21:19:01', '2020-01-15 21:31:26');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int(1) NULL DEFAULT NULL COMMENT '日志类型：1=登录日志，2=操作日志，3=异常日志',
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户',
  `api` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接口地址',
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器信息',
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问IP',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态码',
  `message` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态信息',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('003ea4d9-d798-48da-a384-94ce33178fa6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"b4a158c5-2f2f-41d6-a784-c882492f436f\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:16:54');
INSERT INTO `sys_log` VALUES ('005e55d4-cf75-4333-9dcc-8de0f4969c57', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:26:28');
INSERT INTO `sys_log` VALUES ('0093c2d3-28a1-4e23-8679-618bf2723dd7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:35:04');
INSERT INTO `sys_log` VALUES ('00a66cbf-d5c8-4964-9f9d-b3aa52933d72', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"eb9bdd78-feae-4ff7-bd54-611b034235e3\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 11:40:27');
INSERT INTO `sys_log` VALUES ('00db95b4-6cc2-453a-aa0f-e79397e227c0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:39:42');
INSERT INTO `sys_log` VALUES ('00f7480a-7b3b-450c-973c-396e22a920f0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"0d03ad14-3fe1-4d1a-a5e3-45c87d15a75b\",\"parent_id\":\"02f6c566-7878-4353-ad36-179bd04e1b5a\",\"name\":\"\\u8d26\\u53f7\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/wechat\\/account\",\"route_name\":\"wechatAccount\",\"route_component\":\"views\\/wechat\\/account\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"98\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:41:40');
INSERT INTO `sys_log` VALUES ('01051c1a-fbbe-4d00-bd37-0d248e5c28e1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:23:04');
INSERT INTO `sys_log` VALUES ('0113b5ec-4655-4b56-880d-8e2c99d1057b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:44:40');
INSERT INTO `sys_log` VALUES ('01141ba4-7f78-44c1-b335-818b15c5d2df', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2020-01-14 21:56:42');
INSERT INTO `sys_log` VALUES ('015db3d1-fde0-41d2-a25f-ebde50f32ee3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:50:42');
INSERT INTO `sys_log` VALUES ('01710a29-686d-4016-a3df-fcba9059e179', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:29:24');
INSERT INTO `sys_log` VALUES ('019bf49b-2ab1-4806-903e-c74056241c4d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 22:31:31');
INSERT INTO `sys_log` VALUES ('02f01737-17ad-4e1f-ac24-1cebb674931e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:06:55');
INSERT INTO `sys_log` VALUES ('032e30d9-f464-4ecf-9f7d-c2fe15aac36a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 23:21:20');
INSERT INTO `sys_log` VALUES ('03d0bae0-1e07-45cf-85c7-2bdfd6c9c1f9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:27:46');
INSERT INTO `sys_log` VALUES ('0400e16f-ba57-4e45-aca2-099b9f7e8a73', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:19:30');
INSERT INTO `sys_log` VALUES ('042a44f2-d682-47ae-9028-5969652f29b0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:59:28');
INSERT INTO `sys_log` VALUES ('0447ccbf-70f6-404d-b37d-13a5ea1cbbf8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:28:37');
INSERT INTO `sys_log` VALUES ('0505120a-e93f-42ee-8152-35febe811ed8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/submit', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\",\"dict_dir_key\":\"unit\",\"name\":\"\\u74f6\",\"key\":\"ping\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-15 21:21:31');
INSERT INTO `sys_log` VALUES ('053d8a17-063e-4807-b11c-0c09765a1b39', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:35');
INSERT INTO `sys_log` VALUES ('05d47885-2f5f-4164-a477-a6d09f5b90f1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:31:48');
INSERT INTO `sys_log` VALUES ('060bf747-727c-4c01-bb2a-26922a735050', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 23:03:34');
INSERT INTO `sys_log` VALUES ('06765119-2986-4221-8b37-604142af5403', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 22:30:35');
INSERT INTO `sys_log` VALUES ('06845ec4-bea7-46eb-a246-6e515383b51d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 11:41:12');
INSERT INTO `sys_log` VALUES ('06c4053a-8c72-467a-bea5-0e0dd3edd89e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-22 21:36:24');
INSERT INTO `sys_log` VALUES ('06cfa166-147e-48b9-b334-b73d3048acd0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:25:36');
INSERT INTO `sys_log` VALUES ('07179533-7d39-4cc4-8ff4-8bc09ceaac42', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:32:41');
INSERT INTO `sys_log` VALUES ('071caeb8-7305-4afe-ad30-88b20d73e7ae', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:23:51');
INSERT INTO `sys_log` VALUES ('07b12e40-ea72-49e7-bdc5-559f18a82bf8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 10:51:53');
INSERT INTO `sys_log` VALUES ('07c8d188-1950-4392-9afd-0ecc146ad4f3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:31');
INSERT INTO `sys_log` VALUES ('0841d4a6-8a0e-4c49-ad5e-424add4af9d8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"0ca4dee2-9b45-441c-a767-c8b07197c9b0\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5206\\u7c7b\",\"icon\":\"\",\"route_path\":\"\\/mall\\/category\",\"route_name\":\"mallCategory\",\"route_component\":\"views\\/mall\\/category\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,4ac84963-f166-4474-b617-777abf6956c8\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 18:36:40');
INSERT INTO `sys_log` VALUES ('08672c18-544a-452f-b027-37d582b524b6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:56:56');
INSERT INTO `sys_log` VALUES ('089786ea-3818-42fa-861b-2fb9f9783d8b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:53:16');
INSERT INTO `sys_log` VALUES ('090176b7-d0e2-47a8-8be8-f189710b5778', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:25:56');
INSERT INTO `sys_log` VALUES ('0902a24d-13b5-404c-b9a3-fedc1326642a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f74\",\"account\":\"4\",\"origin_id\":\"4\",\"app_id\":\"4\",\"app_secred\":\"4\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:32:58');
INSERT INTO `sys_log` VALUES ('09535181-86a9-4bdb-9b99-bc64fae8085e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-22 21:31:35');
INSERT INTO `sys_log` VALUES ('096731ff-b831-4516-886d-4e6247bf8326', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:26:51');
INSERT INTO `sys_log` VALUES ('096f9381-f8df-40ed-a2c3-efe772493e12', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:36:09');
INSERT INTO `sys_log` VALUES ('0a07011b-e634-4801-a71d-5559fcdcdf2f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:14:46');
INSERT INTO `sys_log` VALUES ('0a15233b-bf0c-4bbd-9435-ded4b57b38c9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:24:34');
INSERT INTO `sys_log` VALUES ('0a857f37-823a-4f4d-a978-d0043c934aa6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/submit', '{\"parent_id\":\"0\",\"name\":\"\\u624b\\u673a\\u901a\\u8baf\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-23 22:53:31');
INSERT INTO `sys_log` VALUES ('0a9ce625-4eb3-4db0-a9a5-7a827e6c392e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:57:08');
INSERT INTO `sys_log` VALUES ('0ad2eabb-97a8-4aa3-a9ae-3ddd23e671ac', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:17:40');
INSERT INTO `sys_log` VALUES ('0aecd40b-5338-45c7-982b-df6c7824915f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:51:26');
INSERT INTO `sys_log` VALUES ('0aeff983-6d25-4616-b5ab-69a48f57683d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:25:58');
INSERT INTO `sys_log` VALUES ('0c254e35-0c99-4ec2-8f4f-5e82117b7720', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"parent_id\":\"0\",\"name\":\"\\u5546\\u57ce\",\"icon\":\"shop\",\"route_path\":\"\\/mall\",\"route_name\":\"mall\",\"route_component\":\"layouts\\/basicLayout\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-20 20:26:08');
INSERT INTO `sys_log` VALUES ('0c2dbc52-32d0-4f36-988a-eb9e6f298a36', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5206\\u7c7b\",\"icon\":\"\",\"route_path\":\"\\/mall\\/categories\",\"route_name\":\"categories\",\"route_component\":\"view\\/mall\\/categories\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-20 20:37:29');
INSERT INTO `sys_log` VALUES ('0c9bbeee-faf1-4eeb-8d31-16b78c8899dc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:43:04');
INSERT INTO `sys_log` VALUES ('0cb44d54-36f5-483d-b8bd-e382212e75f7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:26:37');
INSERT INTO `sys_log` VALUES ('0cfb1fa6-2c1d-40a9-afe0-1f6d02bd2893', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:49');
INSERT INTO `sys_log` VALUES ('0d10f70d-2383-4f95-9fa4-67def25bcac2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 23:04:15');
INSERT INTO `sys_log` VALUES ('0d52ddbd-29ce-4948-ad50-fa7f7cf81d0b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:13:34');
INSERT INTO `sys_log` VALUES ('0d87b91e-6a9f-4432-974d-e0bdf380fd65', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 23:10:16');
INSERT INTO `sys_log` VALUES ('0dbbbe81-b093-4c59-9e00-8684b2f3d7a5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:57:45');
INSERT INTO `sys_log` VALUES ('0dc83f28-3656-4402-9188-7f793dbad06e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:09:22');
INSERT INTO `sys_log` VALUES ('0dcac369-92e1-4653-a371-aa735f32036a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:06:03');
INSERT INTO `sys_log` VALUES ('0de4bcf2-aada-4dd8-ad7e-c35a53ef88b5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:26');
INSERT INTO `sys_log` VALUES ('0e4b4eed-c733-4d54-8970-39c839a6162f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:42:10');
INSERT INTO `sys_log` VALUES ('0e4c69fe-8938-4a66-913f-bb3d7009e96e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:38:21');
INSERT INTO `sys_log` VALUES ('0e8c21b4-70c5-49fc-a2cb-6624f5948b7e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:55:01');
INSERT INTO `sys_log` VALUES ('0e99c61b-fd83-40a6-8248-88f5671951c0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:53:54');
INSERT INTO `sys_log` VALUES ('0ea249b0-012b-41d6-9ad1-803b15a0fbd5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5c55\\u793a\\u5206\\u7c7b\",\"icon\":\"\",\"route_path\":\"\\/mall\\/classify\",\"route_name\":\"classify\",\"route_component\":\"views\\/mall\\/classify\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,4ac84963-f166-4474-b617-777abf6956c8\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-23 21:49:07');
INSERT INTO `sys_log` VALUES ('0edf267e-ca39-42ef-a221-68aa2b8b8eed', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:28:26');
INSERT INTO `sys_log` VALUES ('0ef5af42-5a4d-4705-9b57-5d9eab6efd69', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:21');
INSERT INTO `sys_log` VALUES ('0f8233f8-7b59-48a5-bf6a-5ad24619ab5d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/submit', '{\"parent_id\":\"0\",\"name\":\"3C\\u6570\\u7801\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-26 21:25:27');
INSERT INTO `sys_log` VALUES ('0fa77739-8f0e-4eb4-8efa-7e203f38506d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"name\":\"\\u53cc\\u6a21\\u624b\\u673a\",\"parent_id\":\"1\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 18:40:24');
INSERT INTO `sys_log` VALUES ('0fc7d034-3e39-46bd-8b4e-2f404587a8d4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 11:39:14');
INSERT INTO `sys_log` VALUES ('0fd2934a-11b9-4225-bcec-306e0e93799d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:21:23');
INSERT INTO `sys_log` VALUES ('101100d6-d18b-4eaa-a8ee-fe23e75c5d16', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:22:29');
INSERT INTO `sys_log` VALUES ('110c4683-16c0-4316-a6ea-9367c9eb320e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:22');
INSERT INTO `sys_log` VALUES ('1177ea38-fccd-4472-b2c2-af50868a48d6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:10:51');
INSERT INTO `sys_log` VALUES ('11aa9e74-1536-4d2e-92ee-b6b96f773926', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:57:59');
INSERT INTO `sys_log` VALUES ('11ff5710-161a-409d-8981-12f4c22ef60f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:43:53');
INSERT INTO `sys_log` VALUES ('1213c5d1-88ea-4d57-8742-3b3c1d1b23d4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:16:25');
INSERT INTO `sys_log` VALUES ('122e15c4-1641-433a-b3a6-ad86598ca2da', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:40:38');
INSERT INTO `sys_log` VALUES ('125136a5-762f-4178-a3dc-8251b1ea041e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:23:20');
INSERT INTO `sys_log` VALUES ('1274ba7c-87aa-4eb6-9d56-d0cd7996843c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:39:46');
INSERT INTO `sys_log` VALUES ('12f9e88b-05fb-4090-80f3-83498d863a68', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/submit', '{\"parent_id\":\"0\",\"name\":\"1\",\"key\":\"1\",\"is_update_dir_key\":\"0\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-15 21:16:42');
INSERT INTO `sys_log` VALUES ('130ffced-eada-47c8-bcdb-47ce71ed1a41', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:11:50');
INSERT INTO `sys_log` VALUES ('1368c26e-37e2-4b48-8f5f-ee66bc5dc786', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:08:15');
INSERT INTO `sys_log` VALUES ('143daf3e-6990-4319-85ab-8b9a6ed0470c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:50:12');
INSERT INTO `sys_log` VALUES ('14657522-3bc7-49cc-b3e9-59957571a58d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5c5e\\u6027\",\"icon\":\"\",\"route_path\":\"\\/mall\\/goodsAttributes\",\"route_name\":\"goodsAttributes\",\"route_component\":\"view\\/mall\\/goodsAttributes\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-20 20:38:21');
INSERT INTO `sys_log` VALUES ('14ef348e-81d5-4ec8-a6e2-dfa8b3f43aa3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 21:50:37');
INSERT INTO `sys_log` VALUES ('15393810-eefd-4085-b7c7-1c41f2cc2778', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:36');
INSERT INTO `sys_log` VALUES ('153a6ed3-98aa-4ff5-bda5-486f414187ed', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:45:10');
INSERT INTO `sys_log` VALUES ('15d1ad27-2d6e-4944-a437-942bd195f2a0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:36:26');
INSERT INTO `sys_log` VALUES ('15d2b8a8-789d-45b4-8eaf-0e7b201bb984', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:18:31');
INSERT INTO `sys_log` VALUES ('15da9154-5bb6-4ec6-a84e-d595a8a4f079', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/upload/do_upload', '{\"domain_name\":\"http:\\/\\/xuanyucms.lc\",\"upload_dir\":\"\\/uploads\",\"allowed_file_type\":\"*\",\"allowed_file_size\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 21:40:26');
INSERT INTO `sys_log` VALUES ('16673e50-007e-4899-8766-5a41d1d6a8ea', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:47:27');
INSERT INTO `sys_log` VALUES ('16c1fde8-381c-4da0-95fc-c14d92e3b8f5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/single/get_data', '{\"column_id\":\"4\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:36:12');
INSERT INTO `sys_log` VALUES ('16ed6b1a-571d-4008-bce4-1aeedcc2b0d5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/submit', '{\"name\":\"\\u4e09\\u661f\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-26 21:10:50');
INSERT INTO `sys_log` VALUES ('16f91da7-f4ca-4907-96e4-c30869793c7a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/submit', '{\"parent_id\":\"1\",\"name\":\"\\u624b\\u673a\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-23 22:29:31');
INSERT INTO `sys_log` VALUES ('16fa5d49-4e38-4d92-a19c-c0e1f18152fd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/submit', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\",\"dict_dir_key\":\"unit\",\"name\":\"\\u53ea\",\"key\":\"zhi\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-15 21:20:54');
INSERT INTO `sys_log` VALUES ('170d0ecb-744e-4684-9aa4-d0ead4841493', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:47:39');
INSERT INTO `sys_log` VALUES ('170ddd6f-a539-456c-8d59-40ad69c6cb19', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:50:15');
INSERT INTO `sys_log` VALUES ('172114bd-ef2c-4b84-acc9-fe6edac33636', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:58:35');
INSERT INTO `sys_log` VALUES ('17d0f8a7-660d-4bee-9d96-06f4c149c9c4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 20:26:49');
INSERT INTO `sys_log` VALUES ('180047d5-8af6-49b3-8ee3-1e4c229e5148', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:12:47');
INSERT INTO `sys_log` VALUES ('180e2eb6-a071-49d5-a82b-51254a3c5f0b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_key\":\"measureUnit\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:33:08');
INSERT INTO `sys_log` VALUES ('183bdd7f-8dd0-454a-9250-5a847803555b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"name\":\"GSM\\u624b\\u673a\",\"parent_id\":\"1\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 18:40:14');
INSERT INTO `sys_log` VALUES ('18837794-3089-4b72-8c02-aaa2d2e732cf', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:06:52');
INSERT INTO `sys_log` VALUES ('18a410bb-4a2d-432f-88e5-a336e09e6ec3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"id\":\"6210ec85-9e23-4e4a-9c12-3dcbac08cab8\",\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f71\",\"account\":\"1\",\"origin_id\":\"1\",\"app_id\":\"1\",\"app_secred\":\"1\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:59:30');
INSERT INTO `sys_log` VALUES ('18e52248-1a27-4cd6-8357-0e8f2a6fd080', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2019-12-20 20:21:50');
INSERT INTO `sys_log` VALUES ('190a4e07-5f20-4810-9206-564ab41baa4d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:52:59');
INSERT INTO `sys_log` VALUES ('1944ac0d-d916-4b24-a6a3-a1af630599ed', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '{\"current_page\":\"1\",\"page_size\":\"40\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:20');
INSERT INTO `sys_log` VALUES ('1966ff5f-94b8-42be-84fb-5d866058d60d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_key\":\"measureUnit\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:36:42');
INSERT INTO `sys_log` VALUES ('196fdc68-abb8-45af-8644-1848157756d2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:44:56');
INSERT INTO `sys_log` VALUES ('19cdb5a6-1524-4c18-8473-e09c730eaea9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:43:16');
INSERT INTO `sys_log` VALUES ('19eb49af-016a-4daf-a123-c401c5eb7172', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:46:25');
INSERT INTO `sys_log` VALUES ('1a017c45-e15e-4749-bf2f-3ea8b0efb726', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:39:56');
INSERT INTO `sys_log` VALUES ('1a52b1e3-c9a7-467a-87eb-d3f062770d97', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:09:07');
INSERT INTO `sys_log` VALUES ('1a5c61da-81c3-4ebb-8b95-62b9559fb42e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:37:38');
INSERT INTO `sys_log` VALUES ('1a76e248-6849-4d7b-aa54-8af20934a939', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 23:10:19');
INSERT INTO `sys_log` VALUES ('1b076e45-5c2d-4b66-b5bb-020e58cfe957', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 22:26:36');
INSERT INTO `sys_log` VALUES ('1b4f8b78-4c67-42f9-9eb4-3d9abccf8632', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"id\":\"1\",\"name\":\"\\u624b\\u673a\\u7c7b\\u578b\",\"parent_id\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 15:00:23');
INSERT INTO `sys_log` VALUES ('1b5a15a3-f944-4342-bf6e-22cd10e8b00a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:49:00');
INSERT INTO `sys_log` VALUES ('1b63d901-86d3-45a4-8e7b-714cd6076d53', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:46');
INSERT INTO `sys_log` VALUES ('1ba7d8c2-7b54-45f1-a657-4f74711ffbd3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '{\"current_page\":\"1\",\"page_size\":\"20\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:16');
INSERT INTO `sys_log` VALUES ('1bb5bfeb-598b-45f2-955a-a105f21759ad', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"0,0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:06:24');
INSERT INTO `sys_log` VALUES ('1bc3480e-eed3-4dc9-ac5c-b8eeba6b2bfd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:56:58');
INSERT INTO `sys_log` VALUES ('1bcc4a48-00be-454a-94d4-c8e0576047e2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:04:11');
INSERT INTO `sys_log` VALUES ('1c0c0221-95ff-4c86-9b28-fb5477cafcac', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:46:20');
INSERT INTO `sys_log` VALUES ('1c4d4cfc-b013-429e-bcf3-0a49baa0b78a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:17:47');
INSERT INTO `sys_log` VALUES ('1cb79d0e-80c7-4253-9568-c430c39f7281', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:07:05');
INSERT INTO `sys_log` VALUES ('1cff9b32-ceb1-4924-a778-985e3e0dabb7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:27:15');
INSERT INTO `sys_log` VALUES ('1d5a240f-0c65-4b7d-9844-b990fc1f8b95', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:58:35');
INSERT INTO `sys_log` VALUES ('1d6cfd44-7783-419c-b123-ea0e9f2fd8a5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/news/get_list', '{\"search\":\"{}\",\"column_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:36:10');
INSERT INTO `sys_log` VALUES ('1e178f6d-ed2d-4ab7-9d4c-1c1de2b34227', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:44:34');
INSERT INTO `sys_log` VALUES ('1e2f5ba9-e2c8-4a80-abcc-9cb8977b64ac', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:44:08');
INSERT INTO `sys_log` VALUES ('1e44a77f-7a2f-4d7d-bd36-be7151aafa3b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:36:01');
INSERT INTO `sys_log` VALUES ('1ea9d2d8-62ff-44ba-a99f-91483c7d45b0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:17:58');
INSERT INTO `sys_log` VALUES ('1f262f3a-e0a6-4561-9a39-6788afae7f1c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 14:42:27');
INSERT INTO `sys_log` VALUES ('1f623d3d-22ee-44f1-8cff-2a3ceecd7f22', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-22 21:36:28');
INSERT INTO `sys_log` VALUES ('1f6368f0-eae3-496b-9cfa-26aa27d62192', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:48:22');
INSERT INTO `sys_log` VALUES ('1f6ad7d5-922a-4fc7-9b4e-43a95f398861', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:57:42');
INSERT INTO `sys_log` VALUES ('1fcb9b0f-cb36-4eb4-98a9-5e2c1eb517b3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:08');
INSERT INTO `sys_log` VALUES ('1fde239e-7073-4962-889d-06999b13193a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:27:13');
INSERT INTO `sys_log` VALUES ('1fef8c4f-4d67-4c70-ac9c-d3b0c12118e8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:58:09');
INSERT INTO `sys_log` VALUES ('204cdd23-8bc2-4890-a417-17df9a075f04', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/submit', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\",\"dict_dir_key\":\"unit\",\"name\":\"\\u5957\",\"key\":\"tao\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-15 21:22:29');
INSERT INTO `sys_log` VALUES ('209115a1-fde0-40f8-a425-7baa5d3db0da', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:43:38');
INSERT INTO `sys_log` VALUES ('20928e2f-24b2-4298-9509-19598722e0d7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/delete', '{\"id\":\"97f26809-79c9-437a-a945-2528faac2372\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:59:33');
INSERT INTO `sys_log` VALUES ('20d9d819-0f95-4364-bd02-b7feae2ca567', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:42:58');
INSERT INTO `sys_log` VALUES ('2125618b-edcf-4463-b4d0-aba48303810a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:36:30');
INSERT INTO `sys_log` VALUES ('2149876d-050c-4011-98ba-6bd237f50320', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 21:36:36');
INSERT INTO `sys_log` VALUES ('21498b71-a323-4ac2-9a60-99300ceebe2c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:48:35');
INSERT INTO `sys_log` VALUES ('216160f1-e11a-440c-b3d8-fddc831e85a0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:49:17');
INSERT INTO `sys_log` VALUES ('21b8bc49-3a58-4a25-8650-3c4de16d39d9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:28:25');
INSERT INTO `sys_log` VALUES ('21c4c863-80db-4201-a7e9-39dac8a422da', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"id\":\"7fae3712-177d-4f3e-8fa2-d769e0d8809a\",\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f72\",\"account\":\"2\",\"origin_id\":\"2\",\"app_id\":\"2\",\"app_secred\":\"2\",\"status\":\"1\",\"sort\":\"100\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:30:06');
INSERT INTO `sys_log` VALUES ('230c0bb3-cb9f-4340-ae78-8d4147a5661a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:36:27');
INSERT INTO `sys_log` VALUES ('233ea013-06f9-49ab-8067-025dd6240a97', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:57:25');
INSERT INTO `sys_log` VALUES ('23a69e00-ad01-4353-9af1-56b4cc55fce4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:42:36');
INSERT INTO `sys_log` VALUES ('23e8a5fc-4e5c-4d01-87b1-b40aab797c05', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"1586dd68-4c1f-4194-8c03-22d04c85e07c\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 11:40:23');
INSERT INTO `sys_log` VALUES ('2404993d-3c64-4f63-b343-c910a5aa0d03', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:36:42');
INSERT INTO `sys_log` VALUES ('243163c8-8c67-43e1-b27d-ccaa78d5c4a9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:57:34');
INSERT INTO `sys_log` VALUES ('24499f37-fad0-4596-aa1f-0c7ca55a8435', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 21:36:36');
INSERT INTO `sys_log` VALUES ('245710ee-150c-42e7-97e8-cab1ba12dc83', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:54:51');
INSERT INTO `sys_log` VALUES ('24600c2a-89d2-4c61-9f30-d80675e7d355', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:11:39');
INSERT INTO `sys_log` VALUES ('24a8ef78-a327-4388-a8f1-fcf6c6f91147', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:16:51');
INSERT INTO `sys_log` VALUES ('24c1eb95-8e4d-44af-8e29-e054bd8a7c9b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:17:42');
INSERT INTO `sys_log` VALUES ('24ce91f7-b9d0-4584-b6ea-868f21d22754', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:54:53');
INSERT INTO `sys_log` VALUES ('2560fac4-d618-42dc-baf4-1616a093ca78', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:44:08');
INSERT INTO `sys_log` VALUES ('256d53f1-1dd7-421f-8de7-f23e0e22089c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:48:02');
INSERT INTO `sys_log` VALUES ('257def56-f95e-4239-ab36-bd2a81b22583', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:29:21');
INSERT INTO `sys_log` VALUES ('25c078f8-7bd1-4d97-8f69-3b70c5dcd5f7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '{\"current_page\":\"1\",\"page_size\":\"40\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:32');
INSERT INTO `sys_log` VALUES ('25c2aadd-a8d5-4674-b320-33619761bcdf', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/submit', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\",\"dict_dir_key\":\"unit\",\"name\":\"\\u4e2a\",\"key\":\"ge\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-15 21:20:43');
INSERT INTO `sys_log` VALUES ('25d9958f-0599-45d9-a818-e988de19ab86', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:49:07');
INSERT INTO `sys_log` VALUES ('25f52f0a-a12b-427f-912f-384b945bb436', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:53:18');
INSERT INTO `sys_log` VALUES ('26308e20-73b9-4369-bfd0-b2c7974f7aeb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 14:42:25');
INSERT INTO `sys_log` VALUES ('26c65374-64ff-4bb8-a78b-970014ccabe4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:39:56');
INSERT INTO `sys_log` VALUES ('26fcfb31-f92e-4114-b29f-22c938b3184c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:58:20');
INSERT INTO `sys_log` VALUES ('27324a89-7770-4487-9e3c-0445739118c1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:43:31');
INSERT INTO `sys_log` VALUES ('273606aa-0b42-4cb8-8323-bddd99226bb1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:58:01');
INSERT INTO `sys_log` VALUES ('277cd7c1-13f2-4eff-bf23-083b76736267', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:24:53');
INSERT INTO `sys_log` VALUES ('284bd1da-66b7-4a93-b9bd-ec0d14d7d2d4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 21:49:17');
INSERT INTO `sys_log` VALUES ('2852276e-3fb3-4cc5-865e-504c7624eaa1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:43:27');
INSERT INTO `sys_log` VALUES ('286fdb4b-f930-4e9e-916a-c3a51dbb8fb6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:46');
INSERT INTO `sys_log` VALUES ('28f9afe4-27af-4438-bc08-2d40f6ae6fb8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:54:54');
INSERT INTO `sys_log` VALUES ('291ed1ff-13d2-43db-9cc0-c8c1b846c829', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/submit', '{\"name\":\"\\u70ed\\u95e8\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-26 21:47:55');
INSERT INTO `sys_log` VALUES ('295e8437-de09-4fcb-80b2-0862128317b1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:57:29');
INSERT INTO `sys_log` VALUES ('297aec8f-5131-4e1e-a313-7ad1d8ff4998', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2020-01-14 22:05:59');
INSERT INTO `sys_log` VALUES ('297db3c3-315f-474e-a30b-b4c8b6accbc9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:27:35');
INSERT INTO `sys_log` VALUES ('29d7178f-43b4-43b5-a1c5-77ea95f94ca6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:43:54');
INSERT INTO `sys_log` VALUES ('29dfa947-e818-4e05-a377-054a4dfa0850', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:52');
INSERT INTO `sys_log` VALUES ('2a22b8a6-e7f4-4b06-9620-9c4aadaf54b0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:58:00');
INSERT INTO `sys_log` VALUES ('2a30c05c-bfdf-4802-9648-1830f07f928b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:42:50');
INSERT INTO `sys_log` VALUES ('2ac11f68-a60f-42d6-8c00-f8c3ab8c07dc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:37:03');
INSERT INTO `sys_log` VALUES ('2b11bd6b-dd42-4ac4-ac90-a4d51b9b2747', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:22');
INSERT INTO `sys_log` VALUES ('2b2a5793-452f-4e3f-b2b8-1dc3d73c164c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:50:04');
INSERT INTO `sys_log` VALUES ('2b36c1e7-00a5-4eb9-9b95-056725032ef1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:06:23');
INSERT INTO `sys_log` VALUES ('2b3d5e01-8fe0-4647-9b0f-ba33f401d07c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:41:00');
INSERT INTO `sys_log` VALUES ('2b48b7b6-16fe-4847-a878-b838542fabfe', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:23:19');
INSERT INTO `sys_log` VALUES ('2baa3905-a48f-4391-aa14-9109dd6a148a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:37:57');
INSERT INTO `sys_log` VALUES ('2bffbb8a-ae1e-4c5d-9578-8d7f4eb83c43', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:53:19');
INSERT INTO `sys_log` VALUES ('2c24ec7e-025a-4c21-a984-75840a8d832d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 22:50:31');
INSERT INTO `sys_log` VALUES ('2ccea682-8dbd-4d9f-b64e-7ab139434599', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:25:36');
INSERT INTO `sys_log` VALUES ('2ce0c8e5-75b2-483a-b6ac-7449ce798756', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"route_path\":\"\\/mall\\/goods\",\"route_name\":\"goods\",\"route_component\":\"view\\/mall\\/goods\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,0b6d7a2a-91e6-4ed2-ab03-3906f57b46d0,972659d8-4c43-4f93-9229-857a63c20714\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-20 20:32:27');
INSERT INTO `sys_log` VALUES ('2d6ad0af-1c1f-4045-8059-e6eb60b7d301', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:28:51');
INSERT INTO `sys_log` VALUES ('2d8553b8-01b2-470e-b675-e0771e383771', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/submit', '{\"parent_id\":\"0\",\"name\":\"111\",\"key\":\"1\",\"is_update_dir_key\":\"0\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-15 21:06:31');
INSERT INTO `sys_log` VALUES ('2d9786bb-483c-4932-8917-caeffc13ff22', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:47:08');
INSERT INTO `sys_log` VALUES ('2de548f4-a4d3-4e84-a348-bf76c4049aca', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"3cfc06b5-1abe-4bec-bc13-9be7c553d77a\",\"parent_id\":\"02f6c566-7878-4353-ad36-179bd04e1b5a\",\"name\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/wechat\\/menu\",\"route_name\":\"wxmenu\",\"route_component\":\"views\\/wechat\\/menu\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 19:31:36');
INSERT INTO `sys_log` VALUES ('2e17bc87-cbb5-4f4a-aaa6-8f0c8eff3365', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:32:36');
INSERT INTO `sys_log` VALUES ('2e1d7771-e5b5-4e7f-864f-7dcedafd8009', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/submit', '{\"id\":\"399ef431-3f7f-438a-99e2-c52a58010347\",\"parent_id\":\"0\",\"name\":\"\\u624b\\u673a\\u901a\\u8baf\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-23 22:53:54');
INSERT INTO `sys_log` VALUES ('2e79e833-3a45-4c42-b172-a495f70df19a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 14:42:25');
INSERT INTO `sys_log` VALUES ('2ec37da4-36a8-4c48-a09c-6a9feab9b944', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:19:45');
INSERT INTO `sys_log` VALUES ('2ec717e1-100d-4ae6-9f56-9c39750ccfef', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:52:53');
INSERT INTO `sys_log` VALUES ('2efa7428-3f44-4432-b197-4c0f46d27046', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:20:39');
INSERT INTO `sys_log` VALUES ('2f36e28c-985e-4d59-b21c-60562d5a540a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:37:29');
INSERT INTO `sys_log` VALUES ('2f67571a-ea55-41cf-904e-2778c91d74d5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:42:38');
INSERT INTO `sys_log` VALUES ('2f7b3973-e8c4-4d8a-a96b-dcb61d887873', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:57:58');
INSERT INTO `sys_log` VALUES ('2fac89a9-2814-4cd0-b049-4a77e024692d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/submit', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\",\"dict_dir_key\":\"unit\",\"name\":\"\\u76d2\",\"key\":\"he\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-15 21:21:23');
INSERT INTO `sys_log` VALUES ('2fbb23f7-c5a2-4e78-98cf-90d3c05f968b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 11:39:14');
INSERT INTO `sys_log` VALUES ('30471b02-f9f8-49be-93f9-f5b5bae4137f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:42:46');
INSERT INTO `sys_log` VALUES ('30879348-e046-4064-a9b7-cb992531a394', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"id\":\"6210ec85-9e23-4e4a-9c12-3dcbac08cab8\",\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f7\",\"account\":\"1\",\"origin_id\":\"1\",\"app_id\":\"1\",\"app_secred\":\"1\",\"status\":\"1\",\"sort\":\"100\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:26:50');
INSERT INTO `sys_log` VALUES ('30c73aa8-a983-4d97-9982-81d72b01bf4f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:53:15');
INSERT INTO `sys_log` VALUES ('30fbc603-9ff4-48c5-ac0d-2678b16474df', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 23:04:40');
INSERT INTO `sys_log` VALUES ('31074aff-063c-4bec-84c8-bc77ca370ff0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:43:28');
INSERT INTO `sys_log` VALUES ('3176ec7f-5d63-4925-a29e-c4ffaae8baa1', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2019-12-18 20:11:02');
INSERT INTO `sys_log` VALUES ('3180a743-1c2c-4e9e-9f2b-9868825c20ca', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 20:29:35');
INSERT INTO `sys_log` VALUES ('322a1985-abf5-48cb-aab4-d6dccf2e34db', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:43:16');
INSERT INTO `sys_log` VALUES ('323b25c8-6322-46c9-8ccc-9219b42e9145', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:35:04');
INSERT INTO `sys_log` VALUES ('3255d60d-8754-43c0-b634-8a4055ae5cb8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:26:16');
INSERT INTO `sys_log` VALUES ('32ac2d83-b93e-4b1f-b632-b9f6df34e12d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:25:37');
INSERT INTO `sys_log` VALUES ('32d6f0b3-8fb7-4f13-a15a-5e6e0b662b00', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 21:48:29');
INSERT INTO `sys_log` VALUES ('32ee0f8d-b68b-4c33-a140-28798664cb0f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:11:41');
INSERT INTO `sys_log` VALUES ('33067df6-e948-4ce4-9462-865838342808', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 14:42:25');
INSERT INTO `sys_log` VALUES ('33345bdb-dc63-45c8-b2f5-9a4cb4f33cbe', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:07:13');
INSERT INTO `sys_log` VALUES ('3341a9d2-c6a0-442c-80df-2a14316e150c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:52:23');
INSERT INTO `sys_log` VALUES ('33bf4b75-b0d3-4ce0-9d40-4fd414104a67', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:26:21');
INSERT INTO `sys_log` VALUES ('33e21179-3c21-48df-af71-7598befd0bd9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:43:06');
INSERT INTO `sys_log` VALUES ('33f5a271-c079-4a3a-9055-8db779c4199c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:29:23');
INSERT INTO `sys_log` VALUES ('3468d3f0-78f3-48cd-8791-0220845c7d85', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:36:53');
INSERT INTO `sys_log` VALUES ('34dc6e9a-6d04-48b5-bf11-f8fd6f45c6bd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:24:32');
INSERT INTO `sys_log` VALUES ('3619ab91-9da2-4570-a6f4-ae8568f22b2a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:23:52');
INSERT INTO `sys_log` VALUES ('36412575-a44d-4002-8b55-9f4e8e88baf0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:26:00');
INSERT INTO `sys_log` VALUES ('364f619b-63b2-4aa8-8259-12aa8f7a94c8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:42:48');
INSERT INTO `sys_log` VALUES ('36ce5d89-97d3-4401-b7f2-76178d3df6b6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:58:19');
INSERT INTO `sys_log` VALUES ('36d33c05-2c24-435f-820e-4ec81d9e6dd3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:38:45');
INSERT INTO `sys_log` VALUES ('36ee4867-5c2c-46fc-8d37-3cdb1e8062ca', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/submit', '{\"dict_dir_id\":\"b4a158c5-2f2f-41d6-a784-c882492f436f\",\"dict_dir_key\":\"unit\",\"name\":\"\\u4e2a\",\"key\":\"ge\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-14 22:17:22');
INSERT INTO `sys_log` VALUES ('37b9c5fb-dbb0-4dd5-9583-b154901edf99', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"parent_id\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 14:59:32');
INSERT INTO `sys_log` VALUES ('37d305b1-5dbe-43bb-862c-b888fb2995ac', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2020-01-14 21:59:55');
INSERT INTO `sys_log` VALUES ('383e7fc6-2e37-452c-83f6-05c51fda1d17', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:57:56');
INSERT INTO `sys_log` VALUES ('389fd28e-8fdb-4e7b-867d-6b185f8d29fc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:51:30');
INSERT INTO `sys_log` VALUES ('38d56ffb-89a8-4273-bbcb-3116c995b980', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"b4a158c5-2f2f-41d6-a784-c882492f436f\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:17:51');
INSERT INTO `sys_log` VALUES ('39315c34-803e-41a1-b55e-377b2c3de7b0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:44:32');
INSERT INTO `sys_log` VALUES ('397d5d2b-8af4-4293-a0ae-5b10ff41a57f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:52:13');
INSERT INTO `sys_log` VALUES ('39a4be69-2271-4f8c-a22c-b8dd3dc867a2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:29:21');
INSERT INTO `sys_log` VALUES ('39efe806-308d-4a15-bd01-d258b0131e26', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/submit', '{\"parent_id\":\"1\",\"name\":\"\\u624b\\u673a\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-26 21:25:33');
INSERT INTO `sys_log` VALUES ('3a5aeaac-d88a-45c3-b40e-3abedb598ba0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:25:33');
INSERT INTO `sys_log` VALUES ('3a8530a8-5ec0-458e-a0a0-ad842419ef61', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 10:46:07');
INSERT INTO `sys_log` VALUES ('3a8f7944-32ec-46c6-a2da-6ba1b538c6c8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:54:15');
INSERT INTO `sys_log` VALUES ('3ac2ad1f-498f-44c1-bc6f-2400dafa42a8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:50:01');
INSERT INTO `sys_log` VALUES ('3acdaade-2b24-4ebf-87ea-bce1313f41f7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:32:46');
INSERT INTO `sys_log` VALUES ('3b1cd518-f7c9-46c3-b295-60f3eb56e72d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:26:53');
INSERT INTO `sys_log` VALUES ('3b73dbaf-f664-4a72-a613-98ae652e8e9f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:42:35');
INSERT INTO `sys_log` VALUES ('3bb1e858-f2c3-4434-825b-aaf868d7688e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:11:46');
INSERT INTO `sys_log` VALUES ('3bb35432-a92c-4725-a6e3-297b465347cd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:03:32');
INSERT INTO `sys_log` VALUES ('3be279f3-6f0b-45c5-91e4-161358f9f630', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/single/get_data', '{\"column_id\":\"4\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:26:19');
INSERT INTO `sys_log` VALUES ('3c4e34c0-5b78-462f-80bb-3f13ccece7db', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 22:37:46');
INSERT INTO `sys_log` VALUES ('3c85bba3-af8c-4b98-a157-d6f50c67feaa', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '{\"current_page\":\"1\",\"page_size\":\"40\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:29');
INSERT INTO `sys_log` VALUES ('3c94fbb3-c518-41d7-8e1e-82e4cfbddf5d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 20:23:53');
INSERT INTO `sys_log` VALUES ('3c987f86-1acd-4fd4-b5ae-388f81194678', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:57:53');
INSERT INTO `sys_log` VALUES ('3cbc4ade-dd53-4a06-a5ba-089b7c1b9872', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:46:33');
INSERT INTO `sys_log` VALUES ('3d02639a-9a34-4c1a-8be4-1f62530a7b33', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:57:12');
INSERT INTO `sys_log` VALUES ('3d1005bd-96f4-41ea-8815-85d12f2ca9b0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:28:43');
INSERT INTO `sys_log` VALUES ('3e37ad44-2bee-4307-8366-c1982d0e2b1a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:41:48');
INSERT INTO `sys_log` VALUES ('3e5184e7-a3e4-4398-84ed-eb2b927416c6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:40');
INSERT INTO `sys_log` VALUES ('3ee8dd8b-3ba1-4a1c-9afe-2d72a4963c10', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"29bb8234-feea-453b-ad2f-1405011fac97\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5c5e\\u6027\",\"icon\":\"\",\"route_path\":\"\\/mall\\/attribute\",\"route_name\":\"mallAttribute\",\"route_component\":\"views\\/mall\\/attribute\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"0\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-28 23:13:36');
INSERT INTO `sys_log` VALUES ('3f1b6a53-dad3-4a59-ab78-ca126dec4511', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:05:34');
INSERT INTO `sys_log` VALUES ('3f2d3621-b97d-49b5-af82-b939696e16b0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:45:13');
INSERT INTO `sys_log` VALUES ('3f31ce33-b4a9-460c-a9f0-484fa1bd78fa', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:26:09');
INSERT INTO `sys_log` VALUES ('3f3c2e01-28d9-4e53-bfba-fc8128935200', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"parent_id\":\"0\",\"name\":\"\\u5fae\\u4fe1\\u516c\\u4f17\\u53f7\",\"icon\":\"wechat\",\"route_path\":\"\\/wechat\",\"route_name\":\"wechat\",\"route_component\":\"layouts\\/basicLayout\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 19:23:21');
INSERT INTO `sys_log` VALUES ('3f7a5e4c-5bee-4374-8bc5-4bffc931017f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:47:08');
INSERT INTO `sys_log` VALUES ('3fa0ae17-c92c-42c8-ab06-7237e5aa8789', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:32:38');
INSERT INTO `sys_log` VALUES ('3fbef151-ebe6-4b2e-a3ef-f6811e2a5a1b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:44:34');
INSERT INTO `sys_log` VALUES ('3fd58402-196d-4726-b943-300cab0ee66a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:17:44');
INSERT INTO `sys_log` VALUES ('3fe81630-3a3a-4575-8ec1-0af71f4eb2b7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 23:10:15');
INSERT INTO `sys_log` VALUES ('3ff8f671-c8e0-4ede-a20c-f91077ea8454', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:44:36');
INSERT INTO `sys_log` VALUES ('4025bcad-8396-494d-abb7-b5943097615b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:33:50');
INSERT INTO `sys_log` VALUES ('4067514c-a571-4c46-b564-9da5d0afb638', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:56:18');
INSERT INTO `sys_log` VALUES ('41875c79-1ea9-4b02-bf6c-0a9f7216f1e2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:41:51');
INSERT INTO `sys_log` VALUES ('41bce720-4558-4351-8919-c57878e1673b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:28:11');
INSERT INTO `sys_log` VALUES ('41c4fe4a-e48a-4121-92fe-c6e3e66db57c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:00:17');
INSERT INTO `sys_log` VALUES ('41d3ddba-ec04-4de4-bd20-4a3d8ebee97b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:26:11');
INSERT INTO `sys_log` VALUES ('41e6c7d1-51c0-4bb1-929c-03efd03b8473', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:41:23');
INSERT INTO `sys_log` VALUES ('420802d0-b4ff-49a3-8736-f9c08d243785', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 22:37:44');
INSERT INTO `sys_log` VALUES ('427e6d7b-d8d0-400b-bff2-8384d10599a9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:31:48');
INSERT INTO `sys_log` VALUES ('42af9445-586d-47d1-8734-fcd6e8130d39', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:28:28');
INSERT INTO `sys_log` VALUES ('42f4a3b3-ce45-42c2-8d2b-cc179668b831', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:04:34');
INSERT INTO `sys_log` VALUES ('4378157d-cb55-48d2-a0d1-a5ab44ac98da', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:14:47');
INSERT INTO `sys_log` VALUES ('43aa5aa3-3b3c-4789-8e5f-bb364903c586', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:43:40');
INSERT INTO `sys_log` VALUES ('43af0cf7-e256-49b7-8b3d-062a557c8040', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:17:38');
INSERT INTO `sys_log` VALUES ('43cef3e5-6c1c-4197-9b69-08a3bf215101', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:46:28');
INSERT INTO `sys_log` VALUES ('43d51f81-262a-489d-b1ca-010cdd513a04', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:57:06');
INSERT INTO `sys_log` VALUES ('4464d646-6eaa-436f-ac64-8367be82856c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:36:25');
INSERT INTO `sys_log` VALUES ('446cb94c-336c-420f-a2fa-62eb0a4eacb9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:31:49');
INSERT INTO `sys_log` VALUES ('44c4e79b-c9ea-4985-aa05-5c4afc14ceb4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:09:22');
INSERT INTO `sys_log` VALUES ('44f7dacf-c821-4995-85ce-3cf8c4408cf4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/news/get_list', '{\"search\":\"{}\",\"column_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:14:46');
INSERT INTO `sys_log` VALUES ('4550f2f7-f641-426f-8219-57c0bd695705', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:13:37');
INSERT INTO `sys_log` VALUES ('45bedce8-fc22-4ed2-8e97-72f6ce64b82a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:32:37');
INSERT INTO `sys_log` VALUES ('4669b230-18c1-4336-8a5f-22ffcf44a63a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:13:06');
INSERT INTO `sys_log` VALUES ('47806b70-ff04-44c6-b366-13710322a096', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:29:25');
INSERT INTO `sys_log` VALUES ('47987437-5d56-447d-b815-08d01bbd4dca', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:52:53');
INSERT INTO `sys_log` VALUES ('480b2f14-7a41-4c6a-8a47-ae7cd50000c0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/delete', '{\"id\":\"41f31548-6ded-4764-b81d-36418ebcb691\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:30:20');
INSERT INTO `sys_log` VALUES ('481807e5-461c-4677-afed-625e50135ce6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '{\"current_page\":\"1\",\"page_size\":\"40\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:24');
INSERT INTO `sys_log` VALUES ('48788531-c428-4fcb-9ca2-11a549d8d216', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:33:42');
INSERT INTO `sys_log` VALUES ('487c4dbf-5a15-4923-b317-b6fe067d20e3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:19:02');
INSERT INTO `sys_log` VALUES ('48fba2b7-c971-4314-8f4e-aa4259082da8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:16:22');
INSERT INTO `sys_log` VALUES ('494040de-479b-4c38-b581-c6d23166bdaa', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"adda7c29-55e3-4008-af3b-92bb60a08f88\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/mall\\/goods\",\"route_name\":\"mallGoods\",\"route_component\":\"views\\/mall\\/goods\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,0b6d7a2a-91e6-4ed2-ab03-3906f57b46d0,972659d8-4c43-4f93-9229-857a63c20714\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-26 20:50:21');
INSERT INTO `sys_log` VALUES ('497a703f-604f-449d-ade0-89e599615c7e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:46:10');
INSERT INTO `sys_log` VALUES ('49a420cc-36b8-48ab-a6b2-ab0e18dfd0ce', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:08:37');
INSERT INTO `sys_log` VALUES ('49a71880-5998-4714-aed0-cc07ad28222b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:17:47');
INSERT INTO `sys_log` VALUES ('49d17321-e844-4851-ab78-95bcf16e1e32', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 21:50:38');
INSERT INTO `sys_log` VALUES ('49e2b61b-5534-448f-b4a3-4e5b280376ee', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/submit', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\",\"dict_dir_key\":\"unit\",\"name\":\"\\u7ec4\",\"key\":\"zu\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-15 21:22:21');
INSERT INTO `sys_log` VALUES ('49f14819-e493-454e-8fb2-1fe9272152f2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:45:32');
INSERT INTO `sys_log` VALUES ('4a4ee44b-f4fa-49af-b6b8-62c8d417d5e9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u6807\\u7b7e\",\"icon\":\"\",\"route_path\":\"\\/mall\\/tag\",\"route_name\":\"mallTag\",\"route_component\":\"views\\/mall\\/tag\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-26 21:42:05');
INSERT INTO `sys_log` VALUES ('4a66ee36-1a2b-4858-8e8c-807eacc60e1c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:42:39');
INSERT INTO `sys_log` VALUES ('4a7480f9-c817-4586-b3b6-48c9f52cfb12', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:54:53');
INSERT INTO `sys_log` VALUES ('4ac22d26-a539-482f-be1b-78d199346590', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:12:13');
INSERT INTO `sys_log` VALUES ('4b3fb22c-2d90-4ef7-8667-0f357a90746d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/submit', '{\"id\":\"1\",\"parent_id\":\"0\",\"name\":\"\\u624b\\u673a\\u901a\\u8baf\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-23 22:29:24');
INSERT INTO `sys_log` VALUES ('4b5a7f5c-1b2a-44f5-88f0-1c98b6e7948a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:36:52');
INSERT INTO `sys_log` VALUES ('4b9b05ac-4f6e-4109-b588-602a983dd436', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:21:50');
INSERT INTO `sys_log` VALUES ('4bb075bf-2f11-40aa-b4d9-fc288cd7ec8a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:39:01');
INSERT INTO `sys_log` VALUES ('4c3670ec-ae03-4275-9c93-29a43997c207', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:25:26');
INSERT INTO `sys_log` VALUES ('4c800e51-4a08-4bb9-be5c-4dc4068b8997', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 20:29:34');
INSERT INTO `sys_log` VALUES ('4c97eb09-d03d-45ad-95b7-0d847c7b5fbc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:44:51');
INSERT INTO `sys_log` VALUES ('4cee2fb3-224d-4b2d-9260-ba288b6f946d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:42:18');
INSERT INTO `sys_log` VALUES ('4d2206e7-bb33-4adf-bb70-909a229dc5a1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:40:35');
INSERT INTO `sys_log` VALUES ('4e09a195-aacf-4e5a-8fbd-f5c75c3c5568', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2020-01-14 22:02:44');
INSERT INTO `sys_log` VALUES ('4e2b72b0-7a18-4772-9064-9549ed18f3f8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:53:58');
INSERT INTO `sys_log` VALUES ('4e448b8c-bb89-449e-88fc-46e84fcfed27', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"name\":\"\\u624b\\u673a\\u914d\\u4ef6\",\"parent_id\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 15:00:41');
INSERT INTO `sys_log` VALUES ('4e4a1622-0993-4f76-a5ac-dcfddab26ee0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"91128d91-2386-4d6b-8e5c-f023c63c57ec\",\"parent_id\":\"5e173c49-a81f-4a5e-869d-4cb76c2ca419\",\"name\":\"\\u90e8\\u95e8\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/system\\/dept\",\"route_name\":\"dept\",\"route_component\":\"views\\/system\\/dept\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,4ac84963-f166-4474-b617-777abf6956c8\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-23 20:07:04');
INSERT INTO `sys_log` VALUES ('4e51a382-ffaa-4775-8b5c-7213c0e5b2a0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:44:08');
INSERT INTO `sys_log` VALUES ('4ef770a5-4bbe-49ba-97d1-8622af7a9aa3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:44:45');
INSERT INTO `sys_log` VALUES ('4f4e6c3c-0987-475d-8b57-076af4ae1312', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:21:15');
INSERT INTO `sys_log` VALUES ('4f731015-4a28-4dc4-b3d3-1a4b776cca0a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:33:50');
INSERT INTO `sys_log` VALUES ('4f92496d-2516-446a-a038-4b5fee48140e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:52:23');
INSERT INTO `sys_log` VALUES ('4fe0b733-a476-4896-bbd6-dc3c0895665f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"0ca4dee2-9b45-441c-a767-c8b07197c9b0\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5206\\u7c7b\",\"icon\":\"\",\"route_path\":\"\\/mall\\/category\",\"route_name\":\"category\",\"route_component\":\"views\\/mall\\/category\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-20 21:43:27');
INSERT INTO `sys_log` VALUES ('4ff932b1-c83d-4bf6-864c-a9d7c4195f04', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 10:54:38');
INSERT INTO `sys_log` VALUES ('5006621c-ffc7-4f28-9a49-578be37065f7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 14:55:14');
INSERT INTO `sys_log` VALUES ('50a2a426-1c9a-4719-9c33-f29365dc86d7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:45:22');
INSERT INTO `sys_log` VALUES ('50a6da4c-9f9d-47c2-af7a-73eea9c6f9c0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:20:02');
INSERT INTO `sys_log` VALUES ('50c7bf96-78ee-4109-a42a-991135683fc6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:44:46');
INSERT INTO `sys_log` VALUES ('50ea320e-ad33-4532-8286-95eacbd6ba9e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 22:05:50');
INSERT INTO `sys_log` VALUES ('51ae92e1-d8c0-44d3-b14e-ce083b7bc28e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:54:33');
INSERT INTO `sys_log` VALUES ('51dd9498-35c3-49a8-aac1-6a9b620291c7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:33:43');
INSERT INTO `sys_log` VALUES ('520a4e3a-11ff-485a-8b2a-d2b24361df62', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:09:07');
INSERT INTO `sys_log` VALUES ('525f42fc-55ba-4650-b8df-bf85d2e3c009', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:49:03');
INSERT INTO `sys_log` VALUES ('526fb223-553c-4de0-a30e-c215640abca9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:41:01');
INSERT INTO `sys_log` VALUES ('5289de3c-d0f7-4b46-8f42-2c51bd994383', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:28:29');
INSERT INTO `sys_log` VALUES ('52a3b96d-4e07-491a-942e-b62a24f4c4cf', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:52:08');
INSERT INTO `sys_log` VALUES ('52d4dda3-e8fa-4a42-99f6-26b47e0586da', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:32:46');
INSERT INTO `sys_log` VALUES ('52d68c4e-d834-4e0c-a54a-7a586640b43a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"name\":\"CDMA\\u624b\\u673a\",\"parent_id\":\"1\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 18:40:07');
INSERT INTO `sys_log` VALUES ('52dc4e84-0df7-4ec1-98df-b66dba5ca5f8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:41:43');
INSERT INTO `sys_log` VALUES ('52ef4aad-a11d-46d8-8e4b-af7a7f8dde8b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:53:48');
INSERT INTO `sys_log` VALUES ('5304524c-e5ad-48db-85a2-3bdb686c499d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:28:11');
INSERT INTO `sys_log` VALUES ('542a9329-0f27-493c-81bb-c90032287c28', 1, '', 'login/sign_in', '[]', 'Chrome 78.0.3904.97', '::1', '1', '缺少参数', '2020-01-05 16:22:32');
INSERT INTO `sys_log` VALUES ('5442e9f1-19b3-4d87-beea-1a8d3f37fcfc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 23:06:38');
INSERT INTO `sys_log` VALUES ('546a60b0-d069-4939-bea8-f9808e171d4d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:58:38');
INSERT INTO `sys_log` VALUES ('54d492e0-66a0-4ab9-b3bf-e2f25e06f070', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"0,0,0444e5cd-3051-45b1-bf7b-b03362ee5f34\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:06:34');
INSERT INTO `sys_log` VALUES ('54e046d4-9c76-4e32-b234-f8e99b1bd160', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:36:03');
INSERT INTO `sys_log` VALUES ('54ff0999-db1d-44ee-b4b2-4740739c31cb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:59:22');
INSERT INTO `sys_log` VALUES ('55615c79-4ddd-42b0-858d-d52f4c4c3e55', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"29bb8234-feea-453b-ad2f-1405011fac97\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5c5e\\u6027\",\"icon\":\"\",\"route_path\":\"\\/mall\\/attribute\",\"route_name\":\"mallAttribute\",\"route_component\":\"views\\/mall\\/attribute\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"0\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-26 21:53:03');
INSERT INTO `sys_log` VALUES ('5576da5e-592d-40c1-8413-36017cc006e4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:18:27');
INSERT INTO `sys_log` VALUES ('5581e904-ef0d-4cc9-853b-b05a2e902a3d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-22 21:36:33');
INSERT INTO `sys_log` VALUES ('559cd390-094b-4955-a7c1-63a70f876a5a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:53:12');
INSERT INTO `sys_log` VALUES ('55cb3fa2-66c8-4b80-84b2-6683149a1ab7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 10:54:38');
INSERT INTO `sys_log` VALUES ('55ee3872-3e52-4246-a417-6c250024b1c1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"0ca4dee2-9b45-441c-a767-c8b07197c9b0\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5206\\u7c7b\",\"icon\":\"\",\"route_path\":\"\\/mall\\/category\",\"route_name\":\"mallCategory\",\"route_component\":\"views\\/mall\\/category\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-28 23:13:23');
INSERT INTO `sys_log` VALUES ('5625dd22-85dd-4b82-819c-b3455e328ca3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:12:33');
INSERT INTO `sys_log` VALUES ('562be700-f3b0-4bbb-98d7-1ff3a9d7ccbb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:11:02');
INSERT INTO `sys_log` VALUES ('56a8e295-8bb8-48de-a18b-bfd453a2b132', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:07');
INSERT INTO `sys_log` VALUES ('56d7ec54-8cb7-43e9-83fc-b8f8ca2c39b1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '{\"current_page\":\"1\",\"page_size\":\"40\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:26');
INSERT INTO `sys_log` VALUES ('56f2d3e0-2bd9-4abf-b4de-54b347d5396a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:58:08');
INSERT INTO `sys_log` VALUES ('5714f6ba-9179-4696-a3fc-0e0695e8ba2b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:44:07');
INSERT INTO `sys_log` VALUES ('5771ef9c-cdf6-4140-ae71-7bd9ea2e7b67', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:36:42');
INSERT INTO `sys_log` VALUES ('578a585c-66ab-4be8-89f6-0e6733bfe101', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:37:06');
INSERT INTO `sys_log` VALUES ('57c38868-2eab-4d65-9a8a-3e905905a1d7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:06:06');
INSERT INTO `sys_log` VALUES ('57d3c2e6-8d9c-4477-b2b9-300b84c65d56', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:13:41');
INSERT INTO `sys_log` VALUES ('583eedc3-0ea5-49f7-9479-b43b8427c164', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:36:35');
INSERT INTO `sys_log` VALUES ('58546ebc-f1e4-47df-99fe-12f488f1c612', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:53:17');
INSERT INTO `sys_log` VALUES ('5866812f-2227-41a8-9dd9-73ffa883ec7e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"0ca4dee2-9b45-441c-a767-c8b07197c9b0\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5206\\u7c7b\",\"icon\":\"\",\"route_path\":\"\\/mall\\/category\",\"route_name\":\"mallCategory\",\"route_component\":\"views\\/mall\\/category\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"98\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-26 20:50:12');
INSERT INTO `sys_log` VALUES ('58c4722a-4df2-42a3-8503-3a72a931a36e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:59:15');
INSERT INTO `sys_log` VALUES ('58cbe9d7-05e5-49c2-b6f0-065fd9b0b299', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 21:50:37');
INSERT INTO `sys_log` VALUES ('5953c665-d276-40b6-a252-314332294b3f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:11:02');
INSERT INTO `sys_log` VALUES ('59a0a74a-55f3-4b10-89c8-a0f0d1656e84', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:31:56');
INSERT INTO `sys_log` VALUES ('59f60bfa-c9cf-4a04-8141-8552057dd5ba', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"0a5583fd-a914-4e0c-8100-218e4b6483b9\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:15:48');
INSERT INTO `sys_log` VALUES ('5a6f0b31-8ec0-424f-9287-799ce21d0d3f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:12:48');
INSERT INTO `sys_log` VALUES ('5b0eb31c-21f6-47f2-9257-78143e5112e7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:48:24');
INSERT INTO `sys_log` VALUES ('5b11884b-b54b-4d71-a08e-cbcc3d967c98', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:26:53');
INSERT INTO `sys_log` VALUES ('5b938c58-808d-4559-bece-1328820af01d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:19:41');
INSERT INTO `sys_log` VALUES ('5bccbaf9-6a15-4602-b031-8927e8f23868', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/submit', '{\"parent_id\":\"0\",\"name\":\"\\u5546\\u57ce\",\"key\":\"mall\",\"is_update_dir_key\":\"0\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-14 22:14:30');
INSERT INTO `sys_log` VALUES ('5d1ea5a4-0daa-498d-ab73-bee059c41365', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:37:03');
INSERT INTO `sys_log` VALUES ('5d3ea2cc-906a-4bc6-9d0f-5001a55f186b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 21:49:08');
INSERT INTO `sys_log` VALUES ('5d4c3d42-fd3a-48cc-bf79-5997d235ed5c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:32:43');
INSERT INTO `sys_log` VALUES ('5d7eb4fb-68ce-4250-9bf8-334c7724ecaa', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:53:08');
INSERT INTO `sys_log` VALUES ('5d9719f8-5b2c-4ff5-b593-e0555de3765d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:29:16');
INSERT INTO `sys_log` VALUES ('5dc1564f-5fba-4726-ada9-931a7f612ef7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-22 21:36:30');
INSERT INTO `sys_log` VALUES ('5deb64c8-b255-4328-9065-0b457d44fa02', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:28:36');
INSERT INTO `sys_log` VALUES ('5dfd2e85-71da-43c5-b75b-007b76afd297', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:23:20');
INSERT INTO `sys_log` VALUES ('5eb92b14-0415-446f-a2f9-3fe6f45fb97a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:45:17');
INSERT INTO `sys_log` VALUES ('5eb9bc35-f2fa-4c39-af8d-619f781700f9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:33:29');
INSERT INTO `sys_log` VALUES ('5ee84871-fcd7-46e0-817f-85197cd9c726', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:57:39');
INSERT INTO `sys_log` VALUES ('5f4d56f9-15fc-410c-8d22-0626aa0a13b7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:43:09');
INSERT INTO `sys_log` VALUES ('5f50d13b-3c25-4a76-b0b7-6fcb5d4ab608', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:29:38');
INSERT INTO `sys_log` VALUES ('5f6d0326-9b08-4959-8a94-6546f5b7ea7b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:09:55');
INSERT INTO `sys_log` VALUES ('5faad2b3-c5d2-4ef3-a153-dfcb3833f71e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:02:51');
INSERT INTO `sys_log` VALUES ('5ff1364e-aab4-40ea-832b-4ef3afd49b62', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:26:29');
INSERT INTO `sys_log` VALUES ('60467e0d-2885-4be9-8224-a9a3e07d7f11', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:57:56');
INSERT INTO `sys_log` VALUES ('604e469a-1ab0-447e-8532-525b35090c53', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:31:36');
INSERT INTO `sys_log` VALUES ('60902920-b3c5-4b63-a8a0-edb97e2bbe29', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:39:16');
INSERT INTO `sys_log` VALUES ('6100c926-c83d-4ac9-8b65-52a4af740bbc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:33:08');
INSERT INTO `sys_log` VALUES ('61346da3-5e8a-4acc-aea7-18d9d3e39233', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f7\",\"account\":\"4\",\"origin_id\":\"4\",\"app_id\":\"4\",\"app_secred\":\"4\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-24 20:26:57');
INSERT INTO `sys_log` VALUES ('6146dfd3-a984-49d8-b011-7d947bc2cc8e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:44:45');
INSERT INTO `sys_log` VALUES ('614e43be-f80a-4e66-8ba9-a446c5c7bd88', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:28:30');
INSERT INTO `sys_log` VALUES ('615ffcbd-64a7-4521-9e12-b1f50c74781d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:55:10');
INSERT INTO `sys_log` VALUES ('61700c61-9a7e-4d3b-99cd-cad8aaf6d252', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:24:44');
INSERT INTO `sys_log` VALUES ('61a03297-ff46-4aee-9556-5cea0d81cc84', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:42:52');
INSERT INTO `sys_log` VALUES ('62182299-fee3-4055-9412-df456770bc6d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/single/get_data', '{\"column_id\":\"4\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:18:32');
INSERT INTO `sys_log` VALUES ('62745866-030b-4057-9473-cda02329d1fb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:37:23');
INSERT INTO `sys_log` VALUES ('629f6bb8-8be2-4024-b726-f1218790c620', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:38:44');
INSERT INTO `sys_log` VALUES ('62ce2998-ad24-44dd-a52a-87519fd98697', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:50:21');
INSERT INTO `sys_log` VALUES ('62defa98-884f-484e-b97a-138f0703002c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:33:08');
INSERT INTO `sys_log` VALUES ('632bd4cb-1314-4a30-a5dd-dd96943db2ae', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:43:39');
INSERT INTO `sys_log` VALUES ('63568ff2-942c-4e3e-bca8-d0602b13e26e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:43:58');
INSERT INTO `sys_log` VALUES ('63a558cb-378d-4074-b33b-883bdd23f051', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:13:35');
INSERT INTO `sys_log` VALUES ('63bb6137-d67a-4675-8a34-ddebebf878f4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:28:43');
INSERT INTO `sys_log` VALUES ('63cfa672-4ded-4a29-958f-071cf43a1021', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:47:56');
INSERT INTO `sys_log` VALUES ('63d07d15-700d-4ba3-af2f-5485072e76d3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 22:26:37');
INSERT INTO `sys_log` VALUES ('640e9044-3695-4a24-af4b-56e3f6180b89', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 11:41:11');
INSERT INTO `sys_log` VALUES ('64683893-c8ae-4af0-b289-ba26c1dda29b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:39:12');
INSERT INTO `sys_log` VALUES ('647024cf-3d80-4f4b-85de-1a9fa43672e2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:57:03');
INSERT INTO `sys_log` VALUES ('64debf87-399b-4ded-b364-fa1b4820ba7e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:38:07');
INSERT INTO `sys_log` VALUES ('650e10f8-65cd-4002-b89c-6184eb20b30a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:38:38');
INSERT INTO `sys_log` VALUES ('65263a4f-e6b5-4098-a5f9-38347fadc310', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:42:38');
INSERT INTO `sys_log` VALUES ('6551f193-b61a-4c34-870b-f8bae3d58b64', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:25:09');
INSERT INTO `sys_log` VALUES ('6557134b-7723-4789-9374-7873c19044f4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:49');
INSERT INTO `sys_log` VALUES ('656542fa-b926-4146-a1f0-31f494a3dd5b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:31:19');
INSERT INTO `sys_log` VALUES ('6583dda0-a4ef-4c66-ac76-780f81578376', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:55:15');
INSERT INTO `sys_log` VALUES ('65d24dbf-e808-4fcf-ae25-68cba1e165f1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:09:21');
INSERT INTO `sys_log` VALUES ('66284b1a-879d-4240-bcfd-e1822ef009c5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:26:18');
INSERT INTO `sys_log` VALUES ('6648b62b-0a3d-4e36-821d-3d550fc22af6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:43:05');
INSERT INTO `sys_log` VALUES ('6660595a-7bc9-4f17-96c3-3676af8ac0ae', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:39:41');
INSERT INTO `sys_log` VALUES ('66bee170-c922-41c6-92d3-393f186a3d14', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2020-01-14 21:55:27');
INSERT INTO `sys_log` VALUES ('6746315c-3a1d-4f8c-9d2d-96a633a10afb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:50:32');
INSERT INTO `sys_log` VALUES ('674c017a-a485-4afe-956e-118fbb9b893c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:33:43');
INSERT INTO `sys_log` VALUES ('67c7282e-20b9-4587-ba86-8cf36bb5908f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:15:47');
INSERT INTO `sys_log` VALUES ('67d2e53a-e9a9-4c02-be3b-1ba9792c5da8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:21:18');
INSERT INTO `sys_log` VALUES ('67e5ee4a-c61b-404f-ae79-cc029c54d1fc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:43:06');
INSERT INTO `sys_log` VALUES ('6867f231-5403-4623-8c32-430e3570e103', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:33:54');
INSERT INTO `sys_log` VALUES ('68a3c31c-3568-4daa-ae94-c0aabbcad80a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:39:16');
INSERT INTO `sys_log` VALUES ('68c87ca9-9b32-41c0-a47b-6e0c5c64b1b3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 22:26:36');
INSERT INTO `sys_log` VALUES ('69155fa8-1572-4af0-b195-47d105008abe', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '{\"current_page\":\"1\",\"page_size\":\"40\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:25');
INSERT INTO `sys_log` VALUES ('6966676c-07b3-46a7-8898-546b7a57ff1f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:56:17');
INSERT INTO `sys_log` VALUES ('69a3ba8b-0c22-4d9c-8f5e-f399778de75c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:58:48');
INSERT INTO `sys_log` VALUES ('69b3fd6c-b323-4ca5-b0c8-426b613926e6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 10:51:39');
INSERT INTO `sys_log` VALUES ('6a0b2391-4ae4-422e-88cf-3c28b8872947', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:07:00');
INSERT INTO `sys_log` VALUES ('6a25e2cc-389b-44d8-b36c-463c7c2c1875', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"name\":\"\\u8bfb\\u5361\\u5668\\u548c\\u5185\\u5b58\\u5361\",\"parent_id\":\"3\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 18:41:14');
INSERT INTO `sys_log` VALUES ('6a458378-3456-49a0-a787-25703e38c420', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:58:09');
INSERT INTO `sys_log` VALUES ('6a52b474-5a2f-45c6-83a2-a277c4fe5188', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"name\":\"\\u79fb\\u52a8\\u624b\\u673a\\u5145\\u503c\\u5361\",\"parent_id\":\"2\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 18:40:37');
INSERT INTO `sys_log` VALUES ('6a7cdec2-c3be-4741-a5ba-38b00247a4dd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:27');
INSERT INTO `sys_log` VALUES ('6b0b3b79-7477-4e29-ac01-7a14b270550f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:22:09');
INSERT INTO `sys_log` VALUES ('6b131e59-9665-4e74-a25b-8532271f0026', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 14:42:27');
INSERT INTO `sys_log` VALUES ('6bc81506-e896-40d6-8d75-2401773d1714', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:44:58');
INSERT INTO `sys_log` VALUES ('6bca9cd9-eba0-48ab-ac52-3c857fb01fd5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:07:13');
INSERT INTO `sys_log` VALUES ('6c2927dd-2aea-4f3d-a3df-b80c9dab1b03', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:45:23');
INSERT INTO `sys_log` VALUES ('6c44bf52-16b3-4d5c-8dab-d09634f4e1c9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:43:02');
INSERT INTO `sys_log` VALUES ('6c4abaef-9a36-470e-8199-428257a2e6f1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 23:03:34');
INSERT INTO `sys_log` VALUES ('6c4e943f-9723-4755-a008-517f72352fdd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:08:15');
INSERT INTO `sys_log` VALUES ('6c689f3a-c1a6-4c65-a1e8-533e77c4ca87', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:42:39');
INSERT INTO `sys_log` VALUES ('6c6fa315-df2f-4c72-8a2d-e210b3a6b55f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:25:37');
INSERT INTO `sys_log` VALUES ('6c86be3c-d202-4392-a5e5-b8a454eb0bf9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:33:45');
INSERT INTO `sys_log` VALUES ('6c9d8332-53c7-440b-9da7-4d616787a6a0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:50:24');
INSERT INTO `sys_log` VALUES ('6ccb444e-aacc-4f5e-a239-33f20f0cb78d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:36:42');
INSERT INTO `sys_log` VALUES ('6cd334be-8665-4d86-87d7-7fdd17d38a3c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:28:42');
INSERT INTO `sys_log` VALUES ('6d2910b2-c2e7-4ad4-b32b-8fe721b825cd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:14:31');
INSERT INTO `sys_log` VALUES ('6d996e1b-d6a9-47d3-8a7d-366a7f213368', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"0,0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:39:20');
INSERT INTO `sys_log` VALUES ('6dba68ff-22ed-4d3c-b491-ce9e8f6cb3bb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:25:51');
INSERT INTO `sys_log` VALUES ('6dc6e15f-4006-48fd-9508-821136b226e8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:58:37');
INSERT INTO `sys_log` VALUES ('6e0e9ead-7d60-4eb9-b1b0-8e89e0a34877', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:26:26');
INSERT INTO `sys_log` VALUES ('6e23266f-a418-46de-9825-ad3ba397e979', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:09:07');
INSERT INTO `sys_log` VALUES ('6e4d4e9e-df92-4560-9225-739d6a487028', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:28:41');
INSERT INTO `sys_log` VALUES ('6eb3c263-e0da-47c8-b2f0-065b315e6c05', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:22:12');
INSERT INTO `sys_log` VALUES ('6eb5acf4-e719-48a9-86ff-c0345cd1ebb1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:45:04');
INSERT INTO `sys_log` VALUES ('6ec5c9eb-1c0a-4c3e-9f6c-f248c731ed2c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:30:51');
INSERT INTO `sys_log` VALUES ('6ee961b1-4cc4-4e47-88dd-7fdb0f6ddcf2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:25:40');
INSERT INTO `sys_log` VALUES ('6ef43d28-b152-4f2f-8a3b-41422be5c112', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"0ca4dee2-9b45-441c-a767-c8b07197c9b0\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5206\\u7c7b\",\"icon\":\"\",\"route_path\":\"\\/mall\\/categories\",\"route_name\":\"categories\",\"route_component\":\"view\\/mall\\/categories\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-20 20:41:00');
INSERT INTO `sys_log` VALUES ('6f110557-901f-4846-ad2c-280c8f8bcacc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:50');
INSERT INTO `sys_log` VALUES ('6f3af0b0-93ca-4b1e-9b6d-f887e9dca35f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:38:24');
INSERT INTO `sys_log` VALUES ('6f416405-25e9-4f68-bdc1-6047c01c5da7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:49:32');
INSERT INTO `sys_log` VALUES ('6f6caa79-b99e-46cb-9ef3-c07b620072aa', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:37:16');
INSERT INTO `sys_log` VALUES ('6f72b51d-e28b-4145-8ea3-8f02fe8ab09e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:20:55');
INSERT INTO `sys_log` VALUES ('6f75669e-877d-4b6f-b24d-a35d9106688e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 15:00:33');
INSERT INTO `sys_log` VALUES ('6f899001-aae9-49c0-ba0a-7b129459cb16', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:10:50');
INSERT INTO `sys_log` VALUES ('6fb7474e-88a6-450f-a8f1-626df02b51eb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:30:57');
INSERT INTO `sys_log` VALUES ('6fcc6020-0371-4aa1-a873-579624165e56', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:04:59');
INSERT INTO `sys_log` VALUES ('70021b5f-aabe-4fbb-b2a3-c572b373cf14', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:17:46');
INSERT INTO `sys_log` VALUES ('706773ae-0740-4611-a703-5a532b28761f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:44:47');
INSERT INTO `sys_log` VALUES ('706859a5-ead8-4ee8-ade0-5cd7a9678fd9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:27:39');
INSERT INTO `sys_log` VALUES ('706e7d89-545f-4f4d-bbc1-2201239d41e6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"1586dd68-4c1f-4194-8c03-22d04c85e07c\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 11:40:26');
INSERT INTO `sys_log` VALUES ('7094d136-bc66-4410-b662-e764e2a8149e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"id\":\"6210ec85-9e23-4e4a-9c12-3dcbac08cab8\",\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f7\",\"account\":\"11\",\"origin_id\":\"1\",\"app_id\":\"1\",\"app_secred\":\"1\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:59:17');
INSERT INTO `sys_log` VALUES ('70eef057-850c-4989-a7ec-7224c1fbe405', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:57:34');
INSERT INTO `sys_log` VALUES ('7175b6cb-329d-4bf5-b382-a09bd948cbdf', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"c2928201-11ff-44d3-8066-ba18c40edab9\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u6807\\u7b7e\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/mall\\/tag\",\"route_name\":\"mallTag\",\"route_component\":\"views\\/mall\\/tag\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-28 23:12:22');
INSERT INTO `sys_log` VALUES ('7185ec69-db0e-4fbd-b40a-ce5944349092', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:50:49');
INSERT INTO `sys_log` VALUES ('71bcd627-ac2a-48d8-98c7-e9ec653bda6a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:26:58');
INSERT INTO `sys_log` VALUES ('71bd2ab1-e534-4795-8165-8a9a679f7cb4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:45:43');
INSERT INTO `sys_log` VALUES ('71c4afdd-4564-42c0-8cf0-a015b1375597', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"29bb8234-feea-453b-ad2f-1405011fac97\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5c5e\\u6027\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/mall\\/attribute\",\"route_name\":\"mallAttribute\",\"route_component\":\"views\\/mall\\/attribute\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"0\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-28 23:12:33');
INSERT INTO `sys_log` VALUES ('71e287b0-c9a2-4ef0-9e4f-75406ba135fd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:45:43');
INSERT INTO `sys_log` VALUES ('71fc3f52-0a1e-4ad5-990d-c19429956688', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:52:08');
INSERT INTO `sys_log` VALUES ('723c28dd-3b9b-4f88-82d6-d72252fe10c1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:06:22');
INSERT INTO `sys_log` VALUES ('72562369-679f-4767-9c15-681b4d357aef', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:46:25');
INSERT INTO `sys_log` VALUES ('72d0f6ae-363e-4ca3-bdcc-ae06989ed1c3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:27:22');
INSERT INTO `sys_log` VALUES ('72e21095-4326-4f8f-9ee4-aee00d9ad351', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 14:42:27');
INSERT INTO `sys_log` VALUES ('72ea3404-1f19-412c-a331-34ce9acbea47', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:29:25');
INSERT INTO `sys_log` VALUES ('7329f8a0-a626-499f-8a7a-7c6d62cf6f09', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:41:01');
INSERT INTO `sys_log` VALUES ('73538b90-6842-482a-a46e-23b321ff3da3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:53:43');
INSERT INTO `sys_log` VALUES ('73771437-82ca-465c-866a-93f5a1e1c84c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:41:45');
INSERT INTO `sys_log` VALUES ('73ca8221-1280-4652-a180-36f40916ff6a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 23:10:15');
INSERT INTO `sys_log` VALUES ('73dda0d1-ac8f-4d1a-8834-cb4acf174342', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:53:00');
INSERT INTO `sys_log` VALUES ('73f67e4f-93ad-47a9-b36a-04a73f4c73b3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 23:06:24');
INSERT INTO `sys_log` VALUES ('740eeaff-5742-4012-8033-f83a0656622e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/submit', '{\"parent_id\":\"399ef431-3f7f-438a-99e2-c52a58010347\",\"name\":\"\\u624b\\u673a\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-23 22:53:37');
INSERT INTO `sys_log` VALUES ('741b0a97-bbbc-4ff1-913d-e18483a634ff', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 11:41:13');
INSERT INTO `sys_log` VALUES ('74825f40-3eea-4b1d-9cd4-29de51cf3b14', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:57:04');
INSERT INTO `sys_log` VALUES ('74f0150c-1806-4660-9656-1752bac84685', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:28:11');
INSERT INTO `sys_log` VALUES ('7520b123-86c7-4196-8665-a73f5102a7e5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:27');
INSERT INTO `sys_log` VALUES ('75705082-f6d3-408f-95ef-8633ae3d1daf', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:14:45');
INSERT INTO `sys_log` VALUES ('757fd6a7-2c64-42a0-87e6-2dd2e9b22c02', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:38:02');
INSERT INTO `sys_log` VALUES ('75c17a7c-abdb-471c-83a8-b4ac2b8021f8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:25:39');
INSERT INTO `sys_log` VALUES ('75d4917f-a1b9-4308-9e9a-26c6cc0cbd01', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:23:59');
INSERT INTO `sys_log` VALUES ('761e17b2-b56c-4533-b61e-cb295bcb2a55', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:34');
INSERT INTO `sys_log` VALUES ('763aedd7-34e4-49c6-b118-ce223c72bfb2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:08:37');
INSERT INTO `sys_log` VALUES ('768e2c1a-00ea-4677-88f1-e0388f618a09', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:18:27');
INSERT INTO `sys_log` VALUES ('769b0a93-9ea5-4357-bf8b-d05825d079dd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:20:52');
INSERT INTO `sys_log` VALUES ('769f5f4d-a204-451f-9560-baee1be0092d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:13:10');
INSERT INTO `sys_log` VALUES ('76d0a7ac-33da-4973-9888-d4aca0a98881', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:29:35');
INSERT INTO `sys_log` VALUES ('76ded28a-7631-48f2-b034-01207173e652', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2020-01-14 21:53:58');
INSERT INTO `sys_log` VALUES ('76f6f22d-0465-42d9-bc91-463faba02dab', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:39:42');
INSERT INTO `sys_log` VALUES ('7765a6a7-f32f-4251-9a81-1ad97f69316a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:05:02');
INSERT INTO `sys_log` VALUES ('77d2d92b-8c73-4944-938f-440ba86cfcc6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:39:40');
INSERT INTO `sys_log` VALUES ('783ee7c1-5845-49c2-a85a-aa6e23902c0d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:14:46');
INSERT INTO `sys_log` VALUES ('78491587-9291-4ef2-9ad6-00cb4345c921', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 10:49:08');
INSERT INTO `sys_log` VALUES ('788e0483-9c45-4f75-a4b3-64c5b933237b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"52f38f59-1e25-4064-8117-c332d8f1f800,b4a158c5-2f2f-41d6-a784-c882492f436f\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:04:26');
INSERT INTO `sys_log` VALUES ('79b1c22f-12cc-4a59-bcdd-f530cd4a89fb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:12:03');
INSERT INTO `sys_log` VALUES ('7a235736-5b8c-48f5-9dcb-71ba2334567b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:08:11');
INSERT INTO `sys_log` VALUES ('7a48e47f-35e6-406f-8c26-b797192c4551', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/submit', '{\"name\":\"\\u4fc3\\u9500\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-26 21:47:50');
INSERT INTO `sys_log` VALUES ('7a516752-dd30-4879-9b6a-2ea2d0c29eb9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:16:42');
INSERT INTO `sys_log` VALUES ('7aa1d69f-fb03-4037-9664-dfab697c79a8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:54:52');
INSERT INTO `sys_log` VALUES ('7ade295d-3737-400b-ad33-236f9debafb4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:05:59');
INSERT INTO `sys_log` VALUES ('7b77ea66-7195-495a-a67c-5d7b1bf1f025', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/submit', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\",\"dict_dir_key\":\"unit\",\"name\":\"\\u7bb1\",\"key\":\"xiang\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-15 21:22:08');
INSERT INTO `sys_log` VALUES ('7bdbcef2-ff74-41a5-b86e-f4726afe4eb5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 22:42:06');
INSERT INTO `sys_log` VALUES ('7c323a10-0d7d-4bb4-a414-28d69869bda0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:06:03');
INSERT INTO `sys_log` VALUES ('7c8d29f2-1827-4034-8eab-8890b11f2f68', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:25:34');
INSERT INTO `sys_log` VALUES ('7cd26dbd-4b5e-4e27-8249-6cff2c0d823f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 23:18:56');
INSERT INTO `sys_log` VALUES ('7cd35adb-22af-48e9-9f8a-98673d67abe3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:37:30');
INSERT INTO `sys_log` VALUES ('7ce8592e-028f-4f03-8a5e-baf63ff06503', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"29bb8234-feea-453b-ad2f-1405011fac97\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5c5e\\u6027\",\"icon\":\"\",\"route_path\":\"\\/mall\\/attribute\",\"route_name\":\"attribute\",\"route_component\":\"view\\/mall\\/attribute\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-20 21:33:53');
INSERT INTO `sys_log` VALUES ('7cf88629-f761-445a-90e8-c88f166a9a13', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:36:19');
INSERT INTO `sys_log` VALUES ('7d5cdc81-e80a-4f97-ac26-38784ffca710', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:34:33');
INSERT INTO `sys_log` VALUES ('7dcbae4c-2c9f-4ad3-ac67-6fdc56cab490', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:53:20');
INSERT INTO `sys_log` VALUES ('7de0ea96-0034-4fb5-aae3-3a241a058e0b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:15:33');
INSERT INTO `sys_log` VALUES ('7e1426e4-88b8-4c16-b5cc-d3f9e99345ce', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:11:00');
INSERT INTO `sys_log` VALUES ('7ec24350-4c3b-48a5-bce1-fbfa4559e19b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:54:58');
INSERT INTO `sys_log` VALUES ('7f1e57d3-2d35-4cdd-9014-042e4adfb536', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"f6f92ddc-91fd-4289-814e-329110f37335\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:17:20');
INSERT INTO `sys_log` VALUES ('7f62799e-0110-4bb5-aef5-baf70eba271b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:29:18');
INSERT INTO `sys_log` VALUES ('7f9eded6-3fd2-4c80-bf03-6073087b26a8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:43:59');
INSERT INTO `sys_log` VALUES ('7fa9f02b-5743-478a-a541-5a6c29ab8d0c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:23:47');
INSERT INTO `sys_log` VALUES ('7fc6121d-6063-40d4-99b4-c280f7e8a0a9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:53:31');
INSERT INTO `sys_log` VALUES ('8010d293-9c13-4680-b6b3-eeca3064e675', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:27:10');
INSERT INTO `sys_log` VALUES ('8077263b-1480-44fb-8654-13d71a8a83db', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:35:22');
INSERT INTO `sys_log` VALUES ('808de554-44bc-4886-9415-3dfab38c92ac', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:40:32');
INSERT INTO `sys_log` VALUES ('8098713c-53ba-4eba-8d73-c3eccc964db1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:38:16');
INSERT INTO `sys_log` VALUES ('80e6eda2-2c74-45e1-a22b-8480e6351752', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:06:22');
INSERT INTO `sys_log` VALUES ('80f1847c-693c-47af-af1b-87bb454d1311', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 10:46:33');
INSERT INTO `sys_log` VALUES ('81778b84-ba24-41b9-869c-e0aad3105fba', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 15:00:23');
INSERT INTO `sys_log` VALUES ('819431ee-5f7b-4a18-99ae-25272697c026', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:07:01');
INSERT INTO `sys_log` VALUES ('81b590de-641e-4472-9840-d3bfa7fb74f5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:37:24');
INSERT INTO `sys_log` VALUES ('81d37068-bb05-486c-a4f8-94507d93695f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:47:55');
INSERT INTO `sys_log` VALUES ('8218c99d-6564-43e2-8393-c1805637d108', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:40:51');
INSERT INTO `sys_log` VALUES ('82cae142-678c-4740-9566-a2abd96e03de', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 11:41:21');
INSERT INTO `sys_log` VALUES ('83149f0b-dd15-49f5-a317-d30465d13ee4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 22:31:12');
INSERT INTO `sys_log` VALUES ('832b318d-6e16-4e38-8e5f-bdd8b50f3210', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:13:24');
INSERT INTO `sys_log` VALUES ('8346f925-1cb5-4234-9066-c3e25b4f34ae', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:47:55');
INSERT INTO `sys_log` VALUES ('837cb8b9-064b-42d5-a50b-889533e7614e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:55:09');
INSERT INTO `sys_log` VALUES ('83badafc-dead-4cc3-b50e-7aaeb4778157', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:40:59');
INSERT INTO `sys_log` VALUES ('83baebba-002d-4b5c-a1e9-e3bd3b48fa1d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:17:41');
INSERT INTO `sys_log` VALUES ('83f99d31-c59b-4df2-9d66-1187bc80a886', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:26:26');
INSERT INTO `sys_log` VALUES ('8400d07d-9a97-4671-9565-1f5a4d021e32', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:27:14');
INSERT INTO `sys_log` VALUES ('8410341b-4f44-4940-ab3e-5c4ff44d8efd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:25:52');
INSERT INTO `sys_log` VALUES ('8499face-6832-4adc-8afb-2d1fa4c12f88', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:31:42');
INSERT INTO `sys_log` VALUES ('84e29fd3-69dd-421d-b3d2-36be0d5cbaa1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"0a5583fd-a914-4e0c-8100-218e4b6483b9\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:14:35');
INSERT INTO `sys_log` VALUES ('8557070b-e5cb-45f9-8ab5-2a94547b4a0f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:22:35');
INSERT INTO `sys_log` VALUES ('8584fe88-bb6e-46fd-a1da-05f11127f335', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:24:48');
INSERT INTO `sys_log` VALUES ('85dfaee2-ea11-4703-b789-8f6c003aa296', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:44:07');
INSERT INTO `sys_log` VALUES ('85e11a13-d1c8-4f4f-96e0-6b920644c64e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:15:47');
INSERT INTO `sys_log` VALUES ('86420a97-f0c1-44e3-bbe7-867f7fc26781', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2019-12-18 20:08:10');
INSERT INTO `sys_log` VALUES ('86b13781-c145-4503-8388-0e34bebf200b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:38:44');
INSERT INTO `sys_log` VALUES ('86c1bd74-64a4-450b-b8f5-2855a012d486', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:46:26');
INSERT INTO `sys_log` VALUES ('86c8e8cb-1fe2-4c51-9302-0e17e4157d9b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:57:56');
INSERT INTO `sys_log` VALUES ('86d5578a-ef10-4a39-975f-15a279acc3db', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:51:19');
INSERT INTO `sys_log` VALUES ('86e67687-b03d-47f0-8617-ebd0b0096dcb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 22:20:01');
INSERT INTO `sys_log` VALUES ('86eddc14-34aa-4a51-a218-014f40f0c565', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:23:58');
INSERT INTO `sys_log` VALUES ('86fc703f-9890-4c3f-8f10-9cd2073d6497', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:50:54');
INSERT INTO `sys_log` VALUES ('8741dbde-595f-4d97-8a1f-647fe3da5948', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:06:31');
INSERT INTO `sys_log` VALUES ('874c6e5b-2a56-411f-9fe4-4ec643a9cae1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:40:01');
INSERT INTO `sys_log` VALUES ('875ae8b5-260f-4ea5-9275-0fec6e70e2c1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:33:42');
INSERT INTO `sys_log` VALUES ('876e26fe-3a56-44f6-9a7c-97ab426efd5e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:31:29');
INSERT INTO `sys_log` VALUES ('877a9fa7-fb6d-477f-b7a7-a0d2ca683604', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:32:59');
INSERT INTO `sys_log` VALUES ('879d749d-6666-4aea-98ef-b499047f90fb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:59:30');
INSERT INTO `sys_log` VALUES ('8800edca-8088-4e04-bc83-9bb7b5563007', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:37:07');
INSERT INTO `sys_log` VALUES ('88a6ba2b-42ba-4d04-a193-faf2b531d3c3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:09:49');
INSERT INTO `sys_log` VALUES ('88bc8ec5-7937-46f6-a939-15d3335bcf05', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 22:50:29');
INSERT INTO `sys_log` VALUES ('88c9805a-b85a-4129-924b-7f7d9e9776f4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"name\":\"\\u5145\\u503c\\u5361\",\"parent_id\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 15:00:32');
INSERT INTO `sys_log` VALUES ('89543bf4-dfb7-4cbe-a4f1-87e1e9caad20', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/submit', '{\"id\":\"1\",\"name\":\"\\u4e09\\u661f\",\"links\":\"111\",\"description\":\"111\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-30 22:30:34');
INSERT INTO `sys_log` VALUES ('89b737b2-447b-405b-864c-60609da09568', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_key\":\"measureUnit\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:32:37');
INSERT INTO `sys_log` VALUES ('89c446b3-886c-49de-828b-1391e1554f1a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:04:07');
INSERT INTO `sys_log` VALUES ('89e05ed5-fcdd-4c74-b2bf-c6dd97859d22', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:07:03');
INSERT INTO `sys_log` VALUES ('8a0db6cb-bed8-4c84-ae71-5880b5f0ef08', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:11:43');
INSERT INTO `sys_log` VALUES ('8a237687-0502-470d-aeca-e1833752d808', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:57:36');
INSERT INTO `sys_log` VALUES ('8a976081-757e-4137-8326-34c35b9bc95e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:23:54');
INSERT INTO `sys_log` VALUES ('8af3bbd2-7e9f-4c10-a475-6dcc643e1de2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:06:22');
INSERT INTO `sys_log` VALUES ('8b571482-ca95-4002-9384-11e4ea037962', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/submit', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\",\"dict_dir_key\":\"unit\",\"name\":\"\\u4ef6\",\"key\":\"jian\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-15 21:21:14');
INSERT INTO `sys_log` VALUES ('8baea389-754b-4344-b4f5-2bbf417f3030', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:38:24');
INSERT INTO `sys_log` VALUES ('8bdabb91-a6d8-40c8-88c5-52b2b0ceced5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:33:10');
INSERT INTO `sys_log` VALUES ('8c0ca0a8-f2b0-46f9-9fec-2c44cf94c914', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"29bb8234-feea-453b-ad2f-1405011fac97\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5c5e\\u6027\",\"icon\":\"\",\"route_path\":\"\\/mall\\/attribute\",\"route_name\":\"attribute\",\"route_component\":\"views\\/mall\\/attribute\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-20 21:45:12');
INSERT INTO `sys_log` VALUES ('8cb6bfb4-d87e-4ee0-98c4-1645de2e0f20', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"fc9ccb9b-9f78-4de4-a8d0-5a7153d249ba\",\"parent_id\":\"0\",\"name\":\"\\u63a7\\u5236\\u53f0\",\"icon\":\"dashboard\",\"route_path\":\"\\/workplace\",\"route_name\":\"workplace\",\"route_component\":\"layouts\\/basicLayout\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-18 20:07:02');
INSERT INTO `sys_log` VALUES ('8de0ba24-2c9d-4bb3-9e22-e97c9ba377ff', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:42:00');
INSERT INTO `sys_log` VALUES ('8e28d2e4-8251-4c3c-b15a-3d9a7cc00ec0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:57:22');
INSERT INTO `sys_log` VALUES ('8e485d9d-83cc-4558-a61e-59080d40ca94', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"name\":\"\\u5c0f\\u7075\\u901a\\/\\u56fa\\u8bdd\\u5145\\u503c\\u5361\",\"parent_id\":\"2\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 18:40:32');
INSERT INTO `sys_log` VALUES ('8e7eb821-c154-4856-a466-e02f8270575e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:49');
INSERT INTO `sys_log` VALUES ('8e9832a3-58f0-4be0-b35f-dbab73dfb4f9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:34:42');
INSERT INTO `sys_log` VALUES ('8eac355a-24db-4c60-a083-908f79bb1125', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:30:55');
INSERT INTO `sys_log` VALUES ('8ebc77d8-133c-4202-b088-733629eeef97', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 22:12:14');
INSERT INTO `sys_log` VALUES ('8edbe70f-922f-497c-b09f-d19081145f8b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:17:47');
INSERT INTO `sys_log` VALUES ('8ef60c7b-bfc9-4089-abce-aeae308d3ff7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:10:50');
INSERT INTO `sys_log` VALUES ('8f66483b-291f-4530-8c52-91f07232eb7c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '{\"current_page\":\"1\",\"page_size\":\"40\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:27');
INSERT INTO `sys_log` VALUES ('8f86cdbd-59e5-4953-8418-330f27075f4f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-22 21:36:06');
INSERT INTO `sys_log` VALUES ('8f8b3188-6125-4fbd-80e6-ac01521da27d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:47:51');
INSERT INTO `sys_log` VALUES ('8f9b491d-0b63-4f95-9cb4-4bc61dbbbee7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/news/get_list', '{\"search\":\"{}\",\"column_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:18:27');
INSERT INTO `sys_log` VALUES ('8fec50ed-fe72-4f12-aecc-0b9f65b43d4c', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2020-01-14 21:57:07');
INSERT INTO `sys_log` VALUES ('90450807-77cf-46d6-a9d0-8b5e2eb72c1c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:45:22');
INSERT INTO `sys_log` VALUES ('9059eae7-d90d-4f5a-a9ba-f97e4e84b9f8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:49:25');
INSERT INTO `sys_log` VALUES ('908f04ba-5e01-444b-8118-daf03d8d68ff', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:07:18');
INSERT INTO `sys_log` VALUES ('90a582c7-6be6-4dc7-954c-9ed5127c0551', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"3cfc06b5-1abe-4bec-bc13-9be7c553d77a\",\"parent_id\":\"02f6c566-7878-4353-ad36-179bd04e1b5a\",\"name\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/wechat\\/menu\",\"route_name\":\"wechatMenu\",\"route_component\":\"views\\/wechat\\/menu\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 21:04:27');
INSERT INTO `sys_log` VALUES ('90b81603-ff9e-41d5-897d-6c5ad9a59a20', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:57:22');
INSERT INTO `sys_log` VALUES ('9103d854-4d3c-4b2b-a311-733d91542664', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:37:35');
INSERT INTO `sys_log` VALUES ('912306bc-a7fe-42cd-b207-b44da2a28d42', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:11:40');
INSERT INTO `sys_log` VALUES ('91713de7-0edf-44ad-9205-f5dafdc22f2a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:50');
INSERT INTO `sys_log` VALUES ('91886c5a-86d7-48f4-af62-e099d0f355d3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"0ca4dee2-9b45-441c-a767-c8b07197c9b0\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5206\\u7c7b\",\"icon\":\"\",\"route_path\":\"\\/mall\\/category\",\"route_name\":\"category\",\"route_component\":\"view\\/mall\\/category\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-20 21:33:42');
INSERT INTO `sys_log` VALUES ('91a2cda6-55ac-4b67-9c51-6d1fe8dfa9aa', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '{\"current_page\":\"1\",\"page_size\":\"40\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:28');
INSERT INTO `sys_log` VALUES ('91d47d1b-d43b-4b0c-a139-6f3b58603926', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-22 21:36:33');
INSERT INTO `sys_log` VALUES ('9242ccce-0947-4936-9959-6a3e27bbb737', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 10:54:38');
INSERT INTO `sys_log` VALUES ('9292143e-d281-4ab6-aaf0-0e4437e82655', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:43:21');
INSERT INTO `sys_log` VALUES ('929b8702-52c5-49fe-8a9b-59011c3e4ac5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:45:25');
INSERT INTO `sys_log` VALUES ('92bd09e4-e0f6-44bd-8ede-4d53320950b6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 10:46:08');
INSERT INTO `sys_log` VALUES ('93073512-0406-4461-97dd-1c418afb7b58', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:11:01');
INSERT INTO `sys_log` VALUES ('93178532-9318-494a-8f6d-8e811dd31390', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:48:14');
INSERT INTO `sys_log` VALUES ('932b461d-a3ae-46e1-a51f-4e92e4b77c96', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 23:18:27');
INSERT INTO `sys_log` VALUES ('933cac92-7402-4bd6-9854-f3e930776be5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:27:54');
INSERT INTO `sys_log` VALUES ('93413376-2b70-4167-8f44-8c65319870d0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:38:12');
INSERT INTO `sys_log` VALUES ('9347fc71-a067-4fe5-b3e2-cfe99f5d80ec', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"id\":\"c2f038ea-13ef-4f8f-a7f0-1ca4ef41d1a9\",\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f74\",\"account\":\"4\",\"origin_id\":\"4\",\"app_id\":\"4\",\"app_secred\":\"4\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-24 20:27:10');
INSERT INTO `sys_log` VALUES ('93913bf5-59d1-4b07-83a5-ada6b292fb71', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:21:50');
INSERT INTO `sys_log` VALUES ('93b11d3d-82eb-4c18-aa33-8be025cf1e77', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:27:26');
INSERT INTO `sys_log` VALUES ('93c5cea4-c15f-4dd8-b805-9fe392ac82f3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:31:46');
INSERT INTO `sys_log` VALUES ('9404023a-40ec-42d0-bb73-2e223f11670c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:27:52');
INSERT INTO `sys_log` VALUES ('940734ca-b763-40b3-b734-2b637787dba5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 10:46:33');
INSERT INTO `sys_log` VALUES ('945aaf7b-668b-44c1-bb32-0b6a2ad0a977', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:53:12');
INSERT INTO `sys_log` VALUES ('94d64bf6-3fea-49da-a193-c7fd75ac17ec', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:29:30');
INSERT INTO `sys_log` VALUES ('95b6aa0e-bc7c-466d-ba6f-f75b033fda19', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:54:09');
INSERT INTO `sys_log` VALUES ('95d7666c-2147-4755-b801-59deb1d5b4c4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 20:23:52');
INSERT INTO `sys_log` VALUES ('95ecc1ae-a9f1-4692-bca5-cfc6a0ae61e2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:36:26');
INSERT INTO `sys_log` VALUES ('961f77db-65ba-4cd3-bbdb-2ff1d33af03a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:41:09');
INSERT INTO `sys_log` VALUES ('9639c461-971f-4789-a388-5fd51b84667b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:19:02');
INSERT INTO `sys_log` VALUES ('96623176-1684-4b5c-9054-6fdb03bd63ca', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:21:19');
INSERT INTO `sys_log` VALUES ('96767333-6785-4e88-b010-46301f84daab', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:12:27');
INSERT INTO `sys_log` VALUES ('9678e475-4b6a-4c4f-ab17-123b3e12efd7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:03:28');
INSERT INTO `sys_log` VALUES ('96c68354-d2be-4673-8698-927d96df3808', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:21:18');
INSERT INTO `sys_log` VALUES ('96db25ac-444a-4bfc-ac0c-9c8c5a298cd9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:41');
INSERT INTO `sys_log` VALUES ('96db8799-7971-4d1b-bc76-a4d659660176', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:24:34');
INSERT INTO `sys_log` VALUES ('96fb87f3-cb3d-476d-b2c5-7157e0dacae1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:43:56');
INSERT INTO `sys_log` VALUES ('971f0dd4-559f-4924-96b7-d37b17de430b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"29bb8234-feea-453b-ad2f-1405011fac97\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5c5e\\u6027\",\"icon\":\"\",\"route_path\":\"\\/mall\\/goodsAttribute\",\"route_name\":\"goodsAttribute\",\"route_component\":\"view\\/mall\\/goodsAttribute\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-20 21:04:35');
INSERT INTO `sys_log` VALUES ('9723f06a-4765-46a3-b8ff-7f72d684bfab', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:19:47');
INSERT INTO `sys_log` VALUES ('979a9e53-13a7-4519-b8d2-ca27d3b6b245', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:25:33');
INSERT INTO `sys_log` VALUES ('980bb609-5acc-4722-9f78-569992932a3f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:20:02');
INSERT INTO `sys_log` VALUES ('981ae72a-131b-4240-9914-43cc65e5ff52', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"52f38f59-1e25-4064-8117-c332d8f1f800\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:16:10');
INSERT INTO `sys_log` VALUES ('9830511a-69dd-4402-a9e7-abbc7c2a0191', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:15:46');
INSERT INTO `sys_log` VALUES ('983b62df-cdd8-4195-a4c8-a8c6933fa020', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:40:25');
INSERT INTO `sys_log` VALUES ('98e0d89f-e20c-4463-83df-a10f7648967a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:37:28');
INSERT INTO `sys_log` VALUES ('98e3f6b4-9088-415d-8432-5abac13b0977', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2020-01-14 22:03:11');
INSERT INTO `sys_log` VALUES ('99094923-9ab5-4fd7-b1f4-82afb9abbca6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:56');
INSERT INTO `sys_log` VALUES ('990dd7f5-39c0-4ede-b1d3-7cbbfcd29f62', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:38:35');
INSERT INTO `sys_log` VALUES ('990e294a-b2d2-4b71-acd5-2df2548894ed', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '{\"current_page\":\"1\",\"page_size\":\"40\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:30');
INSERT INTO `sys_log` VALUES ('9972de39-31d7-461e-8275-0e3e07d67d50', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:58:08');
INSERT INTO `sys_log` VALUES ('99b94d63-9460-416c-98e7-ddedd045b461', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"adda7c29-55e3-4008-af3b-92bb60a08f88\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5e93\",\"icon\":\"\",\"route_path\":\"\\/mall\\/goods\",\"route_name\":\"mallGoods\",\"route_component\":\"views\\/mall\\/goods\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,0b6d7a2a-91e6-4ed2-ab03-3906f57b46d0,972659d8-4c43-4f93-9229-857a63c20714\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-28 23:12:02');
INSERT INTO `sys_log` VALUES ('99dd5861-3c12-4d03-bd47-bd2ab993aa8c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_already_auth_list', '{\"id\":\"1aa16731-1a14-4fce-b616-b8f04b778f6d\",\"type\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 22:05:50');
INSERT INTO `sys_log` VALUES ('9a1d9427-6662-4c17-990c-495cb7623942', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:45:43');
INSERT INTO `sys_log` VALUES ('9a4de573-6027-4917-9860-9f1d7dd0ad7c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:18:52');
INSERT INTO `sys_log` VALUES ('9a530834-03b1-4bd0-995b-a7aa64a1ffea', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:37:03');
INSERT INTO `sys_log` VALUES ('9a5f534c-a31d-479a-b94f-babfbe49523d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 10:49:06');
INSERT INTO `sys_log` VALUES ('9a661985-b7e0-4f74-8ed1-e5c3075cd134', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:08:10');
INSERT INTO `sys_log` VALUES ('9a8c9414-c918-46c9-8c2b-345c1d0f9ef0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:27:38');
INSERT INTO `sys_log` VALUES ('9ae40f5b-4920-498d-ba87-b60bb78db693', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:05:21');
INSERT INTO `sys_log` VALUES ('9b31f5ef-f27f-48f4-9b64-0d938f5c491c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:35:49');
INSERT INTO `sys_log` VALUES ('9b63ace4-1789-4f90-8401-a2f41a2c84c1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:45:09');
INSERT INTO `sys_log` VALUES ('9bb36f37-fa25-49f2-9dcf-35c9ba2e8cdb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:50:30');
INSERT INTO `sys_log` VALUES ('9be5cac3-32bf-45b2-a878-fe83f8a85639', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:13:53');
INSERT INTO `sys_log` VALUES ('9bf311d8-3f4e-4f3f-9739-446b05592434', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:58:39');
INSERT INTO `sys_log` VALUES ('9c52cb06-edc4-44ad-bf5f-5b5d63d8ace1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:31:16');
INSERT INTO `sys_log` VALUES ('9c816520-87ba-4e45-acc9-1895e25857b8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:57:03');
INSERT INTO `sys_log` VALUES ('9cb81162-b45b-45c8-8479-bac0534f1589', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:31:37');
INSERT INTO `sys_log` VALUES ('9d6b7481-50ae-4007-820f-05b8e0cc1e25', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:45:16');
INSERT INTO `sys_log` VALUES ('9da0b90c-01d0-49a0-a539-cbedc477cca4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:59:16');
INSERT INTO `sys_log` VALUES ('9db72761-d8d4-46b2-b084-cf6a0c1f089f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 10:51:40');
INSERT INTO `sys_log` VALUES ('9e338d67-14e5-47d0-9881-ebac96ccb77b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:53:12');
INSERT INTO `sys_log` VALUES ('9e7aed05-4866-4ca6-9502-d95b8715e194', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:19:02');
INSERT INTO `sys_log` VALUES ('9ee9540e-1a6c-44dd-9769-0f63b893cd17', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:34:23');
INSERT INTO `sys_log` VALUES ('9f4ba0ac-0db3-4b33-9db8-b44b45bc3548', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:14:00');
INSERT INTO `sys_log` VALUES ('9fb2f837-2705-4cad-b8e3-e8c53a4b4696', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:28:11');
INSERT INTO `sys_log` VALUES ('a00d252d-5289-430c-a44c-97564b63fc91', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:42:38');
INSERT INTO `sys_log` VALUES ('a017bf03-d6f0-4390-9991-69e245143af8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:38:09');
INSERT INTO `sys_log` VALUES ('a0183d0d-c046-4093-8ed4-0921e8e16195', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:55:15');
INSERT INTO `sys_log` VALUES ('a0214340-5671-4292-baf6-9f3e8268366f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:25:40');
INSERT INTO `sys_log` VALUES ('a02f705b-0fb5-4cbd-85ad-e87db375555d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:38:12');
INSERT INTO `sys_log` VALUES ('a0938036-2576-4641-8a86-2c2bd2021096', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:42:06');
INSERT INTO `sys_log` VALUES ('a1367502-03cc-4192-b321-c422c2f0657e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:37:04');
INSERT INTO `sys_log` VALUES ('a17055d0-e449-4ee7-9fec-627ce6b891f4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:24:34');
INSERT INTO `sys_log` VALUES ('a175a9c5-3bf7-4308-94e0-37dcfedff825', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 10:46:07');
INSERT INTO `sys_log` VALUES ('a21488bd-391c-49db-a4a9-82069313b5d9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:31:18');
INSERT INTO `sys_log` VALUES ('a21d7765-0956-4903-b56b-dcb74be10078', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:41:45');
INSERT INTO `sys_log` VALUES ('a23f0c78-af59-429e-b212-247e126b333c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/submit', '{\"parent_id\":\"0a5583fd-a914-4e0c-8100-218e4b6483b9\",\"name\":\"\\u5546\\u57ce\",\"key\":\"mall\",\"is_update_dir_key\":\"0\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-14 22:16:08');
INSERT INTO `sys_log` VALUES ('a24d5f2a-8c68-4449-9f83-dc58e6fab8cf', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:44:33');
INSERT INTO `sys_log` VALUES ('a26e6fe0-5c0e-491b-935d-3bf0ab451d2e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '{\"current_page\":\"1\",\"page_size\":\"40\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:31');
INSERT INTO `sys_log` VALUES ('a2a6d48e-5c1d-4570-a18d-571fbeb96e32', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/news/get_list', '{\"search\":\"{}\",\"column_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:22:35');
INSERT INTO `sys_log` VALUES ('a2b288e3-b640-479d-9022-49d970e416bc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:08');
INSERT INTO `sys_log` VALUES ('a2c293f4-160b-489d-b6c4-eee52ed56c06', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:48:22');
INSERT INTO `sys_log` VALUES ('a2ebdc1e-1702-462d-b8df-dd702a6e94bc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:05:01');
INSERT INTO `sys_log` VALUES ('a3263515-e83b-42a8-981b-84f6029f0686', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:37:33');
INSERT INTO `sys_log` VALUES ('a32a99e9-3b34-4ea8-b65a-0179b992bdcb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:36:26');
INSERT INTO `sys_log` VALUES ('a3e9a166-2b7d-4e4c-acd7-0623a1c94ba0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:36:02');
INSERT INTO `sys_log` VALUES ('a43a2e88-5f3f-40da-973f-0026a7c6d849', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 10:51:43');
INSERT INTO `sys_log` VALUES ('a462a09b-2d93-459b-a7f9-a2da2225144d', 3, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/delete', '[]', 'Chrome 78.0.3904.97', '::1', '1', '缺少参数', '2019-12-19 21:54:08');
INSERT INTO `sys_log` VALUES ('a651af02-35a2-475c-a6f2-c560346a3dd0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:09:08');
INSERT INTO `sys_log` VALUES ('a68fabff-d76f-4d35-80cd-b1b809f1059b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:22:21');
INSERT INTO `sys_log` VALUES ('a6d864f6-dfed-48f6-8a99-5b2f1a47f1a7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:04:15');
INSERT INTO `sys_log` VALUES ('a6fd8217-8dfc-4245-bd40-e37d5581b7a1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:09:44');
INSERT INTO `sys_log` VALUES ('a6feb481-22af-4766-81f2-6b5184d0695a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:22:36');
INSERT INTO `sys_log` VALUES ('a704f87c-a4a5-4709-8b8e-7f0a7939a87b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 23:04:42');
INSERT INTO `sys_log` VALUES ('a75f0841-ad17-4c2a-a94a-975646237b81', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 23:03:06');
INSERT INTO `sys_log` VALUES ('a76f1deb-2430-49e3-8ef0-b1ec931ff9a8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:49:07');
INSERT INTO `sys_log` VALUES ('a77b47ef-f9c0-474b-a2c5-1a62beaa70fd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:17:57');
INSERT INTO `sys_log` VALUES ('a7b9a6b0-05c1-4e1f-a9e8-18d0f6c26dce', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:05:17');
INSERT INTO `sys_log` VALUES ('a7f5db93-a9da-490e-b922-dd596b174541', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:20:55');
INSERT INTO `sys_log` VALUES ('a8496e4e-914f-4706-9176-5325d232575a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:41:23');
INSERT INTO `sys_log` VALUES ('a8922d51-9d30-4d3f-a89d-1597cc8c6b55', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"1586dd68-4c1f-4194-8c03-22d04c85e07c\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 11:39:27');
INSERT INTO `sys_log` VALUES ('a8a53837-a168-47c0-9db8-c485414488b0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:27:52');
INSERT INTO `sys_log` VALUES ('a8aa770b-1d68-449d-bbd5-83d24c75eb1f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"adda7c29-55e3-4008-af3b-92bb60a08f88\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/mall\\/goods\",\"route_name\":\"goods\",\"route_component\":\"views\\/mall\\/goods\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,0b6d7a2a-91e6-4ed2-ab03-3906f57b46d0,972659d8-4c43-4f93-9229-857a63c20714\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-20 21:43:20');
INSERT INTO `sys_log` VALUES ('a9020991-b1ea-4613-a36a-3347172438b9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:34:30');
INSERT INTO `sys_log` VALUES ('a93c74dd-a4e2-4898-90e6-4ec22471e8b8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:29:28');
INSERT INTO `sys_log` VALUES ('a93d733c-e466-445d-8fb5-439dbb6c0caf', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:26:10');
INSERT INTO `sys_log` VALUES ('a96384b6-77b6-4157-8001-a61b4e9ae979', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:33:43');
INSERT INTO `sys_log` VALUES ('a96efe0f-5043-49fb-8be6-e5734fca23da', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2020-01-14 21:53:52');
INSERT INTO `sys_log` VALUES ('a9e01e36-e239-4c87-8d79-83dc00e885e3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:28:26');
INSERT INTO `sys_log` VALUES ('aa3bafb2-00d0-4060-a914-81f51edcfbd6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:32:59');
INSERT INTO `sys_log` VALUES ('aa458282-6a43-4ddb-a9df-5bfa7253e384', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:37:30');
INSERT INTO `sys_log` VALUES ('aa6944cd-a3c0-4402-b390-48632d635d4c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:40:11');
INSERT INTO `sys_log` VALUES ('aa707d95-9fe4-4d1f-80d4-db69a6785823', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:57:42');
INSERT INTO `sys_log` VALUES ('aaa5b1ab-6ec1-4067-925d-1e68ef20c62a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/submit', '{\"parent_id\":\"52f38f59-1e25-4064-8117-c332d8f1f800\",\"name\":\"\\u8ba1\\u91cf\\u5355\\u4f4d\",\"key\":\"unit\",\"is_update_dir_key\":\"0\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-14 22:16:51');
INSERT INTO `sys_log` VALUES ('aac4576d-1805-4d26-a82b-dd66b88c9c3b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/submit', '{\"name\":\"\\u63a8\\u8350\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-26 21:47:38');
INSERT INTO `sys_log` VALUES ('aac94f2b-a118-4ee7-a562-e452daa9ba03', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:52:47');
INSERT INTO `sys_log` VALUES ('aac9578c-51b9-4aa4-964f-6f27cff2689e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:26:29');
INSERT INTO `sys_log` VALUES ('aad21366-83dc-4f4e-8894-b1d100e6cb6a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:47:44');
INSERT INTO `sys_log` VALUES ('aba7cb02-b9ed-4e95-9620-68e8a4e7e04c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:05:19');
INSERT INTO `sys_log` VALUES ('abe4058f-ed45-4e6d-b81e-eda9d41e9bb3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/template/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:26:15');
INSERT INTO `sys_log` VALUES ('ac1f3969-604d-4ffe-804e-fe61ae0d6380', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:48:23');
INSERT INTO `sys_log` VALUES ('ac889a89-622e-49be-b104-409977709955', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:38:23');
INSERT INTO `sys_log` VALUES ('ac90ce6d-b81e-4c65-be40-51b9861ea41c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:17:27');
INSERT INTO `sys_log` VALUES ('ac9a368c-6ee8-4cee-9dae-d74ba43ebc0c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/submit', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\",\"dict_dir_key\":\"unit\",\"name\":\"\\u6253\",\"key\":\"da\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-15 21:22:36');
INSERT INTO `sys_log` VALUES ('ac9ba6b0-dc27-4f18-b970-f679a32f42bf', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:09:55');
INSERT INTO `sys_log` VALUES ('ad279b95-fc59-4b79-8bf8-f627924e3859', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:04:34');
INSERT INTO `sys_log` VALUES ('ad8ba476-98d6-4522-8d50-886560c7e077', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:27:54');
INSERT INTO `sys_log` VALUES ('ad9fba4a-2341-4b05-988b-c5f4fde3b7af', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 23:04:43');
INSERT INTO `sys_log` VALUES ('adab8df8-396a-48e0-818e-adbb71463c35', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:09:57');
INSERT INTO `sys_log` VALUES ('ae044080-e3e5-425f-bc75-cb7685ab7b73', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:32:37');
INSERT INTO `sys_log` VALUES ('ae589451-d2ad-4b23-923e-24c5b19230e8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:44:30');
INSERT INTO `sys_log` VALUES ('ae589e23-3c5a-4f9d-abb2-d1a430b5b11d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:19:03');
INSERT INTO `sys_log` VALUES ('ae59a869-2be5-486a-875d-ff487b2c2713', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 21:36:38');
INSERT INTO `sys_log` VALUES ('ae779fc9-2ca6-49bd-b3a7-fc7761d533bc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:43:04');
INSERT INTO `sys_log` VALUES ('aebb8148-d73b-4804-8305-5457f0d927c5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:27');
INSERT INTO `sys_log` VALUES ('aecf6d36-e962-44e6-a4b7-5e74ed53f6b9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:28:46');
INSERT INTO `sys_log` VALUES ('af2b2062-75fa-4d17-88fc-bdaf4612dac8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:14:45');
INSERT INTO `sys_log` VALUES ('af5ed3a3-1b8f-4053-b8c9-a4de4f073294', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:52:49');
INSERT INTO `sys_log` VALUES ('af96adba-54c2-42aa-a204-e4af7d42285b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:34:23');
INSERT INTO `sys_log` VALUES ('af9be7ec-0d63-45da-842f-0af114ebe81f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:34:05');
INSERT INTO `sys_log` VALUES ('afb0ec4b-3ba9-4095-af8c-0b7900964852', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:24:22');
INSERT INTO `sys_log` VALUES ('afd6ec7a-84a4-47de-b5c7-45beea214826', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:54:39');
INSERT INTO `sys_log` VALUES ('afea105a-a903-49c5-9f0f-482e7385c0ec', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '{\"current_page\":\"1\",\"page_size\":\"30\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:18');
INSERT INTO `sys_log` VALUES ('aff8076d-96af-4026-a8eb-5f958873f201', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:48:50');
INSERT INTO `sys_log` VALUES ('b02ca5ec-4d09-49ac-ae3f-3c4c2411ca26', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 23:03:06');
INSERT INTO `sys_log` VALUES ('b0a72821-d319-4132-896e-073a456df58c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"parent_id\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 14:58:26');
INSERT INTO `sys_log` VALUES ('b10d552c-5ff0-49d5-83ef-cd3640b7e77f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:09:55');
INSERT INTO `sys_log` VALUES ('b10fb2e7-fb8d-4645-af81-734c2a1d124d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:51:37');
INSERT INTO `sys_log` VALUES ('b12bbe72-0ffd-41ce-9387-d70eebe3ac5b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:09');
INSERT INTO `sys_log` VALUES ('b142a759-7037-4903-b7d6-f478434c0b46', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:22:00');
INSERT INTO `sys_log` VALUES ('b1bfd046-a4a8-40d8-b44c-4bc314c338f7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:32:46');
INSERT INTO `sys_log` VALUES ('b28aafd8-b482-487a-86e7-17c0749e5a91', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:13:20');
INSERT INTO `sys_log` VALUES ('b2a3c118-35c2-43d7-9fb2-920fa5635513', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-22 21:36:28');
INSERT INTO `sys_log` VALUES ('b2fc03a4-8321-47e4-9a44-a8de1fcd8ac6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:48:04');
INSERT INTO `sys_log` VALUES ('b3e5c33a-4ede-4d4e-87ff-16480b5a4993', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"name\":\"\\u8033\\u673a\",\"parent_id\":\"3\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 18:41:03');
INSERT INTO `sys_log` VALUES ('b44954ce-300e-4b89-9b16-4f5cc95a0ae8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:57:36');
INSERT INTO `sys_log` VALUES ('b4589224-1dab-47eb-8e66-4704dbf45ff4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:32:37');
INSERT INTO `sys_log` VALUES ('b49921fa-ffcb-4f2b-b32b-7ecb5a49a4c1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"a0414b5c-e41e-42d8-b2ba-e4177dce3534\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u54c1\\u724c\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/mall\\/brand\",\"route_name\":\"mallBrand\",\"route_component\":\"views\\/mall\\/brand\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-28 23:12:13');
INSERT INTO `sys_log` VALUES ('b4dac70c-2131-405a-9e61-06a91a9cadbf', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/template/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:19:42');
INSERT INTO `sys_log` VALUES ('b4f0108f-1a1c-4a93-85db-939ab50c4b08', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:42:19');
INSERT INTO `sys_log` VALUES ('b5224be3-002a-474b-a284-c1688b525994', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:49:08');
INSERT INTO `sys_log` VALUES ('b52eb1ab-3a94-4cfe-bc6c-2593b72d3eb4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_key\":\"measureUnit\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:35:04');
INSERT INTO `sys_log` VALUES ('b55555a1-eabf-4b99-800b-9187ba2d525d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:53:03');
INSERT INTO `sys_log` VALUES ('b5e256d0-3f8e-464b-8272-ddf93b015c6f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:36:27');
INSERT INTO `sys_log` VALUES ('b63da407-8206-41af-a633-82f787f7e86e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:34:42');
INSERT INTO `sys_log` VALUES ('b644ce35-560f-411e-9886-f5248e6c0130', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:41:15');
INSERT INTO `sys_log` VALUES ('b6451edf-60d1-4a3c-bb9b-b015df057ed5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:30:06');
INSERT INTO `sys_log` VALUES ('b69ea44c-3a3a-4d34-84af-ae8b5f28d209', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/news/get_list', '{\"search\":\"{}\",\"column_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:26:16');
INSERT INTO `sys_log` VALUES ('b74059a4-60c2-436e-874c-2b5032b4bdb3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:40:07');
INSERT INTO `sys_log` VALUES ('b7ad3606-50f2-456e-8140-df935544ae7e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"name\":\"\\u7535\\u6c60\",\"parent_id\":\"3\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 18:41:09');
INSERT INTO `sys_log` VALUES ('b7c280ba-9b94-44a1-8d40-80b511d3f171', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:18:48');
INSERT INTO `sys_log` VALUES ('b7c3b77e-5257-470e-9232-f9d5577a9805', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:43:45');
INSERT INTO `sys_log` VALUES ('b7d63ad1-62fb-47e2-aa4c-0aa5c0034564', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:43:01');
INSERT INTO `sys_log` VALUES ('b7e912ca-b072-4108-bc84-9d7f8811cdb2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/submit', '{\"parent_id\":\"0\",\"name\":\"\\u624b\\u673a\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-23 22:21:18');
INSERT INTO `sys_log` VALUES ('b8213304-a999-47c8-972b-890d1a9de535', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/template/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:09:52');
INSERT INTO `sys_log` VALUES ('b88d4df5-b31c-45a7-9b0d-38878f61409f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:31:19');
INSERT INTO `sys_log` VALUES ('b8b2be1d-9d52-4efa-8b0d-aafa12d5f3ed', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"status\":\"1\",\"dict_dir_key\":\"measureUnit\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:43:02');
INSERT INTO `sys_log` VALUES ('b9bb1f84-f037-4cd0-b6d9-01b692b9524d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:17:47');
INSERT INTO `sys_log` VALUES ('ba64130d-72a5-48f6-a602-5b76217da63f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"eb9bdd78-feae-4ff7-bd54-611b034235e3\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 11:40:24');
INSERT INTO `sys_log` VALUES ('ba68accd-a96c-4391-86df-cb8a0658d5cf', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:41:10');
INSERT INTO `sys_log` VALUES ('ba6a4dd1-6a56-4a03-9e79-276763e8c589', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:48:45');
INSERT INTO `sys_log` VALUES ('bad3c515-f50f-4f45-a4c0-f74448ed93fa', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 10:51:35');
INSERT INTO `sys_log` VALUES ('bb017407-b4e4-4635-88f6-5b629f95c678', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:33:49');
INSERT INTO `sys_log` VALUES ('bb3712c8-ccf2-4234-b2ef-611843cac26f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:54:19');
INSERT INTO `sys_log` VALUES ('bb4af7dc-027c-45e1-90e8-0d91191d6857', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:26:24');
INSERT INTO `sys_log` VALUES ('bb568d73-b219-4024-a73c-39b5248b4059', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:20:52');
INSERT INTO `sys_log` VALUES ('bb6c9cc6-869d-400a-aacc-54c0d20fdbab', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 20:23:52');
INSERT INTO `sys_log` VALUES ('bbb43f72-5491-4836-b21f-8209474fa7f3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:25:56');
INSERT INTO `sys_log` VALUES ('bbef1325-07aa-48a0-a9b7-5586b9b4ab2b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:32:43');
INSERT INTO `sys_log` VALUES ('bc1d83b5-4b8e-49bf-adc0-352852577c33', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:59:30');
INSERT INTO `sys_log` VALUES ('bc28554a-5997-4d32-bdd4-89563f507fad', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:57:35');
INSERT INTO `sys_log` VALUES ('bc5cf1c1-c71d-42d2-b141-ca6557809018', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:44:28');
INSERT INTO `sys_log` VALUES ('bcbb7196-a1bc-486b-8513-b2a24ebb9926', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:27:30');
INSERT INTO `sys_log` VALUES ('bcceec94-c460-456e-8626-41601d078cd5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:48:43');
INSERT INTO `sys_log` VALUES ('bd0a4414-c894-468a-ae7d-aa1bb86503d4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:07:56');
INSERT INTO `sys_log` VALUES ('bd3b8480-d22b-4305-9b9c-fb5355e214ae', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"0d03ad14-3fe1-4d1a-a5e3-45c87d15a75b\",\"parent_id\":\"02f6c566-7878-4353-ad36-179bd04e1b5a\",\"name\":\"\\u8d26\\u53f7\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/wechat\\/account\",\"route_name\":\"wechatAccount\",\"route_component\":\"views\\/wechat\\/account\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"98\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:42:45');
INSERT INTO `sys_log` VALUES ('bd905aec-6a46-4124-9287-4a4b7ad537fa', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:43:22');
INSERT INTO `sys_log` VALUES ('bd90f6cd-87f7-49f4-8957-00a026cf7ce3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 22:05:49');
INSERT INTO `sys_log` VALUES ('bd992ce3-11c6-4fa1-ae04-6cd6122abd2b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:19:47');
INSERT INTO `sys_log` VALUES ('bddd55e8-22cf-4d14-950c-23c0f77343fd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:27:13');
INSERT INTO `sys_log` VALUES ('be58e463-b957-42ac-afee-e66fd0a3d335', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 23:03:44');
INSERT INTO `sys_log` VALUES ('be6512d5-15b6-4d90-9867-050abf8f4a48', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:14:47');
INSERT INTO `sys_log` VALUES ('be70c267-44a1-43a3-a1cb-4f965aa06544', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:55:38');
INSERT INTO `sys_log` VALUES ('be9233df-5791-4b94-9401-3a58380280dd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:33:08');
INSERT INTO `sys_log` VALUES ('bea7d65a-0618-4e08-8c8b-5d91d9942782', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:34:05');
INSERT INTO `sys_log` VALUES ('bebff194-524d-4969-8191-79a676950c34', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:13:35');
INSERT INTO `sys_log` VALUES ('bee89087-c49c-4ac4-8c7c-65b028960492', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:06:21');
INSERT INTO `sys_log` VALUES ('bf09336d-7434-46d7-903b-a3bd421822e6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:18:52');
INSERT INTO `sys_log` VALUES ('bf7e2a4d-1028-40fe-b209-812e09ee874b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:25:59');
INSERT INTO `sys_log` VALUES ('bf9788f0-3ea8-42e6-b810-94b77c7898b2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:11:38');
INSERT INTO `sys_log` VALUES ('bff6d205-c092-496b-b2e9-93c0059b8133', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:45:09');
INSERT INTO `sys_log` VALUES ('c0ba2649-f076-4d61-bf85-892adbcb2e43', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:57:54');
INSERT INTO `sys_log` VALUES ('c10d4c94-148e-403d-8980-155247085cf4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"29bb8234-feea-453b-ad2f-1405011fac97\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5c5e\\u6027\",\"icon\":\"\",\"route_path\":\"\\/mall\\/attribute\",\"route_name\":\"mallAttribute\",\"route_component\":\"views\\/mall\\/attribute\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-26 20:50:30');
INSERT INTO `sys_log` VALUES ('c1c51db7-9864-4ff0-ba73-ff82be1c0684', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:43:53');
INSERT INTO `sys_log` VALUES ('c1fa0f81-0d8f-43e8-8204-f440365f95d4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/template/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:09:26');
INSERT INTO `sys_log` VALUES ('c23982e0-f762-4220-91e4-4c9e4f7f8ad8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:55:37');
INSERT INTO `sys_log` VALUES ('c24ca587-5002-48d4-b75b-1cccf53b170b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:25:44');
INSERT INTO `sys_log` VALUES ('c25cdcd3-a71f-49f4-989f-6df43d770b2b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:49');
INSERT INTO `sys_log` VALUES ('c270d8d9-b7be-4f9a-8046-5d3dec3df3bc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:37:27');
INSERT INTO `sys_log` VALUES ('c2bc7710-8252-4c6b-af1a-dbf0eff8244a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:48:50');
INSERT INTO `sys_log` VALUES ('c2c4047c-349d-4da8-a467-e447e26210c0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:00:17');
INSERT INTO `sys_log` VALUES ('c2d52a26-c191-4402-87e5-96a2c188fd4c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:34:32');
INSERT INTO `sys_log` VALUES ('c2e8a611-fe1f-475b-b20e-053c55c0fa17', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:09:53');
INSERT INTO `sys_log` VALUES ('c2f0f3c1-1abf-4f83-90f5-a5c786d5f126', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:27:38');
INSERT INTO `sys_log` VALUES ('c3daf76d-ab8d-4038-a759-083a2fdbd6bd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:30:53');
INSERT INTO `sys_log` VALUES ('c44e0789-8858-4757-af31-7af143cbaf98', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:42:39');
INSERT INTO `sys_log` VALUES ('c45ef3af-8de0-476a-8447-29b012ee2dc2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 10:46:07');
INSERT INTO `sys_log` VALUES ('c4fbdfba-878f-42f0-ae6d-983a49888149', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:43:32');
INSERT INTO `sys_log` VALUES ('c525710d-68e2-48f8-b498-8072ec584097', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:19:06');
INSERT INTO `sys_log` VALUES ('c536963a-2785-44e2-a06a-86a3dda01758', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:39:56');
INSERT INTO `sys_log` VALUES ('c5965d3c-df93-4363-9ac3-e126d9cad567', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/template/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:18:26');
INSERT INTO `sys_log` VALUES ('c59e128d-ff23-44b0-a5fc-0534c868f11b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"eb9bdd78-feae-4ff7-bd54-611b034235e3\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 11:39:27');
INSERT INTO `sys_log` VALUES ('c5cc16c1-25f4-40a9-91f9-402f350b7e80', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:52');
INSERT INTO `sys_log` VALUES ('c5d2cf8b-ff76-47b2-af6a-47d2d2ea48b7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:23:05');
INSERT INTO `sys_log` VALUES ('c5ea9ee9-6319-49da-ad50-dac52154be39', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/upload/do_upload', '{\"domain_name\":\"http:\\/\\/xuanyucms.lc\",\"upload_dir\":\"\\/uploads\",\"allowed_file_type\":\"*\",\"allowed_file_size\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 21:40:11');
INSERT INTO `sys_log` VALUES ('c68d03e4-8584-4f9d-8292-cd55fc8fb83c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:47:51');
INSERT INTO `sys_log` VALUES ('c6992a5c-b1e9-45db-a8f9-4cc2aebe8446', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"name\":\"\\u6d4b\\u8bd5\",\"parent_id\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 22:42:01');
INSERT INTO `sys_log` VALUES ('c6a820eb-8c25-4279-9d4e-f911dd561242', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"29bb8234-feea-453b-ad2f-1405011fac97\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5c5e\\u6027\",\"icon\":\"\",\"route_path\":\"\\/mall\\/attributes\",\"route_name\":\"attributes\",\"route_component\":\"view\\/mall\\/attributes\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-20 20:41:09');
INSERT INTO `sys_log` VALUES ('c6b0a75a-d86f-4cee-aaa3-579e4f999656', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:48:12');
INSERT INTO `sys_log` VALUES ('c6d63cbc-8475-4f41-956f-ef7060d02d21', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:57:34');
INSERT INTO `sys_log` VALUES ('c6fbb7d3-4b0a-4900-951e-163793abaffe', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:51:38');
INSERT INTO `sys_log` VALUES ('c746044d-86d5-4b92-a5b1-5adb66b9bc71', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:13:52');
INSERT INTO `sys_log` VALUES ('c7755132-c1f9-4652-8c79-99a25c9efe7d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:09:28');
INSERT INTO `sys_log` VALUES ('c832fc4b-296d-48a4-bfb7-7867a78eadf2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:26:00');
INSERT INTO `sys_log` VALUES ('c85888b1-e52a-4ba9-956b-f1c1568479c3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:40:43');
INSERT INTO `sys_log` VALUES ('c8a1be38-4b84-4f9c-b41c-b672c5e28848', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:33:43');
INSERT INTO `sys_log` VALUES ('c8a65944-32b1-4528-acfd-735bbbbe76cd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:12:06');
INSERT INTO `sys_log` VALUES ('c8db7efa-7736-4119-83d3-30169eedf4d1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:36:52');
INSERT INTO `sys_log` VALUES ('c94ade10-f492-425b-b8d3-1a37d55b390d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:23:58');
INSERT INTO `sys_log` VALUES ('c94fd6bd-9e91-45ba-ba9a-5e32774c1aea', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"0ca4dee2-9b45-441c-a767-c8b07197c9b0\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5206\\u7c7b\",\"icon\":\"\",\"route_path\":\"\\/mall\\/category\",\"route_name\":\"category\",\"route_component\":\"views\\/mall\\/category\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"98\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-23 22:45:22');
INSERT INTO `sys_log` VALUES ('ca526b12-88c0-4262-a16a-015d1e463177', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:38:24');
INSERT INTO `sys_log` VALUES ('ca622099-8cc5-4154-872c-eaa578c2e031', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/submit', '{\"id\":\"40a2e65a-8c5e-4451-8bd7-13313de0d166\",\"parent_id\":\"399ef431-3f7f-438a-99e2-c52a58010347\",\"name\":\"\\u624b\\u673a\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-23 22:53:58');
INSERT INTO `sys_log` VALUES ('cb19bd13-993f-48b8-b6a4-ce6c19c7b4fb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:31:13');
INSERT INTO `sys_log` VALUES ('cb1e1df4-b77e-4977-93b4-a6125b472939', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 22:26:39');
INSERT INTO `sys_log` VALUES ('cb688266-2511-4ee1-b9c3-ba34150396e5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:06:03');
INSERT INTO `sys_log` VALUES ('cb91a6d1-a17a-47a4-a74f-5cfdd1478500', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:23:01');
INSERT INTO `sys_log` VALUES ('cba5b564-6fc0-44f1-93a1-6b04b2537e58', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:27:44');
INSERT INTO `sys_log` VALUES ('cbc98777-f6c9-4b67-8ed2-8e26cb47cb17', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:48:23');
INSERT INTO `sys_log` VALUES ('cbf94c4e-ae85-45b8-9a95-e30613c1af2c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:19:04');
INSERT INTO `sys_log` VALUES ('cc375882-d5ec-4d4d-985e-00d81f8fb9bc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:31:04');
INSERT INTO `sys_log` VALUES ('cc6e0834-e9cb-42e7-9fb0-7382a1302a08', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:55:11');
INSERT INTO `sys_log` VALUES ('cccd3901-0951-442c-8618-6eb7a9b2e388', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:54:51');
INSERT INTO `sys_log` VALUES ('cd4249e9-afe9-49be-9543-438fa6ac285c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:46:38');
INSERT INTO `sys_log` VALUES ('cd45b945-1a3f-4d30-a683-fa1cb8ee3d25', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:31:48');
INSERT INTO `sys_log` VALUES ('cdc7b692-787e-48ae-b56e-0cfebc3bebd8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:39:46');
INSERT INTO `sys_log` VALUES ('ce0eceec-8d99-4a79-b184-264f6d494d73', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:48:51');
INSERT INTO `sys_log` VALUES ('ce55b46f-a399-423f-8fe2-908b9c11a982', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:20:54');
INSERT INTO `sys_log` VALUES ('ce56eac6-0e0a-4ffa-8fda-a02268d41065', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:31:48');
INSERT INTO `sys_log` VALUES ('cebb542b-e135-4d3b-a7d7-0910a818d11a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:39');
INSERT INTO `sys_log` VALUES ('cf2f77e5-b0cb-4aba-b5a8-d23aa45cdca0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:26:11');
INSERT INTO `sys_log` VALUES ('cf48f361-b77e-427e-b200-8b23aa34b908', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:53:37');
INSERT INTO `sys_log` VALUES ('cfe3ea31-cd5d-489f-bef5-d6a3a6f24cfd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:40:14');
INSERT INTO `sys_log` VALUES ('cff0b8b0-eb04-4869-9bc8-86debef55dd0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:45:02');
INSERT INTO `sys_log` VALUES ('d020758e-1f7d-4879-8f4e-919f1753059a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:39:27');
INSERT INTO `sys_log` VALUES ('d0503837-bde8-49d7-97f7-3367a062c48d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:37:36');
INSERT INTO `sys_log` VALUES ('d0b36a6f-70a9-4ca4-b5f9-f2cd87473244', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:31:27');
INSERT INTO `sys_log` VALUES ('d11acff5-bf2a-456e-a9aa-a3296880cc14', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:04:35');
INSERT INTO `sys_log` VALUES ('d12b195b-475b-45e1-a882-54098ef57a6b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:43:39');
INSERT INTO `sys_log` VALUES ('d1580a4b-c89a-48e8-83f5-e60e8e64270a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"id\":\"0a5c6ed0-6f02-4f09-98dc-ddebc349faa1\",\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f73\",\"account\":\"3\",\"origin_id\":\"3\",\"app_id\":\"3\",\"app_secred\":\"3\",\"status\":\"1\",\"sort\":\"100\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:30:18');
INSERT INTO `sys_log` VALUES ('d15b5a2a-cd26-497e-b3c6-679d41617a94', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:09:50');
INSERT INTO `sys_log` VALUES ('d16cfdfb-6f05-4fd1-a2b8-4488db4d5f00', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:23:50');
INSERT INTO `sys_log` VALUES ('d1d6898e-33c1-452a-b8d5-9b21cfb52aea', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:54:55');
INSERT INTO `sys_log` VALUES ('d1f91630-f8d0-4943-95e2-9bbcd53a7dc4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:10');
INSERT INTO `sys_log` VALUES ('d2030802-fe93-46c2-b49b-75d0b6cbfd31', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:05:59');
INSERT INTO `sys_log` VALUES ('d2137022-3248-42d2-b5e3-9f129ffc1d8d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:37:21');
INSERT INTO `sys_log` VALUES ('d21df3b8-2448-458f-9b2e-23c3e291acb4', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:43:07');
INSERT INTO `sys_log` VALUES ('d2a02815-d6b7-4f3c-a2d2-bf27d4d358f7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:57:57');
INSERT INTO `sys_log` VALUES ('d2e1453d-f256-4371-a4d8-544d578e1937', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:06:03');
INSERT INTO `sys_log` VALUES ('d368b5c6-c6d8-446d-b993-0071f16d1ad2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:27:54');
INSERT INTO `sys_log` VALUES ('d41a2541-e71b-4fc7-b5a7-252a14519430', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:04:35');
INSERT INTO `sys_log` VALUES ('d4249c51-49ef-4737-85ba-623111e9854a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/template/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:10:18');
INSERT INTO `sys_log` VALUES ('d42f36af-7f73-4b37-ae52-d9eae71683f7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 20:29:34');
INSERT INTO `sys_log` VALUES ('d47cfc3b-0f89-4da6-881a-ca046c61e987', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"name\":\"\\u8054\\u901a\\u624b\\u673a\\u5145\\u503c\\u5361\",\"parent_id\":\"2\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 18:40:51');
INSERT INTO `sys_log` VALUES ('d529ddfe-e471-4222-9386-2061549acd2c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:28:16');
INSERT INTO `sys_log` VALUES ('d54606ee-a555-4da5-9540-55d018a20c72', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 20:26:48');
INSERT INTO `sys_log` VALUES ('d5952e34-f466-4974-a713-f18514349855', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 14:59:32');
INSERT INTO `sys_log` VALUES ('d5bbbe61-b979-4222-9482-c62b888e30bb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"name\":\"3G\\u624b\\u673a\",\"parent_id\":\"1\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 18:40:19');
INSERT INTO `sys_log` VALUES ('d5c7d02c-8f3e-4961-8453-9a1640081f82', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:28:56');
INSERT INTO `sys_log` VALUES ('d5ccd486-1a62-4331-9959-846b462ef2bc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:13:52');
INSERT INTO `sys_log` VALUES ('d69ba78a-900f-409d-92ae-16d1df1fd37b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/submit', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\",\"dict_dir_key\":\"unit\",\"name\":\"\\u53cc\",\"key\":\"shuang\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-15 21:21:56');
INSERT INTO `sys_log` VALUES ('d6a8ff86-7b98-4773-b7a4-1c93d8458c9e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:48:13');
INSERT INTO `sys_log` VALUES ('d6c69781-259d-4a5a-81f1-41747cbc8aff', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:41:39');
INSERT INTO `sys_log` VALUES ('d6d8f338-f156-4e29-ae10-0d9cf8a03243', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:41:53');
INSERT INTO `sys_log` VALUES ('d748dd3d-39df-4bf9-a8ee-c5ddc26fa247', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:43:49');
INSERT INTO `sys_log` VALUES ('d7584f83-09a2-4376-8f6c-806c1ed9c0d3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:45:31');
INSERT INTO `sys_log` VALUES ('d77d4904-06ae-4d20-9e92-34b7699cc3a9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:41:04');
INSERT INTO `sys_log` VALUES ('d7cacfee-5f66-4b26-819a-7c057411ea19', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:45:06');
INSERT INTO `sys_log` VALUES ('d7cee022-882d-4989-9078-a2913a3babe1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:53:16');
INSERT INTO `sys_log` VALUES ('d7e5aafe-0344-410d-9a58-3f52d37c4696', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:13:04');
INSERT INTO `sys_log` VALUES ('d874bfd0-e653-4293-aec9-d0a091a7420e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:36:05');
INSERT INTO `sys_log` VALUES ('d8b536d7-6a49-4f66-b4be-6e9ce77ed4f3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"id\":\"6210ec85-9e23-4e4a-9c12-3dcbac08cab8\",\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f7\",\"account\":\"1\",\"origin_id\":\"1\",\"app_id\":\"1\",\"app_secred\":\"1\",\"status\":\"1\",\"sort\":\"100\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:27:34');
INSERT INTO `sys_log` VALUES ('d8c028d0-6866-4790-ae95-516ce332559e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:32:28');
INSERT INTO `sys_log` VALUES ('d8c3d7e8-15bf-4946-94db-53bd83738a55', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:12:47');
INSERT INTO `sys_log` VALUES ('d8e5a926-b10b-4573-86a8-3136432ebf55', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:30:20');
INSERT INTO `sys_log` VALUES ('d8edda9d-392e-4aef-a1b7-f15e0c21c9c2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:38:07');
INSERT INTO `sys_log` VALUES ('d92126b8-d646-4c84-82a5-7aa8df50cfb6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:58:08');
INSERT INTO `sys_log` VALUES ('d936ca96-466a-4b9d-948e-2e178bcac98a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:57:23');
INSERT INTO `sys_log` VALUES ('d96a6e2a-b726-4fcd-afa0-2857e050609e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-22 21:36:31');
INSERT INTO `sys_log` VALUES ('d98ac070-c81b-4077-9fa6-9f4be0bc20f6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:25:34');
INSERT INTO `sys_log` VALUES ('d9de8f1a-20f8-4df7-a67e-2e0e9d81ba91', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:21:56');
INSERT INTO `sys_log` VALUES ('d9e2e61a-fd1c-4ff5-9418-d5483da0ba04', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:25:51');
INSERT INTO `sys_log` VALUES ('d9eaaae9-9ffd-4d2a-b3dc-4aa42e425d76', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:31:29');
INSERT INTO `sys_log` VALUES ('da3318a2-6499-462c-a90a-31f8fe44107f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:26:14');
INSERT INTO `sys_log` VALUES ('da41019f-dfa2-423c-a4b7-e5a50dbb90fe', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:41:30');
INSERT INTO `sys_log` VALUES ('da438b67-4a10-424b-86f8-1eddafcf5180', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:30:19');
INSERT INTO `sys_log` VALUES ('da812a2c-0053-453f-b269-f34076e7d5d8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:07:42');
INSERT INTO `sys_log` VALUES ('da94aac2-7341-45e1-945a-03b7a19cef71', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:45:22');
INSERT INTO `sys_log` VALUES ('dae41d7a-c793-464d-915b-0dd336f2f8ca', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/submit', '{\"name\":\"\\u65b0\\u54c1\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-26 21:47:44');
INSERT INTO `sys_log` VALUES ('dae6f006-1f4a-4d16-9a18-536e398993d8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:29:21');
INSERT INTO `sys_log` VALUES ('daf50fdb-0972-4556-9e8a-f61131afd6c3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:39:34');
INSERT INTO `sys_log` VALUES ('db17cc91-dceb-4f48-8b36-d8c7eff2a4b1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:17:40');
INSERT INTO `sys_log` VALUES ('db6f7efd-394c-406e-83c2-a8ad007e26a8', 3, '', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '3', '签名无效', '2019-12-26 20:37:38');
INSERT INTO `sys_log` VALUES ('dc1760a2-2579-405a-8c8e-dee4f61b8778', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:53:08');
INSERT INTO `sys_log` VALUES ('dc2fb8d2-33fa-4416-844b-48c13356bd13', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:29:40');
INSERT INTO `sys_log` VALUES ('dc45542f-9f91-47b5-94c4-2fe1a6007fc9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:28:33');
INSERT INTO `sys_log` VALUES ('dc74a6e3-f586-456b-93a0-1d104f525e22', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 10:46:08');
INSERT INTO `sys_log` VALUES ('dc8229c0-0d44-4dcb-8ff1-4ef73719b951', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:51:38');
INSERT INTO `sys_log` VALUES ('dc955278-d57e-4951-b483-b0a8b45f2277', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"b4a158c5-2f2f-41d6-a784-c882492f436f\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:17:22');
INSERT INTO `sys_log` VALUES ('dc9623e7-6244-46d1-a9f5-332372e6b963', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:10:50');
INSERT INTO `sys_log` VALUES ('dccde809-abc5-4cff-bf6d-81208d3331da', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:18:40');
INSERT INTO `sys_log` VALUES ('dcdc74fb-970e-4aec-a7f2-1aa9ea9973e0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:41:02');
INSERT INTO `sys_log` VALUES ('dce06361-9a4c-45a1-bbdd-640f7d83da3d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:58:48');
INSERT INTO `sys_log` VALUES ('ddab164f-9d9d-40b0-bd52-a0b11af431bc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:13:30');
INSERT INTO `sys_log` VALUES ('ddae8b2d-15ee-4389-8373-182afc98e8e2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:16:26');
INSERT INTO `sys_log` VALUES ('de489384-fae2-4e4f-aa90-e1ec16433209', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"0444e5cd-3051-45b1-bf7b-b03362ee5f34\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:06:33');
INSERT INTO `sys_log` VALUES ('de71fa94-5313-4a10-a956-228b85ba9de0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:10');
INSERT INTO `sys_log` VALUES ('de8b932c-8d39-4d20-b74a-1610d31c7730', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:05:34');
INSERT INTO `sys_log` VALUES ('deca498e-d4b0-48c3-be5c-06880a3d753d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:43:04');
INSERT INTO `sys_log` VALUES ('dee10eb5-3e3b-4a83-8de9-144ae4eb4fd5', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 20:26:48');
INSERT INTO `sys_log` VALUES ('df0833b7-dbaf-4814-a390-b0403a55a838', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:57:43');
INSERT INTO `sys_log` VALUES ('df494a09-17ed-449a-a0fd-a9628eaa6513', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:41:44');
INSERT INTO `sys_log` VALUES ('df5410d7-411b-41c7-b19f-7d4d7492b32c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:47:04');
INSERT INTO `sys_log` VALUES ('df6a2de9-2564-491d-8a37-3d37125e7163', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:34:50');
INSERT INTO `sys_log` VALUES ('dfb6c7cc-a845-4d81-b042-75bd609587a6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:30:51');
INSERT INTO `sys_log` VALUES ('dfd8ea35-4e02-4b96-9f49-d3048ba18a7b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:09:21');
INSERT INTO `sys_log` VALUES ('e011bf35-efc9-43e2-aad3-e3e67f06b06e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:18:51');
INSERT INTO `sys_log` VALUES ('e04cfa57-75dc-4e50-9af4-6b55dbdffdc7', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2020-01-14 22:02:41');
INSERT INTO `sys_log` VALUES ('e061bfbf-7cfa-4754-8ed7-d704f277babc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:42:39');
INSERT INTO `sys_log` VALUES ('e072213a-baf9-448f-9a27-77a016539f8a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:06:59');
INSERT INTO `sys_log` VALUES ('e075fc99-4cb8-40fc-a2b8-31f495ab292f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:18:27');
INSERT INTO `sys_log` VALUES ('e079e1d9-1949-4dd2-a7c6-2f401c6882d8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:05:38');
INSERT INTO `sys_log` VALUES ('e0996627-519b-4e7e-bdb1-4703ba98c660', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:52:53');
INSERT INTO `sys_log` VALUES ('e0e944ce-d964-4c7c-806c-b61d808c41fd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/delete', '{\"id\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:46:41');
INSERT INTO `sys_log` VALUES ('e0fad47a-d3d9-4a01-9d68-8db5fb589827', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u54c1\\u724c\",\"icon\":\"\",\"route_path\":\"\\/mall\\/brand\",\"route_name\":\"mallBrand\",\"route_component\":\"views\\/mall\\/brand\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-26 20:50:00');
INSERT INTO `sys_log` VALUES ('e103379b-d045-474a-a313-0946b22a9f76', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:28:29');
INSERT INTO `sys_log` VALUES ('e1595545-d8cd-411d-ada7-d2c52d85cacc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:34:13');
INSERT INTO `sys_log` VALUES ('e160cbc0-c195-403e-99ad-91766d5a4a54', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:15:33');
INSERT INTO `sys_log` VALUES ('e1ad15a2-9206-45d3-ac32-bc96d7e643ca', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:11:46');
INSERT INTO `sys_log` VALUES ('e1af71b3-5762-4d2f-ac2f-415b56f01036', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:17:58');
INSERT INTO `sys_log` VALUES ('e1e4e7dc-7f95-4ded-88af-30a1c9736701', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"adda7c29-55e3-4008-af3b-92bb60a08f88\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/mall\\/goods\",\"route_name\":\"mallGoods\",\"route_component\":\"views\\/mall\\/goods\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,0b6d7a2a-91e6-4ed2-ab03-3906f57b46d0,972659d8-4c43-4f93-9229-857a63c20714\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-14 21:28:45');
INSERT INTO `sys_log` VALUES ('e1f83a46-a016-4577-b8e8-ff1057b72669', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:36:40');
INSERT INTO `sys_log` VALUES ('e21b0be3-cfdc-477b-bcec-089121d2eba0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:14:18');
INSERT INTO `sys_log` VALUES ('e26812ab-fe41-47fe-8772-90f273399717', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:28:58');
INSERT INTO `sys_log` VALUES ('e27769ad-805f-416a-b67c-818aee497d0f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:05:13');
INSERT INTO `sys_log` VALUES ('e2ad8bb2-d029-46af-940f-c5891647a748', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:31:46');
INSERT INTO `sys_log` VALUES ('e353565a-642c-41c2-b60c-986c6889a338', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:38:17');
INSERT INTO `sys_log` VALUES ('e384a9ba-51ce-450f-884c-def39114677a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:25:51');
INSERT INTO `sys_log` VALUES ('e3aff63f-1cf9-4e3c-9172-02585f213ef1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:48:12');
INSERT INTO `sys_log` VALUES ('e3fb6cd9-71cc-4ab6-801a-71c45c4085d8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:07:57');
INSERT INTO `sys_log` VALUES ('e412880e-3f78-4644-9d6f-c778b4d41d69', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:38:01');
INSERT INTO `sys_log` VALUES ('e417114d-4925-48a8-bc6c-5248c32e6bf8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:45:09');
INSERT INTO `sys_log` VALUES ('e41afacc-049b-464a-9a6d-64cf292a91e1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:41:39');
INSERT INTO `sys_log` VALUES ('e48cfebc-22b7-495f-98a4-bf2f18cb0c0a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:29:14');
INSERT INTO `sys_log` VALUES ('e4a9ba91-f960-4cfe-8f55-7cc7430337da', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:25:27');
INSERT INTO `sys_log` VALUES ('e4cd7f1d-4c09-4fca-a31e-62bd6c998e0f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:33:34');
INSERT INTO `sys_log` VALUES ('e5609a5d-6e6f-4665-927d-7d783042d171', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"0444e5cd-3051-45b1-bf7b-b03362ee5f34\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:06:35');
INSERT INTO `sys_log` VALUES ('e5af7d28-e016-4a38-b4da-89fa1567814f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:29:24');
INSERT INTO `sys_log` VALUES ('e5be003b-98f5-4f93-bec5-b4c2c7be19d7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:23:54');
INSERT INTO `sys_log` VALUES ('e5e95c6f-472c-48a6-80b4-fc2ebffc9ceb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:18:45');
INSERT INTO `sys_log` VALUES ('e5ed595a-c584-427e-9490-69861f8c9f16', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:38:44');
INSERT INTO `sys_log` VALUES ('e607f5b9-8dc5-4b46-8567-3f955f935dd8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:38:16');
INSERT INTO `sys_log` VALUES ('e60dd2a2-b299-488b-8af7-0f9ca4bd87bd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-22 21:36:29');
INSERT INTO `sys_log` VALUES ('e620f61c-de00-45ee-9ce2-08fb5bc27dec', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"29bb8234-feea-453b-ad2f-1405011fac97\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5c5e\\u6027\",\"icon\":\"\",\"route_path\":\"\\/mall\\/attribute\",\"route_name\":\"attribute\",\"route_component\":\"views\\/mall\\/attribute\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-20 21:43:31');
INSERT INTO `sys_log` VALUES ('e6379450-3edc-43d1-a1e3-48ef31f331cc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:14:46');
INSERT INTO `sys_log` VALUES ('e6617c2a-e82f-4986-9c1f-7ca9555c0b1d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:11:55');
INSERT INTO `sys_log` VALUES ('e6682ec0-c4bc-45ac-bced-5ffc565d535d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:38:01');
INSERT INTO `sys_log` VALUES ('e673ff20-658e-4601-80a7-79d1f2a8d018', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:43:01');
INSERT INTO `sys_log` VALUES ('e6936d5b-bbbf-456b-801d-642f4571455c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:20:54');
INSERT INTO `sys_log` VALUES ('e7182bb7-f08b-4039-8104-df6bf46c8e45', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:45:33');
INSERT INTO `sys_log` VALUES ('e7415ca4-17cc-46aa-9e06-e3e207ceb069', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:11:37');
INSERT INTO `sys_log` VALUES ('e7b0f0d6-caae-4755-9699-12d4142c9159', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:29:39');
INSERT INTO `sys_log` VALUES ('e7f37905-89df-43ac-a968-853e28a6275d', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2020-01-14 21:54:13');
INSERT INTO `sys_log` VALUES ('e828376d-c72f-4813-87e5-a9a727fc706b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/submit', '{\"parent_id\":\"f6f92ddc-91fd-4289-814e-329110f37335\",\"name\":\"\\u8ba1\\u91cf\\u5355\\u4f4d\",\"key\":\"unit\",\"is_update_dir_key\":\"0\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-15 21:19:01');
INSERT INTO `sys_log` VALUES ('e84c9f67-4768-4edf-8d6a-4987890f2f2a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:04:16');
INSERT INTO `sys_log` VALUES ('e864259f-d1e3-4d13-8b92-c0a3f6a2d4ab', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:37:38');
INSERT INTO `sys_log` VALUES ('e87e48be-78ad-4093-a151-2fce024224e9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:49:03');
INSERT INTO `sys_log` VALUES ('e88595c6-c3b4-40a6-b7e2-743bfa62d7de', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:07:43');
INSERT INTO `sys_log` VALUES ('e8a85cb4-77fa-416e-8fa8-fd94f9d6635e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:48:50');
INSERT INTO `sys_log` VALUES ('e8d9076a-eb27-47a5-855c-beab32ddaef9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:46:41');
INSERT INTO `sys_log` VALUES ('e8e73db8-8d22-4cc0-ba01-0eba50593e78', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"02f6c566-7878-4353-ad36-179bd04e1b5a\",\"parent_id\":\"0\",\"name\":\"\\u5fae\\u4fe1\\u516c\\u4f17\\u53f7\",\"icon\":\"wechat\",\"route_path\":\"\\/wechat\",\"route_name\":\"wechat\",\"route_component\":\"layouts\\/basicLayout\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"0\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-26 21:27:29');
INSERT INTO `sys_log` VALUES ('e8f28436-4961-4d3f-af1b-bc6f178f8ac8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/template/get_list', '{\"has_pagination\":\"0\",\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-22 21:36:08');
INSERT INTO `sys_log` VALUES ('e94f13e8-d401-4578-a300-8a60f7928ace', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:25:58');
INSERT INTO `sys_log` VALUES ('e9507396-83c7-4aeb-a166-98de863b30be', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 23:03:53');
INSERT INTO `sys_log` VALUES ('e991dd95-292b-4a04-8044-efdf7964c9e0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 21:49:16');
INSERT INTO `sys_log` VALUES ('e9ea4b59-4897-4205-ad2b-4c5d36c58dbe', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 23:07:39');
INSERT INTO `sys_log` VALUES ('ea0d45d2-b068-4161-90da-e5a20462cac0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:40:12');
INSERT INTO `sys_log` VALUES ('ea25ab71-ff7c-4572-b203-32dfb7731424', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:19:31');
INSERT INTO `sys_log` VALUES ('ea4d1d7f-69fe-408d-a125-29a38b68b9dd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:47:56');
INSERT INTO `sys_log` VALUES ('ea90fab8-c4ba-45a7-9b99-56ca8c026502', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:57:37');
INSERT INTO `sys_log` VALUES ('ead7832f-dc88-484e-98eb-0a23b439b22d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 15:00:41');
INSERT INTO `sys_log` VALUES ('eb3c4990-bc20-4923-8568-c6ea6dc952f3', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2020-01-12 10:46:33');
INSERT INTO `sys_log` VALUES ('eb429f2e-8495-4276-b2fa-df8a34371c7d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:40');
INSERT INTO `sys_log` VALUES ('eb93a126-2847-43db-a4ff-f3a208362e6a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:35:04');
INSERT INTO `sys_log` VALUES ('ebf2e2d0-b319-4072-9b4d-2aa6cef4fd0c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"parent_id\":\"02f6c566-7878-4353-ad36-179bd04e1b5a\",\"name\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/wechat\\/menu\",\"route_name\":\"menu\",\"route_component\":\"views\\/wechat\\/menu\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 19:29:18');
INSERT INTO `sys_log` VALUES ('ec6a229a-df5b-4fcc-b1ca-d822b79ed762', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:37:06');
INSERT INTO `sys_log` VALUES ('ec9ecec4-ad85-4ee0-8484-aeaf8e6fa0c7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:44:38');
INSERT INTO `sys_log` VALUES ('ecc4ae11-83ad-47b3-8992-2f8ad9191a4e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:28:13');
INSERT INTO `sys_log` VALUES ('ecd05cdb-6f65-4cc8-9dac-c91209de7ed9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:26:37');
INSERT INTO `sys_log` VALUES ('ed013da0-9d46-4653-8881-87a6aaacfefc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:25:58');
INSERT INTO `sys_log` VALUES ('ed210c68-09da-443e-afca-ec16b8fd0343', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2020-01-14 21:58:17');
INSERT INTO `sys_log` VALUES ('ed4431b8-c6be-4bdb-a75c-62a57375d3d1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/user/get_list', '{\"dept_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:23:05');
INSERT INTO `sys_log` VALUES ('ed624a82-24c5-4384-a862-4912d8bf7997', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:26:09');
INSERT INTO `sys_log` VALUES ('ed6f13b1-bf2f-4604-8fca-de295249919a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:37:18');
INSERT INTO `sys_log` VALUES ('edfe79ae-2c9f-4156-9d87-536f4b9f07c1', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:19:47');
INSERT INTO `sys_log` VALUES ('ee4532e5-9eb4-4c22-9b05-c680fc450098', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:25:55');
INSERT INTO `sys_log` VALUES ('eeb4a12e-ec17-40e9-8bae-aeab13b2fd76', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:39:56');
INSERT INTO `sys_log` VALUES ('eee78aaf-4c78-4522-8a8e-236a4c24371a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:35:35');
INSERT INTO `sys_log` VALUES ('f02c844a-7915-4bd0-93bb-80955e3645b9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:18:14');
INSERT INTO `sys_log` VALUES ('f03098e4-94bc-4e41-a654-e849b24228b7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:20:43');
INSERT INTO `sys_log` VALUES ('f038906e-7c1f-4aab-99ef-5806ad622596', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:11:38');
INSERT INTO `sys_log` VALUES ('f057e7e3-be84-498d-80d2-c23c1d927191', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 10:51:41');
INSERT INTO `sys_log` VALUES ('f05ce89e-6b22-43c0-9e27-5aa83be359c8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:33:29');
INSERT INTO `sys_log` VALUES ('f0658df1-9684-4a5e-9774-e7a3df9b7ad3', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:21:31');
INSERT INTO `sys_log` VALUES ('f0718f3d-475e-45f9-b0f9-ac0b5de39f2f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:48:48');
INSERT INTO `sys_log` VALUES ('f0dd5c86-e112-4139-b342-2b47234e5ab2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 10:46:08');
INSERT INTO `sys_log` VALUES ('f10e314c-401b-4de3-b7d1-f3cbd3bd617a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:12:16');
INSERT INTO `sys_log` VALUES ('f1191bfc-c58a-4bc4-91cd-1934ba213c6c', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:18:47');
INSERT INTO `sys_log` VALUES ('f122fba7-5feb-493f-b5e2-af90e61aee66', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:57:58');
INSERT INTO `sys_log` VALUES ('f146f2c1-8368-4c75-8146-044941b0afcd', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:27:24');
INSERT INTO `sys_log` VALUES ('f1541bef-d986-4781-850d-cca24d365041', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:37:49');
INSERT INTO `sys_log` VALUES ('f166f721-85a7-4148-b1bb-77abd4c65eaf', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 22:16:08');
INSERT INTO `sys_log` VALUES ('f1c342f0-198d-4bda-beb4-a9135d33932a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:07:43');
INSERT INTO `sys_log` VALUES ('f1ca7d7e-e798-4a98-adaa-b3289a148c84', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:39:42');
INSERT INTO `sys_log` VALUES ('f2c845f3-e839-4aa5-88bb-fec420a8981a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:52:13');
INSERT INTO `sys_log` VALUES ('f2dd4add-3c7b-4a2f-ba2e-5573a97d9408', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:47:08');
INSERT INTO `sys_log` VALUES ('f39ae606-9fc5-4de0-8ccf-5520315c55ca', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 22:48:13');
INSERT INTO `sys_log` VALUES ('f3bf0086-5abd-4335-aabc-8e88927e70d7', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:36:03');
INSERT INTO `sys_log` VALUES ('f3d27d93-9dd7-4ed9-a9ee-88e6bd4bbc0f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:42:41');
INSERT INTO `sys_log` VALUES ('f49aaa81-a34d-4918-91d2-30c2d810b33a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:12:22');
INSERT INTO `sys_log` VALUES ('f4a8b904-c7a9-41c7-ad2f-484fe6feb585', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"id\":\"6210ec85-9e23-4e4a-9c12-3dcbac08cab8\",\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f7\",\"account\":\"1\",\"origin_id\":\"1\",\"app_id\":\"1\",\"app_secred\":\"1\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:59:22');
INSERT INTO `sys_log` VALUES ('f4f9edcb-f6c1-42c3-a879-8adaa9664c54', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/tag/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-30 21:58:02');
INSERT INTO `sys_log` VALUES ('f54db0f1-a0a7-4200-a42e-18f985c73365', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:37:25');
INSERT INTO `sys_log` VALUES ('f561c0e0-697d-4283-bc44-08dfe7420479', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:26:24');
INSERT INTO `sys_log` VALUES ('f5bee7e2-40b1-4096-b667-fd8b4eccbfe6', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:46:25');
INSERT INTO `sys_log` VALUES ('f60b01ba-d144-4e81-aee9-9d72e208f09e', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"parent_id\":\"02f6c566-7878-4353-ad36-179bd04e1b5a\",\"name\":\"\\u8d26\\u53f7\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/wechat\\/account\",\"route_name\":\"wechatAccount\",\"route_component\":\"views\\/wechat\\/account\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 21:04:06');
INSERT INTO `sys_log` VALUES ('f61a3c5b-5b2e-4e36-92b8-d14c57f73b5b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:36:12');
INSERT INTO `sys_log` VALUES ('f64d0aa9-b7a7-4bc7-b00e-364d3c50dc4f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/submit', '{\"id\":\"f6f92ddc-91fd-4289-814e-329110f37335\",\"parent_id\":\"0\",\"name\":\"\\u5546\\u57ce\",\"key\":\"mall\",\"is_update_dir_key\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-15 21:18:40');
INSERT INTO `sys_log` VALUES ('f6e381dd-f4d8-430e-bb2d-753078e26c20', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:59:18');
INSERT INTO `sys_log` VALUES ('f6f344cf-c3f3-4686-aeba-7d0b0690c912', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 23:13:13');
INSERT INTO `sys_log` VALUES ('f6f876ae-036e-4930-82b9-4bf4bafa6f8b', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:05:38');
INSERT INTO `sys_log` VALUES ('f712df8b-a92a-4a80-81f3-961e0ed776f2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-12 10:51:48');
INSERT INTO `sys_log` VALUES ('f71e79b9-acc1-4dea-b32f-ae8f338d6642', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 21:49:16');
INSERT INTO `sys_log` VALUES ('f72495a0-23f5-4a57-8270-59a64cdd1197', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:23:01');
INSERT INTO `sys_log` VALUES ('f73bdf77-446a-4f51-8a4d-fc36e67af068', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:29:26');
INSERT INTO `sys_log` VALUES ('f7581a47-3b15-4910-964e-e9882c1d5eeb', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:48:00');
INSERT INTO `sys_log` VALUES ('f894dc15-d779-4e71-8b79-9acbf2733bb2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:59:15');
INSERT INTO `sys_log` VALUES ('f8d3fe69-f48f-4aa4-a220-8aca32475fab', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/submit', '{\"parent_id\":\"0\",\"name\":\"\\u624b\\u673a\\u901a\\u8baf\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-23 22:29:21');
INSERT INTO `sys_log` VALUES ('f8e076fc-6079-4c1d-8887-c99a0a1aaf0d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:59:33');
INSERT INTO `sys_log` VALUES ('f8e793d3-a359-4a48-a576-a43bce6975d0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-22 21:36:26');
INSERT INTO `sys_log` VALUES ('f921b13e-9f9a-4729-8b87-70f317363359', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-29 18:40:19');
INSERT INTO `sys_log` VALUES ('f9482697-7c35-4de7-98d5-c8fb47ef2e47', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '{\"status\":\"1\",\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-15 21:27:52');
INSERT INTO `sys_log` VALUES ('f9545f60-c31b-4c7c-88f1-55c1deac2069', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:31:29');
INSERT INTO `sys_log` VALUES ('f99fe115-32eb-4b05-b81e-1973f19ef6fe', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 23:21:05');
INSERT INTO `sys_log` VALUES ('f9e0974b-fca1-4aa7-b068-f3acb5ffbd82', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:33:27');
INSERT INTO `sys_log` VALUES ('f9f5b06b-b710-406f-814f-db8e95e87214', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/category/submit', '{\"name\":\"\\u5145\\u7535\\u5668\",\"parent_id\":\"3\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-29 18:40:58');
INSERT INTO `sys_log` VALUES ('fa47e65a-930d-42c4-9a19-9ccd5775095a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 21:48:12');
INSERT INTO `sys_log` VALUES ('fa72c7b3-eb46-490f-a236-147fbebaac90', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:45:43');
INSERT INTO `sys_log` VALUES ('fabcba10-0e2f-4290-bfa4-c7963aa7b66d', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:50:49');
INSERT INTO `sys_log` VALUES ('fad9c710-22b5-4b55-8dc2-90da8690cf8a', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/brand/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-31 21:38:28');
INSERT INTO `sys_log` VALUES ('fae9f4ba-cc0a-4963-b0c1-ac07f8adf802', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"7fa8cc06-d1e6-4260-837f-8714746b381f\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5c55\\u793a\\u5206\\u7c7b\",\"icon\":\"\",\"route_path\":\"\\/mall\\/classify\",\"route_name\":\"mallClassify\",\"route_component\":\"views\\/mall\\/classify\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,4ac84963-f166-4474-b617-777abf6956c8\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-26 20:50:41');
INSERT INTO `sys_log` VALUES ('fb129ae1-5cbc-4478-ba5d-d8f7e324d7f0', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 20:50:50');
INSERT INTO `sys_log` VALUES ('fbb30d39-9a79-4fe5-acbc-84370fc68457', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:42:00');
INSERT INTO `sys_log` VALUES ('fbfd292e-5314-4434-a049-0f06738ad554', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:42:18');
INSERT INTO `sys_log` VALUES ('fc0b8194-83aa-4dcf-992c-695bb79c7f79', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:23:22');
INSERT INTO `sys_log` VALUES ('fc10d81a-793f-4616-bb64-c6e7d712fcaa', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 23:03:44');
INSERT INTO `sys_log` VALUES ('fc5f41d0-1d52-4ab0-8fc6-5e5e9f3c1578', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/goods/get_list', '{\"current_page\":\"1\",\"page_size\":\"40\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-24 20:34:28');
INSERT INTO `sys_log` VALUES ('fc60ec3d-9aa9-4a61-8805-f2d628ab7180', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:51:37');
INSERT INTO `sys_log` VALUES ('fc6fe4eb-ecc4-40d1-a097-5150d4a52238', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dept/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:28:41');
INSERT INTO `sys_log` VALUES ('fca96b18-2e2a-4f2a-8558-b6bffe1987dc', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:04:27');
INSERT INTO `sys_log` VALUES ('fcba422e-e756-426f-b4b4-f7d78c0feb65', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:28:56');
INSERT INTO `sys_log` VALUES ('fd101336-327d-49f3-957a-2a5a65787411', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"0ca4dee2-9b45-441c-a767-c8b07197c9b0\",\"parent_id\":\"0cdb912d-4701-4ca1-974f-1bf62b63a783\",\"name\":\"\\u5546\\u54c1\\u5206\\u7c7b\",\"icon\":\"\",\"route_path\":\"\\/mall\\/goodsCategories\",\"route_name\":\"goodsCategories\",\"route_component\":\"view\\/mall\\/goodsCategories\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-20 20:38:35');
INSERT INTO `sys_log` VALUES ('fda0db2e-7b6c-4c5d-9a7b-e7dace9e2aff', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-20 20:22:20');
INSERT INTO `sys_log` VALUES ('fdb34ef2-daa3-4b65-88aa-7af514eec60f', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-26 21:44:33');
INSERT INTO `sys_log` VALUES ('fdf8d659-4d9e-4b1f-8dc8-72afb87cb317', 1, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2020-01-14 21:59:49');
INSERT INTO `sys_log` VALUES ('fe2a0449-eb98-4e07-86a3-ad64640efea9', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 22:29:31');
INSERT INTO `sys_log` VALUES ('fe55c769-b9a9-4a4d-9573-e1459db0e141', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:51:30');
INSERT INTO `sys_log` VALUES ('fed329d2-0746-4fcc-8e5f-fbe76c871b91', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:24:01');
INSERT INTO `sys_log` VALUES ('fee966ae-1f1e-4fd1-b126-2ad93b8717e8', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 19:23:54');
INSERT INTO `sys_log` VALUES ('ff5eb041-8d45-4ae7-9524-caf29696ea09', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'information/column/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:36:11');
INSERT INTO `sys_log` VALUES ('ffb1d8cf-515c-438b-8462-b64ec2c4bc50', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/role/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-23 20:20:01');
INSERT INTO `sys_log` VALUES ('fff3ad9a-bed6-4f96-8845-ee2808cfb481', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2020-01-14 21:33:42');
INSERT INTO `sys_log` VALUES ('fff4d78a-43ec-436d-995e-4a2597586f27', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'mall/classify/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-28 19:42:41');
INSERT INTO `sys_log` VALUES ('fff4fafe-5f22-439b-9661-b1a32fd748a2', 2, '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/submit', '{\"id\":\"ffd94f83-01e4-47ff-93d7-1f2e7d365ade\",\"parent_id\":\"f6f92ddc-91fd-4289-814e-329110f37335\",\"name\":\"\\u8ba1\\u91cf\\u5355\\u4f4d\",\"key\":\"measureUnit\",\"is_update_dir_key\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2020-01-15 21:31:26');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '上级菜单',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `icon` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `route_path` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由地址',
  `route_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由名称',
  `route_component` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由页面',
  `redirect` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '重定向',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打开方式',
  `hidden` int(1) NULL DEFAULT NULL COMMENT '隐藏菜单',
  `auth_button_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限按钮标识',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT 100 COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('02f6c566-7878-4353-ad36-179bd04e1b5a', '0', '微信公众号', 'wechat', '/wechat', 'wechat', 'layouts/basicLayout', NULL, NULL, 0, '', 0, 99, '2019-12-19 19:23:21', '2019-12-26 21:27:29');
INSERT INTO `sys_menu` VALUES ('0a2ba2e9-e9e2-4bbf-a836-5fb7aa3af41e', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '角色管理', '', '/system/role', 'role', 'views/system/role', NULL, NULL, 0, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,41fa64dc-ed83-428b-bba3-dcf9753cfa3e', 1, 99, '2019-06-29 23:34:50', '2019-12-04 14:25:32');
INSERT INTO `sys_menu` VALUES ('0ca4dee2-9b45-441c-a767-c8b07197c9b0', '0cdb912d-4701-4ca1-974f-1bf62b63a783', '商品分类', '', '/mall/category', 'mallCategory', 'views/mall/category', NULL, NULL, 0, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,4ac84963-f166-4474-b617-777abf6956c8', 1, 99, '2019-12-20 20:37:29', '2019-12-29 18:36:39');
INSERT INTO `sys_menu` VALUES ('0cdb912d-4701-4ca1-974f-1bf62b63a783', '0', '商城', 'shop', '/mall', 'mall', 'layouts/basicLayout', NULL, NULL, 0, '', 1, 99, '2019-12-20 20:26:08', '2019-12-20 20:26:08');
INSERT INTO `sys_menu` VALUES ('0d03ad14-3fe1-4d1a-a5e3-45c87d15a75b', '02f6c566-7878-4353-ad36-179bd04e1b5a', '账号管理', '', '/wechat/account', 'wechatAccount', 'views/wechat/account', NULL, NULL, 0, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', 1, 98, '2019-12-19 21:04:06', '2019-12-19 22:42:45');
INSERT INTO `sys_menu` VALUES ('18589585-7a9a-48d7-89e0-f18e046b8d02', '89f0db23-ff1a-49d9-b021-dab2711ebee0', '单页管理', '', '/information/single', 'single', 'views/information/single', '', NULL, 0, 'df1408bf-a355-4474-90a9-04ae5ecf087e', 1, 99, '2019-07-29 19:44:05', '2019-11-28 20:12:20');
INSERT INTO `sys_menu` VALUES ('22695154-4c7a-4cb0-8a6e-1609ea9b47b6', '89f0db23-ff1a-49d9-b021-dab2711ebee0', '模板管理', '', '/information/template', 'template', 'views/information/template', '', NULL, 0, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', 1, 99, '2019-07-04 17:09:57', '2019-11-28 12:28:22');
INSERT INTO `sys_menu` VALUES ('29bb8234-feea-453b-ad2f-1405011fac97', '0cdb912d-4701-4ca1-974f-1bf62b63a783', '商品属性', '', '/mall/attribute', 'mallAttribute', 'views/mall/attribute', NULL, NULL, 0, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', 0, 99, '2019-12-20 20:38:21', '2019-12-28 23:13:36');
INSERT INTO `sys_menu` VALUES ('3cfc06b5-1abe-4bec-bc13-9be7c553d77a', '02f6c566-7878-4353-ad36-179bd04e1b5a', '菜单管理', '', '/wechat/menu', 'wechatMenu', 'views/wechat/menu', NULL, NULL, 0, '', 1, 99, '2019-12-19 19:29:18', '2019-12-19 21:04:27');
INSERT INTO `sys_menu` VALUES ('3e14495f-be53-4622-80b3-78832d82f685', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '岗位管理', NULL, '/system/post', 'post', 'views/system/post', NULL, '', NULL, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', 1, 99, '2019-06-30 14:35:08', '2019-11-26 09:40:00');
INSERT INTO `sys_menu` VALUES ('573421e8-42a6-47b1-919c-0feb863754de', 'fc9ccb9b-9f78-4de4-a8d0-5a7153d249ba', '工作台', '', '/workplace/dashboard', 'dashboard', 'views/workplace/dashboard', NULL, NULL, 0, '', 1, 99, '2019-06-23 19:35:33', '2019-12-04 14:26:04');
INSERT INTO `sys_menu` VALUES ('5e173c49-a81f-4a5e-869d-4cb76c2ca419', '0', '系统管理', 'setting', '/system', 'system', 'layouts/basicLayout', '', NULL, 0, '', 1, 99, '2019-06-23 19:35:35', '2019-11-29 16:56:38');
INSERT INTO `sys_menu` VALUES ('7fa8cc06-d1e6-4260-837f-8714746b381f', '0cdb912d-4701-4ca1-974f-1bf62b63a783', '展示分类', '', '/mall/classify', 'mallClassify', 'views/mall/classify', NULL, NULL, 0, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,4ac84963-f166-4474-b617-777abf6956c8', 1, 99, '2019-12-23 21:49:07', '2019-12-26 20:50:41');
INSERT INTO `sys_menu` VALUES ('89f0db23-ff1a-49d9-b021-dab2711ebee0', '0', '信息管理', 'profile', '/information', 'information', 'layouts/basicLayout', '', NULL, 0, '', 1, 99, '2019-07-04 17:05:01', '2019-11-29 16:56:39');
INSERT INTO `sys_menu` VALUES ('91128d91-2386-4d6b-8e5c-f023c63c57ec', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '部门管理', '', '/system/dept', 'dept', 'views/system/dept', NULL, NULL, 0, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,4ac84963-f166-4474-b617-777abf6956c8', 1, 99, '2019-06-30 21:21:42', '2019-12-23 20:07:04');
INSERT INTO `sys_menu` VALUES ('a0414b5c-e41e-42d8-b2ba-e4177dce3534', '0cdb912d-4701-4ca1-974f-1bf62b63a783', '品牌管理', '', '/mall/brand', 'mallBrand', 'views/mall/brand', NULL, NULL, 0, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', 1, 99, '2019-12-26 20:50:00', '2019-12-28 23:12:13');
INSERT INTO `sys_menu` VALUES ('adda7c29-55e3-4008-af3b-92bb60a08f88', '0cdb912d-4701-4ca1-974f-1bf62b63a783', '商品管理', '', '/mall/goods', 'mallGoods', 'views/mall/goods', NULL, NULL, 0, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,0b6d7a2a-91e6-4ed2-ab03-3906f57b46d0,972659d8-4c43-4f93-9229-857a63c20714', 1, 99, '2019-12-20 20:32:27', '2020-01-14 21:28:45');
INSERT INTO `sys_menu` VALUES ('b2c3b631-2aec-45a6-a8b4-7070a1440473', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '用户管理', NULL, '/system/user', 'user', 'views/system/user', NULL, '', NULL, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', 1, 99, '2019-06-29 23:35:24', '2019-11-26 20:05:52');
INSERT INTO `sys_menu` VALUES ('b470d6f5-0f5c-473c-9333-1e53d578a91e', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '基本设置', '', '/system/config', 'config', 'views/system/config', '', NULL, 0, 'df1408bf-a355-4474-90a9-04ae5ecf087e', 1, 99, '2019-07-20 19:50:27', '2019-11-28 20:12:31');
INSERT INTO `sys_menu` VALUES ('c2928201-11ff-44d3-8066-ba18c40edab9', '0cdb912d-4701-4ca1-974f-1bf62b63a783', '标签管理', '', '/mall/tag', 'mallTag', 'views/mall/tag', NULL, NULL, 0, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', 1, 99, '2019-12-26 21:42:05', '2019-12-28 23:12:22');
INSERT INTO `sys_menu` VALUES ('caad3a5a-ee87-4a44-b533-d5e23dc549fb', '89f0db23-ff1a-49d9-b021-dab2711ebee0', '新闻管理', NULL, '/information/news', 'news', 'views/information/news', NULL, '', NULL, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', 1, 99, '2019-07-29 19:43:41', '2019-11-26 09:40:20');
INSERT INTO `sys_menu` VALUES ('ce632bbf-5c4d-43d0-b8be-337cb63b1cf1', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '权限按钮管理', '', '/system/authButton', 'authButton', 'views/system/authButton', '', NULL, 0, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', 1, 99, '2019-11-29 10:35:54', '2019-11-29 16:56:57');
INSERT INTO `sys_menu` VALUES ('ce6ff9cf-f69f-4303-a7ff-08ff02c9bb1f', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '系统日志', '', '/system/log', 'log', 'views/system/log', NULL, NULL, 0, '', 1, 99, '2019-12-11 20:36:07', '2019-12-11 21:03:16');
INSERT INTO `sys_menu` VALUES ('db4833f7-8445-4db9-84de-c68fc28989e8', '89f0db23-ff1a-49d9-b021-dab2711ebee0', '栏目管理', '', '/information/column', 'column', 'views/information/column', '', NULL, 0, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,4ac84963-f166-4474-b617-777abf6956c8', 1, 99, '2019-07-04 17:06:39', '2019-11-28 20:11:47');
INSERT INTO `sys_menu` VALUES ('eadfa8f8-40af-441e-98f9-b7b9f594c471', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '字典管理', '', '/system/dict', 'dict', 'views/system/dict', '', NULL, 0, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,4ac84963-f166-4474-b617-777abf6956c8', 1, 99, '2019-07-26 11:16:46', '2019-11-28 20:14:52');
INSERT INTO `sys_menu` VALUES ('efa26c50-67b2-464b-ae90-e98438bd5b4b', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '菜单管理', '', '/system/menu', 'menu', 'views/system/menu', '', NULL, 0, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,4ac84963-f166-4474-b617-777abf6956c8,283437d9-c1b1-4a5c-9e24-242c0bcded18', 1, 99, '2019-06-23 19:35:39', '2019-11-28 20:53:35');
INSERT INTO `sys_menu` VALUES ('fc9ccb9b-9f78-4de4-a8d0-5a7153d249ba', '0', '控制台', 'dashboard', '/workplace', 'workplace', 'layouts/basicLayout', NULL, NULL, 0, '', 1, 99, '2019-06-23 19:35:28', '2019-12-04 14:26:00');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-岗位表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('0a5c6ed0-6f02-4f09-98dc-ddebc349faa1', '人力资源', 1, 100, '2019-07-01 21:43:39', '2019-08-05 22:18:04');
INSERT INTO `sys_post` VALUES ('41f31548-6ded-4764-b81d-36418ebcb691', '普通员工', 1, 100, '2019-07-01 21:43:45', '2019-08-05 22:18:06');
INSERT INTO `sys_post` VALUES ('6210ec85-9e23-4e4a-9c12-3dcbac08cab8', '董事长', 1, 100, '2019-06-13 15:14:06', '2019-08-05 22:18:01');
INSERT INTO `sys_post` VALUES ('7fae3712-177d-4f3e-8fa2-d769e0d8809a', '项目经理', 1, 100, '2019-06-14 20:43:48', '2019-11-24 08:56:56');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '类型，1=超级管理员；',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('11a38b9a-b3da-360f-9353-a5a725514269', '超级管理员', '1', 1, 99, '2019-06-30 11:06:51', '2019-11-26 20:23:35');
INSERT INTO `sys_role` VALUES ('1aa16731-1a14-4fce-b616-b8f04b778f6d', '测试2', '2', 1, 99, '2019-11-28 10:06:33', '2019-11-28 11:22:05');
INSERT INTO `sys_role` VALUES ('5baddea4-ba13-42d1-91ef-700fa36fa469', '测试1', '2', 1, 99, '2019-06-30 11:06:57', '2019-11-29 09:56:42');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `role_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色标识',
  `post_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位标识',
  `dept_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门标识',
  `full_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `type` int(1) NULL DEFAULT 2 COMMENT '用户类型，1=超级管理员',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('6b525f59-1a3a-48d6-8483-a75ace5304f9', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '11a38b9a-b3da-360f-9353-a5a725514269', '', '50caf116-0275-499f-95fa-fa1c736bb3ea', '程序猿', '18810622636', '1056811341@qq.com', 1, 1, 99, '2019-06-14 20:43:46', '2019-12-17 21:56:39');
INSERT INTO `sys_user` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', 'test', '4297f44b13955235245b2497399d7a93', '5baddea4-ba13-42d1-91ef-700fa36fa469', '6210ec85-9e23-4e4a-9c12-3dcbac08cab8', '50caf116-0275-499f-95fa-fa1c736bb3ea', '', '', '', NULL, 1, 99, '2019-07-01 15:18:16', '2019-11-29 10:07:07');

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `upload_dir_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属目录',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传文件的文件名，包含后缀名',
  `file_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件的 MIME 类型',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件的绝对路径',
  `full_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件的绝对路径，包含文件名',
  `raw_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名，不含后缀名',
  `orig_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原始的文件名，只有在使用了 encrypt_name 参数时该值才有用',
  `client_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户提交过来的文件名，还没有对该文件名做任何处理',
  `file_ext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件后缀名，包括句点',
  `file_size` double NULL DEFAULT NULL COMMENT '文件大小（单位 kb）',
  `is_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件是否为图片（1 = image. 0 = not.）',
  `image_width` int(11) NULL DEFAULT NULL COMMENT '图片宽度',
  `image_height` int(11) NULL DEFAULT NULL COMMENT '图片高度',
  `image_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片类型（通常是不带句点的文件后缀名）',
  `image_size_str` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '一个包含了图片宽度和高度的字符串（用于放在 image 标签中）',
  `relative_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件的相对路径，包含文件名',
  `web_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件的网络路径，包含文件名',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上传-文件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO `upload` VALUES ('049b848a-42f9-4779-bae9-eec0ee1f0c37', NULL, 'd07f5feb7f4705a985a8aef9906eaa78.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/d07f5feb7f4705a985a8aef9906eaa78.png', 'd07f5feb7f4705a985a8aef9906eaa78', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/d07f5feb7f4705a985a8aef9906eaa78.png', 'http://xuanyucms.lc/uploads/d07f5feb7f4705a985a8aef9906eaa78.png', '2019-12-07 10:28:36', '2019-12-07 10:28:36');
INSERT INTO `upload` VALUES ('1010068f-9f39-483a-b6b6-6d38bd5d8031', NULL, 'c69451acf7a2ccb820be6e2164f8b8e8.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/c69451acf7a2ccb820be6e2164f8b8e8.png', 'c69451acf7a2ccb820be6e2164f8b8e8', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/c69451acf7a2ccb820be6e2164f8b8e8.png', 'http://xuanyucms.lc/uploads/c69451acf7a2ccb820be6e2164f8b8e8.png', '2019-12-09 21:04:58', '2019-12-09 21:04:58');
INSERT INTO `upload` VALUES ('156ebdba-895f-4368-8578-ffba23d4a900', NULL, '25bb814d048ca1e6cc0af6245db9ec9b.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/25bb814d048ca1e6cc0af6245db9ec9b.png', '25bb814d048ca1e6cc0af6245db9ec9b', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/25bb814d048ca1e6cc0af6245db9ec9b.png', 'http://xuanyucms.lc/uploads/25bb814d048ca1e6cc0af6245db9ec9b.png', '2019-12-07 09:45:56', '2019-12-07 09:45:56');
INSERT INTO `upload` VALUES ('18ae3af5-c29c-4fa2-a71f-81227f0f48ac', NULL, '97aceb1e492a9af1dd4abeaf4f1456f8.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/97aceb1e492a9af1dd4abeaf4f1456f8.png', '97aceb1e492a9af1dd4abeaf4f1456f8', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/97aceb1e492a9af1dd4abeaf4f1456f8.png', 'http://xuanyucms.lc/uploads/97aceb1e492a9af1dd4abeaf4f1456f8.png', '2019-12-09 22:19:06', '2019-12-09 22:19:06');
INSERT INTO `upload` VALUES ('1d98e879-b40e-445a-814b-9a20b856353f', NULL, '61dc50aa417d8b4e17edfeb27529a856.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/61dc50aa417d8b4e17edfeb27529a856.png', '61dc50aa417d8b4e17edfeb27529a856', '微信截图_20191207100845.png', '微信截图_20191207100845.png', '.png', 28672, '1', 152, 138, 'png', 'width=\"152\" height=\"138\"', '/uploads/61dc50aa417d8b4e17edfeb27529a856.png', 'http://xuanyucms.lc/uploads/61dc50aa417d8b4e17edfeb27529a856.png', '2019-12-09 21:44:16', '2019-12-09 21:44:16');
INSERT INTO `upload` VALUES ('2099a2e2-bb39-4e5e-8427-6bcd27c668d0', NULL, '1a8448b7aae4807823a5796d59fe4602.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/1a8448b7aae4807823a5796d59fe4602.png', '1a8448b7aae4807823a5796d59fe4602', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/1a8448b7aae4807823a5796d59fe4602.png', 'http://xuanyucms.lc/uploads/1a8448b7aae4807823a5796d59fe4602.png', '2019-12-09 21:57:36', '2019-12-09 21:57:36');
INSERT INTO `upload` VALUES ('24476b08-f31c-4b6e-baee-4dd62a5e0177', NULL, 'c8106baeb01d1542eead7510f552cd44.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/c8106baeb01d1542eead7510f552cd44.jpg', 'c8106baeb01d1542eead7510f552cd44', '微信图片_20190317212813.jpg', '微信图片_20190317212813.jpg', '.jpg', 111616, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/c8106baeb01d1542eead7510f552cd44.jpg', 'http://xuanyucms.lc/uploads/c8106baeb01d1542eead7510f552cd44.jpg', '2019-12-09 22:33:00', '2019-12-09 22:33:00');
INSERT INTO `upload` VALUES ('256ae842-1cf5-4897-81f5-a4c4ea94a4b0', NULL, 'e33b731bd78ba0a5b72c741421f6d6be.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/e33b731bd78ba0a5b72c741421f6d6be.jpg', 'e33b731bd78ba0a5b72c741421f6d6be', '微信图片_20190317212816.jpg', '微信图片_20190317212816.jpg', '.jpg', 88064, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/e33b731bd78ba0a5b72c741421f6d6be.jpg', 'http://xuanyucms.lc/uploads/e33b731bd78ba0a5b72c741421f6d6be.jpg', '2019-12-09 21:36:15', '2019-12-09 21:36:15');
INSERT INTO `upload` VALUES ('2619b7d7-8151-463d-8436-ded35ce7b549', NULL, '42b6650e7fc5733f0e11cea0ced973e3.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/42b6650e7fc5733f0e11cea0ced973e3.png', '42b6650e7fc5733f0e11cea0ced973e3', '微信截图_20191207100845.png', '微信截图_20191207100845.png', '.png', 28672, '1', 152, 138, 'png', 'width=\"152\" height=\"138\"', '/uploads/42b6650e7fc5733f0e11cea0ced973e3.png', 'http://xuanyucms.lc/uploads/42b6650e7fc5733f0e11cea0ced973e3.png', '2019-12-07 21:01:52', '2019-12-07 21:01:52');
INSERT INTO `upload` VALUES ('28e03e32-d9f7-48cd-8c7a-2eb998fb5fe1', NULL, '55404ae76e29e1935dd77dfc3b1acd92.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/55404ae76e29e1935dd77dfc3b1acd92.png', '55404ae76e29e1935dd77dfc3b1acd92', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/55404ae76e29e1935dd77dfc3b1acd92.png', 'http://xuanyucms.lc/uploads/55404ae76e29e1935dd77dfc3b1acd92.png', '2019-12-07 10:22:08', '2019-12-07 10:22:08');
INSERT INTO `upload` VALUES ('2b3715e2-3f99-4f8f-ac4e-2254d23445d1', NULL, 'bc52c8d01b52af4642b949980fd92a64.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/bc52c8d01b52af4642b949980fd92a64.png', 'bc52c8d01b52af4642b949980fd92a64', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/bc52c8d01b52af4642b949980fd92a64.png', 'http://xuanyucms.lc/uploads/bc52c8d01b52af4642b949980fd92a64.png', '2019-12-07 21:23:57', '2019-12-07 21:23:57');
INSERT INTO `upload` VALUES ('2efa31cd-5616-4815-89e4-436872359486', NULL, '450f07e116492fc60e3426607ed18bc4.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/450f07e116492fc60e3426607ed18bc4.png', '450f07e116492fc60e3426607ed18bc4', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/450f07e116492fc60e3426607ed18bc4.png', 'http://xuanyucms.lc11/uploads/450f07e116492fc60e3426607ed18bc4.png', '2019-12-06 22:08:07', '2019-12-06 22:08:07');
INSERT INTO `upload` VALUES ('3359d05d-8d97-41e7-bed5-7d5dae0783b1', NULL, 'b10363b98e5720df3c5cf546b3bfc779.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/b10363b98e5720df3c5cf546b3bfc779.png', 'b10363b98e5720df3c5cf546b3bfc779', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/b10363b98e5720df3c5cf546b3bfc779.png', 'http://localhost/uploads/b10363b98e5720df3c5cf546b3bfc779.png', '2019-12-06 22:07:08', '2019-12-06 22:07:08');
INSERT INTO `upload` VALUES ('339f5f58-ab96-4977-9556-714672d2e7ed', NULL, 'b9610970504477e3e156164856808444.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/b9610970504477e3e156164856808444.png', 'b9610970504477e3e156164856808444', '微信截图_20191207100845.png', '微信截图_20191207100845.png', '.png', 28672, '1', 152, 138, 'png', 'width=\"152\" height=\"138\"', '/uploads/b9610970504477e3e156164856808444.png', 'http://xuanyucms.lc/uploads/b9610970504477e3e156164856808444.png', '2019-12-09 19:34:05', '2019-12-09 19:34:05');
INSERT INTO `upload` VALUES ('344f0854-0a20-4d90-b6c4-411f8da81d95', NULL, '5104908776b9e3ac36190dc0d130d7bf.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/5104908776b9e3ac36190dc0d130d7bf.png', '5104908776b9e3ac36190dc0d130d7bf', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/5104908776b9e3ac36190dc0d130d7bf.png', 'http://xuanyucms.lc/uploads/5104908776b9e3ac36190dc0d130d7bf.png', '2019-12-07 10:32:18', '2019-12-07 10:32:18');
INSERT INTO `upload` VALUES ('34fee9c9-8608-4a80-a5ca-f4b029337952', NULL, '216e3ef6a6f3038cce73900f955865be.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/216e3ef6a6f3038cce73900f955865be.png', '216e3ef6a6f3038cce73900f955865be', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/216e3ef6a6f3038cce73900f955865be.png', 'http://xuanyucms.lc/uploads/216e3ef6a6f3038cce73900f955865be.png', '2019-12-07 09:59:47', '2019-12-07 09:59:47');
INSERT INTO `upload` VALUES ('389a57fb-37f9-4f5d-830e-6384779e6ebb', NULL, '0e05a68577c6eeb7f769d6f5d65d8ccb.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/0e05a68577c6eeb7f769d6f5d65d8ccb.png', '0e05a68577c6eeb7f769d6f5d65d8ccb', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/0e05a68577c6eeb7f769d6f5d65d8ccb.png', 'http://xuanyucms.lc/uploads/0e05a68577c6eeb7f769d6f5d65d8ccb.png', '2019-12-09 21:42:36', '2019-12-09 21:42:36');
INSERT INTO `upload` VALUES ('3a2a4d05-4c55-4cde-b03e-13349038b935', NULL, '5c4aedb0c9beecd53ccd4b3effccfcaf.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/5c4aedb0c9beecd53ccd4b3effccfcaf.png', '5c4aedb0c9beecd53ccd4b3effccfcaf', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/5c4aedb0c9beecd53ccd4b3effccfcaf.png', 'http://xuanyucms.lc/uploads/5c4aedb0c9beecd53ccd4b3effccfcaf.png', '2019-12-06 22:47:10', '2019-12-06 22:47:10');
INSERT INTO `upload` VALUES ('3bf5c436-85b8-41f4-a55a-b6636b231343', NULL, '19795eb24cf351e8f69f793dbec2328e.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/19795eb24cf351e8f69f793dbec2328e.jpg', '19795eb24cf351e8f69f793dbec2328e', '微信图片_20190317212816.jpg', '微信图片_20190317212816.jpg', '.jpg', 88064, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/19795eb24cf351e8f69f793dbec2328e.jpg', 'http://xuanyucms.lc/uploads/19795eb24cf351e8f69f793dbec2328e.jpg', '2019-12-09 21:40:16', '2019-12-09 21:40:16');
INSERT INTO `upload` VALUES ('3d12946f-0a7a-46c2-bb4a-e7cbe7ddb992', NULL, 'cea11df72d0f6372206312991c8dcf8f.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/cea11df72d0f6372206312991c8dcf8f.png', 'cea11df72d0f6372206312991c8dcf8f', '微信截图_20191207100845.png', '微信截图_20191207100845.png', '.png', 28672, '1', 152, 138, 'png', 'width=\"152\" height=\"138\"', '/uploads/cea11df72d0f6372206312991c8dcf8f.png', 'http://xuanyucms.lc/uploads/cea11df72d0f6372206312991c8dcf8f.png', '2019-12-09 21:20:57', '2019-12-09 21:20:57');
INSERT INTO `upload` VALUES ('3ed96931-e101-4f72-8aab-4539b43d19c1', NULL, 'b23b690b66b9040dbe58d828d6feb4e3.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/b23b690b66b9040dbe58d828d6feb4e3.jpg', 'b23b690b66b9040dbe58d828d6feb4e3', '微信图片_20190317212816.jpg', '微信图片_20190317212816.jpg', '.jpg', 88064, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/b23b690b66b9040dbe58d828d6feb4e3.jpg', 'http://xuanyucms.lc/uploads/b23b690b66b9040dbe58d828d6feb4e3.jpg', '2019-12-09 21:42:50', '2019-12-09 21:42:50');
INSERT INTO `upload` VALUES ('3fc2a8e5-d121-4ee3-960f-93e77dfcb3c0', NULL, 'bf9e980bdbb7418051c1d52558ce5baf.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/bf9e980bdbb7418051c1d52558ce5baf.png', 'bf9e980bdbb7418051c1d52558ce5baf', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/bf9e980bdbb7418051c1d52558ce5baf.png', 'http://xuanyucms.lc/uploads/bf9e980bdbb7418051c1d52558ce5baf.png', '2019-12-07 20:51:16', '2019-12-07 20:51:16');
INSERT INTO `upload` VALUES ('405ed643-a5c4-46b7-8b15-a07d27ebd957', NULL, '314778e6a1d6ddbb17d392d7a93eae63.png', 'image/png', 'E:/php/xuanyu-cms/uploads/', 'E:/php/xuanyu-cms/uploads/314778e6a1d6ddbb17d392d7a93eae63.png', '314778e6a1d6ddbb17d392d7a93eae63', '微信截图_20191202143941.png', '微信截图_20191202143941.png', '.png', 3072, '1', 114, 35, 'png', 'width=\"114\" height=\"35\"', '/uploads/314778e6a1d6ddbb17d392d7a93eae63.png', NULL, '2019-12-05 11:43:09', '2019-12-05 11:43:09');
INSERT INTO `upload` VALUES ('4082a132-9941-4d5d-bca2-0b8b03ac9e08', NULL, '858c2e21e2d77eeaabd9c072b3344f1c.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/858c2e21e2d77eeaabd9c072b3344f1c.jpg', '858c2e21e2d77eeaabd9c072b3344f1c', '微信图片_20190317212813.jpg', '微信图片_20190317212813.jpg', '.jpg', 111616, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/858c2e21e2d77eeaabd9c072b3344f1c.jpg', 'http://xuanyucms.lc/uploads/858c2e21e2d77eeaabd9c072b3344f1c.jpg', '2019-12-07 10:26:13', '2019-12-07 10:26:13');
INSERT INTO `upload` VALUES ('43015242-f0ef-488e-bd46-cb65ff1f8bab', NULL, 'd706e3130383111172af263fd00b9d7e.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/d706e3130383111172af263fd00b9d7e.jpg', 'd706e3130383111172af263fd00b9d7e', '微信图片_20190317212816.jpg', '微信图片_20190317212816.jpg', '.jpg', 88064, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/d706e3130383111172af263fd00b9d7e.jpg', 'http://xuanyucms.lc/uploads/d706e3130383111172af263fd00b9d7e.jpg', '2019-12-09 21:34:59', '2019-12-09 21:34:59');
INSERT INTO `upload` VALUES ('44b21ad7-f2e1-49de-9f4e-e221ec4ecd85', NULL, 'b68a5c58d8b3b429ffe8ca120c70dc36.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/b68a5c58d8b3b429ffe8ca120c70dc36.png', 'b68a5c58d8b3b429ffe8ca120c70dc36', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/b68a5c58d8b3b429ffe8ca120c70dc36.png', 'http://xuanyucms.lc/uploads/b68a5c58d8b3b429ffe8ca120c70dc36.png', '2019-12-09 21:56:30', '2019-12-09 21:56:30');
INSERT INTO `upload` VALUES ('49aaf956-f6eb-4178-842d-5a0909370f15', NULL, 'e801c537013b197033cffea5cc34c79d.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/e801c537013b197033cffea5cc34c79d.jpg', 'e801c537013b197033cffea5cc34c79d', '微信图片_20190317212816.jpg', '微信图片_20190317212816.jpg', '.jpg', 88064, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/e801c537013b197033cffea5cc34c79d.jpg', 'http://xuanyucms.lc/uploads/e801c537013b197033cffea5cc34c79d.jpg', '2019-12-09 21:44:22', '2019-12-09 21:44:22');
INSERT INTO `upload` VALUES ('4b1a9fd2-d521-465e-9c97-4a3f7900038b', NULL, '91b824b4b95f0d386973390fa7dac9ff.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/91b824b4b95f0d386973390fa7dac9ff.png', '91b824b4b95f0d386973390fa7dac9ff', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/91b824b4b95f0d386973390fa7dac9ff.png', 'http://xuanyucms.lc/uploads/91b824b4b95f0d386973390fa7dac9ff.png', '2019-12-07 10:35:19', '2019-12-07 10:35:19');
INSERT INTO `upload` VALUES ('4d4b13a8-9e53-4d6e-86e0-29ec8a550ef1', NULL, '439cb043dd4aeb44d12011fd451e7c78.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/439cb043dd4aeb44d12011fd451e7c78.jpg', '439cb043dd4aeb44d12011fd451e7c78', '微信图片_20190317212816.jpg', '微信图片_20190317212816.jpg', '.jpg', 88064, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/439cb043dd4aeb44d12011fd451e7c78.jpg', 'http://xuanyucms.lc/uploads/439cb043dd4aeb44d12011fd451e7c78.jpg', '2019-12-09 19:44:37', '2019-12-09 19:44:37');
INSERT INTO `upload` VALUES ('4dc12708-1bd7-41e8-a9be-4fcb7649582f', NULL, 'adad04d313a3359173b58b1189be5389.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/adad04d313a3359173b58b1189be5389.png', 'adad04d313a3359173b58b1189be5389', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/adad04d313a3359173b58b1189be5389.png', NULL, '2019-12-04 21:22:49', '2019-12-04 21:22:49');
INSERT INTO `upload` VALUES ('4ded6734-16b1-4546-bc65-d6b6640ce573', NULL, '40d1b3ea08a043feaa10e4d24d7f741c.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/40d1b3ea08a043feaa10e4d24d7f741c.jpg', '40d1b3ea08a043feaa10e4d24d7f741c', '微信图片_20190317212816.jpg', '微信图片_20190317212816.jpg', '.jpg', 88064, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/40d1b3ea08a043feaa10e4d24d7f741c.jpg', 'http://xuanyucms.lc/uploads/40d1b3ea08a043feaa10e4d24d7f741c.jpg', '2019-12-09 21:20:57', '2019-12-09 21:20:57');
INSERT INTO `upload` VALUES ('51aee21c-3e5f-4893-b860-383010523916', NULL, '6c9f128f7b49937bfbdb014b4f0df0fd.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/6c9f128f7b49937bfbdb014b4f0df0fd.jpg', '6c9f128f7b49937bfbdb014b4f0df0fd', '微信图片_20190317212809.jpg', '微信图片_20190317212809.jpg', '.jpg', 55296, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/6c9f128f7b49937bfbdb014b4f0df0fd.jpg', 'http://xuanyucms.lc/uploads/6c9f128f7b49937bfbdb014b4f0df0fd.jpg', '2019-12-09 21:36:55', '2019-12-09 21:36:55');
INSERT INTO `upload` VALUES ('53258272-219a-4330-b32b-378bd4bf74da', NULL, '0c04c8f9c46905549e64a8ae58674f50.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/0c04c8f9c46905549e64a8ae58674f50.png', '0c04c8f9c46905549e64a8ae58674f50', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/0c04c8f9c46905549e64a8ae58674f50.png', 'http://xuanyucms.lc/uploads/0c04c8f9c46905549e64a8ae58674f50.png', '2019-12-09 21:19:33', '2019-12-09 21:19:33');
INSERT INTO `upload` VALUES ('57902de0-f901-4993-bd29-c82a5fad7d99', NULL, '17ca509424777fdecdfb05d5a4d334d6.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/17ca509424777fdecdfb05d5a4d334d6.png', '17ca509424777fdecdfb05d5a4d334d6', '微信截图_20191207100845.png', '微信截图_20191207100845.png', '.png', 28672, '1', 152, 138, 'png', 'width=\"152\" height=\"138\"', '/uploads/17ca509424777fdecdfb05d5a4d334d6.png', 'http://xuanyucms.lc/uploads/17ca509424777fdecdfb05d5a4d334d6.png', '2019-12-28 21:40:11', '2019-12-28 21:40:11');
INSERT INTO `upload` VALUES ('584d7795-347c-46e1-94f7-c0fd8b81a47c', NULL, 'ad8ec8cc52b72216f49d97b56270b3d8.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/ad8ec8cc52b72216f49d97b56270b3d8.jpg', 'ad8ec8cc52b72216f49d97b56270b3d8', '微信图片_20190317212809.jpg', '微信图片_20190317212809.jpg', '.jpg', 55296, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/ad8ec8cc52b72216f49d97b56270b3d8.jpg', 'http://xuanyucms.lc/uploads/ad8ec8cc52b72216f49d97b56270b3d8.jpg', '2019-12-28 21:40:26', '2019-12-28 21:40:26');
INSERT INTO `upload` VALUES ('61335a26-f0ed-4201-85aa-6eaa6b051038', NULL, '83c5f7a9fd74f63712228884d5fe7901.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/83c5f7a9fd74f63712228884d5fe7901.png', '83c5f7a9fd74f63712228884d5fe7901', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/83c5f7a9fd74f63712228884d5fe7901.png', 'http://xuanyucms.lc/uploads/83c5f7a9fd74f63712228884d5fe7901.png', '2019-12-07 09:56:12', '2019-12-07 09:56:12');
INSERT INTO `upload` VALUES ('68c9d1ca-2500-467f-82c8-b2c555b89653', NULL, '0f8a4bf1022f747bc83d16d1ff797bf3.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/0f8a4bf1022f747bc83d16d1ff797bf3.jpg', '0f8a4bf1022f747bc83d16d1ff797bf3', '微信图片_20190317212809.jpg', '微信图片_20190317212809.jpg', '.jpg', 55296, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/0f8a4bf1022f747bc83d16d1ff797bf3.jpg', 'http://xuanyucms.lc/uploads/0f8a4bf1022f747bc83d16d1ff797bf3.jpg', '2019-12-09 21:19:33', '2019-12-09 21:19:33');
INSERT INTO `upload` VALUES ('6a4f64f7-eff9-4e27-8a4c-ef4adf653f27', NULL, 'd5cc2e93d98b874b4d8b8ae91e810d99.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/d5cc2e93d98b874b4d8b8ae91e810d99.png', 'd5cc2e93d98b874b4d8b8ae91e810d99', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/d5cc2e93d98b874b4d8b8ae91e810d99.png', 'http://xuanyucms.lc/uploads/d5cc2e93d98b874b4d8b8ae91e810d99.png', '2019-12-09 21:34:59', '2019-12-09 21:34:59');
INSERT INTO `upload` VALUES ('6a572688-e756-4ba3-a62f-bfa3c9912eaf', NULL, 'bfb0923a750d5cbcbdfba1f16b2ca1af.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/bfb0923a750d5cbcbdfba1f16b2ca1af.png', 'bfb0923a750d5cbcbdfba1f16b2ca1af', '微信截图_20191207100845.png', '微信截图_20191207100845.png', '.png', 28672, '1', 152, 138, 'png', 'width=\"152\" height=\"138\"', '/uploads/bfb0923a750d5cbcbdfba1f16b2ca1af.png', 'http://xuanyucms.lc/uploads/bfb0923a750d5cbcbdfba1f16b2ca1af.png', '2019-12-07 21:21:51', '2019-12-07 21:21:51');
INSERT INTO `upload` VALUES ('72a12164-b4e9-41f8-a08f-c06185e6a20a', NULL, 'e3eb0911dc3b8a1acd58d5daba94652e.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/e3eb0911dc3b8a1acd58d5daba94652e.png', 'e3eb0911dc3b8a1acd58d5daba94652e', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/e3eb0911dc3b8a1acd58d5daba94652e.png', 'http://xuanyucms.lc/uploads/e3eb0911dc3b8a1acd58d5daba94652e.png', '2019-12-09 21:44:09', '2019-12-09 21:44:09');
INSERT INTO `upload` VALUES ('73b77e02-8c02-48f9-bb3d-ccb28987507e', NULL, '72190b7f5cfcf623666f85e9965feeb8.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/72190b7f5cfcf623666f85e9965feeb8.jpg', '72190b7f5cfcf623666f85e9965feeb8', '微信图片_20190317213633.jpg', '微信图片_20190317213633.jpg', '.jpg', 65536, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/72190b7f5cfcf623666f85e9965feeb8.jpg', 'http://xuanyucms.lc/uploads/72190b7f5cfcf623666f85e9965feeb8.jpg', '2019-12-07 10:01:33', '2019-12-07 10:01:33');
INSERT INTO `upload` VALUES ('73f16adc-c7ec-435a-aa50-c24db1699d29', NULL, '760336655e74ef9481d947cbb6203e81.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/760336655e74ef9481d947cbb6203e81.jpg', '760336655e74ef9481d947cbb6203e81', '微信图片_20190317212813.jpg', '微信图片_20190317212813.jpg', '.jpg', 111616, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/760336655e74ef9481d947cbb6203e81.jpg', 'http://xuanyucms.lc/uploads/760336655e74ef9481d947cbb6203e81.jpg', '2019-12-09 21:19:33', '2019-12-09 21:19:33');
INSERT INTO `upload` VALUES ('73f511c3-4ba2-4c4d-9993-bfa9c6e6243e', NULL, 'c6d52eb0efc69aa81c8b407896ea5e90.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/c6d52eb0efc69aa81c8b407896ea5e90.png', 'c6d52eb0efc69aa81c8b407896ea5e90', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/c6d52eb0efc69aa81c8b407896ea5e90.png', 'http://xuanyucms.lc/uploads/c6d52eb0efc69aa81c8b407896ea5e90.png', '2019-12-07 10:20:08', '2019-12-07 10:20:08');
INSERT INTO `upload` VALUES ('78360acc-b4fe-4c39-98c3-16b70a154bd9', NULL, 'f6fe83c2b18ec9c21d5e782ac398fc33.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/f6fe83c2b18ec9c21d5e782ac398fc33.png', 'f6fe83c2b18ec9c21d5e782ac398fc33', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/f6fe83c2b18ec9c21d5e782ac398fc33.png', 'http://xuanyucms.lc/uploads/f6fe83c2b18ec9c21d5e782ac398fc33.png', '2019-12-07 21:23:09', '2019-12-07 21:23:09');
INSERT INTO `upload` VALUES ('796392f1-3868-408b-a568-21421b47cd7f', NULL, 'd3cd55c33aaa0cafec2d06e8f5946aa3.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/d3cd55c33aaa0cafec2d06e8f5946aa3.jpg', 'd3cd55c33aaa0cafec2d06e8f5946aa3', '微信图片_20190317212809.jpg', '微信图片_20190317212809.jpg', '.jpg', 55296, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/d3cd55c33aaa0cafec2d06e8f5946aa3.jpg', 'http://xuanyucms.lc/uploads/d3cd55c33aaa0cafec2d06e8f5946aa3.jpg', '2019-12-09 21:56:12', '2019-12-09 21:56:12');
INSERT INTO `upload` VALUES ('7af52a93-029f-49bd-b3ea-b79bf563a1eb', NULL, '42baef2ceb10f84dc11ebf838835545f.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/42baef2ceb10f84dc11ebf838835545f.jpg', '42baef2ceb10f84dc11ebf838835545f', '微信图片_20190317212813.jpg', '微信图片_20190317212813.jpg', '.jpg', 111616, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/42baef2ceb10f84dc11ebf838835545f.jpg', 'http://xuanyucms.lc/uploads/42baef2ceb10f84dc11ebf838835545f.jpg', '2019-12-07 10:29:37', '2019-12-07 10:29:37');
INSERT INTO `upload` VALUES ('7ead6b21-fffe-4524-bc3b-b0d12acc7088', NULL, '5963cbbe9c88dcb92af91209cba02ce9.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/5963cbbe9c88dcb92af91209cba02ce9.png', '5963cbbe9c88dcb92af91209cba02ce9', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/5963cbbe9c88dcb92af91209cba02ce9.png', 'http://xuanyucms.lc/uploads/5963cbbe9c88dcb92af91209cba02ce9.png', '2019-12-09 21:36:07', '2019-12-09 21:36:07');
INSERT INTO `upload` VALUES ('7f8887a4-90f2-468f-bf6b-76a615ec21d8', NULL, '698b742af2dc9a571d4bbd5d6ff72741.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/698b742af2dc9a571d4bbd5d6ff72741.jpg', '698b742af2dc9a571d4bbd5d6ff72741', '微信图片_20190317212813.jpg', '微信图片_20190317212813.jpg', '.jpg', 111616, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/698b742af2dc9a571d4bbd5d6ff72741.jpg', 'http://xuanyucms.lc/uploads/698b742af2dc9a571d4bbd5d6ff72741.jpg', '2019-12-09 21:56:01', '2019-12-09 21:56:01');
INSERT INTO `upload` VALUES ('80dad279-ea23-403f-86dd-6dadea0f6be7', NULL, '9887eaefc62379ff90b749911635f9ae.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/9887eaefc62379ff90b749911635f9ae.png', '9887eaefc62379ff90b749911635f9ae', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/9887eaefc62379ff90b749911635f9ae.png', 'http://xuanyucms.lc/uploads/9887eaefc62379ff90b749911635f9ae.png', '2019-12-06 22:08:34', '2019-12-06 22:08:34');
INSERT INTO `upload` VALUES ('88563f11-7715-4668-bac8-d46c5af687ca', NULL, '16dba2a3d50ee0769d544d8dded9c5c9.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/16dba2a3d50ee0769d544d8dded9c5c9.jpg', '16dba2a3d50ee0769d544d8dded9c5c9', '微信图片_20190317212816.jpg', '微信图片_20190317212816.jpg', '.jpg', 88064, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/16dba2a3d50ee0769d544d8dded9c5c9.jpg', 'http://xuanyucms.lc/uploads/16dba2a3d50ee0769d544d8dded9c5c9.jpg', '2019-12-09 21:35:35', '2019-12-09 21:35:35');
INSERT INTO `upload` VALUES ('8b33f905-c7d6-4c60-9755-f156d52e2d88', NULL, '32d79a6e325676bb9b5d4ee246cfb173.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/32d79a6e325676bb9b5d4ee246cfb173.png', '32d79a6e325676bb9b5d4ee246cfb173', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/32d79a6e325676bb9b5d4ee246cfb173.png', 'http://xuanyucms.lc/uploads/32d79a6e325676bb9b5d4ee246cfb173.png', '2019-12-09 21:24:44', '2019-12-09 21:24:44');
INSERT INTO `upload` VALUES ('8ebf3b12-7d47-48aa-8a59-30fc35a27895', NULL, '437a94bb6b01262d5e08bbed7011ec43.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/437a94bb6b01262d5e08bbed7011ec43.png', '437a94bb6b01262d5e08bbed7011ec43', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/437a94bb6b01262d5e08bbed7011ec43.png', 'http://xuanyucms.lc/uploads/437a94bb6b01262d5e08bbed7011ec43.png', '2019-12-07 20:51:51', '2019-12-07 20:51:51');
INSERT INTO `upload` VALUES ('8f55cff8-b5cb-4222-863e-212d2b83692f', NULL, '797bdba80a03c6088124723086a470e6.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/797bdba80a03c6088124723086a470e6.png', '797bdba80a03c6088124723086a470e6', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/797bdba80a03c6088124723086a470e6.png', 'http://xuanyucms.lc/uploads/797bdba80a03c6088124723086a470e6.png', '2019-12-07 09:45:43', '2019-12-07 09:45:43');
INSERT INTO `upload` VALUES ('933308f0-d929-4985-83ae-55f35e81eca2', NULL, '9dfbfb4985b8c24114ec6133cd54a425.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/9dfbfb4985b8c24114ec6133cd54a425.png', '9dfbfb4985b8c24114ec6133cd54a425', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/9dfbfb4985b8c24114ec6133cd54a425.png', 'http://xuanyucms.lc/uploads/9dfbfb4985b8c24114ec6133cd54a425.png', '2019-12-07 09:59:25', '2019-12-07 09:59:25');
INSERT INTO `upload` VALUES ('94274807-ecf3-4386-85f4-e5dd0577d42c', NULL, '4cd0cedd0821fd8b8425a077f68ac60d.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/4cd0cedd0821fd8b8425a077f68ac60d.png', '4cd0cedd0821fd8b8425a077f68ac60d', '微信截图_20191207100845.png', '微信截图_20191207100845.png', '.png', 28672, '1', 152, 138, 'png', 'width=\"152\" height=\"138\"', '/uploads/4cd0cedd0821fd8b8425a077f68ac60d.png', 'http://xuanyucms.lc/uploads/4cd0cedd0821fd8b8425a077f68ac60d.png', '2019-12-09 21:08:42', '2019-12-09 21:08:42');
INSERT INTO `upload` VALUES ('95229fae-a268-4aee-baf5-fd2a34f4d644', NULL, 'ec17955d1c2e22ac99c7a74e68ad54a0.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/ec17955d1c2e22ac99c7a74e68ad54a0.png', 'ec17955d1c2e22ac99c7a74e68ad54a0', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/ec17955d1c2e22ac99c7a74e68ad54a0.png', 'http://xuanyucms.lc/uploads/ec17955d1c2e22ac99c7a74e68ad54a0.png', '2019-12-09 21:35:29', '2019-12-09 21:35:29');
INSERT INTO `upload` VALUES ('97fe739e-c20d-4f9b-9a12-b319cf4b29e4', NULL, '0057b1aaca3cbc8312eeffd57c2f7d6e.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/0057b1aaca3cbc8312eeffd57c2f7d6e.jpg', '0057b1aaca3cbc8312eeffd57c2f7d6e', '微信图片_20190317212813.jpg', '微信图片_20190317212813.jpg', '.jpg', 111616, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/0057b1aaca3cbc8312eeffd57c2f7d6e.jpg', 'http://xuanyucms.lc/uploads/0057b1aaca3cbc8312eeffd57c2f7d6e.jpg', '2019-12-09 21:36:50', '2019-12-09 21:36:50');
INSERT INTO `upload` VALUES ('9aebc439-04f2-47dd-8349-f4af40c7a63b', NULL, 'ffa61bb4e9c345c1b3592f8c53bedba9.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/ffa61bb4e9c345c1b3592f8c53bedba9.jpg', 'ffa61bb4e9c345c1b3592f8c53bedba9', '微信图片_20190317212816.jpg', '微信图片_20190317212816.jpg', '.jpg', 88064, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/ffa61bb4e9c345c1b3592f8c53bedba9.jpg', 'http://xuanyucms.lc/uploads/ffa61bb4e9c345c1b3592f8c53bedba9.jpg', '2019-12-07 10:22:15', '2019-12-07 10:22:15');
INSERT INTO `upload` VALUES ('9ffec670-aebd-42f7-9a74-468b6d2066ad', NULL, '2f82c0b53689c6c879dc66d3d89f01e3.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/2f82c0b53689c6c879dc66d3d89f01e3.png', '2f82c0b53689c6c879dc66d3d89f01e3', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/2f82c0b53689c6c879dc66d3d89f01e3.png', 'http://xuanyucms.lc/uploads/2f82c0b53689c6c879dc66d3d89f01e3.png', '2019-12-06 22:07:42', '2019-12-06 22:07:42');
INSERT INTO `upload` VALUES ('a0b32331-3d9b-403d-9967-bc0be6c50b33', NULL, 'bd5d80d9f598226962770f7d176ea11c.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/bd5d80d9f598226962770f7d176ea11c.jpg', 'bd5d80d9f598226962770f7d176ea11c', '微信图片_20190317212820.jpg', '微信图片_20190317212820.jpg', '.jpg', 67584, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/bd5d80d9f598226962770f7d176ea11c.jpg', 'http://xuanyucms.lc/uploads/bd5d80d9f598226962770f7d176ea11c.jpg', '2019-12-07 10:23:17', '2019-12-07 10:23:17');
INSERT INTO `upload` VALUES ('a309884d-4946-4126-98c5-378c53cba74c', NULL, '6fe7a985a40beeb777c859df70d0a2d0.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/6fe7a985a40beeb777c859df70d0a2d0.png', '6fe7a985a40beeb777c859df70d0a2d0', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/6fe7a985a40beeb777c859df70d0a2d0.png', 'http://xuanyucms.lc/uploads/6fe7a985a40beeb777c859df70d0a2d0.png', '2019-12-09 21:34:27', '2019-12-09 21:34:27');
INSERT INTO `upload` VALUES ('a433c5fd-33be-474c-8b7d-48d663038366', NULL, 'fc0ba64f0adc21120824bbfc04fae4b5.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/fc0ba64f0adc21120824bbfc04fae4b5.jpg', 'fc0ba64f0adc21120824bbfc04fae4b5', '微信图片_20190317212816.jpg', '微信图片_20190317212816.jpg', '.jpg', 88064, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/fc0ba64f0adc21120824bbfc04fae4b5.jpg', 'http://xuanyucms.lc/uploads/fc0ba64f0adc21120824bbfc04fae4b5.jpg', '2019-12-06 22:10:12', '2019-12-06 22:10:12');
INSERT INTO `upload` VALUES ('a959669f-1b7b-4c02-950e-9b106b09061d', NULL, 'bd3e8d9902ab65d069b8a73072e010d7.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/bd3e8d9902ab65d069b8a73072e010d7.png', 'bd3e8d9902ab65d069b8a73072e010d7', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/bd3e8d9902ab65d069b8a73072e010d7.png', 'http://xuanyucms.lc/uploads/bd3e8d9902ab65d069b8a73072e010d7.png', '2019-12-06 22:43:02', '2019-12-06 22:43:02');
INSERT INTO `upload` VALUES ('aa66fa3a-9952-4e42-8ae5-85cf30a6e7b1', NULL, '2948f37c5b89613395baf8a7fbd690e4.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/2948f37c5b89613395baf8a7fbd690e4.png', '2948f37c5b89613395baf8a7fbd690e4', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/2948f37c5b89613395baf8a7fbd690e4.png', 'http://xuanyucms.lc/uploads/2948f37c5b89613395baf8a7fbd690e4.png', '2019-12-09 19:44:41', '2019-12-09 19:44:41');
INSERT INTO `upload` VALUES ('abc3856c-0e20-4562-86cb-43f0903bf134', NULL, '198b3e4243abb5e1253f217a6cc0435e.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/198b3e4243abb5e1253f217a6cc0435e.png', '198b3e4243abb5e1253f217a6cc0435e', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/198b3e4243abb5e1253f217a6cc0435e.png', 'http://xuanyucms.lc/uploads/198b3e4243abb5e1253f217a6cc0435e.png', '2019-12-07 21:22:42', '2019-12-07 21:22:42');
INSERT INTO `upload` VALUES ('ae2aa401-c2e5-4f4e-aa8b-7f90903e5212', NULL, '17c34e45707c3e6908d95807224f3aac.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/17c34e45707c3e6908d95807224f3aac.jpg', '17c34e45707c3e6908d95807224f3aac', '微信图片_20190317212813.jpg', '微信图片_20190317212813.jpg', '.jpg', 111616, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/17c34e45707c3e6908d95807224f3aac.jpg', 'http://xuanyucms.lc/uploads/17c34e45707c3e6908d95807224f3aac.jpg', '2019-12-07 10:27:07', '2019-12-07 10:27:07');
INSERT INTO `upload` VALUES ('b060b380-25f0-4a45-965d-9fb45cf5f145', NULL, '43a3ea35ce2637415b11edc91d9941b4.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/43a3ea35ce2637415b11edc91d9941b4.jpg', '43a3ea35ce2637415b11edc91d9941b4', '微信图片_20190317212813.jpg', '微信图片_20190317212813.jpg', '.jpg', 111616, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/43a3ea35ce2637415b11edc91d9941b4.jpg', 'http://xuanyucms.lc/uploads/43a3ea35ce2637415b11edc91d9941b4.jpg', '2019-12-09 21:20:57', '2019-12-09 21:20:57');
INSERT INTO `upload` VALUES ('b13d6d46-6231-4928-8cf5-0611ec04f6e3', NULL, '38efa14f4350d509eac3a7cac09f86d5.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/38efa14f4350d509eac3a7cac09f86d5.png', '38efa14f4350d509eac3a7cac09f86d5', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/38efa14f4350d509eac3a7cac09f86d5.png', NULL, '2019-12-04 21:30:49', '2019-12-04 21:30:49');
INSERT INTO `upload` VALUES ('b1d0acc9-018c-4b63-ba69-e90c05ecc0de', NULL, '988338544aaec49bb6a690ad38f06aee.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/988338544aaec49bb6a690ad38f06aee.jpg', '988338544aaec49bb6a690ad38f06aee', '微信图片_20190317212813.jpg', '微信图片_20190317212813.jpg', '.jpg', 111616, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/988338544aaec49bb6a690ad38f06aee.jpg', 'http://xuanyucms.lc/uploads/988338544aaec49bb6a690ad38f06aee.jpg', '2019-12-07 09:06:35', '2019-12-07 09:06:35');
INSERT INTO `upload` VALUES ('b31c513b-923c-49c0-90f1-6c1ef6c37460', NULL, 'ab6596609c46ca125af075e0b288f1f5.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/ab6596609c46ca125af075e0b288f1f5.png', 'ab6596609c46ca125af075e0b288f1f5', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/ab6596609c46ca125af075e0b288f1f5.png', 'http://xuanyucms.lc/uploads/ab6596609c46ca125af075e0b288f1f5.png', '2019-12-09 21:08:15', '2019-12-09 21:08:15');
INSERT INTO `upload` VALUES ('b7be1629-7732-44cb-86cc-2d98bcb101b4', NULL, '09aa1e3d8968516b8a44e8101c032e4c.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/09aa1e3d8968516b8a44e8101c032e4c.jpg', '09aa1e3d8968516b8a44e8101c032e4c', '微信图片_20190317213627.jpg', '微信图片_20190317213627.jpg', '.jpg', 81920, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/09aa1e3d8968516b8a44e8101c032e4c.jpg', 'http://xuanyucms.lc/uploads/09aa1e3d8968516b8a44e8101c032e4c.jpg', '2019-12-07 10:01:39', '2019-12-07 10:01:39');
INSERT INTO `upload` VALUES ('b9c07e1e-f4f2-4d36-ba07-3075b5c19447', NULL, 'c80a5b1eaba972f2f55de6efe91626cf.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/c80a5b1eaba972f2f55de6efe91626cf.jpg', 'c80a5b1eaba972f2f55de6efe91626cf', '微信图片_20190317212813.jpg', '微信图片_20190317212813.jpg', '.jpg', 111616, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/c80a5b1eaba972f2f55de6efe91626cf.jpg', 'http://xuanyucms.lc/uploads/c80a5b1eaba972f2f55de6efe91626cf.jpg', '2019-12-07 10:27:46', '2019-12-07 10:27:46');
INSERT INTO `upload` VALUES ('c5702193-7958-4583-98a5-78487d7cd846', NULL, '9a331da760f19d48ceb271eaf0e343e5.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/9a331da760f19d48ceb271eaf0e343e5.jpg', '9a331da760f19d48ceb271eaf0e343e5', '微信图片_20190317212813.jpg', '微信图片_20190317212813.jpg', '.jpg', 111616, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/9a331da760f19d48ceb271eaf0e343e5.jpg', 'http://xuanyucms.lc/uploads/9a331da760f19d48ceb271eaf0e343e5.jpg', '2019-12-07 09:59:07', '2019-12-07 09:59:07');
INSERT INTO `upload` VALUES ('c5e4227f-4e69-45dc-ac1b-f7bdd374ff18', NULL, 'fd1a1c8ba94395195dc88ae9b06c5ab2.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/fd1a1c8ba94395195dc88ae9b06c5ab2.jpg', 'fd1a1c8ba94395195dc88ae9b06c5ab2', '微信图片_20190317212820.jpg', '微信图片_20190317212820.jpg', '.jpg', 67584, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/fd1a1c8ba94395195dc88ae9b06c5ab2.jpg', 'http://xuanyucms.lc/uploads/fd1a1c8ba94395195dc88ae9b06c5ab2.jpg', '2019-12-07 21:25:11', '2019-12-07 21:25:11');
INSERT INTO `upload` VALUES ('ce5b1a0f-1c1b-441c-a89c-6d18768de3e5', NULL, '86678362ac8c5cddd5c858c4f5e5cf8b.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/86678362ac8c5cddd5c858c4f5e5cf8b.jpg', '86678362ac8c5cddd5c858c4f5e5cf8b', '微信图片_20190317212809.jpg', '微信图片_20190317212809.jpg', '.jpg', 55296, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/86678362ac8c5cddd5c858c4f5e5cf8b.jpg', 'http://xuanyucms.lc/uploads/86678362ac8c5cddd5c858c4f5e5cf8b.jpg', '2019-12-06 22:49:33', '2019-12-06 22:49:33');
INSERT INTO `upload` VALUES ('d5106b98-1783-4e19-9e36-032f5d31b2bb', NULL, 'a25c22a5d7938ab7401d79a757a1767b.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/a25c22a5d7938ab7401d79a757a1767b.png', 'a25c22a5d7938ab7401d79a757a1767b', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/a25c22a5d7938ab7401d79a757a1767b.png', 'http://xuanyucms.lc/uploads/a25c22a5d7938ab7401d79a757a1767b.png', '2019-12-09 22:31:34', '2019-12-09 22:31:34');
INSERT INTO `upload` VALUES ('d89fcc87-bd3e-4711-ad20-7ab22a89dd23', NULL, '2a34ae65438853826e7f2550cf4cbfd4.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/2a34ae65438853826e7f2550cf4cbfd4.jpg', '2a34ae65438853826e7f2550cf4cbfd4', '微信图片_20190317212816.jpg', '微信图片_20190317212816.jpg', '.jpg', 88064, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/2a34ae65438853826e7f2550cf4cbfd4.jpg', 'http://xuanyucms.lc/uploads/2a34ae65438853826e7f2550cf4cbfd4.jpg', '2019-12-09 21:19:33', '2019-12-09 21:19:33');
INSERT INTO `upload` VALUES ('da1aa46a-2c0e-47b9-8eb2-ecbc217b2b7b', NULL, '907c9c10f804f230b48f575a95b47c3a.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/907c9c10f804f230b48f575a95b47c3a.jpg', '907c9c10f804f230b48f575a95b47c3a', '微信图片_20190317212820.jpg', '微信图片_20190317212820.jpg', '.jpg', 67584, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/907c9c10f804f230b48f575a95b47c3a.jpg', 'http://xuanyucms.lc/uploads/907c9c10f804f230b48f575a95b47c3a.jpg', '2019-12-06 22:43:09', '2019-12-06 22:43:09');
INSERT INTO `upload` VALUES ('df79c713-a3eb-4bbb-821d-b4e90019cbbe', NULL, '9a083481055b5b0997e7b81aac8588a6.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/9a083481055b5b0997e7b81aac8588a6.png', '9a083481055b5b0997e7b81aac8588a6', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '../uploads/9a083481055b5b0997e7b81aac8588a6.png', '../uploads/9a083481055b5b0997e7b81aac8588a6.png', '2019-12-06 22:05:39', '2019-12-06 22:05:39');
INSERT INTO `upload` VALUES ('e1a7ffed-7e0f-4ea7-8e1a-e0bff2532ffb', NULL, '3ab18ba36825ea6a41ab14732b047987.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/3ab18ba36825ea6a41ab14732b047987.png', '3ab18ba36825ea6a41ab14732b047987', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/3ab18ba36825ea6a41ab14732b047987.png', 'http://xuanyucms.lc/uploads/3ab18ba36825ea6a41ab14732b047987.png', '2019-12-07 10:23:05', '2019-12-07 10:23:05');
INSERT INTO `upload` VALUES ('e383a4a9-92d7-48bd-a605-608b7ce2747e', NULL, 'b49005cecde412003ccf992e39bf7ffd.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/b49005cecde412003ccf992e39bf7ffd.jpg', 'b49005cecde412003ccf992e39bf7ffd', '微信图片_20190317212809.jpg', '微信图片_20190317212809.jpg', '.jpg', 55296, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/b49005cecde412003ccf992e39bf7ffd.jpg', NULL, '2019-12-04 21:31:14', '2019-12-04 21:31:14');
INSERT INTO `upload` VALUES ('ea72b09d-72fa-43f9-b939-ad73eb2b9818', NULL, '405169c01e586ce470f7fe0b55406208.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/405169c01e586ce470f7fe0b55406208.png', '405169c01e586ce470f7fe0b55406208', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/405169c01e586ce470f7fe0b55406208.png', 'http://xuanyucms.lc/uploads/405169c01e586ce470f7fe0b55406208.png', '2019-12-07 21:05:46', '2019-12-07 21:05:46');
INSERT INTO `upload` VALUES ('ec6a0e70-41a7-4432-9507-d070bb2ad1ad', NULL, '31f8de762835afa74714cdeb6a55e893.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/31f8de762835afa74714cdeb6a55e893.jpg', '31f8de762835afa74714cdeb6a55e893', '微信图片_20190317212809.jpg', '微信图片_20190317212809.jpg', '.jpg', 55296, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/31f8de762835afa74714cdeb6a55e893.jpg', 'http://xuanyucms.lc/uploads/31f8de762835afa74714cdeb6a55e893.jpg', '2019-12-09 21:20:57', '2019-12-09 21:20:57');
INSERT INTO `upload` VALUES ('eec5dd94-9ffc-4a94-901d-a1847293f469', NULL, '68854ebbd67ddee386e82b36e02e6ef4.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/68854ebbd67ddee386e82b36e02e6ef4.jpg', '68854ebbd67ddee386e82b36e02e6ef4', '微信图片_20190317212813.jpg', '微信图片_20190317212813.jpg', '.jpg', 111616, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/68854ebbd67ddee386e82b36e02e6ef4.jpg', 'http://xuanyucms.lc/uploads/68854ebbd67ddee386e82b36e02e6ef4.jpg', '2019-12-09 21:35:35', '2019-12-09 21:35:35');
INSERT INTO `upload` VALUES ('f1e04c27-b05d-4e05-a4a6-47cf9f8e11e0', NULL, 'ecca50ff22f7df2db0ba3003b554095f.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/ecca50ff22f7df2db0ba3003b554095f.png', 'ecca50ff22f7df2db0ba3003b554095f', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/ecca50ff22f7df2db0ba3003b554095f.png', 'http://xuanyucms.lc/uploads/ecca50ff22f7df2db0ba3003b554095f.png', '2019-12-09 21:03:54', '2019-12-09 21:03:54');
INSERT INTO `upload` VALUES ('f4903de4-59be-4cb2-a066-bbe8cc787a02', NULL, 'efd44e77c940696473bdead385739912.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/efd44e77c940696473bdead385739912.jpg', 'efd44e77c940696473bdead385739912', '微信图片_20190317212813.jpg', '微信图片_20190317212813.jpg', '.jpg', 111616, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/efd44e77c940696473bdead385739912.jpg', 'http://xuanyucms.lc/uploads/efd44e77c940696473bdead385739912.jpg', '2019-12-07 21:21:43', '2019-12-07 21:21:43');
INSERT INTO `upload` VALUES ('f98f6afd-6183-4cce-9d7d-ef1d0b993277', NULL, 'ee62672d78e116009f7d56c03a0b8610.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/ee62672d78e116009f7d56c03a0b8610.jpg', 'ee62672d78e116009f7d56c03a0b8610', '微信图片_20190317212820.jpg', '微信图片_20190317212820.jpg', '.jpg', 67584, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/ee62672d78e116009f7d56c03a0b8610.jpg', 'http://xuanyucms.lc/uploads/ee62672d78e116009f7d56c03a0b8610.jpg', '2019-12-07 09:27:39', '2019-12-07 09:27:39');
INSERT INTO `upload` VALUES ('fec879af-cf5a-43bb-8fd8-5be33a8d8e93', NULL, '1d491558b90221c8ae349b3a35479ce2.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/1d491558b90221c8ae349b3a35479ce2.png', '1d491558b90221c8ae349b3a35479ce2', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/1d491558b90221c8ae349b3a35479ce2.png', 'http://xuanyucms.lc/uploads/1d491558b90221c8ae349b3a35479ce2.png', '2019-12-06 22:42:37', '2019-12-06 22:42:37');
INSERT INTO `upload` VALUES ('ffde3e1a-1e10-40c6-a916-bc3a07d71ddf', NULL, 'f0e12e5856aae950e43d93a29dfea928.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/f0e12e5856aae950e43d93a29dfea928.jpg', 'f0e12e5856aae950e43d93a29dfea928', '微信图片_20190317212809.jpg', '微信图片_20190317212809.jpg', '.jpg', 55296, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/f0e12e5856aae950e43d93a29dfea928.jpg', NULL, '2019-12-04 21:18:57', '2019-12-04 21:18:57');

-- ----------------------------
-- Table structure for upload_dir
-- ----------------------------
DROP TABLE IF EXISTS `upload_dir`;
CREATE TABLE `upload_dir`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `parent_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '上级标识',
  `sort` int(11) NULL DEFAULT 100 COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '上传-目录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wx_account
-- ----------------------------
DROP TABLE IF EXISTS `wx_account`;
CREATE TABLE `wx_account`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `origin_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原始ID',
  `app_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'AppId',
  `app_secred` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'AppSecred',
  `status` int(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '微信-账号表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wx_account
-- ----------------------------
INSERT INTO `wx_account` VALUES ('0a5c6ed0-6f02-4f09-98dc-ddebc349faa1', '测试账号3', '3', '3', '3', '3', 1, 99, '2019-07-01 21:43:39', '2019-12-19 22:35:57');
INSERT INTO `wx_account` VALUES ('6210ec85-9e23-4e4a-9c12-3dcbac08cab8', '测试账号1', '1', '1', '1', '1', 1, 99, '2019-06-13 15:14:06', '2019-12-19 22:59:30');
INSERT INTO `wx_account` VALUES ('7fae3712-177d-4f3e-8fa2-d769e0d8809a', '测试账号2', '2', '2', '2', '2', 1, 99, '2019-06-14 20:43:48', '2019-12-19 22:35:57');
INSERT INTO `wx_account` VALUES ('c2f038ea-13ef-4f8f-a7f0-1ca4ef41d1a9', '测试账号4', '4', '4', '4', '4', 1, 99, '2019-12-24 20:26:57', '2019-12-24 20:27:10');

SET FOREIGN_KEY_CHECKS = 1;
