CREATE TABLE `billsinf`  (
  `danhao` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roomnum` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `predianbiao` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dianbiao` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `preshuibiao` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shuibiao` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jine` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`danhao`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

CREATE TABLE `caiwu`  (
  `bianhao` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `leixing` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jine` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`bianhao`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

CREATE TABLE `manageruser`  (
  `user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`user`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

CREATE TABLE `othersetting`  (
  `bianhao` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shuiprice` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dianprice` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wangprice` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wuyeprice` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `yue` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`bianhao`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

CREATE TABLE `roominf`  (
  `num` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weizhi` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mingzi` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zhonglei` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mianji` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zhuangxiu` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sheshi` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `yongtu` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jiage` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `zhuangtai` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `beizhu` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`num`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

CREATE TABLE `roomrent`  (
  `roomnum` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sfznum` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `starttime` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `monthnum` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `monthlyrent` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`roomnum`, `sfznum`) USING BTREE,
  INDEX `userinfyueshu`(`sfznum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

CREATE TABLE `userinf`  (
  `sfzid` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `xingbie` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dianhua` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sfzid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

ALTER TABLE `roomrent` ADD CONSTRAINT `roominfyueshu` FOREIGN KEY (`roomnum`) REFERENCES `roominf` (`num`) ON DELETE RESTRICT ON UPDATE RESTRICT;
ALTER TABLE `roomrent` ADD CONSTRAINT `userinfyueshu` FOREIGN KEY (`sfznum`) REFERENCES `userinf` (`sfzid`) ON DELETE RESTRICT ON UPDATE RESTRICT;

