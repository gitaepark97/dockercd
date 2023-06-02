CREATE TABLE `USER` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '회원 ID',
  `email` varchar(50) DEFAULT NULL COMMENT '이메일',
  `hash_password` varchar(100) DEFAULT NULL COMMENT '비밀번호',
  `salt` varchar(100) DEFAULT NULL COMMENT '비밀번호 salt',
  `create_date` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) COMMENT '생성 시간',
  `update_date` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6) COMMENT '수정 시간',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `EMAIL_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
