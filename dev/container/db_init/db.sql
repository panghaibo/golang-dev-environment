CREATE DATABASE IF NOT EXISTS `dev_container_db`;

USE `dev_container_db`;

CREATE TABLE IF NOT EXISTS `user_tab` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT "用户名",
    `password` varchar(100) NOT NULL DEFAULT '' COMMENT "用户密码",
    `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT "是否已删除",
    `update_time` bigint(20) unsigned NOT NULL,
    `create_time` bigint(20) unsigned NOT NULL,
    PRIMARY KEY(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `user_tab` (`user_name`,`password`,`update_time`,`create_time`) values("hanmeimei", "123456", UNIX_TIMESTAMP(), UNIX_TIMESTAMP()),("lilei", "123457", UNIX_TIMESTAMP(), UNIX_TIMESTAMP());