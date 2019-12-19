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

 Date: 19/12/2019 23:18:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for info_column
-- ----------------------------
DROP TABLE IF EXISTS `info_column`;
CREATE TABLE `info_column`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '栏目名称',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '上级标识',
  `template_id` int(11) NULL DEFAULT NULL COMMENT '模板标识',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
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
  `column_id` int(11) NULL DEFAULT NULL COMMENT '栏目标识',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `seo_keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SEO关键字',
  `seo_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SEO描述',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `source` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩略图',
  `is_recommend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐',
  `is_hot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '热点',
  `external_links` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外部链接',
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '信息-新闻表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info_news
-- ----------------------------
INSERT INTO `info_news` VALUES (1, 2, '测试tag', '', '', '', '', '', '', '72a12164-b4e9-41f8-a08f-c06185e6a20a', '0', '0', '', 'cms,后台,测试1234', 1, 100, '2019-08-11 09:51:51', '2019-12-09 21:44:11');
INSERT INTO `info_news` VALUES (2, 3, '测试2', '', '', '', '', '', '', '49aaf956-f6eb-4178-842d-5a0909370f15', '0', '1', '', '', 1, 99, '2019-11-20 16:51:25', '2019-12-09 21:44:24');
INSERT INTO `info_news` VALUES (3, 13, '标题', '副标题', 'SEO关键词', 'SEO描述', '<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14px; text-align: right; white-space: nowrap; background-color: #ffffff;\">内容</span></p>', '作者', '来源', '1d98e879-b40e-445a-814b-9a20b856353f', '1', '0', '外部链接', '自由,民主', 1, 99, '2019-12-05 09:01:50', '2019-12-09 21:44:18');

-- ----------------------------
-- Table structure for info_single
-- ----------------------------
DROP TABLE IF EXISTS `info_single`;
CREATE TABLE `info_single`  (
  `column_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
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
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `sort` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '信息-标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info_tag
-- ----------------------------
INSERT INTO `info_tag` VALUES ('cms', '1', '100', '2019-12-09 21:44:11', '2019-12-09 21:44:11');
INSERT INTO `info_tag` VALUES ('争辩', '1', '100', '2019-07-12 10:41:23', '2019-07-12 10:41:33');
INSERT INTO `info_tag` VALUES ('台湾', '1', '100', '2019-07-12 11:34:36', '2019-07-12 11:34:36');
INSERT INTO `info_tag` VALUES ('后台', '1', '100', '2019-12-09 21:44:11', '2019-12-09 21:44:11');
INSERT INTO `info_tag` VALUES ('新闻', '1', '100', '2019-07-12 10:41:16', '2019-07-12 10:41:33');
INSERT INTO `info_tag` VALUES ('核武器', '1', '100', '2019-07-12 10:41:26', '2019-07-12 10:41:33');
INSERT INTO `info_tag` VALUES ('民主', '1', '100', '2019-12-09 21:44:18', '2019-12-09 21:44:18');
INSERT INTO `info_tag` VALUES ('洗澡', '1', '100', '2019-07-12 11:34:36', '2019-07-12 11:34:36');
INSERT INTO `info_tag` VALUES ('测试111', '1', '100', '2019-12-05 16:03:27', '2019-12-05 16:03:27');
INSERT INTO `info_tag` VALUES ('测试1234', '1', '100', '2019-12-09 21:44:11', '2019-12-09 21:44:11');
INSERT INTO `info_tag` VALUES ('自由', '1', '100', '2019-12-09 21:44:18', '2019-12-09 21:44:18');
INSERT INTO `info_tag` VALUES ('轩宇', '1', '100', '2019-07-14 19:07:53', '2019-07-14 19:07:53');

-- ----------------------------
-- Table structure for info_template
-- ----------------------------
DROP TABLE IF EXISTS `info_template`;
CREATE TABLE `info_template`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模板名称',
  `menu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视图',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '信息-模板表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info_template
-- ----------------------------
INSERT INTO `info_template` VALUES (1, '新闻', 'caad3a5a-ee87-4a44-b533-d5e23dc549fb', 1, '100', '2019-07-05 11:07:33', '2019-11-21 15:48:54');
INSERT INTO `info_template` VALUES (3, '单页', '18589585-7a9a-48d7-89e0-f18e046b8d02', 1, '100', '2019-07-05 13:49:18', '2019-11-21 15:52:56');

-- ----------------------------
-- Table structure for sys_auth
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth`;
CREATE TABLE `sys_auth`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色|用户 id',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型：1=角色，2=用户',
  `menu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单 id',
  `is_half` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否半选',
  `auth_button_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限 id，多个使用,分割',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_auth
-- ----------------------------
INSERT INTO `sys_auth` VALUES ('5baddea4-ba13-42d1-91ef-700fa36fa469', '1', '0a2ba2e9-e9e2-4bbf-a836-5fb7aa3af41e', '0', '33a11403-54b3-450f-b47c-eaa5b1347e16', '2019-11-28 16:49:54', '2019-11-28 16:49:54');
INSERT INTO `sys_auth` VALUES ('5baddea4-ba13-42d1-91ef-700fa36fa469', '1', '0a2ba2e9-e9e2-4bbf-a836-5fb7aa3af41e', '0', '3a790535-dde9-4596-ac91-d123cd4ef278', '2019-11-28 16:49:54', '2019-11-28 16:49:54');
INSERT INTO `sys_auth` VALUES ('5baddea4-ba13-42d1-91ef-700fa36fa469', '1', '0a2ba2e9-e9e2-4bbf-a836-5fb7aa3af41e', '0', '3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '2019-11-28 16:49:54', '2019-11-28 16:49:54');
INSERT INTO `sys_auth` VALUES ('5baddea4-ba13-42d1-91ef-700fa36fa469', '1', '0a2ba2e9-e9e2-4bbf-a836-5fb7aa3af41e', '0', '', '2019-11-28 16:49:54', '2019-11-28 16:49:54');
INSERT INTO `sys_auth` VALUES ('5baddea4-ba13-42d1-91ef-700fa36fa469', '1', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '1', '', '2019-11-28 16:49:54', '2019-11-28 16:49:54');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', '2', '91128d91-2386-4d6b-8e5c-f023c63c57ec', '0', '33a11403-54b3-450f-b47c-eaa5b1347e16', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', '2', '91128d91-2386-4d6b-8e5c-f023c63c57ec', '0', '3a790535-dde9-4596-ac91-d123cd4ef278', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', '2', '91128d91-2386-4d6b-8e5c-f023c63c57ec', '0', '3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', '2', '91128d91-2386-4d6b-8e5c-f023c63c57ec', '0', '0b6d7a2a-91e6-4ed2-ab03-3906f57b46d0', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', '2', '91128d91-2386-4d6b-8e5c-f023c63c57ec', '0', '972659d8-4c43-4f93-9229-857a63c20714', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', '2', '91128d91-2386-4d6b-8e5c-f023c63c57ec', '0', '4ac84963-f166-4474-b617-777abf6956c8', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', '2', '91128d91-2386-4d6b-8e5c-f023c63c57ec', '0', '283437d9-c1b1-4a5c-9e24-242c0bcded18', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', '2', '91128d91-2386-4d6b-8e5c-f023c63c57ec', '0', 'df1408bf-a355-4474-90a9-04ae5ecf087e', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', '2', 'efa26c50-67b2-464b-ae90-e98438bd5b4b', '0', '33a11403-54b3-450f-b47c-eaa5b1347e16', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', '2', 'efa26c50-67b2-464b-ae90-e98438bd5b4b', '0', '3a790535-dde9-4596-ac91-d123cd4ef278', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', '2', '91128d91-2386-4d6b-8e5c-f023c63c57ec', '1', '', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', '2', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '1', '', '2019-12-03 15:11:01', '2019-12-03 15:11:01');
INSERT INTO `sys_auth` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', '2', 'efa26c50-67b2-464b-ae90-e98438bd5b4b', '1', '', '2019-12-03 15:11:01', '2019-12-03 15:11:01');

-- ----------------------------
-- Table structure for sys_auth_button
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_button`;
CREATE TABLE `sys_auth_button`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮名称',
  `key` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-权限按钮表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_auth_button
-- ----------------------------
INSERT INTO `sys_auth_button` VALUES ('0b6d7a2a-91e6-4ed2-ab03-3906f57b46d0', '导出', 'export', 1, '99', '2019-11-21 09:15:45', '2019-11-21 09:15:45');
INSERT INTO `sys_auth_button` VALUES ('283437d9-c1b1-4a5c-9e24-242c0bcded18', '复制', 'copy', 1, '99', '2019-11-28 20:03:18', '2019-11-28 20:03:18');
INSERT INTO `sys_auth_button` VALUES ('33a11403-54b3-450f-b47c-eaa5b1347e16', '新增', 'insert', 1, '99', '2019-11-20 09:34:33', '2019-11-20 09:34:33');
INSERT INTO `sys_auth_button` VALUES ('3a790535-dde9-4596-ac91-d123cd4ef278', '编辑', 'edit', 1, '99', '2019-11-20 09:34:41', '2019-11-20 09:34:41');
INSERT INTO `sys_auth_button` VALUES ('3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '删除', 'delete', 1, '99', '2019-11-20 09:34:51', '2019-11-20 09:34:51');
INSERT INTO `sys_auth_button` VALUES ('41fa64dc-ed83-428b-bba3-dcf9753cfa3e', '设置权限', 'setAuth', 1, '99', '2019-11-29 10:08:29', '2019-11-29 10:08:29');
INSERT INTO `sys_auth_button` VALUES ('4ac84963-f166-4474-b617-777abf6956c8', '新增下级', 'insertNext', 1, '99', '2019-11-28 20:01:13', '2019-11-28 20:01:13');
INSERT INTO `sys_auth_button` VALUES ('972659d8-4c43-4f93-9229-857a63c20714', '上传', 'upload', 1, '99', '2019-11-21 09:15:56', '2019-11-21 09:15:56');
INSERT INTO `sys_auth_button` VALUES ('df1408bf-a355-4474-90a9-04ae5ecf087e', '保存', 'save', 1, '99', '2019-11-28 20:12:07', '2019-11-28 20:12:07');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基本配置-名称',
  `domain_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基本配置-域名',
  `copyright` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基本配置-版权',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基本配置-状态',
  `close_explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基本配置-关闭说明',
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
INSERT INTO `sys_config` VALUES (1, 'XUANYU CMS', 'http://xuanyucms.lc', '', '1', '', '', '', '', '', '/uploads', '*', '2');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `parent_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级部门标识',
  `leader` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
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
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值',
  `dict_dir_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统字典目录标识',
  `dict_dir_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统字典目录值',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('54d3b390-faba-49f2-9630-7133fd3435be', '测试1-1', 'test1-1', 'eb9bdd78-feae-4ff7-bd54-611b034235e3', 'test1', '1', 99, '2019-11-23 17:03:19', '2019-11-23 17:03:34');
INSERT INTO `sys_dict` VALUES ('7525d0db-2d5d-40a8-bf72-ab62947ac5f0', '测试 key 是否存在', 'test3-333', '1586dd68-4c1f-4194-8c03-22d04c85e07c', 'test-3', '1', 99, '2019-12-05 09:46:33', '2019-12-05 09:46:33');
INSERT INTO `sys_dict` VALUES ('eea69be6-f55f-4ca3-84a7-f22957a1135d', '测试3-1', 'test3-1', '1586dd68-4c1f-4194-8c03-22d04c85e07c', 'test-3', '1', 99, '2019-11-22 09:09:44', '2019-11-23 17:03:44');

-- ----------------------------
-- Table structure for sys_dict_dir
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_dir`;
CREATE TABLE `sys_dict_dir`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值',
  `parent_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级标识',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-字典目录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_dir
-- ----------------------------
INSERT INTO `sys_dict_dir` VALUES ('1586dd68-4c1f-4194-8c03-22d04c85e07c', '测试3', 'test-3', '566c7383-1d50-454a-b578-4368b4675cec', 99, '2019-11-21 10:54:58', '2019-11-23 13:19:32');
INSERT INTO `sys_dict_dir` VALUES ('566c7383-1d50-454a-b578-4368b4675cec', '全部字典', '', '0', 99, '2019-07-27 10:11:59', '2019-11-21 10:46:09');
INSERT INTO `sys_dict_dir` VALUES ('eb9bdd78-feae-4ff7-bd54-611b034235e3', '测试1', 'test1', '566c7383-1d50-454a-b578-4368b4675cec', 99, '2019-11-23 13:14:48', '2019-11-23 13:19:37');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志类型：1=登录日志，2=操作日志，3=异常日志',
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户',
  `api` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接口地址',
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '请求参数',
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器信息',
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问IP',
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态码',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态信息',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('00f7480a-7b3b-450c-973c-396e22a920f0', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"0d03ad14-3fe1-4d1a-a5e3-45c87d15a75b\",\"parent_id\":\"02f6c566-7878-4353-ad36-179bd04e1b5a\",\"name\":\"\\u8d26\\u53f7\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/wechat\\/account\",\"route_name\":\"wechatAccount\",\"route_component\":\"views\\/wechat\\/account\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"98\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:41:40');
INSERT INTO `sys_log` VALUES ('0447ccbf-70f6-404d-b37d-13a5ea1cbbf8', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:28:37');
INSERT INTO `sys_log` VALUES ('05d47885-2f5f-4164-a477-a6d09f5b90f1', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:31:48');
INSERT INTO `sys_log` VALUES ('07179533-7d39-4cc4-8ff4-8bc09ceaac42', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:32:41');
INSERT INTO `sys_log` VALUES ('07c8d188-1950-4392-9afd-0ecc146ad4f3', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:31');
INSERT INTO `sys_log` VALUES ('0902a24d-13b5-404c-b9a3-fedc1326642a', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f74\",\"account\":\"4\",\"origin_id\":\"4\",\"app_id\":\"4\",\"app_secred\":\"4\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:32:58');
INSERT INTO `sys_log` VALUES ('096731ff-b831-4516-886d-4e6247bf8326', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:26:51');
INSERT INTO `sys_log` VALUES ('0aeff983-6d25-4616-b5ab-69a48f57683d', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:25:58');
INSERT INTO `sys_log` VALUES ('1368c26e-37e2-4b48-8f5f-ee66bc5dc786', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:08:15');
INSERT INTO `sys_log` VALUES ('15393810-eefd-4085-b7c7-1c41f2cc2778', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:36');
INSERT INTO `sys_log` VALUES ('172114bd-ef2c-4b84-acc9-fe6edac33636', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:58:35');
INSERT INTO `sys_log` VALUES ('18837794-3089-4b72-8c02-aaa2d2e732cf', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:06:52');
INSERT INTO `sys_log` VALUES ('18a410bb-4a2d-432f-88e5-a336e09e6ec3', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"id\":\"6210ec85-9e23-4e4a-9c12-3dcbac08cab8\",\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f71\",\"account\":\"1\",\"origin_id\":\"1\",\"app_id\":\"1\",\"app_secred\":\"1\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:59:30');
INSERT INTO `sys_log` VALUES ('1bcc4a48-00be-454a-94d4-c8e0576047e2', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:04:11');
INSERT INTO `sys_log` VALUES ('1c4d4cfc-b013-429e-bcf3-0a49baa0b78a', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:17:47');
INSERT INTO `sys_log` VALUES ('1cff9b32-ceb1-4924-a778-985e3e0dabb7', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:27:15');
INSERT INTO `sys_log` VALUES ('1d5a240f-0c65-4b7d-9844-b990fc1f8b95', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:58:35');
INSERT INTO `sys_log` VALUES ('1fde239e-7073-4962-889d-06999b13193a', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:27:13');
INSERT INTO `sys_log` VALUES ('1fef8c4f-4d67-4c70-ac9c-d3b0c12118e8', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:58:09');
INSERT INTO `sys_log` VALUES ('209115a1-fde0-40f8-a425-7baa5d3db0da', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:43:38');
INSERT INTO `sys_log` VALUES ('20928e2f-24b2-4298-9509-19598722e0d7', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/delete', '{\"id\":\"97f26809-79c9-437a-a945-2528faac2372\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:59:33');
INSERT INTO `sys_log` VALUES ('21b8bc49-3a58-4a25-8650-3c4de16d39d9', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:28:25');
INSERT INTO `sys_log` VALUES ('21c4c863-80db-4201-a7e9-39dac8a422da', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"id\":\"7fae3712-177d-4f3e-8fa2-d769e0d8809a\",\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f72\",\"account\":\"2\",\"origin_id\":\"2\",\"app_id\":\"2\",\"app_secred\":\"2\",\"status\":\"1\",\"sort\":\"100\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:30:06');
INSERT INTO `sys_log` VALUES ('297db3c3-315f-474e-a30b-b4c8b6accbc9', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:27:35');
INSERT INTO `sys_log` VALUES ('2a30c05c-bfdf-4802-9648-1830f07f928b', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:42:50');
INSERT INTO `sys_log` VALUES ('2de548f4-a4d3-4e84-a348-bf76c4049aca', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"3cfc06b5-1abe-4bec-bc13-9be7c553d77a\",\"parent_id\":\"02f6c566-7878-4353-ad36-179bd04e1b5a\",\"name\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/wechat\\/menu\",\"route_name\":\"wxmenu\",\"route_component\":\"views\\/wechat\\/menu\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 19:31:36');
INSERT INTO `sys_log` VALUES ('30471b02-f9f8-49be-93f9-f5b5bae4137f', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:42:46');
INSERT INTO `sys_log` VALUES ('30879348-e046-4064-a9b7-cb992531a394', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"id\":\"6210ec85-9e23-4e4a-9c12-3dcbac08cab8\",\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f7\",\"account\":\"1\",\"origin_id\":\"1\",\"app_id\":\"1\",\"app_secred\":\"1\",\"status\":\"1\",\"sort\":\"100\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:26:50');
INSERT INTO `sys_log` VALUES ('3176ec7f-5d63-4925-a29e-c4ffaae8baa1', '1', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2019-12-18 20:11:02');
INSERT INTO `sys_log` VALUES ('383e7fc6-2e37-452c-83f6-05c51fda1d17', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:57:56');
INSERT INTO `sys_log` VALUES ('389fd28e-8fdb-4e7b-867d-6b185f8d29fc', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:51:30');
INSERT INTO `sys_log` VALUES ('397d5d2b-8af4-4293-a0ae-5b10ff41a57f', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:52:13');
INSERT INTO `sys_log` VALUES ('3bb35432-a92c-4725-a6e3-297b465347cd', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:03:32');
INSERT INTO `sys_log` VALUES ('3f3c2e01-28d9-4e53-bfba-fc8128935200', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"parent_id\":\"0\",\"name\":\"\\u5fae\\u4fe1\\u516c\\u4f17\\u53f7\",\"icon\":\"wechat\",\"route_path\":\"\\/wechat\",\"route_name\":\"wechat\",\"route_component\":\"layouts\\/basicLayout\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 19:23:21');
INSERT INTO `sys_log` VALUES ('3fa0ae17-c92c-42c8-ab06-7237e5aa8789', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:32:38');
INSERT INTO `sys_log` VALUES ('41bce720-4558-4351-8919-c57878e1673b', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:28:11');
INSERT INTO `sys_log` VALUES ('41c4fe4a-e48a-4121-92fe-c6e3e66db57c', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:00:17');
INSERT INTO `sys_log` VALUES ('427e6d7b-d8d0-400b-bff2-8384d10599a9', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:31:48');
INSERT INTO `sys_log` VALUES ('42f4a3b3-ce45-42c2-8d2b-cc179668b831', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:04:34');
INSERT INTO `sys_log` VALUES ('446cb94c-336c-420f-a2fa-62eb0a4eacb9', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:31:49');
INSERT INTO `sys_log` VALUES ('47806b70-ff04-44c6-b366-13710322a096', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:29:25');
INSERT INTO `sys_log` VALUES ('480b2f14-7a41-4c6a-8a47-ae7cd50000c0', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/delete', '{\"id\":\"41f31548-6ded-4764-b81d-36418ebcb691\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:30:20');
INSERT INTO `sys_log` VALUES ('48fba2b7-c971-4314-8f4e-aa4259082da8', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:16:22');
INSERT INTO `sys_log` VALUES ('4c3670ec-ae03-4275-9c93-29a43997c207', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:25:26');
INSERT INTO `sys_log` VALUES ('525f42fc-55ba-4650-b8df-bf85d2e3c009', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:49:03');
INSERT INTO `sys_log` VALUES ('5304524c-e5ad-48db-85a2-3bdb686c499d', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:28:11');
INSERT INTO `sys_log` VALUES ('54ff0999-db1d-44ee-b4b2-4740739c31cb', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:59:22');
INSERT INTO `sys_log` VALUES ('562be700-f3b0-4bbb-98d7-1ff3a9d7ccbb', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:11:02');
INSERT INTO `sys_log` VALUES ('5953c665-d276-40b6-a252-314332294b3f', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:11:02');
INSERT INTO `sys_log` VALUES ('59a0a74a-55f3-4b10-89c8-a0f0d1656e84', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:31:56');
INSERT INTO `sys_log` VALUES ('5d9719f8-5b2c-4ff5-b593-e0555de3765d', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:29:16');
INSERT INTO `sys_log` VALUES ('60467e0d-2885-4be9-8224-a9a3e07d7f11', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:57:56');
INSERT INTO `sys_log` VALUES ('604e469a-1ab0-447e-8532-525b35090c53', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:31:36');
INSERT INTO `sys_log` VALUES ('6557134b-7723-4789-9374-7873c19044f4', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:49');
INSERT INTO `sys_log` VALUES ('6a458378-3456-49a0-a787-25703e38c420', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:58:09');
INSERT INTO `sys_log` VALUES ('6a7cdec2-c3be-4741-a5ba-38b00247a4dd', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:27');
INSERT INTO `sys_log` VALUES ('6c4e943f-9723-4755-a008-517f72352fdd', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:08:15');
INSERT INTO `sys_log` VALUES ('6dba68ff-22ed-4d3c-b491-ce9e8f6cb3bb', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:25:51');
INSERT INTO `sys_log` VALUES ('6ec5c9eb-1c0a-4c3e-9f6c-f248c731ed2c', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:30:51');
INSERT INTO `sys_log` VALUES ('6f110557-901f-4846-ad2c-280c8f8bcacc', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:50');
INSERT INTO `sys_log` VALUES ('7094d136-bc66-4410-b662-e764e2a8149e', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"id\":\"6210ec85-9e23-4e4a-9c12-3dcbac08cab8\",\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f7\",\"account\":\"11\",\"origin_id\":\"1\",\"app_id\":\"1\",\"app_secred\":\"1\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:59:17');
INSERT INTO `sys_log` VALUES ('71e287b0-c9a2-4ef0-9e4f-75406ba135fd', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:45:43');
INSERT INTO `sys_log` VALUES ('72d0f6ae-363e-4ca3-bdcc-ae06989ed1c3', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:27:22');
INSERT INTO `sys_log` VALUES ('74f0150c-1806-4660-9656-1752bac84685', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:28:11');
INSERT INTO `sys_log` VALUES ('75d4917f-a1b9-4308-9e9a-26c6cc0cbd01', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:23:59');
INSERT INTO `sys_log` VALUES ('7a235736-5b8c-48f5-9dcb-71ba2334567b', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:08:11');
INSERT INTO `sys_log` VALUES ('7c323a10-0d7d-4bb4-a414-28d69869bda0', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:06:03');
INSERT INTO `sys_log` VALUES ('7f62799e-0110-4bb5-aef5-baf70eba271b', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:29:18');
INSERT INTO `sys_log` VALUES ('8077263b-1480-44fb-8654-13d71a8a83db', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:35:22');
INSERT INTO `sys_log` VALUES ('819431ee-5f7b-4a18-99ae-25272697c026', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:07:01');
INSERT INTO `sys_log` VALUES ('8400d07d-9a97-4671-9565-1f5a4d021e32', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:27:14');
INSERT INTO `sys_log` VALUES ('8499face-6832-4adc-8afb-2d1fa4c12f88', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:31:42');
INSERT INTO `sys_log` VALUES ('86420a97-f0c1-44e3-bbe7-867f7fc26781', '1', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'login/sign_in', '{\"username\":\"admin\",\"password\":\"123456\"}', 'Chrome 78.0.3904.97', '::1', '200', '登录成功', '2019-12-18 20:08:10');
INSERT INTO `sys_log` VALUES ('86eddc14-34aa-4a51-a218-014f40f0c565', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:23:58');
INSERT INTO `sys_log` VALUES ('874c6e5b-2a56-411f-9fe4-4ec643a9cae1', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:40:01');
INSERT INTO `sys_log` VALUES ('876e26fe-3a56-44f6-9a7c-97ab426efd5e', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:31:29');
INSERT INTO `sys_log` VALUES ('877a9fa7-fb6d-477f-b7a7-a0d2ca683604', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:32:59');
INSERT INTO `sys_log` VALUES ('89c446b3-886c-49de-828b-1391e1554f1a', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:04:07');
INSERT INTO `sys_log` VALUES ('89e05ed5-fcdd-4c74-b2bf-c6dd97859d22', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:07:03');
INSERT INTO `sys_log` VALUES ('8cb6bfb4-d87e-4ee0-98c4-1645de2e0f20', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"fc9ccb9b-9f78-4de4-a8d0-5a7153d249ba\",\"parent_id\":\"0\",\"name\":\"\\u63a7\\u5236\\u53f0\",\"icon\":\"dashboard\",\"route_path\":\"\\/workplace\",\"route_name\":\"workplace\",\"route_component\":\"layouts\\/basicLayout\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-18 20:07:02');
INSERT INTO `sys_log` VALUES ('8e7eb821-c154-4856-a466-e02f8270575e', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:49');
INSERT INTO `sys_log` VALUES ('90a582c7-6be6-4dc7-954c-9ed5127c0551', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"3cfc06b5-1abe-4bec-bc13-9be7c553d77a\",\"parent_id\":\"02f6c566-7878-4353-ad36-179bd04e1b5a\",\"name\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/wechat\\/menu\",\"route_name\":\"wechatMenu\",\"route_component\":\"views\\/wechat\\/menu\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 21:04:27');
INSERT INTO `sys_log` VALUES ('9639c461-971f-4789-a388-5fd51b84667b', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:19:02');
INSERT INTO `sys_log` VALUES ('9678e475-4b6a-4c4f-ab17-123b3e12efd7', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:03:28');
INSERT INTO `sys_log` VALUES ('96db25ac-444a-4bfc-ac0c-9c8c5a298cd9', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:41');
INSERT INTO `sys_log` VALUES ('99094923-9ab5-4fd7-b1f4-82afb9abbca6', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:41:56');
INSERT INTO `sys_log` VALUES ('9a1d9427-6662-4c17-990c-495cb7623942', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:45:43');
INSERT INTO `sys_log` VALUES ('9a661985-b7e0-4f74-8ed1-e5c3075cd134', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:08:10');
INSERT INTO `sys_log` VALUES ('9c52cb06-edc4-44ad-bf5f-5b5d63d8ace1', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:31:16');
INSERT INTO `sys_log` VALUES ('9cb81162-b45b-45c8-8479-bac0534f1589', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:31:37');
INSERT INTO `sys_log` VALUES ('9da0b90c-01d0-49a0-a539-cbedc477cca4', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:59:16');
INSERT INTO `sys_log` VALUES ('9e7aed05-4866-4ca6-9502-d95b8715e194', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:19:02');
INSERT INTO `sys_log` VALUES ('9fb2f837-2705-4cad-b8e3-e8c53a4b4696', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:28:11');
INSERT INTO `sys_log` VALUES ('a00d252d-5289-430c-a44c-97564b63fc91', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:42:38');
INSERT INTO `sys_log` VALUES ('a3e9a166-2b7d-4e4c-acd7-0623a1c94ba0', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:36:02');
INSERT INTO `sys_log` VALUES ('a462a09b-2d93-459b-a7f9-a2da2225144d', '3', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/delete', '[]', 'Chrome 78.0.3904.97', '::1', '1', '缺少参数', '2019-12-19 21:54:08');
INSERT INTO `sys_log` VALUES ('a6d864f6-dfed-48f6-8a99-5b2f1a47f1a7', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:04:15');
INSERT INTO `sys_log` VALUES ('a77b47ef-f9c0-474b-a2c5-1a62beaa70fd', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:17:57');
INSERT INTO `sys_log` VALUES ('ac90ce6d-b81e-4c65-be40-51b9861ea41c', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:17:27');
INSERT INTO `sys_log` VALUES ('ad279b95-fc59-4b79-8bf8-f627924e3859', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:04:34');
INSERT INTO `sys_log` VALUES ('ae589e23-3c5a-4f9d-abb2-d1a430b5b11d', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:19:03');
INSERT INTO `sys_log` VALUES ('b142a759-7037-4903-b7d6-f478434c0b46', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:22:00');
INSERT INTO `sys_log` VALUES ('b6451edf-60d1-4a3c-bb9b-b015df057ed5', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:30:06');
INSERT INTO `sys_log` VALUES ('bc1d83b5-4b8e-49bf-adc0-352852577c33', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:59:30');
INSERT INTO `sys_log` VALUES ('bd3b8480-d22b-4305-9b9c-fb5355e214ae', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"id\":\"0d03ad14-3fe1-4d1a-a5e3-45c87d15a75b\",\"parent_id\":\"02f6c566-7878-4353-ad36-179bd04e1b5a\",\"name\":\"\\u8d26\\u53f7\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/wechat\\/account\",\"route_name\":\"wechatAccount\",\"route_component\":\"views\\/wechat\\/account\",\"auth_button_id\":\"33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"98\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:42:45');
INSERT INTO `sys_log` VALUES ('bddd55e8-22cf-4d14-950c-23c0f77343fd', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:27:13');
INSERT INTO `sys_log` VALUES ('c2c4047c-349d-4da8-a467-e447e26210c0', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:00:17');
INSERT INTO `sys_log` VALUES ('c3daf76d-ab8d-4038-a759-083a2fdbd6bd', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:30:53');
INSERT INTO `sys_log` VALUES ('c525710d-68e2-48f8-b498-8072ec584097', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:19:06');
INSERT INTO `sys_log` VALUES ('c94ade10-f492-425b-b8d3-1a37d55b390d', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:23:58');
INSERT INTO `sys_log` VALUES ('cb19bd13-993f-48b8-b6a4-ce6c19c7b4fb', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:31:13');
INSERT INTO `sys_log` VALUES ('cd45b945-1a3f-4d30-a683-fa1cb8ee3d25', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:31:48');
INSERT INTO `sys_log` VALUES ('ce56eac6-0e0a-4ffa-8fda-a02268d41065', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:31:48');
INSERT INTO `sys_log` VALUES ('d1580a4b-c89a-48e8-83f5-e60e8e64270a', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"id\":\"0a5c6ed0-6f02-4f09-98dc-ddebc349faa1\",\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f73\",\"account\":\"3\",\"origin_id\":\"3\",\"app_id\":\"3\",\"app_secred\":\"3\",\"status\":\"1\",\"sort\":\"100\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:30:18');
INSERT INTO `sys_log` VALUES ('d41a2541-e71b-4fc7-b5a7-252a14519430', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:04:35');
INSERT INTO `sys_log` VALUES ('d529ddfe-e471-4222-9386-2061549acd2c', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:28:16');
INSERT INTO `sys_log` VALUES ('d8b536d7-6a49-4f66-b4be-6e9ce77ed4f3', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"id\":\"6210ec85-9e23-4e4a-9c12-3dcbac08cab8\",\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f7\",\"account\":\"1\",\"origin_id\":\"1\",\"app_id\":\"1\",\"app_secred\":\"1\",\"status\":\"1\",\"sort\":\"100\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:27:34');
INSERT INTO `sys_log` VALUES ('d8e5a926-b10b-4573-86a8-3136432ebf55', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:30:20');
INSERT INTO `sys_log` VALUES ('d9eaaae9-9ffd-4d2a-b3dc-4aa42e425d76', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:31:29');
INSERT INTO `sys_log` VALUES ('da438b67-4a10-424b-86f8-1eddafcf5180', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:30:19');
INSERT INTO `sys_log` VALUES ('da812a2c-0053-453f-b269-f34076e7d5d8', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:07:42');
INSERT INTO `sys_log` VALUES ('dc2fb8d2-33fa-4416-844b-48c13356bd13', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:29:40');
INSERT INTO `sys_log` VALUES ('dc45542f-9f91-47b5-94c4-2fe1a6007fc9', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/post/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:28:33');
INSERT INTO `sys_log` VALUES ('dfb6c7cc-a845-4d81-b042-75bd609587a6', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:30:51');
INSERT INTO `sys_log` VALUES ('e072213a-baf9-448f-9a27-77a016539f8a', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:06:59');
INSERT INTO `sys_log` VALUES ('e87e48be-78ad-4093-a151-2fce024224e9', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:49:03');
INSERT INTO `sys_log` VALUES ('e88595c6-c3b4-40a6-b7e2-743bfa62d7de', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict/get_list', '{\"dict_dir_id\":\"\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:07:43');
INSERT INTO `sys_log` VALUES ('e94f13e8-d401-4578-a300-8a60f7928ace', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:25:58');
INSERT INTO `sys_log` VALUES ('e9ea4b59-4897-4205-ad2b-4c5d36c58dbe', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 23:07:39');
INSERT INTO `sys_log` VALUES ('ebf2e2d0-b319-4072-9b4d-2aa6cef4fd0c', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"parent_id\":\"02f6c566-7878-4353-ad36-179bd04e1b5a\",\"name\":\"\\u83dc\\u5355\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/wechat\\/menu\",\"route_name\":\"menu\",\"route_component\":\"views\\/wechat\\/menu\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 19:29:18');
INSERT INTO `sys_log` VALUES ('ecc4ae11-83ad-47b3-8992-2f8ad9191a4e', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:28:13');
INSERT INTO `sys_log` VALUES ('ed013da0-9d46-4653-8881-87a6aaacfefc', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:25:58');
INSERT INTO `sys_log` VALUES ('f1c342f0-198d-4bda-beb4-a9135d33932a', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/dict_dir/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:07:43');
INSERT INTO `sys_log` VALUES ('f2c845f3-e839-4aa5-88bb-fec420a8981a', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:52:13');
INSERT INTO `sys_log` VALUES ('f3d27d93-9dd7-4ed9-a9ee-88e6bd4bbc0f', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth_button/get_list', '{\"status\":\"1\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:42:41');
INSERT INTO `sys_log` VALUES ('f4a8b904-c7a9-41c7-ad2f-484fe6feb585', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/submit', '{\"id\":\"6210ec85-9e23-4e4a-9c12-3dcbac08cab8\",\"name\":\"\\u6d4b\\u8bd5\\u8d26\\u53f7\",\"account\":\"1\",\"origin_id\":\"1\",\"app_id\":\"1\",\"app_secred\":\"1\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 22:59:22');
INSERT INTO `sys_log` VALUES ('f60b01ba-d144-4e81-aee9-9d72e208f09e', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/submit', '{\"parent_id\":\"02f6c566-7878-4353-ad36-179bd04e1b5a\",\"name\":\"\\u8d26\\u53f7\\u7ba1\\u7406\",\"icon\":\"\",\"route_path\":\"\\/wechat\\/account\",\"route_name\":\"wechatAccount\",\"route_component\":\"views\\/wechat\\/account\",\"auth_button_id\":\"\",\"hidden\":\"0\",\"status\":\"1\",\"sort\":\"99\"}', 'Chrome 78.0.3904.97', '::1', '200', '保存成功', '2019-12-19 21:04:06');
INSERT INTO `sys_log` VALUES ('f6e381dd-f4d8-430e-bb2d-753078e26c20', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:59:18');
INSERT INTO `sys_log` VALUES ('f894dc15-d779-4e71-8b79-9acbf2733bb2', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:59:15');
INSERT INTO `sys_log` VALUES ('f8e076fc-6079-4c1d-8887-c99a0a1aaf0d', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:59:33');
INSERT INTO `sys_log` VALUES ('f9545f60-c31b-4c7c-88f1-55c1deac2069', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/config/get_data', '{\"site\":\"zh\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-18 20:31:29');
INSERT INTO `sys_log` VALUES ('fa72c7b3-eb46-490f-a236-147fbebaac90', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:45:43');
INSERT INTO `sys_log` VALUES ('fbb30d39-9a79-4fe5-acbc-84370fc68457', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'wechat/account/get_list', '{\"has_pagination\":\"0\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 22:42:00');
INSERT INTO `sys_log` VALUES ('fc0b8194-83aa-4dcf-992c-695bb79c7f79', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 19:23:22');
INSERT INTO `sys_log` VALUES ('fca96b18-2e2a-4f2a-8558-b6bffe1987dc', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/menu/get_list', '[]', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:04:27');
INSERT INTO `sys_log` VALUES ('fe55c769-b9a9-4a4d-9573-e1459db0e141', '2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', 'system/auth/get_menu_list', '{\"id\":\"6b525f59-1a3a-48d6-8483-a75ace5304f9\",\"type\":\"2\"}', 'Chrome 78.0.3904.97', '::1', '200', '', '2019-12-19 21:51:30');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '上级标识',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `route_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由地址',
  `route_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由名称',
  `route_component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由页面',
  `redirect` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '重定向',
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打开方式',
  `hidden` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '隐藏菜单',
  `auth_button_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限按钮id',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT 100 COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('02f6c566-7878-4353-ad36-179bd04e1b5a', '0', '微信公众号', 'wechat', '/wechat', 'wechat', 'layouts/basicLayout', NULL, NULL, '0', '', '1', 99, '2019-12-19 19:23:21', '2019-12-19 19:23:21');
INSERT INTO `sys_menu` VALUES ('0a2ba2e9-e9e2-4bbf-a836-5fb7aa3af41e', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '角色管理', '', '/system/role', 'role', 'views/system/role', NULL, NULL, '0', '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,41fa64dc-ed83-428b-bba3-dcf9753cfa3e', '1', 99, '2019-06-29 23:34:50', '2019-12-04 14:25:32');
INSERT INTO `sys_menu` VALUES ('0d03ad14-3fe1-4d1a-a5e3-45c87d15a75b', '02f6c566-7878-4353-ad36-179bd04e1b5a', '账号管理', '', '/wechat/account', 'wechatAccount', 'views/wechat/account', NULL, NULL, '0', '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '1', 98, '2019-12-19 21:04:06', '2019-12-19 22:42:45');
INSERT INTO `sys_menu` VALUES ('18589585-7a9a-48d7-89e0-f18e046b8d02', '89f0db23-ff1a-49d9-b021-dab2711ebee0', '单页管理', '', '/information/single', 'single', 'views/information/single', '', NULL, '0', 'df1408bf-a355-4474-90a9-04ae5ecf087e', '1', 99, '2019-07-29 19:44:05', '2019-11-28 20:12:20');
INSERT INTO `sys_menu` VALUES ('22695154-4c7a-4cb0-8a6e-1609ea9b47b6', '89f0db23-ff1a-49d9-b021-dab2711ebee0', '模板管理', '', '/information/template', 'template', 'views/information/template', '', NULL, '0', '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '1', 99, '2019-07-04 17:09:57', '2019-11-28 12:28:22');
INSERT INTO `sys_menu` VALUES ('3cfc06b5-1abe-4bec-bc13-9be7c553d77a', '02f6c566-7878-4353-ad36-179bd04e1b5a', '菜单管理', '', '/wechat/menu', 'wechatMenu', 'views/wechat/menu', NULL, NULL, '0', '', '1', 99, '2019-12-19 19:29:18', '2019-12-19 21:04:27');
INSERT INTO `sys_menu` VALUES ('3e14495f-be53-4622-80b3-78832d82f685', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '岗位管理', NULL, '/system/post', 'post', 'views/system/post', NULL, '', NULL, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '1', 99, '2019-06-30 14:35:08', '2019-11-26 09:40:00');
INSERT INTO `sys_menu` VALUES ('573421e8-42a6-47b1-919c-0feb863754de', 'fc9ccb9b-9f78-4de4-a8d0-5a7153d249ba', '工作台', '', '/workplace/dashboard', 'dashboard', 'views/workplace/dashboard', NULL, NULL, '0', '', '1', 99, '2019-06-23 19:35:33', '2019-12-04 14:26:04');
INSERT INTO `sys_menu` VALUES ('5e173c49-a81f-4a5e-869d-4cb76c2ca419', '0', '系统管理', 'setting', '/system', 'system', 'layouts/basicLayout', '', NULL, '0', '', '1', 99, '2019-06-23 19:35:35', '2019-11-29 16:56:38');
INSERT INTO `sys_menu` VALUES ('89f0db23-ff1a-49d9-b021-dab2711ebee0', '0', '信息管理', 'profile', '/information', 'information', 'layouts/basicLayout', '', NULL, '0', '', '1', 99, '2019-07-04 17:05:01', '2019-11-29 16:56:39');
INSERT INTO `sys_menu` VALUES ('91128d91-2386-4d6b-8e5c-f023c63c57ec', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '部门管理', NULL, '/system/dept', 'dept', 'views/system/dept', NULL, '', NULL, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '1', 99, '2019-06-30 21:21:42', '2019-11-26 09:40:08');
INSERT INTO `sys_menu` VALUES ('b2c3b631-2aec-45a6-a8b4-7070a1440473', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '用户管理', NULL, '/system/user', 'user', 'views/system/user', NULL, '', NULL, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '1', 99, '2019-06-29 23:35:24', '2019-11-26 20:05:52');
INSERT INTO `sys_menu` VALUES ('b470d6f5-0f5c-473c-9333-1e53d578a91e', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '基本设置', '', '/system/config', 'config', 'views/system/config', '', NULL, '0', 'df1408bf-a355-4474-90a9-04ae5ecf087e', '1', 99, '2019-07-20 19:50:27', '2019-11-28 20:12:31');
INSERT INTO `sys_menu` VALUES ('caad3a5a-ee87-4a44-b533-d5e23dc549fb', '89f0db23-ff1a-49d9-b021-dab2711ebee0', '新闻管理', NULL, '/information/news', 'news', 'views/information/news', NULL, '', NULL, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '1', 99, '2019-07-29 19:43:41', '2019-11-26 09:40:20');
INSERT INTO `sys_menu` VALUES ('ce632bbf-5c4d-43d0-b8be-337cb63b1cf1', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '权限按钮管理', '', '/system/authButton', 'authButton', 'views/system/authButton', '', NULL, '0', '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '1', 99, '2019-11-29 10:35:54', '2019-11-29 16:56:57');
INSERT INTO `sys_menu` VALUES ('ce6ff9cf-f69f-4303-a7ff-08ff02c9bb1f', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '系统日志', '', '/system/log', 'log', 'views/system/log', NULL, NULL, '0', '', '1', 99, '2019-12-11 20:36:07', '2019-12-11 21:03:16');
INSERT INTO `sys_menu` VALUES ('db4833f7-8445-4db9-84de-c68fc28989e8', '89f0db23-ff1a-49d9-b021-dab2711ebee0', '栏目管理', '', '/information/column', 'column', 'views/information/column', '', NULL, '0', '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,4ac84963-f166-4474-b617-777abf6956c8', '1', 99, '2019-07-04 17:06:39', '2019-11-28 20:11:47');
INSERT INTO `sys_menu` VALUES ('eadfa8f8-40af-441e-98f9-b7b9f594c471', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '字典管理', '', '/system/dict', 'dict', 'views/system/dict', '', NULL, '0', '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,4ac84963-f166-4474-b617-777abf6956c8', '1', 99, '2019-07-26 11:16:46', '2019-11-28 20:14:52');
INSERT INTO `sys_menu` VALUES ('efa26c50-67b2-464b-ae90-e98438bd5b4b', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '菜单管理', '', '/system/menu', 'menu', 'views/system/menu', '', NULL, '0', '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,4ac84963-f166-4474-b617-777abf6956c8,283437d9-c1b1-4a5c-9e24-242c0bcded18', '1', 99, '2019-06-23 19:35:39', '2019-11-28 20:53:35');
INSERT INTO `sys_menu` VALUES ('fc9ccb9b-9f78-4de4-a8d0-5a7153d249ba', '0', '控制台', 'dashboard', '/workplace', 'workplace', 'layouts/basicLayout', NULL, NULL, '0', '', '1', 99, '2019-06-23 19:35:28', '2019-12-04 14:26:00');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
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
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '角色类型，1=超级管理员；',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('11a38b9a-b3da-360f-9353-a5a725514269', '超级管理员', '1', 1, '99', '2019-06-30 11:06:51', '2019-11-26 20:23:35');
INSERT INTO `sys_role` VALUES ('1aa16731-1a14-4fce-b616-b8f04b778f6d', '测试2', '2', 1, '99', '2019-11-28 10:06:33', '2019-11-28 11:22:05');
INSERT INTO `sys_role` VALUES ('5baddea4-ba13-42d1-91ef-700fa36fa469', '测试1', '2', 1, '99', '2019-06-30 11:06:57', '2019-11-29 09:56:42');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色标识',
  `post_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位标识',
  `dept_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门标识',
  `full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '用户类型，1=超级管理员',
  `status` tinyint(255) NULL DEFAULT NULL COMMENT '状态',
  `sort` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('6b525f59-1a3a-48d6-8483-a75ace5304f9', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '11a38b9a-b3da-360f-9353-a5a725514269', '', '50caf116-0275-499f-95fa-fa1c736bb3ea', '程序猿', '18810622636', '1056811341@qq.com', '1', 1, '99', '2019-06-14 20:43:46', '2019-12-17 21:56:39');
INSERT INTO `sys_user` VALUES ('d35ea05e-100e-4902-80f9-8106d602ec94', 'test', '4297f44b13955235245b2497399d7a93', '5baddea4-ba13-42d1-91ef-700fa36fa469', '6210ec85-9e23-4e4a-9c12-3dcbac08cab8', '50caf116-0275-499f-95fa-fa1c736bb3ea', '', '', '', NULL, 1, '99', '2019-07-01 15:18:16', '2019-11-29 10:07:07');

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `upload_dir_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传目录标识',
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
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '目录名称',
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
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `origin_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原始ID',
  `app_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'AppId',
  `app_secred` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'AppSecred',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
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

SET FOREIGN_KEY_CHECKS = 1;
