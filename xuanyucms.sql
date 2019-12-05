/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : xuanyucms

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 05/12/2019 14:25:28
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
  `is_recommend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐',
  `is_hot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '热点',
  `external_links` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外部链接',
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标签',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '信息-新闻表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info_news
-- ----------------------------
INSERT INTO `info_news` VALUES (1, 2, '测试1', '', '', '', '', '', '', '0', '0', NULL, '标签1,标签2', 1, 100, '2019-08-11 09:51:51', '2019-11-21 17:21:44');
INSERT INTO `info_news` VALUES (2, 3, '测试2', '', '', '', '', '', '', '0', '1', NULL, '', 1, 99, '2019-11-20 16:51:25', '2019-11-21 15:38:36');
INSERT INTO `info_news` VALUES (3, 13, '标题', '副标题', 'SEO关键词', 'SEO描述', '<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Helvetica Neue\', Helvetica, Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\'; font-size: 14px; text-align: right; white-space: nowrap; background-color: #ffffff;\">内容</span></p>', '作者', '来源', '1', '0', '外部链接', '自由,民主', 1, 99, '2019-12-05 09:01:50', '2019-12-05 09:05:04');

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
-- Table structure for info_tags
-- ----------------------------
DROP TABLE IF EXISTS `info_tags`;
CREATE TABLE `info_tags`  (
  `tags` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `sort` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`tags`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '信息-标签表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of info_tags
-- ----------------------------
INSERT INTO `info_tags` VALUES ('cms', '1', '100', '2019-07-20 09:50:44', '2019-07-20 09:50:44');
INSERT INTO `info_tags` VALUES ('争辩', '1', '100', '2019-07-12 10:41:23', '2019-07-12 10:41:33');
INSERT INTO `info_tags` VALUES ('台湾', '1', '100', '2019-07-12 11:34:36', '2019-07-12 11:34:36');
INSERT INTO `info_tags` VALUES ('后台', '1', '100', '2019-07-12 11:27:48', '2019-07-12 11:27:48');
INSERT INTO `info_tags` VALUES ('新闻', '1', '100', '2019-07-12 10:41:16', '2019-07-12 10:41:33');
INSERT INTO `info_tags` VALUES ('核武器', '1', '100', '2019-07-12 10:41:26', '2019-07-12 10:41:33');
INSERT INTO `info_tags` VALUES ('洗澡', '1', '100', '2019-07-12 11:34:36', '2019-07-12 11:34:36');
INSERT INTO `info_tags` VALUES ('轩宇', '1', '100', '2019-07-14 19:07:53', '2019-07-14 19:07:53');

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
INSERT INTO `sys_config` VALUES (1, 'XUANYU CMS', 'http://localhost', '', '1', '', '', '', '', '', '/uploads', '*', '2');

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
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统-登录日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES ('0c903764-fcf4-473c-bdcd-60def48f9959', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 16:36:29');
INSERT INTO `sys_login_log` VALUES ('1a03a962-603b-4e41-82a7-dcefcdbef98c', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 16:27:41');
INSERT INTO `sys_login_log` VALUES ('1a792ab2-7315-472b-8e27-b8937ca4d765', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 16:34:23');
INSERT INTO `sys_login_log` VALUES ('1f209656-b739-4cdd-908e-07519cb2c744', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-05 13:09:52');
INSERT INTO `sys_login_log` VALUES ('3c836054-19fe-471b-b1b4-3a7c913a8d23', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-05 11:51:19');
INSERT INTO `sys_login_log` VALUES ('3d912c04-78fd-4ebf-ad53-18cf2a384662', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-05 14:07:08');
INSERT INTO `sys_login_log` VALUES ('4af13e5c-9c6a-4124-9108-51014cac141d', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 17:27:28');
INSERT INTO `sys_login_log` VALUES ('56d1fefe-2d85-4ead-b519-8fa0182b44ad', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 16:35:12');
INSERT INTO `sys_login_log` VALUES ('5f7143d5-4f50-4a98-b41d-d0832b52f83b', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 13:27:08');
INSERT INTO `sys_login_log` VALUES ('6b2852e0-185f-4ba4-912a-9f8011e2a082', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 17:27:02');
INSERT INTO `sys_login_log` VALUES ('70d8ad77-86eb-478d-ae4f-4e390512b560', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 15:40:12');
INSERT INTO `sys_login_log` VALUES ('7a1632d4-8479-457f-896f-b1cb6a29d740', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 17:19:20');
INSERT INTO `sys_login_log` VALUES ('7e2a992b-e163-4660-9d0a-42b1806e4ae2', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 17:28:02');
INSERT INTO `sys_login_log` VALUES ('800a6193-267b-449c-9ea0-d51eb88d8f17', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 16:07:28');
INSERT INTO `sys_login_log` VALUES ('84c34bd3-11aa-479b-9fd0-77c40c47fb75', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 13:37:56');
INSERT INTO `sys_login_log` VALUES ('86778454-3f83-455a-967f-93ad8ee86bc0', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 16:07:58');
INSERT INTO `sys_login_log` VALUES ('8f708100-134d-4b42-98cc-f3d77fd3edaf', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 17:21:45');
INSERT INTO `sys_login_log` VALUES ('90f1d622-126a-46a8-ab10-ec4108edafb5', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 16:47:37');
INSERT INTO `sys_login_log` VALUES ('9961463c-129a-46e1-8898-1e792d741a67', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 15:32:58');
INSERT INTO `sys_login_log` VALUES ('9d50f104-e128-4f3d-8662-98cb92ea2b05', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 16:15:38');
INSERT INTO `sys_login_log` VALUES ('a5efd78c-10ee-4fba-a96a-40375d5b827d', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 17:17:24');
INSERT INTO `sys_login_log` VALUES ('a9395e0e-edda-4178-97e9-b39e9dfd409b', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-03 14:11:19');
INSERT INTO `sys_login_log` VALUES ('b27fdc91-42cc-414c-977e-8495afddb184', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 15:20:25');
INSERT INTO `sys_login_log` VALUES ('b6caf0b5-94a2-4527-b73b-a150876db26f', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 17:21:59');
INSERT INTO `sys_login_log` VALUES ('b7821128-1605-49d9-a686-096ccfb6859e', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 16:30:40');
INSERT INTO `sys_login_log` VALUES ('b92303bd-6664-4b47-9946-ed3a0863912a', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 17:27:15');
INSERT INTO `sys_login_log` VALUES ('b9e6853a-8795-4fbe-a464-cdd4e035d467', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 15:34:37');
INSERT INTO `sys_login_log` VALUES ('bd5473e4-ef92-47b9-8a76-8e3706475025', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 15:34:03');
INSERT INTO `sys_login_log` VALUES ('bf513d21-0194-4977-bdf4-eba4fae1000d', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 16:08:37');
INSERT INTO `sys_login_log` VALUES ('c045aaec-d501-4b34-9680-1f90927abc51', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 14:01:02');
INSERT INTO `sys_login_log` VALUES ('c970c6bc-b30b-4885-8d3a-23f4b7dfbb97', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-05 08:54:40');
INSERT INTO `sys_login_log` VALUES ('d0eaf534-7cff-4c74-9dd9-74729d89c91f', 'd35ea05e-100e-4902-80f9-8106d602ec94', '2019-12-03 15:10:41');
INSERT INTO `sys_login_log` VALUES ('d318662c-dd43-41d2-aee3-336f1ac54c58', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 15:38:56');
INSERT INTO `sys_login_log` VALUES ('d5293102-7988-4d72-be4b-b705d36ee54b', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-04 15:38:28');
INSERT INTO `sys_login_log` VALUES ('e8c0d6f2-c466-4f5b-bbad-68d683bd3545', '6b525f59-1a3a-48d6-8483-a75ace5304f9', '2019-12-03 14:11:07');

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
INSERT INTO `sys_menu` VALUES ('0a2ba2e9-e9e2-4bbf-a836-5fb7aa3af41e', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '角色管理', '', '/system/role', 'role', 'views/system/role', NULL, NULL, '0', '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e,41fa64dc-ed83-428b-bba3-dcf9753cfa3e', '1', 99, '2019-06-29 23:34:50', '2019-12-04 14:25:32');
INSERT INTO `sys_menu` VALUES ('18589585-7a9a-48d7-89e0-f18e046b8d02', '89f0db23-ff1a-49d9-b021-dab2711ebee0', '单页管理', '', '/information/single', 'single', 'views/information/single', '', NULL, '0', 'df1408bf-a355-4474-90a9-04ae5ecf087e', '1', 99, '2019-07-29 19:44:05', '2019-11-28 20:12:20');
INSERT INTO `sys_menu` VALUES ('22695154-4c7a-4cb0-8a6e-1609ea9b47b6', '89f0db23-ff1a-49d9-b021-dab2711ebee0', '模板管理', '', '/information/template', 'template', 'views/information/template', '', NULL, '0', '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '1', 99, '2019-07-04 17:09:57', '2019-11-28 12:28:22');
INSERT INTO `sys_menu` VALUES ('3e14495f-be53-4622-80b3-78832d82f685', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '岗位管理', NULL, '/system/post', 'post', 'views/system/post', NULL, '', NULL, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '1', 99, '2019-06-30 14:35:08', '2019-11-26 09:40:00');
INSERT INTO `sys_menu` VALUES ('573421e8-42a6-47b1-919c-0feb863754de', 'fc9ccb9b-9f78-4de4-a8d0-5a7153d249ba', '工作台', '', '/workplace/dashboard', 'dashboard', 'views/workplace/dashboard', NULL, NULL, '0', '', '1', 99, '2019-06-23 19:35:33', '2019-12-04 14:26:04');
INSERT INTO `sys_menu` VALUES ('5e173c49-a81f-4a5e-869d-4cb76c2ca419', '0', '系统管理', 'setting', '/system', 'system', 'layouts/basicLayout', '', NULL, '0', '', '1', 99, '2019-06-23 19:35:35', '2019-11-29 16:56:38');
INSERT INTO `sys_menu` VALUES ('89f0db23-ff1a-49d9-b021-dab2711ebee0', '0', '信息管理', 'profile', '/information', 'information', 'layouts/basicLayout', '', NULL, '0', '', '1', 99, '2019-07-04 17:05:01', '2019-11-29 16:56:39');
INSERT INTO `sys_menu` VALUES ('91128d91-2386-4d6b-8e5c-f023c63c57ec', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '部门管理', NULL, '/system/dept', 'dept', 'views/system/dept', NULL, '', NULL, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '1', 99, '2019-06-30 21:21:42', '2019-11-26 09:40:08');
INSERT INTO `sys_menu` VALUES ('b2c3b631-2aec-45a6-a8b4-7070a1440473', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '用户管理', NULL, '/system/user', 'user', 'views/system/user', NULL, '', NULL, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '1', 99, '2019-06-29 23:35:24', '2019-11-26 20:05:52');
INSERT INTO `sys_menu` VALUES ('b470d6f5-0f5c-473c-9333-1e53d578a91e', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '基本设置', '', '/system/config', 'config', 'views/system/config', '', NULL, '0', 'df1408bf-a355-4474-90a9-04ae5ecf087e', '1', 99, '2019-07-20 19:50:27', '2019-11-28 20:12:31');
INSERT INTO `sys_menu` VALUES ('caad3a5a-ee87-4a44-b533-d5e23dc549fb', '89f0db23-ff1a-49d9-b021-dab2711ebee0', '新闻管理', NULL, '/information/news', 'news', 'views/information/news', NULL, '', NULL, '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '1', 99, '2019-07-29 19:43:41', '2019-11-26 09:40:20');
INSERT INTO `sys_menu` VALUES ('ce632bbf-5c4d-43d0-b8be-337cb63b1cf1', '5e173c49-a81f-4a5e-869d-4cb76c2ca419', '权限按钮管理', '', '/system/authButton', 'authButton', 'views/system/authButton', '', NULL, '0', '33a11403-54b3-450f-b47c-eaa5b1347e16,3a790535-dde9-4596-ac91-d123cd4ef278,3c5fb30e-13a9-4a2e-8c70-a83760d2641e', '1', 99, '2019-11-29 10:35:54', '2019-11-29 16:56:57');
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
INSERT INTO `sys_user` VALUES ('6b525f59-1a3a-48d6-8483-a75ace5304f9', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '11a38b9a-b3da-360f-9353-a5a725514269', '', '50caf116-0275-499f-95fa-fa1c736bb3ea', '孟祥涵', '18810622636', '1056811341@qq.com', '1', 1, '99', '2019-06-14 20:43:46', '2019-11-26 20:49:52');
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
INSERT INTO `upload` VALUES ('405ed643-a5c4-46b7-8b15-a07d27ebd957', NULL, '314778e6a1d6ddbb17d392d7a93eae63.png', 'image/png', 'E:/php/xuanyu-cms/uploads/', 'E:/php/xuanyu-cms/uploads/314778e6a1d6ddbb17d392d7a93eae63.png', '314778e6a1d6ddbb17d392d7a93eae63', '微信截图_20191202143941.png', '微信截图_20191202143941.png', '.png', 3072, '1', 114, 35, 'png', 'width=\"114\" height=\"35\"', '/uploads/314778e6a1d6ddbb17d392d7a93eae63.png', NULL, '2019-12-05 11:43:09', '2019-12-05 11:43:09');
INSERT INTO `upload` VALUES ('4dc12708-1bd7-41e8-a9be-4fcb7649582f', NULL, 'adad04d313a3359173b58b1189be5389.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/adad04d313a3359173b58b1189be5389.png', 'adad04d313a3359173b58b1189be5389', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/adad04d313a3359173b58b1189be5389.png', NULL, '2019-12-04 21:22:49', '2019-12-04 21:22:49');
INSERT INTO `upload` VALUES ('b13d6d46-6231-4928-8cf5-0611ec04f6e3', NULL, '38efa14f4350d509eac3a7cac09f86d5.png', 'image/png', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/38efa14f4350d509eac3a7cac09f86d5.png', '38efa14f4350d509eac3a7cac09f86d5', '微信截图_20190317211624.png', '微信截图_20190317211624.png', '.png', 38912, '1', 987, 590, 'png', 'width=\"987\" height=\"590\"', '/uploads/38efa14f4350d509eac3a7cac09f86d5.png', NULL, '2019-12-04 21:30:49', '2019-12-04 21:30:49');
INSERT INTO `upload` VALUES ('e383a4a9-92d7-48bd-a605-608b7ce2747e', NULL, 'b49005cecde412003ccf992e39bf7ffd.jpg', 'image/jpeg', 'E:/workspace/xuanyu-cms/uploads/', 'E:/workspace/xuanyu-cms/uploads/b49005cecde412003ccf992e39bf7ffd.jpg', 'b49005cecde412003ccf992e39bf7ffd', '微信图片_20190317212809.jpg', '微信图片_20190317212809.jpg', '.jpg', 55296, '1', 750, 1334, 'jpeg', 'width=\"750\" height=\"1334\"', '/uploads/b49005cecde412003ccf992e39bf7ffd.jpg', NULL, '2019-12-04 21:31:14', '2019-12-04 21:31:14');
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

SET FOREIGN_KEY_CHECKS = 1;
