/*
 Navicat Premium Data Transfer

 Source Server         : video
 Source Server Type    : MySQL
 Source Server Version : 50627
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50627
 File Encoding         : 65001

 Date: 15/02/2020 21:42:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_address
-- ----------------------------
DROP TABLE IF EXISTS `tbl_address`;
CREATE TABLE `tbl_address`  (
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_address
-- ----------------------------
INSERT INTO `tbl_address` VALUES ('dsfsdf', '18786085146', 'sdfsdf', 'wcwc');
INSERT INTO `tbl_address` VALUES ('wc', '18786085146', 'wc', 'wcwc');
INSERT INTO `tbl_address` VALUES ('wcwc', '18786085146', 'wcwc', 'wcwc');
INSERT INTO `tbl_address` VALUES ('wcwcwcwc', '18786085146', 'wcwcwcwcw', 'wcwc');
INSERT INTO `tbl_address` VALUES ('涉农按', '18786085146', '北京', 'zxcvb');
INSERT INTO `tbl_address` VALUES ('王诚', '18786085146', '广州广东', 'aaaaa');

SET FOREIGN_KEY_CHECKS = 1;




/*
 Navicat Premium Data Transfer

 Source Server         : video
 Source Server Type    : MySQL
 Source Server Version : 50627
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50627
 File Encoding         : 65001

 Date: 15/02/2020 21:42:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_comment
-- ----------------------------
DROP TABLE IF EXISTS `tbl_comment`;
CREATE TABLE `tbl_comment`  (
  `reply` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ids` bigint(20) NOT NULL,
  `text` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blogId` bigint(20) NOT NULL,
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ids`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_comment
-- ----------------------------
INSERT INTO `tbl_comment` VALUES ('', 1581406848507, '123', 1581403389702, 'WC');
INSERT INTO `tbl_comment` VALUES ('WC', 1581406859131, '123456', 1581403389702, 'WC');
INSERT INTO `tbl_comment` VALUES ('', 1581407322056, 'vue真好', 1581407291071, '456');
INSERT INTO `tbl_comment` VALUES ('456', 1581407331064, 'vue真好123', 1581407291071, '456');
INSERT INTO `tbl_comment` VALUES ('', 1581673175378, '不错不错', 1581673165466, 'wc');
INSERT INTO `tbl_comment` VALUES ('wc', 1581674698478, '真香', 1581673165466, 'false');
INSERT INTO `tbl_comment` VALUES ('false', 1581675382749, '我是eeee', 1581673165466, '');
INSERT INTO `tbl_comment` VALUES ('', 1581675432872, 'cc', 1581673165466, 'eeeeee');
INSERT INTO `tbl_comment` VALUES ('', 1581675731109, '杀死', 1581673165466, 'ssssss');

SET FOREIGN_KEY_CHECKS = 1;




/*
 Navicat Premium Data Transfer

 Source Server         : video
 Source Server Type    : MySQL
 Source Server Version : 50627
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50627
 File Encoding         : 65001

 Date: 15/02/2020 21:42:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_pay
-- ----------------------------
DROP TABLE IF EXISTS `tbl_pay`;
CREATE TABLE `tbl_pay`  (
  `payId` bigint(20) NOT NULL,
  `num` bigint(20) NOT NULL,
  `price` bigint(20) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`payId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_pay
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;




/*
 Navicat Premium Data Transfer

 Source Server         : video
 Source Server Type    : MySQL
 Source Server Version : 50627
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50627
 File Encoding         : 65001

 Date: 15/02/2020 21:42:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `names` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ids` bigint(20) NOT NULL,
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ids`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('WC', 1581356084168, 'WC', 'WC');
INSERT INTO `tbl_user` VALUES ('123', 1581407245608, '456', '456');
INSERT INTO `tbl_user` VALUES ('asdfgh', 1581674548923, 'asdfg', '12345');
INSERT INTO `tbl_user` VALUES ('qwert', 1581674604986, 'wawdszsc', 'qqqqqq');
INSERT INTO `tbl_user` VALUES ('神此案', 1581674673925, 'szsczxc', 'qqqqqq');
INSERT INTO `tbl_user` VALUES ('神仙s', 1581675114595, 'eeeeee', 'wwwwww');
INSERT INTO `tbl_user` VALUES ('蛇年', 1581675709895, 'ssssss', 'ssssss');

SET FOREIGN_KEY_CHECKS = 1;



/*
 Navicat Premium Data Transfer

 Source Server         : video
 Source Server Type    : MySQL
 Source Server Version : 50627
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50627
 File Encoding         : 65001

 Date: 15/02/2020 21:42:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_wares
-- ----------------------------
DROP TABLE IF EXISTS `tbl_wares`;
CREATE TABLE `tbl_wares`  (
  `ids` bigint(20) NOT NULL,
  `names` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `goods` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nums` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `specs` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prices` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `images` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ids`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_wares
-- ----------------------------
INSERT INTO `tbl_wares` VALUES (1581098286397, '杀死', '手机', '3', 's,v,b', '1.2', 'deb7486e6cb32dadf6064e7616a6eba0,e7d3013f0163049c371918ed42481298,d317186c9e6e77cd4abc38e0673139c3,26fbbf7fbf5c63837e4d900dd23ff1cb');
INSERT INTO `tbl_wares` VALUES (1581098412296, 'wc', '家用电器', '3', 's', '1.1', '663fa756c92dd010c80914d0358c9917,0084d690fd639a83d84cfd501057e6c3,303610c8fb0fa4508ed64e1a7524978d,d1b7b6e79a8f4edebdb8664ff84491ad');
INSERT INTO `tbl_wares` VALUES (1581098458942, 'WC', '家用电器', '4', 'S', '1.1', 'efe5b696706d4d498cc5361598f3d528,874fef186f0318bc677c124c2628f987,1a7f1f0a00cbf103a33515d5f92d11af,e6e5d5a61bb9a80c2aea796ea815286e');
INSERT INTO `tbl_wares` VALUES (1581233997963, 'sssssss', '家用电器', '8', 'vs', '100', '019c778bd804709454258e6e912280d6,35ea68648afd2ce898231ad4d10d9041,e2fa8f6adf142f68523eed723a441d22,664c6a9745b814e70bf30b9fc4ba0da1');
INSERT INTO `tbl_wares` VALUES (1581256252743, '电器', '家用电器', '103', '大,中,小', '599', '26944c70af63a684ccb135cbe67be234,070ce890cd0c14e1eae95586fc525eb5,c0511f8164ee3d1c79bb9ca246bc96bb,6e78cf7367d78e7ee8424ca57cd5bdc6');
INSERT INTO `tbl_wares` VALUES (1581257262749, '士大夫但是', '电脑', '1', '是', '1.2', '91dff348f245ebde62ff029f8072a217,ef515fbc64305cd9ed874b9bd86cf4b2,d01d83aefa67acd99c5ad56c3d209d83,e97cdd05092b9211e3ed40890c16d65e');
INSERT INTO `tbl_wares` VALUES (1581257335127, '123', '家用电器', '1', '5', '1', '9cd300eac1af4d7abbc0b909d3b28178,f8d3c48c14bd4119ffa9e4af63726c80,3c4e8cd4e70e4a54a874f038412ad864,ed2597435877bd3d77d5274fc108e168');

SET FOREIGN_KEY_CHECKS = 1;
