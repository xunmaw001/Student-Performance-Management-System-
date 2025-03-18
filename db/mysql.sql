DROP DATABASE IF EXISTS ssmp3s4y;

CREATE DATABASE ssmp3s4y default character set utf8mb4 collate utf8mb4_general_ci;

USE ssmp3s4y;

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xueshengxuehao` varchar(200)  UNIQUE   COMMENT '学生学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`mima` varchar(200)    COMMENT '密码',
	`nianji` varchar(200)    COMMENT '年级',
	`banji` varchar(200)    COMMENT '班级',
	`xingbie` varchar(200)    COMMENT '性别',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`youxiang` varchar(200)    COMMENT '邮箱',
	`shenfenzheng` varchar(200)    COMMENT '身份证',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生';

INSERT INTO xuesheng(xueshengxuehao,xueshengxingming,mima,nianji,banji,xingbie,lianxidianhua,youxiang,shenfenzheng) VALUES('学生1','学生姓名1','123456','一年级','一班','男','13823888881','773890001@qq.com','440300199101010001');
INSERT INTO xuesheng(xueshengxuehao,xueshengxingming,mima,nianji,banji,xingbie,lianxidianhua,youxiang,shenfenzheng) VALUES('学生2','学生姓名2','123456','一年级','一班','男','13823888882','773890002@qq.com','440300199202020002');
INSERT INTO xuesheng(xueshengxuehao,xueshengxingming,mima,nianji,banji,xingbie,lianxidianhua,youxiang,shenfenzheng) VALUES('学生3','学生姓名3','123456','一年级','一班','男','13823888883','773890003@qq.com','440300199303030003');
INSERT INTO xuesheng(xueshengxuehao,xueshengxingming,mima,nianji,banji,xingbie,lianxidianhua,youxiang,shenfenzheng) VALUES('学生4','学生姓名4','123456','一年级','一班','男','13823888884','773890004@qq.com','440300199404040004');
INSERT INTO xuesheng(xueshengxuehao,xueshengxingming,mima,nianji,banji,xingbie,lianxidianhua,youxiang,shenfenzheng) VALUES('学生5','学生姓名5','123456','一年级','一班','男','13823888885','773890005@qq.com','440300199505050005');
INSERT INTO xuesheng(xueshengxuehao,xueshengxingming,mima,nianji,banji,xingbie,lianxidianhua,youxiang,shenfenzheng) VALUES('学生6','学生姓名6','123456','一年级','一班','男','13823888886','773890006@qq.com','440300199606060006');

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiaoshigonghao` varchar(200) NOT NULL UNIQUE   COMMENT '教师工号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`jiaoshixingming` varchar(200) NOT NULL   COMMENT '教师姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`zhaopian` varchar(200)    COMMENT '照片',
	`zhicheng` varchar(200)    COMMENT '职称',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`jiaoshiyouxiang` varchar(200)    COMMENT '教师邮箱',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师';

INSERT INTO jiaoshi(jiaoshigonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua,jiaoshiyouxiang) VALUES('教师1','123456','教师姓名1','男','http://localhost:8080/ssmp3s4y/upload/jiaoshi_zhaopian1.jpg','职称1','13823888881','773890001@qq.com');
INSERT INTO jiaoshi(jiaoshigonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua,jiaoshiyouxiang) VALUES('教师2','123456','教师姓名2','男','http://localhost:8080/ssmp3s4y/upload/jiaoshi_zhaopian2.jpg','职称2','13823888882','773890002@qq.com');
INSERT INTO jiaoshi(jiaoshigonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua,jiaoshiyouxiang) VALUES('教师3','123456','教师姓名3','男','http://localhost:8080/ssmp3s4y/upload/jiaoshi_zhaopian3.jpg','职称3','13823888883','773890003@qq.com');
INSERT INTO jiaoshi(jiaoshigonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua,jiaoshiyouxiang) VALUES('教师4','123456','教师姓名4','男','http://localhost:8080/ssmp3s4y/upload/jiaoshi_zhaopian4.jpg','职称4','13823888884','773890004@qq.com');
INSERT INTO jiaoshi(jiaoshigonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua,jiaoshiyouxiang) VALUES('教师5','123456','教师姓名5','男','http://localhost:8080/ssmp3s4y/upload/jiaoshi_zhaopian5.jpg','职称5','13823888885','773890005@qq.com');
INSERT INTO jiaoshi(jiaoshigonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua,jiaoshiyouxiang) VALUES('教师6','123456','教师姓名6','男','http://localhost:8080/ssmp3s4y/upload/jiaoshi_zhaopian6.jpg','职称6','13823888886','773890006@qq.com');

DROP TABLE IF EXISTS `youxiujiaoshi`;

CREATE TABLE `youxiujiaoshi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200)    COMMENT '标题',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`fengmian` varchar(200)    COMMENT '封面',
	`rongyu` varchar(200)    COMMENT '荣誉',
	`xiangqing` longtext    COMMENT '详情',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优秀教师';

INSERT INTO youxiujiaoshi(biaoti,jiaoshigonghao,jiaoshixingming,fengmian,rongyu,xiangqing) VALUES('标题1','教师工号1','教师姓名1','http://localhost:8080/ssmp3s4y/upload/youxiujiaoshi_fengmian1.jpg','荣誉1','详情1');
INSERT INTO youxiujiaoshi(biaoti,jiaoshigonghao,jiaoshixingming,fengmian,rongyu,xiangqing) VALUES('标题2','教师工号2','教师姓名2','http://localhost:8080/ssmp3s4y/upload/youxiujiaoshi_fengmian2.jpg','荣誉2','详情2');
INSERT INTO youxiujiaoshi(biaoti,jiaoshigonghao,jiaoshixingming,fengmian,rongyu,xiangqing) VALUES('标题3','教师工号3','教师姓名3','http://localhost:8080/ssmp3s4y/upload/youxiujiaoshi_fengmian3.jpg','荣誉3','详情3');
INSERT INTO youxiujiaoshi(biaoti,jiaoshigonghao,jiaoshixingming,fengmian,rongyu,xiangqing) VALUES('标题4','教师工号4','教师姓名4','http://localhost:8080/ssmp3s4y/upload/youxiujiaoshi_fengmian4.jpg','荣誉4','详情4');
INSERT INTO youxiujiaoshi(biaoti,jiaoshigonghao,jiaoshixingming,fengmian,rongyu,xiangqing) VALUES('标题5','教师工号5','教师姓名5','http://localhost:8080/ssmp3s4y/upload/youxiujiaoshi_fengmian5.jpg','荣誉5','详情5');
INSERT INTO youxiujiaoshi(biaoti,jiaoshigonghao,jiaoshixingming,fengmian,rongyu,xiangqing) VALUES('标题6','教师工号6','教师姓名6','http://localhost:8080/ssmp3s4y/upload/youxiujiaoshi_fengmian6.jpg','荣誉6','详情6');

DROP TABLE IF EXISTS `youxiubanzhuren`;

CREATE TABLE `youxiubanzhuren` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200)    COMMENT '标题',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`zhicheng` varchar(200)    COMMENT '职称',
	`fengmian` varchar(200)    COMMENT '封面',
	`xiangqing` longtext    COMMENT '详情',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优秀班主任';

INSERT INTO youxiubanzhuren(biaoti,jiaoshigonghao,jiaoshixingming,zhicheng,fengmian,xiangqing) VALUES('标题1','教师工号1','教师姓名1','职称1','http://localhost:8080/ssmp3s4y/upload/youxiubanzhuren_fengmian1.jpg','详情1');
INSERT INTO youxiubanzhuren(biaoti,jiaoshigonghao,jiaoshixingming,zhicheng,fengmian,xiangqing) VALUES('标题2','教师工号2','教师姓名2','职称2','http://localhost:8080/ssmp3s4y/upload/youxiubanzhuren_fengmian2.jpg','详情2');
INSERT INTO youxiubanzhuren(biaoti,jiaoshigonghao,jiaoshixingming,zhicheng,fengmian,xiangqing) VALUES('标题3','教师工号3','教师姓名3','职称3','http://localhost:8080/ssmp3s4y/upload/youxiubanzhuren_fengmian3.jpg','详情3');
INSERT INTO youxiubanzhuren(biaoti,jiaoshigonghao,jiaoshixingming,zhicheng,fengmian,xiangqing) VALUES('标题4','教师工号4','教师姓名4','职称4','http://localhost:8080/ssmp3s4y/upload/youxiubanzhuren_fengmian4.jpg','详情4');
INSERT INTO youxiubanzhuren(biaoti,jiaoshigonghao,jiaoshixingming,zhicheng,fengmian,xiangqing) VALUES('标题5','教师工号5','教师姓名5','职称5','http://localhost:8080/ssmp3s4y/upload/youxiubanzhuren_fengmian5.jpg','详情5');
INSERT INTO youxiubanzhuren(biaoti,jiaoshigonghao,jiaoshixingming,zhicheng,fengmian,xiangqing) VALUES('标题6','教师工号6','教师姓名6','职称6','http://localhost:8080/ssmp3s4y/upload/youxiubanzhuren_fengmian6.jpg','详情6');

DROP TABLE IF EXISTS `xuexiaojianjie`;

CREATE TABLE `xuexiaojianjie` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xuexiaomingcheng` varchar(200)    COMMENT '学校名称',
	`fengmian` varchar(200)    COMMENT '封面',
	`xiaoyuanfengcai` longtext    COMMENT '校园风采',
	`xiaoyuanjianjie` longtext    COMMENT '校园简介',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学校简介';

INSERT INTO xuexiaojianjie(xuexiaomingcheng,fengmian,xiaoyuanfengcai,xiaoyuanjianjie) VALUES('学校名称1','http://localhost:8080/ssmp3s4y/upload/xuexiaojianjie_fengmian1.jpg','校园风采1','校园简介1');
INSERT INTO xuexiaojianjie(xuexiaomingcheng,fengmian,xiaoyuanfengcai,xiaoyuanjianjie) VALUES('学校名称2','http://localhost:8080/ssmp3s4y/upload/xuexiaojianjie_fengmian2.jpg','校园风采2','校园简介2');
INSERT INTO xuexiaojianjie(xuexiaomingcheng,fengmian,xiaoyuanfengcai,xiaoyuanjianjie) VALUES('学校名称3','http://localhost:8080/ssmp3s4y/upload/xuexiaojianjie_fengmian3.jpg','校园风采3','校园简介3');
INSERT INTO xuexiaojianjie(xuexiaomingcheng,fengmian,xiaoyuanfengcai,xiaoyuanjianjie) VALUES('学校名称4','http://localhost:8080/ssmp3s4y/upload/xuexiaojianjie_fengmian4.jpg','校园风采4','校园简介4');
INSERT INTO xuexiaojianjie(xuexiaomingcheng,fengmian,xiaoyuanfengcai,xiaoyuanjianjie) VALUES('学校名称5','http://localhost:8080/ssmp3s4y/upload/xuexiaojianjie_fengmian5.jpg','校园风采5','校园简介5');
INSERT INTO xuexiaojianjie(xuexiaomingcheng,fengmian,xiaoyuanfengcai,xiaoyuanjianjie) VALUES('学校名称6','http://localhost:8080/ssmp3s4y/upload/xuexiaojianjie_fengmian6.jpg','校园风采6','校园简介6');

DROP TABLE IF EXISTS `jiaoxuekejian`;

CREATE TABLE `jiaoxuekejian` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200)    COMMENT '标题',
	`wenjian` varchar(200)    COMMENT '文件',
	`fengmian` varchar(200)    COMMENT '封面',
	`neirong` longtext    COMMENT '内容',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`jiaoshixingming` varchar(200)    COMMENT '教师姓名',
	`fabushijian` date    COMMENT '发布时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教学课件';

INSERT INTO jiaoxuekejian(biaoti,wenjian,fengmian,neirong,jiaoshigonghao,jiaoshixingming,fabushijian) VALUES('标题1','','http://localhost:8080/ssmp3s4y/upload/jiaoxuekejian_fengmian1.jpg','内容1','教师工号1','教师姓名1',CURRENT_TIMESTAMP);
INSERT INTO jiaoxuekejian(biaoti,wenjian,fengmian,neirong,jiaoshigonghao,jiaoshixingming,fabushijian) VALUES('标题2','','http://localhost:8080/ssmp3s4y/upload/jiaoxuekejian_fengmian2.jpg','内容2','教师工号2','教师姓名2',CURRENT_TIMESTAMP);
INSERT INTO jiaoxuekejian(biaoti,wenjian,fengmian,neirong,jiaoshigonghao,jiaoshixingming,fabushijian) VALUES('标题3','','http://localhost:8080/ssmp3s4y/upload/jiaoxuekejian_fengmian3.jpg','内容3','教师工号3','教师姓名3',CURRENT_TIMESTAMP);
INSERT INTO jiaoxuekejian(biaoti,wenjian,fengmian,neirong,jiaoshigonghao,jiaoshixingming,fabushijian) VALUES('标题4','','http://localhost:8080/ssmp3s4y/upload/jiaoxuekejian_fengmian4.jpg','内容4','教师工号4','教师姓名4',CURRENT_TIMESTAMP);
INSERT INTO jiaoxuekejian(biaoti,wenjian,fengmian,neirong,jiaoshigonghao,jiaoshixingming,fabushijian) VALUES('标题5','','http://localhost:8080/ssmp3s4y/upload/jiaoxuekejian_fengmian5.jpg','内容5','教师工号5','教师姓名5',CURRENT_TIMESTAMP);
INSERT INTO jiaoxuekejian(biaoti,wenjian,fengmian,neirong,jiaoshigonghao,jiaoshixingming,fabushijian) VALUES('标题6','','http://localhost:8080/ssmp3s4y/upload/jiaoxuekejian_fengmian6.jpg','内容6','教师工号6','教师姓名6',CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `zaixiandayi`;

CREATE TABLE `zaixiandayi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`liuyanneirong` longtext    COMMENT '留言内容',
	`xueshengxuehao` varchar(200)    COMMENT '学生学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`liuyanshijian` date    COMMENT '留言时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线答疑';

INSERT INTO zaixiandayi(jiaoshigonghao,liuyanneirong,xueshengxuehao,xueshengxingming,liuyanshijian,sfsh,shhf) VALUES('教师工号1','留言内容1','学生学号1','学生姓名1',CURRENT_TIMESTAMP,'否','');
INSERT INTO zaixiandayi(jiaoshigonghao,liuyanneirong,xueshengxuehao,xueshengxingming,liuyanshijian,sfsh,shhf) VALUES('教师工号2','留言内容2','学生学号2','学生姓名2',CURRENT_TIMESTAMP,'否','');
INSERT INTO zaixiandayi(jiaoshigonghao,liuyanneirong,xueshengxuehao,xueshengxingming,liuyanshijian,sfsh,shhf) VALUES('教师工号3','留言内容3','学生学号3','学生姓名3',CURRENT_TIMESTAMP,'否','');
INSERT INTO zaixiandayi(jiaoshigonghao,liuyanneirong,xueshengxuehao,xueshengxingming,liuyanshijian,sfsh,shhf) VALUES('教师工号4','留言内容4','学生学号4','学生姓名4',CURRENT_TIMESTAMP,'否','');
INSERT INTO zaixiandayi(jiaoshigonghao,liuyanneirong,xueshengxuehao,xueshengxingming,liuyanshijian,sfsh,shhf) VALUES('教师工号5','留言内容5','学生学号5','学生姓名5',CURRENT_TIMESTAMP,'否','');
INSERT INTO zaixiandayi(jiaoshigonghao,liuyanneirong,xueshengxuehao,xueshengxingming,liuyanshijian,sfsh,shhf) VALUES('教师工号6','留言内容6','学生学号6','学生姓名6',CURRENT_TIMESTAMP,'否','');

DROP TABLE IF EXISTS `gonggaoxinxi`;

CREATE TABLE `gonggaoxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200)    COMMENT '标题',
	`neirong` longtext    COMMENT '内容',
	`fengmian` varchar(200)    COMMENT '封面',
	`fabushijian` date    COMMENT '发布时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告信息';

INSERT INTO gonggaoxinxi(biaoti,neirong,fengmian,fabushijian) VALUES('标题1','内容1','http://localhost:8080/ssmp3s4y/upload/gonggaoxinxi_fengmian1.jpg',CURRENT_TIMESTAMP);
INSERT INTO gonggaoxinxi(biaoti,neirong,fengmian,fabushijian) VALUES('标题2','内容2','http://localhost:8080/ssmp3s4y/upload/gonggaoxinxi_fengmian2.jpg',CURRENT_TIMESTAMP);
INSERT INTO gonggaoxinxi(biaoti,neirong,fengmian,fabushijian) VALUES('标题3','内容3','http://localhost:8080/ssmp3s4y/upload/gonggaoxinxi_fengmian3.jpg',CURRENT_TIMESTAMP);
INSERT INTO gonggaoxinxi(biaoti,neirong,fengmian,fabushijian) VALUES('标题4','内容4','http://localhost:8080/ssmp3s4y/upload/gonggaoxinxi_fengmian4.jpg',CURRENT_TIMESTAMP);
INSERT INTO gonggaoxinxi(biaoti,neirong,fengmian,fabushijian) VALUES('标题5','内容5','http://localhost:8080/ssmp3s4y/upload/gonggaoxinxi_fengmian5.jpg',CURRENT_TIMESTAMP);
INSERT INTO gonggaoxinxi(biaoti,neirong,fengmian,fabushijian) VALUES('标题6','内容6','http://localhost:8080/ssmp3s4y/upload/gonggaoxinxi_fengmian6.jpg',CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `youxiuxuesheng`;

CREATE TABLE `youxiuxuesheng` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200)    COMMENT '标题',
	`nianji` varchar(200)    COMMENT '年级',
	`banji` varchar(200)    COMMENT '班级',
	`xueshengxuehao` varchar(200)    COMMENT '学生学号',
	`xueshengxingming` varchar(200)    COMMENT '学生姓名',
	`xueshengchengji` varchar(200)    COMMENT '学生成绩',
	`pingyu` longtext    COMMENT '评语',
	`fabushijian` date    COMMENT '发布时间',
	`fengmian` varchar(200)    COMMENT '封面',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优秀学生';

INSERT INTO youxiuxuesheng(biaoti,nianji,banji,xueshengxuehao,xueshengxingming,xueshengchengji,pingyu,fabushijian,fengmian) VALUES('标题1','一年级','一班','学生学号1','学生姓名1','学生成绩1','评语1',CURRENT_TIMESTAMP,'http://localhost:8080/ssmp3s4y/upload/youxiuxuesheng_fengmian1.jpg');
INSERT INTO youxiuxuesheng(biaoti,nianji,banji,xueshengxuehao,xueshengxingming,xueshengchengji,pingyu,fabushijian,fengmian) VALUES('标题2','一年级','一班','学生学号2','学生姓名2','学生成绩2','评语2',CURRENT_TIMESTAMP,'http://localhost:8080/ssmp3s4y/upload/youxiuxuesheng_fengmian2.jpg');
INSERT INTO youxiuxuesheng(biaoti,nianji,banji,xueshengxuehao,xueshengxingming,xueshengchengji,pingyu,fabushijian,fengmian) VALUES('标题3','一年级','一班','学生学号3','学生姓名3','学生成绩3','评语3',CURRENT_TIMESTAMP,'http://localhost:8080/ssmp3s4y/upload/youxiuxuesheng_fengmian3.jpg');
INSERT INTO youxiuxuesheng(biaoti,nianji,banji,xueshengxuehao,xueshengxingming,xueshengchengji,pingyu,fabushijian,fengmian) VALUES('标题4','一年级','一班','学生学号4','学生姓名4','学生成绩4','评语4',CURRENT_TIMESTAMP,'http://localhost:8080/ssmp3s4y/upload/youxiuxuesheng_fengmian4.jpg');
INSERT INTO youxiuxuesheng(biaoti,nianji,banji,xueshengxuehao,xueshengxingming,xueshengchengji,pingyu,fabushijian,fengmian) VALUES('标题5','一年级','一班','学生学号5','学生姓名5','学生成绩5','评语5',CURRENT_TIMESTAMP,'http://localhost:8080/ssmp3s4y/upload/youxiuxuesheng_fengmian5.jpg');
INSERT INTO youxiuxuesheng(biaoti,nianji,banji,xueshengxuehao,xueshengxingming,xueshengchengji,pingyu,fabushijian,fengmian) VALUES('标题6','一年级','一班','学生学号6','学生姓名6','学生成绩6','评语6',CURRENT_TIMESTAMP,'http://localhost:8080/ssmp3s4y/upload/youxiuxuesheng_fengmian6.jpg');

DROP TABLE IF EXISTS `banjichengji`;

CREATE TABLE `banjichengji` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200)    COMMENT '标题',
	`nianji` varchar(200)    COMMENT '年级',
	`banji` varchar(200)    COMMENT '班级',
	`kemu` varchar(200)    COMMENT '科目',
	`zongchengji` varchar(200)    COMMENT '总成绩',
	`pingjunfen` varchar(200)    COMMENT '平均分',
	`chengjibiao` longtext    COMMENT '成绩表',
	`jiaoshigonghao` varchar(200)    COMMENT '教师工号',
	`dengjishijian` date    COMMENT '登记时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级成绩';

INSERT INTO banjichengji(biaoti,nianji,banji,kemu,zongchengji,pingjunfen,chengjibiao,jiaoshigonghao,dengjishijian) VALUES('标题1','一年级','一班','英语','总成绩1','平均分1','成绩表1','教师工号1',CURRENT_TIMESTAMP);
INSERT INTO banjichengji(biaoti,nianji,banji,kemu,zongchengji,pingjunfen,chengjibiao,jiaoshigonghao,dengjishijian) VALUES('标题2','一年级','一班','英语','总成绩2','平均分2','成绩表2','教师工号2',CURRENT_TIMESTAMP);
INSERT INTO banjichengji(biaoti,nianji,banji,kemu,zongchengji,pingjunfen,chengjibiao,jiaoshigonghao,dengjishijian) VALUES('标题3','一年级','一班','英语','总成绩3','平均分3','成绩表3','教师工号3',CURRENT_TIMESTAMP);
INSERT INTO banjichengji(biaoti,nianji,banji,kemu,zongchengji,pingjunfen,chengjibiao,jiaoshigonghao,dengjishijian) VALUES('标题4','一年级','一班','英语','总成绩4','平均分4','成绩表4','教师工号4',CURRENT_TIMESTAMP);
INSERT INTO banjichengji(biaoti,nianji,banji,kemu,zongchengji,pingjunfen,chengjibiao,jiaoshigonghao,dengjishijian) VALUES('标题5','一年级','一班','英语','总成绩5','平均分5','成绩表5','教师工号5',CURRENT_TIMESTAMP);
INSERT INTO banjichengji(biaoti,nianji,banji,kemu,zongchengji,pingjunfen,chengjibiao,jiaoshigonghao,dengjishijian) VALUES('标题6','一年级','一班','英语','总成绩6','平均分6','成绩表6','教师工号6',CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `xueshengchengji`;

CREATE TABLE `xueshengchengji` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200)    COMMENT '标题',
	`xueshengxuehao` varchar(200)    COMMENT '学生学号',
	`kemu` varchar(200)    COMMENT '科目',
	`chengji` varchar(200)    COMMENT '成绩',
	`banpaiming` int    COMMENT '班排名',
	`jipaiming` int    COMMENT '级排名',
	`fabushijian` date    COMMENT '发布时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生成绩';

INSERT INTO xueshengchengji(biaoti,xueshengxuehao,kemu,chengji,banpaiming,jipaiming,fabushijian) VALUES('标题1','学生学号1','英语','成绩1',1,1,CURRENT_TIMESTAMP);
INSERT INTO xueshengchengji(biaoti,xueshengxuehao,kemu,chengji,banpaiming,jipaiming,fabushijian) VALUES('标题2','学生学号2','英语','成绩2',2,2,CURRENT_TIMESTAMP);
INSERT INTO xueshengchengji(biaoti,xueshengxuehao,kemu,chengji,banpaiming,jipaiming,fabushijian) VALUES('标题3','学生学号3','英语','成绩3',3,3,CURRENT_TIMESTAMP);
INSERT INTO xueshengchengji(biaoti,xueshengxuehao,kemu,chengji,banpaiming,jipaiming,fabushijian) VALUES('标题4','学生学号4','英语','成绩4',4,4,CURRENT_TIMESTAMP);
INSERT INTO xueshengchengji(biaoti,xueshengxuehao,kemu,chengji,banpaiming,jipaiming,fabushijian) VALUES('标题5','学生学号5','英语','成绩5',5,5,CURRENT_TIMESTAMP);
INSERT INTO xueshengchengji(biaoti,xueshengxuehao,kemu,chengji,banpaiming,jipaiming,fabushijian) VALUES('标题6','学生学号6','英语','成绩6',6,6,CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`name` varchar(200) NOT NULL   COMMENT '试卷名称',
	`time` int NOT NULL   COMMENT '考试时长(分钟)',
	`status` int NOT NULL  default '0' COMMENT '试卷状态',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷表';


DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`paperid` bigint NOT NULL   COMMENT '所属试卷id（外键）',
	`papername` varchar(200) NOT NULL   COMMENT '试卷名称',
	`questionname` varchar(200) NOT NULL   COMMENT '试题名称',
	`options` longtext    COMMENT '选项，json字符串',
	`score` bigint   default '0' COMMENT '分值',
	`answer` varchar(200)    COMMENT '正确答案',
	`analysis` longtext    COMMENT '答案解析',
	`type` bigint   default '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
	`sequence` bigint   default '100' COMMENT '试题排序，值越大排越前面',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题表';


DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`username` varchar(200)    COMMENT '用户名',
	`paperid` bigint NOT NULL   COMMENT '试卷id（外键）',
	`papername` varchar(200) NOT NULL   COMMENT '试卷名称',
	`questionid` bigint NOT NULL   COMMENT '试题id（外键）',
	`questionname` varchar(200) NOT NULL   COMMENT '试题名称',
	`options` longtext    COMMENT '选项，json字符串',
	`score` bigint   default '0' COMMENT '分值',
	`answer` varchar(200)    COMMENT '正确答案',
	`analysis` longtext    COMMENT '答案解析',
	`myscore` bigint NOT NULL  default '0' COMMENT '试题得分',
	`myanswer` varchar(200)    COMMENT '考生答案',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';


DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

INSERT INTO news(title,picture,content) VALUES('标题1','http://localhost:8080/ssmp3s4y/upload/news_picture1.jpg','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','http://localhost:8080/ssmp3s4y/upload/news_picture2.jpg','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','http://localhost:8080/ssmp3s4y/upload/news_picture3.jpg','内容3');
INSERT INTO news(title,picture,content) VALUES('标题4','http://localhost:8080/ssmp3s4y/upload/news_picture4.jpg','内容4');
INSERT INTO news(title,picture,content) VALUES('标题5','http://localhost:8080/ssmp3s4y/upload/news_picture5.jpg','内容5');
INSERT INTO news(title,picture,content) VALUES('标题6','http://localhost:8080/ssmp3s4y/upload/news_picture6.jpg','内容6');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/ssmp3s4y/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/ssmp3s4y/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/ssmp3s4y/upload/picture3.jpg');
insert into config(id,name,value) values(4,'picture4','http://localhost:8080/ssmp3s4y/upload/picture4.jpg');
insert into config(id,name,value) values(5,'picture5','http://localhost:8080/ssmp3s4y/upload/picture5.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

