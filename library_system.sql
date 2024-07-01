/*
 Navicat Premium Data Transfer

 Source Server         : lzy
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : library_system

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 28/06/2024 14:21:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id` ASC, `codename` ASC) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add user', 6, 'add_user');
INSERT INTO `auth_permission` VALUES (22, 'Can change user', 6, 'change_user');
INSERT INTO `auth_permission` VALUES (23, 'Can delete user', 6, 'delete_user');
INSERT INTO `auth_permission` VALUES (24, 'Can view user', 6, 'view_user');
INSERT INTO `auth_permission` VALUES (25, 'Can add category', 7, 'add_category');
INSERT INTO `auth_permission` VALUES (26, 'Can change category', 7, 'change_category');
INSERT INTO `auth_permission` VALUES (27, 'Can delete category', 7, 'delete_category');
INSERT INTO `auth_permission` VALUES (28, 'Can view category', 7, 'view_category');
INSERT INTO `auth_permission` VALUES (29, 'Can add book', 8, 'add_book');
INSERT INTO `auth_permission` VALUES (30, 'Can change book', 8, 'change_book');
INSERT INTO `auth_permission` VALUES (31, 'Can delete book', 8, 'delete_book');
INSERT INTO `auth_permission` VALUES (32, 'Can view book', 8, 'view_book');
INSERT INTO `auth_permission` VALUES (33, 'Can add borrow record', 9, 'add_borrowrecord');
INSERT INTO `auth_permission` VALUES (34, 'Can change borrow record', 9, 'change_borrowrecord');
INSERT INTO `auth_permission` VALUES (35, 'Can delete borrow record', 9, 'delete_borrowrecord');
INSERT INTO `auth_permission` VALUES (36, 'Can view borrow record', 9, 'view_borrowrecord');
INSERT INTO `auth_permission` VALUES (37, 'Can add course book list', 10, 'add_coursebooklist');
INSERT INTO `auth_permission` VALUES (38, 'Can change course book list', 10, 'change_coursebooklist');
INSERT INTO `auth_permission` VALUES (39, 'Can delete course book list', 10, 'delete_coursebooklist');
INSERT INTO `auth_permission` VALUES (40, 'Can view course book list', 10, 'view_coursebooklist');
INSERT INTO `auth_permission` VALUES (41, 'Can add document resource', 11, 'add_documentresource');
INSERT INTO `auth_permission` VALUES (42, 'Can change document resource', 11, 'change_documentresource');
INSERT INTO `auth_permission` VALUES (43, 'Can delete document resource', 11, 'delete_documentresource');
INSERT INTO `auth_permission` VALUES (44, 'Can view document resource', 11, 'view_documentresource');
INSERT INTO `auth_permission` VALUES (45, 'Can add interlibrary loan', 12, 'add_interlibraryloan');
INSERT INTO `auth_permission` VALUES (46, 'Can change interlibrary loan', 12, 'change_interlibraryloan');
INSERT INTO `auth_permission` VALUES (47, 'Can delete interlibrary loan', 12, 'delete_interlibraryloan');
INSERT INTO `auth_permission` VALUES (48, 'Can view interlibrary loan', 12, 'view_interlibraryloan');
INSERT INTO `auth_permission` VALUES (49, 'Can add blacklisted token', 13, 'add_blacklistedtoken');
INSERT INTO `auth_permission` VALUES (50, 'Can change blacklisted token', 13, 'change_blacklistedtoken');
INSERT INTO `auth_permission` VALUES (51, 'Can delete blacklisted token', 13, 'delete_blacklistedtoken');
INSERT INTO `auth_permission` VALUES (52, 'Can view blacklisted token', 13, 'view_blacklistedtoken');
INSERT INTO `auth_permission` VALUES (53, 'Can add outstanding token', 14, 'add_outstandingtoken');
INSERT INTO `auth_permission` VALUES (54, 'Can change outstanding token', 14, 'change_outstandingtoken');
INSERT INTO `auth_permission` VALUES (55, 'Can delete outstanding token', 14, 'delete_outstandingtoken');
INSERT INTO `auth_permission` VALUES (56, 'Can view outstanding token', 14, 'view_outstandingtoken');

-- ----------------------------
-- Table structure for borrow_borrowrecord
-- ----------------------------
DROP TABLE IF EXISTS `borrow_borrowrecord`;
CREATE TABLE `borrow_borrowrecord`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `borrow_date` datetime(6) NOT NULL,
  `due_date` datetime(6) NOT NULL,
  `return_date` datetime(6) NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `book_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `borrow_borrowrecord_book_id_b305474d_fk_library_book_id`(`book_id` ASC) USING BTREE,
  INDEX `borrow_borrowrecord_user_id_644d6849_fk_users_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `borrow_borrowrecord_book_id_b305474d_fk_library_book_id` FOREIGN KEY (`book_id`) REFERENCES `library_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `borrow_borrowrecord_user_id_644d6849_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of borrow_borrowrecord
-- ----------------------------
INSERT INTO `borrow_borrowrecord` VALUES (13, '2024-06-24 07:38:18.507743', '2024-07-08 15:38:18.507743', '2024-06-24 15:38:39.019539', 'returned', 1, 1);
INSERT INTO `borrow_borrowrecord` VALUES (14, '2024-06-24 07:38:28.366258', '2024-07-08 15:38:28.366121', '2024-06-24 15:38:45.827489', 'returned', 1, 1);
INSERT INTO `borrow_borrowrecord` VALUES (15, '2024-06-24 07:38:34.537231', '2024-07-08 15:38:34.537231', '2024-06-24 15:38:46.933171', 'returned', 1, 1);
INSERT INTO `borrow_borrowrecord` VALUES (16, '2024-06-24 07:38:35.650009', '2024-07-08 15:38:35.650009', '2024-06-24 15:38:47.393929', 'returned', 1, 1);
INSERT INTO `borrow_borrowrecord` VALUES (17, '2024-06-24 07:50:39.018808', '2024-07-08 15:50:39.018808', '2024-06-24 15:50:44.159359', 'returned', 1, 1);
INSERT INTO `borrow_borrowrecord` VALUES (18, '2024-06-24 08:11:58.121216', '2024-07-08 16:11:58.120310', '2024-06-24 16:12:04.860449', 'returned', 1, 1);
INSERT INTO `borrow_borrowrecord` VALUES (19, '2024-06-24 08:39:59.093204', '2024-07-08 16:39:59.093097', '2024-06-24 16:40:02.900258', 'returned', 1, 1);
INSERT INTO `borrow_borrowrecord` VALUES (20, '2024-06-24 09:43:29.648845', '2024-07-08 17:43:29.647868', '2024-06-24 17:43:33.831985', 'returned', 1, 1);
INSERT INTO `borrow_borrowrecord` VALUES (21, '2024-06-24 11:44:29.584117', '2024-07-08 19:44:29.583714', '2024-06-24 19:44:38.163192', 'returned', 1, 1);
INSERT INTO `borrow_borrowrecord` VALUES (22, '2024-06-24 11:44:30.602724', '2024-07-08 19:44:30.602724', '2024-06-24 19:44:38.788860', 'returned', 2, 1);
INSERT INTO `borrow_borrowrecord` VALUES (24, '2024-06-25 08:00:44.085143', '2024-07-09 16:00:44.085143', '2024-06-25 16:00:48.099104', 'returned', 1, 3);
INSERT INTO `borrow_borrowrecord` VALUES (25, '2024-06-25 08:39:21.706252', '2024-07-09 16:39:21.706252', '2024-06-25 16:39:26.084142', 'returned', 2, 3);
INSERT INTO `borrow_borrowrecord` VALUES (26, '2024-06-25 12:01:42.895690', '2024-07-09 20:01:42.894713', '2024-06-25 20:01:58.865797', 'returned', 1, 3);
INSERT INTO `borrow_borrowrecord` VALUES (27, '2024-06-25 12:01:45.491448', '2024-07-09 20:01:45.491448', '2024-06-25 20:01:59.384691', 'returned', 2, 3);
INSERT INTO `borrow_borrowrecord` VALUES (28, '2024-06-26 07:14:27.918382', '2024-07-10 15:14:27.872513', '2024-06-26 17:04:49.432581', 'returned', 1, 9);

-- ----------------------------
-- Table structure for course_coursebooklist
-- ----------------------------
DROP TABLE IF EXISTS `course_coursebooklist`;
CREATE TABLE `course_coursebooklist`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `course_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `book_id` bigint NOT NULL,
  `teacher_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `course_coursebooklist_book_id_00c11812_fk_library_book_id`(`book_id` ASC) USING BTREE,
  INDEX `course_coursebooklist_teacher_id_407e3198_fk_users_user_id`(`teacher_id` ASC) USING BTREE,
  CONSTRAINT `course_coursebooklist_book_id_00c11812_fk_library_book_id` FOREIGN KEY (`book_id`) REFERENCES `library_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `course_coursebooklist_teacher_id_407e3198_fk_users_user_id` FOREIGN KEY (`teacher_id`) REFERENCES `users_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_coursebooklist
-- ----------------------------
INSERT INTO `course_coursebooklist` VALUES (3, '3', 1, 7);
INSERT INTO `course_coursebooklist` VALUES (4, '4', 2, 10);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id` ASC) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_users_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label` ASC, `model` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (9, 'borrow', 'borrowrecord');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (10, 'course', 'coursebooklist');
INSERT INTO `django_content_type` VALUES (11, 'document', 'documentresource');
INSERT INTO `django_content_type` VALUES (12, 'interlibrary', 'interlibraryloan');
INSERT INTO `django_content_type` VALUES (8, 'library', 'book');
INSERT INTO `django_content_type` VALUES (7, 'library', 'category');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (13, 'token_blacklist', 'blacklistedtoken');
INSERT INTO `django_content_type` VALUES (14, 'token_blacklist', 'outstandingtoken');
INSERT INTO `django_content_type` VALUES (6, 'users', 'user');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-06-14 05:26:53.109720');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2024-06-14 05:26:53.192680');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2024-06-14 05:26:53.469864');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2024-06-14 05:26:53.546534');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2024-06-14 05:26:53.554342');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2024-06-14 05:26:53.562149');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2024-06-14 05:26:53.569994');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2024-06-14 05:26:53.574838');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2024-06-14 05:26:53.582646');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2024-06-14 05:26:53.593410');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2024-06-14 05:26:53.601188');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2024-06-14 05:26:53.617780');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2024-06-14 05:26:53.625588');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0012_alter_user_first_name_max_length', '2024-06-14 05:26:53.638278');
INSERT INTO `django_migrations` VALUES (15, 'users', '0001_initial', '2024-06-14 05:26:54.062837');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0001_initial', '2024-06-14 05:26:54.214112');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0002_logentry_remove_auto_add', '2024-06-14 05:26:54.224849');
INSERT INTO `django_migrations` VALUES (18, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-14 05:26:54.234646');
INSERT INTO `django_migrations` VALUES (19, 'library', '0001_initial', '2024-06-14 05:26:54.355632');
INSERT INTO `django_migrations` VALUES (20, 'borrow', '0001_initial', '2024-06-14 05:26:54.517296');
INSERT INTO `django_migrations` VALUES (21, 'course', '0001_initial', '2024-06-14 05:26:54.615873');
INSERT INTO `django_migrations` VALUES (22, 'course', '0002_coursebooklist_teacher', '2024-06-14 05:26:54.682240');
INSERT INTO `django_migrations` VALUES (23, 'document', '0001_initial', '2024-06-14 05:26:54.712873');
INSERT INTO `django_migrations` VALUES (24, 'interlibrary', '0001_initial', '2024-06-14 05:26:54.806569');
INSERT INTO `django_migrations` VALUES (25, 'interlibrary', '0002_interlibraryloan_user', '2024-06-14 05:26:54.920761');
INSERT INTO `django_migrations` VALUES (26, 'sessions', '0001_initial', '2024-06-14 05:26:55.042760');
INSERT INTO `django_migrations` VALUES (27, 'token_blacklist', '0001_initial', '2024-06-14 09:43:12.054821');
INSERT INTO `django_migrations` VALUES (28, 'token_blacklist', '0002_outstandingtoken_jti_hex', '2024-06-14 09:43:12.087623');
INSERT INTO `django_migrations` VALUES (29, 'token_blacklist', '0003_auto_20171017_2007', '2024-06-14 09:43:12.103267');
INSERT INTO `django_migrations` VALUES (30, 'token_blacklist', '0004_auto_20171017_2013', '2024-06-14 09:43:12.292829');
INSERT INTO `django_migrations` VALUES (31, 'token_blacklist', '0005_remove_outstandingtoken_jti', '2024-06-14 09:43:12.374814');
INSERT INTO `django_migrations` VALUES (32, 'token_blacklist', '0006_auto_20171017_2113', '2024-06-14 09:43:12.406046');
INSERT INTO `django_migrations` VALUES (33, 'token_blacklist', '0007_auto_20171017_2214', '2024-06-14 09:43:12.590965');
INSERT INTO `django_migrations` VALUES (34, 'token_blacklist', '0008_migrate_to_bigautofield', '2024-06-14 09:43:12.853253');
INSERT INTO `django_migrations` VALUES (35, 'token_blacklist', '0010_fix_migrate_to_bigautofield', '2024-06-14 09:43:12.869882');
INSERT INTO `django_migrations` VALUES (36, 'token_blacklist', '0011_linearizes_history', '2024-06-14 09:43:12.875701');
INSERT INTO `django_migrations` VALUES (37, 'token_blacklist', '0012_alter_outstandingtoken_user', '2024-06-14 09:43:12.887992');
INSERT INTO `django_migrations` VALUES (38, 'library', '0002_alter_category_name', '2024-06-16 12:26:44.676340');
INSERT INTO `django_migrations` VALUES (39, 'library', '0003_auto_20240617_1715', '2024-06-17 09:15:38.646306');
INSERT INTO `django_migrations` VALUES (40, 'library', '0004_alter_book_status', '2024-06-24 07:32:00.030132');
INSERT INTO `django_migrations` VALUES (41, 'users', '0002_alter_user_role', '2024-06-25 11:16:34.396415');
INSERT INTO `django_migrations` VALUES (42, 'users', '0003_alter_user_role', '2024-06-27 01:31:21.250157');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('4kzmpwrj30ol0w3g51bju6t5rfi71e5q', '.eJxVjDsOwjAQBe_iGln2Ov5R0nMGa9fe4ABypDipEHeHSCmgfTPzXiLhtta0dV7SVMRZaHH63Qjzg9sOyh3bbZZ5busykdwVedAur3Ph5-Vw_w4q9vqt2VI22TgcR9JDoMgFLClC1ipbrzx4VDGYyKEggEHrDWSmYMHA4Jx4fwD9ZjfD:1sHzVe:bUpdlMcjKxI2ATXWcLZUPZqhbsBA_WtHDFIMF5ZcHzA', '2024-06-28 05:29:58.343325');

-- ----------------------------
-- Table structure for document_documentresource
-- ----------------------------
DROP TABLE IF EXISTS `document_documentresource`;
CREATE TABLE `document_documentresource`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of document_documentresource
-- ----------------------------
INSERT INTO `document_documentresource` VALUES (1, 'Artificial Intelligence', 'journal', 'journal.pdf', '2024-06-14 10:39:31.720849');
INSERT INTO `document_documentresource` VALUES (2, 'cot', 'journal', 'https://arxiv.org/pdf/2405.15687', '2024-06-26 08:13:34.955688');

-- ----------------------------
-- Table structure for interlibrary_interlibraryloan
-- ----------------------------
DROP TABLE IF EXISTS `interlibrary_interlibraryloan`;
CREATE TABLE `interlibrary_interlibraryloan`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `library_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `request_date` datetime(6) NOT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `book_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `interlibrary_interli_book_id_d23751eb_fk_library_b`(`book_id` ASC) USING BTREE,
  INDEX `interlibrary_interlibraryloan_user_id_d7e4fa8b_fk_users_user_id`(`user_id` ASC) USING BTREE,
  CONSTRAINT `interlibrary_interli_book_id_d23751eb_fk_library_b` FOREIGN KEY (`book_id`) REFERENCES `library_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `interlibrary_interlibraryloan_user_id_d7e4fa8b_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of interlibrary_interlibraryloan
-- ----------------------------
INSERT INTO `interlibrary_interlibraryloan` VALUES (1, 'Central Library', '2024-06-14 10:36:07.580332', 'returned', 1, 1);
INSERT INTO `interlibrary_interlibraryloan` VALUES (2, 'Central Library', '2024-06-14 10:39:02.094739', 'returned', 1, 1);

-- ----------------------------
-- Table structure for library_book
-- ----------------------------
DROP TABLE IF EXISTS `library_book`;
CREATE TABLE `library_book`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `isbn` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `publisher` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `publish_date` date NULL DEFAULT NULL,
  `stock` int NOT NULL,
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `isbn`(`isbn` ASC) USING BTREE,
  INDEX `library_book_category_id_c90a2d6d_fk_library_category_id`(`category_id` ASC) USING BTREE,
  CONSTRAINT `library_book_category_id_c90a2d6d_fk_library_category_id` FOREIGN KEY (`category_id`) REFERENCES `library_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of library_book
-- ----------------------------
INSERT INTO `library_book` VALUES (1, 'Dune', 'Frank Herbert', '9780441013593', 'Ace', '1965-08-01', 20, 'Shelf A1', 'available', '2024-06-14 10:12:33.811784', 1);
INSERT INTO `library_book` VALUES (2, '成功的秘籍', 'ikun', '114515', '616', '2024-06-24', 5, 'AC23', 'available', '2024-06-24 11:40:47.119494', 1);

-- ----------------------------
-- Table structure for library_category
-- ----------------------------
DROP TABLE IF EXISTS `library_category`;
CREATE TABLE `library_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of library_category
-- ----------------------------
INSERT INTO `library_category` VALUES (1, 'Science Fiction', 'Books related to science fiction.');

-- ----------------------------
-- Table structure for token_blacklist_blacklistedtoken
-- ----------------------------
DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
CREATE TABLE `token_blacklist_blacklistedtoken`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `token_id`(`token_id` ASC) USING BTREE,
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token_blacklist_blacklistedtoken
-- ----------------------------
INSERT INTO `token_blacklist_blacklistedtoken` VALUES (1, '2024-06-28 03:00:49.673221', 274);
INSERT INTO `token_blacklist_blacklistedtoken` VALUES (2, '2024-06-28 03:24:56.411135', 279);

-- ----------------------------
-- Table structure for token_blacklist_outstandingtoken
-- ----------------------------
DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
CREATE TABLE `token_blacklist_outstandingtoken`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_at` datetime(6) NULL DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `jti` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq`(`jti` ASC) USING BTREE,
  INDEX `token_blacklist_outs_user_id_83bc629a_fk_users_use`(`user_id` ASC) USING BTREE,
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 280 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token_blacklist_outstandingtoken
-- ----------------------------
INSERT INTO `token_blacklist_outstandingtoken` VALUES (1, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0NDYyOSwiaWF0IjoxNzE4MzU4MjI5LCJqdGkiOiJjYjUxMjFmM2Q3M2Y0ZGMzYWYzNTFlZjNhYzIwMWJjZiIsInVzZXJfaWQiOjJ9.6XrrYoHIfmvvqwzYeiM7rAZv01bMBDj4BW7236xhSno', '2024-06-14 09:43:49.866498', '2024-06-15 09:43:49.000000', 2, 'cb5121f3d73f4dc3af351ef3ac201bcf');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0NDkzNSwiaWF0IjoxNzE4MzU4NTM1LCJqdGkiOiJmYmIyZDllN2RkZmU0MDc4YmZiNWRjMWFiYWJlZGFmZCIsInVzZXJfaWQiOjJ9.HPCxlGZIF0FIxQcbMg2QuUXKy1UkcsmxSwPrZEj-vTQ', '2024-06-14 09:48:55.482183', '2024-06-15 09:48:55.000000', 2, 'fbb2d9e7ddfe4078bfb5dc1ababedafd');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (3, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0NTAwOCwiaWF0IjoxNzE4MzU4NjA4LCJqdGkiOiI2N2FjMmM4OWE4MTk0ZDZmYjgzNzdhZWZhMDc0N2VjYyIsInVzZXJfaWQiOjJ9.UzgjJL--uZ5qrX0K5Ege-bi-GZNxH1iNNRhEhUR8dl4', '2024-06-14 09:50:08.781421', '2024-06-15 09:50:08.000000', 2, '67ac2c89a8194d6fb8377aefa0747ecc');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (4, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0NTE2MywiaWF0IjoxNzE4MzU4NzYzLCJqdGkiOiI2ZDlkOGFmNDk1MmU0ZDY0OGJhMDIwM2YyYzc0NzFjNiIsInVzZXJfaWQiOjJ9.KNhjDCioDu-3sdN9_IimY4eQsubGXJY7gFWsic_dKRA', '2024-06-14 09:52:43.786531', '2024-06-15 09:52:43.000000', 2, '6d9d8af4952e4d648ba0203f2c7471c6');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (5, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0NTc1NywiaWF0IjoxNzE4MzU5MzU3LCJqdGkiOiJhNGY3ODBkMTgxOGQ0NTFiOWM0YzUwZjVhZjgzM2RjNCIsInVzZXJfaWQiOjJ9.dleJP-lInZE49zlO-3kKpBT9DNe24yuGJN--o4ZrJBY', '2024-06-14 10:02:37.069948', '2024-06-15 10:02:37.000000', 2, 'a4f780d1818d451b9c4c50f5af833dc4');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (6, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0NjA4NCwiaWF0IjoxNzE4MzU5Njg0LCJqdGkiOiJmNTU2YWY0NjYwYzg0MmY3YjM1ODM2YjA1YzUyYzEyZCIsInVzZXJfaWQiOjJ9.fJYiLfN6RU95UBS-UdYWS8Qt4XqoYFFTKrumSMwzp0Q', '2024-06-14 10:08:04.908991', '2024-06-15 10:08:04.000000', 2, 'f556af4660c842f7b35836b05c52c12d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (7, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0NjE0NCwiaWF0IjoxNzE4MzU5NzQ0LCJqdGkiOiIxYWU1OWEyY2VjOGU0MTg4OTA0Njc0ZGRkYWE1MTM5MiIsInVzZXJfaWQiOjF9.B3ceLF4uJ8mJpu4s3uQP4QOmDkMxb6hM5uWKBu_ZxQ0', '2024-06-14 10:09:04.746366', '2024-06-15 10:09:04.000000', 1, '1ae59a2cec8e4188904674dddaa51392');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (8, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0NjQ1OSwiaWF0IjoxNzE4MzYwMDU5LCJqdGkiOiI1ZGZiNjE3YWVjZTE0MWU2OGY5ZDhiMTVjMWEyOWQ4ZSIsInVzZXJfaWQiOjF9.AwS5dQf6NtPbf1Rnd2G1WnDWf7o8wghGeM7MI8k9Z08', '2024-06-14 10:14:19.930671', '2024-06-15 10:14:19.000000', 1, '5dfb617aece141e68f9d8b15c1a29d8e');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (9, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0NjYzOCwiaWF0IjoxNzE4MzYwMjM4LCJqdGkiOiI0OGNjNjQzNWEwM2M0NTA2YjJmZDIyMzhhOTZkZWM5ZCIsInVzZXJfaWQiOjF9.1y2s7ziD9HQPGbska1pHd7OtzDUUDaauOs57fll_tvg', '2024-06-14 10:17:18.203304', '2024-06-15 10:17:18.000000', 1, '48cc6435a03c4506b2fd2238a96dec9d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (10, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0Njg2NiwiaWF0IjoxNzE4MzYwNDY2LCJqdGkiOiI5YzNkMTM5ZjQyMzk0MTI1YTg2MzZlZDM1YzlhNTRmNyIsInVzZXJfaWQiOjF9.zx9keqwuaSKRuk-BrUfv1zhooGUCbMWeYaMO6B1df5E', '2024-06-14 10:21:06.599348', '2024-06-15 10:21:06.000000', 1, '9c3d139f42394125a8636ed35c9a54f7');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (11, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0NzI2OCwiaWF0IjoxNzE4MzYwODY4LCJqdGkiOiIyYjY5NjEzNmQxMmE0M2VhYmQ1YjliYzVlMTQzZGMzZCIsInVzZXJfaWQiOjF9.s_PEoKXQkqkMRPKoUlK7KMnR6_nTlayGDZDQM03MBiI', '2024-06-14 10:27:48.130901', '2024-06-15 10:27:48.000000', 1, '2b696136d12a43eabd5b9bc5e143dc3d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (12, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0NzY0OSwiaWF0IjoxNzE4MzYxMjQ5LCJqdGkiOiI3OTlmODBhZmNiMDI0ZmJkYjQwMDM2OTVhNGRlNWM0MSIsInVzZXJfaWQiOjF9.Wq5oTnJ__Rc8XybFE1AjN5Uk2Mnxy9_e97Lda9d1tgc', '2024-06-14 10:34:09.876998', '2024-06-15 10:34:09.000000', 1, '799f80afcb024fbdb4003695a4de5c41');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (13, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0Nzk2MSwiaWF0IjoxNzE4MzYxNTYxLCJqdGkiOiJhMGQzNGVkYzFiZjU0OWU2YTUwNDViNmRlYWYyMjUxYSIsInVzZXJfaWQiOjF9.EnLJNJ9gzWK-0gwSPIxrQAtl0ILYRp5kO-5Dtq6ZE6U', '2024-06-14 10:39:21.079606', '2024-06-15 10:39:21.000000', 1, 'a0d34edc1bf549e6a5045b6deaf2251a');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (14, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODQ0ODQ4NywiaWF0IjoxNzE4MzYyMDg3LCJqdGkiOiJhZDg3YTE3YjQ2YzM0M2U2OGM5M2Y5OGU0ZTU0ZGVjYyIsInVzZXJfaWQiOjF9.MXURW9q5w33lT_4EM4eITtQMFiiHSKmbOdv5g1SYyAE', '2024-06-14 10:48:07.763246', '2024-06-15 10:48:07.000000', 1, 'ad87a17b46c343e68c93f98e4e54decc');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (15, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODYyNzIxMiwiaWF0IjoxNzE4NTQwODEyLCJqdGkiOiIwZTM0MjkyYzQzOWU0YTAzYmIwYzNjNTRiOTFhM2RiMSIsInVzZXJfaWQiOjF9.TEeoxs3osUyirOS3ErY89LWU6Tu4s2p_nW8Idh-it8E', '2024-06-16 12:26:52.761814', '2024-06-17 12:26:52.000000', 1, '0e34292c439e4a03bb0c3c54b91a3db1');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (16, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODYyNzM1MiwiaWF0IjoxNzE4NTQwOTUyLCJqdGkiOiJkN2I4OGUzZGI2Njc0MjM2ODlhODczNTNlYTQ4NWQ0MCIsInVzZXJfaWQiOjF9.1QxHHKRQV8cXRyHwXh2jEgNWnDTsle2fke4mnJAau6w', '2024-06-16 12:29:12.961769', '2024-06-17 12:29:12.000000', 1, 'd7b88e3db667423689a87353ea485d40');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (17, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODYzMTU2NSwiaWF0IjoxNzE4NTQ1MTY1LCJqdGkiOiJmNTM3YTJmNGM1NWI0ZWNhYmIxMDNmMmIzYTM3YWIwZiIsInVzZXJfaWQiOjF9.rP139BdBn_Oh-Ln57Ym8ibEWZs0J8dNa04HggEz0xb8', '2024-06-16 13:39:25.583352', '2024-06-17 13:39:25.000000', 1, 'f537a2f4c55b4ecabb103f2b3a37ab0f');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (18, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODYzMTkxNiwiaWF0IjoxNzE4NTQ1NTE2LCJqdGkiOiJkZjdhZDRiN2QxMjE0YTQ0YjcyZWZmNzU5OWQwZDM0NiIsInVzZXJfaWQiOjF9.N9koGjjCqQ57D2Ax1UVDWenBv8vE3AltsPx845Uvf8E', '2024-06-16 13:45:16.660762', '2024-06-17 13:45:16.000000', 1, 'df7ad4b7d1214a44b72eff7599d0d346');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (19, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODYzMjIzOCwiaWF0IjoxNzE4NTQ1ODM4LCJqdGkiOiJiODM3Mzg3YzhlMGY0YTJmYjE2ZmUxNTBhNmZhMWM5NyIsInVzZXJfaWQiOjF9.YwDSe0jjyl3KIkT1_UrB9eAyjyym5jLXRN6uK50PSS4', '2024-06-16 13:50:38.200463', '2024-06-17 13:50:38.000000', 1, 'b837387c8e0f4a2fb16fe150a6fa1c97');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (20, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODYzMjI3MiwiaWF0IjoxNzE4NTQ1ODcyLCJqdGkiOiI2ZDE5YjFiODBiYWU0Yzc5OGJiMWQ4ZmQ3ZjU0YWFlOCIsInVzZXJfaWQiOjF9.Kxjnj5WEch09S6pJ234ro5IFJr3o8S2pvxUsXLc2Scg', '2024-06-16 13:51:12.754297', '2024-06-17 13:51:12.000000', 1, '6d19b1b80bae4c798bb1d8fd7f54aae8');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (21, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY4NTg0NywiaWF0IjoxNzE4NTk5NDQ3LCJqdGkiOiIxNmI4NzU0ODVlY2Y0MGYyYWFhMjcxOWU5M2NmYmIzMiIsInVzZXJfaWQiOjF9.FLzU8J1qavQpy6ULTaMDdeHY4vJ61kieGBmNuWrN2Zo', '2024-06-17 04:44:07.977252', '2024-06-18 04:44:07.000000', 1, '16b875485ecf40f2aaa2719e93cfbb32');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (22, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY4NjU0OCwiaWF0IjoxNzE4NjAwMTQ4LCJqdGkiOiIxN2ZlNGIwMmE4ZDE0N2FlYWQ4MjZiMWQxYmY1NGY5YiIsInVzZXJfaWQiOjF9.sQnMoevbHzQtOpVHyZ-75ouK6LSXTodcFf3zWrjWJOo', '2024-06-17 04:55:48.076353', '2024-06-18 04:55:48.000000', 1, '17fe4b02a8d147aead826b1d1bf54f9b');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (23, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY4Njc3OSwiaWF0IjoxNzE4NjAwMzc5LCJqdGkiOiJiYTJmMDhiNzEyYWQ0YzdhODUzZDE2ZDNjODE4MTVhMSIsInVzZXJfaWQiOjF9.fyFsNY7AzXOgOiUkEQLM_cIrEyzBoVnSg--dy11ECAo', '2024-06-17 04:59:39.723869', '2024-06-18 04:59:39.000000', 1, 'ba2f08b712ad4c7a853d16d3c81815a1');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (24, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY4NzQ5NywiaWF0IjoxNzE4NjAxMDk3LCJqdGkiOiJkNWRkNzVlNDU1Y2U0MzFhOGNkMThlZGVkM2Q1ZjkyOCIsInVzZXJfaWQiOjF9.NTGQATtSMBI-Sq5oznV-xMjFP9JrQbGwIXfhPWjNxuU', '2024-06-17 05:11:37.213690', '2024-06-18 05:11:37.000000', 1, 'd5dd75e455ce431a8cd18eded3d5f928');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (25, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY4NzU4NSwiaWF0IjoxNzE4NjAxMTg1LCJqdGkiOiIwYjNlNDYwM2U3NWI0ZmYzOTExZDJiZGYwOWY3MzMzOCIsInVzZXJfaWQiOjF9.x8dtWzIpLHDoz8qgceto0wLMLgu0qtYE5pd5GUAWMng', '2024-06-17 05:13:05.701566', '2024-06-18 05:13:05.000000', 1, '0b3e4603e75b4ff3911d2bdf09f73338');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (26, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY4NzYwMSwiaWF0IjoxNzE4NjAxMjAxLCJqdGkiOiI3NzRmMDdhNzNmOTQ0M2U0YmNkMDAzOWU4ZjcwNTI3MCIsInVzZXJfaWQiOjF9.-GYlOsLzCvytLEtdyb5qekipbIKBdJLwLvzQOlwPc4A', '2024-06-17 05:13:21.544393', '2024-06-18 05:13:21.000000', 1, '774f07a73f9443e4bcd0039e8f705270');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (27, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY4NzczOSwiaWF0IjoxNzE4NjAxMzM5LCJqdGkiOiIyZWQ2NmZiMmYzZjk0Y2IwYWU5YjQxOTg1NjI2NDkyZSIsInVzZXJfaWQiOjF9.rt5LJh4TxusMIUH71h186rszjBVWIHXNn7xRw51fFbM', '2024-06-17 05:15:39.288980', '2024-06-18 05:15:39.000000', 1, '2ed66fb2f3f94cb0ae9b41985626492e');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (28, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY4Nzc0OCwiaWF0IjoxNzE4NjAxMzQ4LCJqdGkiOiI5NGVlMDQ2NjE3NDg0M2FlODNkZmI2OThjNzc3ODE3NSIsInVzZXJfaWQiOjF9.XozLIuxb-THXJEbtqZYgi_x5oraVb_KiBBUJrRkkVM0', '2024-06-17 05:15:48.925792', '2024-06-18 05:15:48.000000', 1, '94ee0466174843ae83dfb698c7778175');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (29, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY4Nzk4NSwiaWF0IjoxNzE4NjAxNTg1LCJqdGkiOiIxYTg2NjMxYjI4Zjk0MDE5YjhjN2Q5M2YzNTViNjZkNiIsInVzZXJfaWQiOjF9.jhjqEzHQ_K0SMzUAY7e4U79FGA2y3cqgzE7Nh7O6_jU', '2024-06-17 05:19:45.667420', '2024-06-18 05:19:45.000000', 1, '1a86631b28f94019b8c7d93f355b66d6');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (30, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY4ODAxMiwiaWF0IjoxNzE4NjAxNjEyLCJqdGkiOiI1MWI1NjdkMzU2NDU0N2JhYjhlYjZlN2VmMzhhOGFjMiIsInVzZXJfaWQiOjF9.4lnECpLw1lOH9XDvVwFUf2-ElugLsg94NBRSfysrot4', '2024-06-17 05:20:12.299133', '2024-06-18 05:20:12.000000', 1, '51b567d3564547bab8eb6e7ef38a8ac2');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (31, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY4OTAyNywiaWF0IjoxNzE4NjAyNjI3LCJqdGkiOiJkMzI5MzRkZTI0NGQ0NmNlYTg3NTJlYWI1NjljOGZmMCIsInVzZXJfaWQiOjF9.S_lDXVnmXE7vBtFcpa06kuM4aKgHqEyW8_E2Z5qxrL8', '2024-06-17 05:37:07.207786', '2024-06-18 05:37:07.000000', 1, 'd32934de244d46cea8752eab569c8ff0');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (32, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY4OTA1OSwiaWF0IjoxNzE4NjAyNjU5LCJqdGkiOiJkZGQ2NTc3ZDFlZjE0ZDkzYmQ1ZmFkYjYyZWM0YTU1NiIsInVzZXJfaWQiOjF9.CfwgMhepo97-jJkeMWoYxtybyt2ZZ_J34KS52CtlawQ', '2024-06-17 05:37:39.100294', '2024-06-18 05:37:39.000000', 1, 'ddd6577d1ef14d93bd5fadb62ec4a556');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (33, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY4OTQ4MSwiaWF0IjoxNzE4NjAzMDgxLCJqdGkiOiJkYjI1ZGJmMjc4MWI0NTUzOWNjYmFmNDAxZWQzMWI2OSIsInVzZXJfaWQiOjF9.4s9c4YLJe0Y3e6d2kQrPCaJ7mHahtDmx426rhKuWBpY', '2024-06-17 05:44:41.871263', '2024-06-18 05:44:41.000000', 1, 'db25dbf2781b45539ccbaf401ed31b69');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (34, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY4OTgzOCwiaWF0IjoxNzE4NjAzNDM4LCJqdGkiOiJjZGNlZjNmNGU4YWY0MjZlYWIzNjFlNjZkY2UwNTViZCIsInVzZXJfaWQiOjF9.B5ImhoDNwVwbQSc5ULP2PIQ3VnFpGxeJFv3_u5pTHXk', '2024-06-17 05:50:38.949822', '2024-06-18 05:50:38.000000', 1, 'cdcef3f4e8af426eab361e66dce055bd');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (35, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY5MDQwOCwiaWF0IjoxNzE4NjA0MDA4LCJqdGkiOiJlYjFmNTlmYTI5M2M0MWM3OWZmMTc2MWIxYTljNGY3NiIsInVzZXJfaWQiOjF9.p-by7lvD04ayQMrGNwM6qF7QiGTLLjCEMQ67hDi21BQ', '2024-06-17 06:00:08.348601', '2024-06-18 06:00:08.000000', 1, 'eb1f59fa293c41c79ff1761b1a9c4f76');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (36, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY5MDQ1NywiaWF0IjoxNzE4NjA0MDU3LCJqdGkiOiIyOWI2NjdjYjM5OGU0ODUwYmFhMjNiYmQ0OWU3NWVkMiIsInVzZXJfaWQiOjF9.9MmOCz175FKQtKdoZ0A96d4OHzQcpD1WZny71U44hkY', '2024-06-17 06:00:57.157743', '2024-06-18 06:00:57.000000', 1, '29b667cb398e4850baa23bbd49e75ed2');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (37, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY5MDUwMSwiaWF0IjoxNzE4NjA0MTAxLCJqdGkiOiIwYjkwMDI1ODI1ZDI0NjM3YWIxZTExMTEyZjRlYzk5ZiIsInVzZXJfaWQiOjF9.vxKa9R2sS2H5RNzbzkvtiRYqHYCefchHjvXm3S5BxjM', '2024-06-17 06:01:41.252858', '2024-06-18 06:01:41.000000', 1, '0b90025825d24637ab1e11112f4ec99f');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (38, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY5MDc4NywiaWF0IjoxNzE4NjA0Mzg3LCJqdGkiOiJkMzFjZDRhMzE0YTY0YTYxOWQ5MTdmODQ5YjU0ZTA3YyIsInVzZXJfaWQiOjF9.DMZQetWUERKxTo5QUVu0V9VT1vuUqSJbTzQZYp5qY5I', '2024-06-17 06:06:27.772824', '2024-06-18 06:06:27.000000', 1, 'd31cd4a314a64a619d917f849b54e07c');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (39, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY5MDk5MCwiaWF0IjoxNzE4NjA0NTkwLCJqdGkiOiI3OWU0YjdhNTA3NWU0YjlmYWViNDMxMWUzMDMzZjViMSIsInVzZXJfaWQiOjF9.dSHVo4ugA21WnLVg7pfFz2Q68RhTH-VZ6cNB2LVD6n8', '2024-06-17 06:09:50.158024', '2024-06-18 06:09:50.000000', 1, '79e4b7a5075e4b9faeb4311e3033f5b1');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (40, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY5MTExMSwiaWF0IjoxNzE4NjA0NzExLCJqdGkiOiJlZDc5ZGViMDJmMjE0MjA2ODBlYmJlZTA0YmZiN2YzMCIsInVzZXJfaWQiOjF9.xFL7NDt9eMOfEjZ-cMZi6pEG78HGrX-rXNRsDYkPWBo', '2024-06-17 06:11:51.003166', '2024-06-18 06:11:51.000000', 1, 'ed79deb02f21420680ebbee04bfb7f30');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (41, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY5MTEyNSwiaWF0IjoxNzE4NjA0NzI1LCJqdGkiOiI3YWJkNjhkMDk2YzM0OTE0YTU3MGRkMWM5MTEwYjZkNiIsInVzZXJfaWQiOjF9.feuilMLyKpuBhmKfKcaNfrGlvO3A962Zx5mtdKDDxxE', '2024-06-17 06:12:05.390055', '2024-06-18 06:12:05.000000', 1, '7abd68d096c34914a570dd1c9110b6d6');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (42, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY5MTE3NywiaWF0IjoxNzE4NjA0Nzc3LCJqdGkiOiI0NmY2NzhjNjc1ZTY0OTAxYTdiYjk2OGYzNmQ3OTI0YiIsInVzZXJfaWQiOjF9.1QC06zwSJVgA4KvwQnuXbb9g4-etHzyHFa9L5QpUCSc', '2024-06-17 06:12:57.011215', '2024-06-18 06:12:57.000000', 1, '46f678c675e64901a7bb968f36d7924b');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (43, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY5MTI1MywiaWF0IjoxNzE4NjA0ODUzLCJqdGkiOiJjZTgyZDdkZmUyMjU0MjllYjE3YzI3MWM4NTVmNTNiMiIsInVzZXJfaWQiOjF9.IPu0hZHaHiccRdSJStgzxnVsTUQRpFIUidVo04J_ndw', '2024-06-17 06:14:13.558052', '2024-06-18 06:14:13.000000', 1, 'ce82d7dfe225429eb17c271c855f53b2');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (44, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY5MTI5NiwiaWF0IjoxNzE4NjA0ODk2LCJqdGkiOiJlOWNlMWI3MTkzNWY0OWFkYTk1YjY2NDU1ZmQyZWQ1ZiIsInVzZXJfaWQiOjF9.TwGUqHCgQCSUOJpg53RGM3lCOigDLbYIUKX0EH2IJrw', '2024-06-17 06:14:56.939287', '2024-06-18 06:14:56.000000', 1, 'e9ce1b71935f49ada95b66455fd2ed5f');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (45, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY5MTM3NCwiaWF0IjoxNzE4NjA0OTc0LCJqdGkiOiJiMzgzODA1NzU4ZDQ0MDE2YTVkY2UwNzhiYTllM2EyMiIsInVzZXJfaWQiOjF9.iO6wg-vq8a91_r_0i6ssmkf2UwrMJwK1oEYB--Bwz2A', '2024-06-17 06:16:14.431087', '2024-06-18 06:16:14.000000', 1, 'b383805758d44016a5dce078ba9e3a22');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (46, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY5MTM5MywiaWF0IjoxNzE4NjA0OTkzLCJqdGkiOiJmNWY0ZTBlNjA3Y2M0M2M5ODMxZDYxMjBhNGU4NDhiYiIsInVzZXJfaWQiOjF9.G8nT0ctsUgOl2Enzjdo5NB4SeWOoWtjH4XbKyYnuT5c', '2024-06-17 06:16:33.890487', '2024-06-18 06:16:33.000000', 1, 'f5f4e0e607cc43c9831d6120a4e848bb');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (47, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY5MTk4NiwiaWF0IjoxNzE4NjA1NTg2LCJqdGkiOiI5NzFmZjI1ZDIxNjg0MDU3OGU3NjJkNjZiYWQwNzBlMCIsInVzZXJfaWQiOjF9.xpBkHTwcCm_09M_VdddmN649owHKFNA1VodnpDZQR3g', '2024-06-17 06:26:26.444002', '2024-06-18 06:26:26.000000', 1, '971ff25d216840578e762d66bad070e0');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (48, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY5MjczMSwiaWF0IjoxNzE4NjA2MzMxLCJqdGkiOiI0MWYxYTM4ZmE4Y2Y0MjA0YWQ1MjFlYjM1MGQ2MzA1ZiIsInVzZXJfaWQiOjF9.u2sqU-3fdPND9w0u3I4KvmK4w3j8N4Kylp-143E5tpM', '2024-06-17 06:38:51.312396', '2024-06-18 06:38:51.000000', 1, '41f1a38fa8cf4204ad521eb350d6305f');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (49, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODY5NDQwOCwiaWF0IjoxNzE4NjA4MDA4LCJqdGkiOiI2ZjVlODRkNjY5NDM0NDBjOGU4Mjc0MWMzNmY3ZDY2OCIsInVzZXJfaWQiOjF9.TIQDRPl-5rv6n9yRuI8ArvBbAU5LsGqYDeCR1bGm-08', '2024-06-17 07:06:48.893432', '2024-06-18 07:06:48.000000', 1, '6f5e84d66943440c8e82741c36f7d668');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (50, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcwMjcwMCwiaWF0IjoxNzE4NjE2MzAwLCJqdGkiOiJkNDVmNWExNWFhYWE0NWJlOGU1MWRhY2Q0OTIzZGQxNyIsInVzZXJfaWQiOjF9.K_hiadzkROVC7ObbBog0AEY91iYy3e5u9BQU5OvLxR8', '2024-06-17 09:25:00.120451', '2024-06-18 09:25:00.000000', 1, 'd45f5a15aaaa45be8e51dacd4923dd17');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (51, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcwMzIyNSwiaWF0IjoxNzE4NjE2ODI1LCJqdGkiOiI0NDQxOTNmZmY5MTE0NTliYWE1MWI4NTI5ZDE4MmM1NSIsInVzZXJfaWQiOjF9.LLdEdmrK87H2acpabv-UYCOmq1uwISd1c1FjtsTVZVs', '2024-06-17 09:33:45.254209', '2024-06-18 09:33:45.000000', 1, '444193fff911459baa51b8529d182c55');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (52, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcwNjQxNCwiaWF0IjoxNzE4NjIwMDE0LCJqdGkiOiIyYmM4YTUyYjVmZjg0YzAxOTdjYjk3Y2FlYjU1YTJlYSIsInVzZXJfaWQiOjF9.e_1-aonHTgKrisVkcngYtmLP-gAkRNL3FfgsHnzqwyE', '2024-06-17 10:26:54.375912', '2024-06-18 10:26:54.000000', 1, '2bc8a52b5ff84c0197cb97caeb55a2ea');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (53, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcwOTcxMiwiaWF0IjoxNzE4NjIzMzEyLCJqdGkiOiIyZTZlN2RlZDk1YTI0NDMxODg4NzY0ODEzZmYwOGIyNCIsInVzZXJfaWQiOjF9.I5JbGP9FOmVo1g_jiAw9ia8SrOILCDJhTh0C-L6HYyU', '2024-06-17 11:21:52.783104', '2024-06-18 11:21:52.000000', 1, '2e6e7ded95a24431888764813ff08b24');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (54, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcxMDQ5MSwiaWF0IjoxNzE4NjI0MDkxLCJqdGkiOiJjYmFmNjdlOTMxMjI0MDhkYjRhYTMzODVjZTU0YjczMSIsInVzZXJfaWQiOjF9.mLA5o_vguXi5UlWlZIrLJHgWNr_J7s_01NpJ-gYZAfY', '2024-06-17 11:34:51.526998', '2024-06-18 11:34:51.000000', 1, 'cbaf67e93122408db4aa3385ce54b731');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (55, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcxMDQ5NywiaWF0IjoxNzE4NjI0MDk3LCJqdGkiOiI1YzJkNjdlNjUzOWQ0ZjYxYWZiZmRiMDA3YmI2MjU4YiIsInVzZXJfaWQiOjF9.TtgX3lYTGr0EcvwU-_gkZ9PWzzrrs6w6HaliAPfVo20', '2024-06-17 11:34:57.452973', '2024-06-18 11:34:57.000000', 1, '5c2d67e6539d4f61afbfdb007bb6258b');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (56, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcxMDUwMywiaWF0IjoxNzE4NjI0MTAzLCJqdGkiOiJjNWNiNDE0MzhlMzQ0NWU1YTBiZWFkOTRjZDdkODAzYSIsInVzZXJfaWQiOjF9.M-mKCW49FC4KUQ1r6xDA3Ie24q_dYdhjF48vUnWVMBw', '2024-06-17 11:35:03.272484', '2024-06-18 11:35:03.000000', 1, 'c5cb41438e3445e5a0bead94cd7d803a');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (57, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcxMDcxNCwiaWF0IjoxNzE4NjI0MzE0LCJqdGkiOiI4NjBmNWZiNjgyMGQ0OTk2YmEyZTU5OGZlNGI1MmE3MiIsInVzZXJfaWQiOjF9.0EbcUYO5v2RahJmvKHec5m-_rMzSYt6IPoDAjgV3VPw', '2024-06-17 11:38:34.964452', '2024-06-18 11:38:34.000000', 1, '860f5fb6820d4996ba2e598fe4b52a72');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (58, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcxMDcyMCwiaWF0IjoxNzE4NjI0MzIwLCJqdGkiOiIzMzczYjFhODNmYjQ0ZWM1YThlZmYzOTJlNWMxNDAxMiIsInVzZXJfaWQiOjF9.ATkoyLv-g-swsuhAydQgPgQ0cHu507PCbpxQG7wqtls', '2024-06-17 11:38:40.921433', '2024-06-18 11:38:40.000000', 1, '3373b1a83fb44ec5a8eff392e5c14012');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (59, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcxMDc5OSwiaWF0IjoxNzE4NjI0Mzk5LCJqdGkiOiJmYjk0ODNjNzYzMjc0MGJmYmMxNTk4MjEyYTFkZGU1YyIsInVzZXJfaWQiOjF9.FcT8jfRt-XWlPT-CzWMUqE0w-3EzLmuL2Qj8ME4vLT8', '2024-06-17 11:39:59.852595', '2024-06-18 11:39:59.000000', 1, 'fb9483c7632740bfbc1598212a1dde5c');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (60, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcxMDgzMCwiaWF0IjoxNzE4NjI0NDMwLCJqdGkiOiJiOTVkNDIzMzVjNTA0YTQ5OTFmZGIyZGU4NTc3NjczZCIsInVzZXJfaWQiOjF9.gAQ7bdpxSfglTlNXJyVPEVJNeyp2fTahYsB4raWmhDw', '2024-06-17 11:40:30.932148', '2024-06-18 11:40:30.000000', 1, 'b95d42335c504a4991fdb2de8577673d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (61, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcxMDgzNywiaWF0IjoxNzE4NjI0NDM3LCJqdGkiOiI4Njg0NGE5ZTM1YjQ0Zjg1OGU1ZmFmNzhlYjM4NDIzNCIsInVzZXJfaWQiOjF9._Tz0XFf2MJMmSEX8q_PkZw-S3jh4YwTuhtYMVUXmMFo', '2024-06-17 11:40:37.386318', '2024-06-18 11:40:37.000000', 1, '86844a9e35b44f858e5faf78eb384234');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (62, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcxMTE1OSwiaWF0IjoxNzE4NjI0NzU5LCJqdGkiOiIwYTNmMGUwOGMxNDQ0N2I1ODNkY2YwNjAxMWMyOWZmYyIsInVzZXJfaWQiOjF9.vhR10-vzq6sWqI6nsCihZbRz1mA9xltdfFatwOZKUJQ', '2024-06-17 11:45:59.008347', '2024-06-18 11:45:59.000000', 1, '0a3f0e08c14447b583dcf06011c29ffc');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (63, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcxMTIwNSwiaWF0IjoxNzE4NjI0ODA1LCJqdGkiOiI2NWYwY2RlZDE2ZDE0MjhiYmZkNWZlM2Y0MTVhYjc5MCIsInVzZXJfaWQiOjF9.wSO0_ZAHcaAe1Gcoste_OZjP92yRLxuuGXcNBnFP11U', '2024-06-17 11:46:45.573063', '2024-06-18 11:46:45.000000', 1, '65f0cded16d1428bbfd5fe3f415ab790');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (64, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcxMTI5OSwiaWF0IjoxNzE4NjI0ODk5LCJqdGkiOiJmZjQ5MTgxOGM4NTc0ZTQ5YWE5ODc4YTI5YjgyMDJmZSIsInVzZXJfaWQiOjF9.qeti4sVzvbMuhaQufhco_JqidwxoXpBCXyck76kzVYg', '2024-06-17 11:48:19.187572', '2024-06-18 11:48:19.000000', 1, 'ff491818c8574e49aa9878a29b8202fe');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (65, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxODcxMTMyOSwiaWF0IjoxNzE4NjI0OTI5LCJqdGkiOiIwMDMyYTY1OGY3YjY0ZjljYTcwODdhOGFkMmJjNGEwOCIsInVzZXJfaWQiOjF9.QxYlzbfMo5yYWFn71Jpyx-sf1O4UCPyRVEuEAu73RKc', '2024-06-17 11:48:49.428204', '2024-06-18 11:48:49.000000', 1, '0032a658f7b64f9ca7087a8ad2bc4a08');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (66, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTE1MTE5MywiaWF0IjoxNzE5MDY0NzkzLCJqdGkiOiJhYjJiN2RlZDM0OGI0ZTkwYWU4YjhlYzM2YWYyODA5OCIsInVzZXJfaWQiOjF9.82lYQa6wtp33Teeh7ubjPT1dFAgt9-XMUkgyCTTlyV8', '2024-06-22 13:59:53.676172', '2024-06-23 13:59:53.000000', 1, 'ab2b7ded348b4e90ae8b8ec36af28098');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (67, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTE1MTUzMiwiaWF0IjoxNzE5MDY1MTMyLCJqdGkiOiJhYTc4ZGNiMGQyYjU0N2YxODk4YWNkYjZhYmEzNDRiZiIsInVzZXJfaWQiOjF9.Q_cySJRB7S0tY-BIEPKo7taGd5e-84SAWwYZEEgEcn8', '2024-06-22 14:05:32.352456', '2024-06-23 14:05:32.000000', 1, 'aa78dcb0d2b547f1898acdb6aba344bf');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (68, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTE5OTAzMSwiaWF0IjoxNzE5MTEyNjMxLCJqdGkiOiJkZGQyNDFhOTZhMTQ0ZGNiODgwYzQ2YzBlNzBiM2EyNSIsInVzZXJfaWQiOjF9.Ok6K-kupnksoFAbnrtZBamzszPTDQwY8u9hnNo1yM5k', '2024-06-23 03:17:11.049766', '2024-06-24 03:17:11.000000', 1, 'ddd241a96a144dcb880c46c0e70b3a25');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (69, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTE5OTMwMCwiaWF0IjoxNzE5MTEyOTAwLCJqdGkiOiJmMjg1YzFjYjdiY2U0ZTYzOTk5NTdjMTM1YTczZTEyYSIsInVzZXJfaWQiOjF9.gAgtLdh13LIJyM--u7V7uUcSdKIauGQoIIyNLUBpkhQ', '2024-06-23 03:21:40.945768', '2024-06-24 03:21:40.000000', 1, 'f285c1cb7bce4e6399957c135a73e12a');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (70, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTE5OTMzNywiaWF0IjoxNzE5MTEyOTM3LCJqdGkiOiJiZWZhNGM4YTJiZWY0YmY5OGEwNTk4MzllZGEyZGRhNyIsInVzZXJfaWQiOjF9.uiRIIqq8C5q7zS5G1upttyUo2_ImT3JPaL2uHrZ3WkE', '2024-06-23 03:22:17.170547', '2024-06-24 03:22:17.000000', 1, 'befa4c8a2bef4bf98a059839eda2dda7');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (71, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTE5OTczMCwiaWF0IjoxNzE5MTEzMzMwLCJqdGkiOiIxMGZhYjE1ZTIzM2Q0MTk2YmQ4NGNlNzNiYmQxOTFkZiIsInVzZXJfaWQiOjF9.ZYIWq42ZARKd69BFEOHgyMKrTMYdxBSyVKvTZ74F2RM', '2024-06-23 03:28:50.611862', '2024-06-24 03:28:50.000000', 1, '10fab15e233d4196bd84ce73bbd191df');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (72, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTExMCwiaWF0IjoxNzE5MTE0NzEwLCJqdGkiOiI0ODg5NjhiYzg2YzM0YzA2OGZlYWIxM2Y1ODY5ZWM5MyIsInVzZXJfaWQiOjF9.ExxbJTMpt2Em6ox6xcZR2ChVdzzsyzj1dTGjIwYCqrA', '2024-06-23 03:51:50.423574', '2024-06-24 03:51:50.000000', 1, '488968bc86c34c068feab13f5869ec93');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (73, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTE1MiwiaWF0IjoxNzE5MTE0NzUyLCJqdGkiOiJhZTlhYzliZmZjMjM0ZjlhOTg0MzA0YTIzMmYzMjNiZCIsInVzZXJfaWQiOjF9.FLZsJ6izc4KnHJ-gUNnnaucZwjcZNu_P6QsChwMCluc', '2024-06-23 03:52:32.524523', '2024-06-24 03:52:32.000000', 1, 'ae9ac9bffc234f9a984304a232f323bd');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (74, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTI1MSwiaWF0IjoxNzE5MTE0ODUxLCJqdGkiOiJjMDk2OWVjMDUxMzE0MzNiYjllY2JhOTM5MmI3NTZiZiIsInVzZXJfaWQiOjF9.2jKdlhd_806glYKQDXGWOUnLngt7ErMtQnBlaus2EHQ', '2024-06-23 03:54:11.742640', '2024-06-24 03:54:11.000000', 1, 'c0969ec05131433bb9ecba9392b756bf');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (75, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTI4MiwiaWF0IjoxNzE5MTE0ODgyLCJqdGkiOiJlN2EzNWFmNDEwYTI0Y2JkODUyNjljOTJjODA4MDYzOSIsInVzZXJfaWQiOjF9.Nf5pgwZLqFmJkVyLoXUtCBqzUi58AjO0xT_A7fpOgsc', '2024-06-23 03:54:42.798657', '2024-06-24 03:54:42.000000', 1, 'e7a35af410a24cbd85269c92c8080639');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (76, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTMyOSwiaWF0IjoxNzE5MTE0OTI5LCJqdGkiOiJhOTQyMTk4ZDZmY2I0MTZhYTNjZmM4OTYxY2VmYzkzNiIsInVzZXJfaWQiOjF9.R1bQ7ydtk8ZSrSDBKVcdH13XzfBV-V_K0M8cI0DUaKQ', '2024-06-23 03:55:29.416843', '2024-06-24 03:55:29.000000', 1, 'a942198d6fcb416aa3cfc8961cefc936');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (77, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTM4MywiaWF0IjoxNzE5MTE0OTgzLCJqdGkiOiJmMGY5YTg5MWViNjI0NGMyODM3YmM3OTkyMmE3OWM2NyIsInVzZXJfaWQiOjF9.dMI_02rhgOUNSFmklMmiWqnY38JFzxwNSgr79VawVmc', '2024-06-23 03:56:23.584086', '2024-06-24 03:56:23.000000', 1, 'f0f9a891eb6244c2837bc79922a79c67');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (78, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTUyNywiaWF0IjoxNzE5MTE1MTI3LCJqdGkiOiI3YmFhZGU5YjliYjI0ZDMzYmRmY2ViMTA5Y2JjYmFjNyIsInVzZXJfaWQiOjF9.7UrNd8mDnC7fMCcpdzwFq9V0EqPLHeti4RS48ebGevM', '2024-06-23 03:58:47.597391', '2024-06-24 03:58:47.000000', 1, '7baade9b9bb24d33bdfceb109cbcbac7');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (79, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTUzMywiaWF0IjoxNzE5MTE1MTMzLCJqdGkiOiIwN2ViODc1MWIyN2U0Y2QzODA1ZWI1OTExM2NjNmZkNyIsInVzZXJfaWQiOjF9.bgcVxT-ejg5ZkeSmQAwNvwkD-jd1T_lRR_xOdfYJRZA', '2024-06-23 03:58:53.365143', '2024-06-24 03:58:53.000000', 1, '07eb8751b27e4cd3805eb59113cc6fd7');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (80, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTU5MSwiaWF0IjoxNzE5MTE1MTkxLCJqdGkiOiI2ZDhlOGM1MTcyODI0MzIyOWQwZTYxNGYyZWRlNWNkOCIsInVzZXJfaWQiOjF9.xpIWS9ui9V0t6yTaRTAQGNS4XAq3b1nK16YQvXaDN_A', '2024-06-23 03:59:51.785915', '2024-06-24 03:59:51.000000', 1, '6d8e8c51728243229d0e614f2ede5cd8');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (81, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTU5MywiaWF0IjoxNzE5MTE1MTkzLCJqdGkiOiIxNzU2MmU1ZGI4ZmM0YTY4ODk4MTNjMjY4MzdjYTdlOCIsInVzZXJfaWQiOjF9.dggAP3plIUNHZh7jYEKuOzGBE939luE4bEYCTppzYUY', '2024-06-23 03:59:53.219423', '2024-06-24 03:59:53.000000', 1, '17562e5db8fc4a6889813c26837ca7e8');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (82, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTYxNSwiaWF0IjoxNzE5MTE1MjE1LCJqdGkiOiIxMjA3OTAxMjM2ZGE0NDU3YmJiYmZmNGM1OWU3ZjY0NSIsInVzZXJfaWQiOjF9.j_ZjG_0f0gvdtjgjydvbWjQWwyTE4XipoD6KCXW5Ec0', '2024-06-23 04:00:15.287280', '2024-06-24 04:00:15.000000', 1, '1207901236da4457bbbbff4c59e7f645');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (83, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTgwMCwiaWF0IjoxNzE5MTE1NDAwLCJqdGkiOiJiN2Q4ZjA0MWI0MmE0NGYyODk3ZmEyZjYxYmI3YTYxZiIsInVzZXJfaWQiOjF9.qLjZ30G7QVIquk-OAeIoyms8tqnKOfCQcNCZR8cogWI', '2024-06-23 04:03:20.847155', '2024-06-24 04:03:20.000000', 1, 'b7d8f041b42a44f2897fa2f61bb7a61f');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (84, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTgwNSwiaWF0IjoxNzE5MTE1NDA1LCJqdGkiOiI2NjQxYjE3ZjYyMTU0ZWQ4YTg5NWVhMWRiODFkMjlkOCIsInVzZXJfaWQiOjF9.ZLPVgW_u4iIIJoRm2g0QqJ5TOBEw65Hn3ttHNkG_MsU', '2024-06-23 04:03:25.458960', '2024-06-24 04:03:25.000000', 1, '6641b17f62154ed8a895ea1db81d29d8');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (85, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTg1MywiaWF0IjoxNzE5MTE1NDUzLCJqdGkiOiJmODlhYmMxMGQ0ZmY0YjJhOWI2NGY0OTRjZDNkYjljMyIsInVzZXJfaWQiOjF9.ZQRSUNZeuW_mpqO_ROlRA1B45N3ybjB7v7XLsfHo9N0', '2024-06-23 04:04:13.805334', '2024-06-24 04:04:13.000000', 1, 'f89abc10d4ff4b2a9b64f494cd3db9c3');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (86, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTg2MiwiaWF0IjoxNzE5MTE1NDYyLCJqdGkiOiIyYjk5ODNmNWYwODQ0ZTMyOGM1ZGJkZGY5ZWRiOGVhMyIsInVzZXJfaWQiOjF9.3BYDb2y42vNhz2eIXUr9wS1Mh39Jt3ZNdZhoEPPO0kE', '2024-06-23 04:04:22.424431', '2024-06-24 04:04:22.000000', 1, '2b9983f5f0844e328c5dbddf9edb8ea3');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (87, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMTg2OCwiaWF0IjoxNzE5MTE1NDY4LCJqdGkiOiJkOTU4ZTk1NWZhOGQ0YTkwYmY3Yjg4ODgxNzA5NzczMSIsInVzZXJfaWQiOjF9.DEcSOX7s9GH-Cpfs7oMBLSjMvmf1DtOKy3jOecMy9FQ', '2024-06-23 04:04:28.157913', '2024-06-24 04:04:28.000000', 1, 'd958e955fa8d4a90bf7b888817097731');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (88, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMjQ1NywiaWF0IjoxNzE5MTE2MDU3LCJqdGkiOiJmMGExZTk2MTk0Y2Y0YzlhOThiYWY4NmE3ZTgxM2MzNCIsInVzZXJfaWQiOjF9.tqMvQmJnUIBGw5BupIEObuh7jvvivoBgQ_5HndutW-k', '2024-06-23 04:14:17.303127', '2024-06-24 04:14:17.000000', 1, 'f0a1e96194cf4c9a98baf86a7e813c34');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (89, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMjU2MSwiaWF0IjoxNzE5MTE2MTYxLCJqdGkiOiI3Y2I0MTc2YzhhZWI0YWJhYTU1NGNkZGJjZjhjYjBlMSIsInVzZXJfaWQiOjF9.KWftNOiwUUkj8EMXDngd9LlvBwXPX4GcllbF3B2rNHQ', '2024-06-23 04:16:01.443051', '2024-06-24 04:16:01.000000', 1, '7cb4176c8aeb4abaa554cddbcf8cb0e1');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (90, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMjU2NCwiaWF0IjoxNzE5MTE2MTY0LCJqdGkiOiJjMmZjNTMyZWRiNTk0ZWQ0YmFiZWZjYjExY2QxM2NiMyIsInVzZXJfaWQiOjF9.d5y7C5pug5ZvesIiaAEdA6NkcQExeBFFXzsRU9AmDwc', '2024-06-23 04:16:04.235879', '2024-06-24 04:16:04.000000', 1, 'c2fc532edb594ed4babefcb11cd13cb3');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (91, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMjU4MSwiaWF0IjoxNzE5MTE2MTgxLCJqdGkiOiI4ZGQ0M2E0YTBhMmY0MzhhODE5ZDM4YWUxZjhjNWVhOSIsInVzZXJfaWQiOjF9.BHZBoNM7Ec44UH53Kv5osEow4dWQJs1jctBzRsBOgBU', '2024-06-23 04:16:21.565346', '2024-06-24 04:16:21.000000', 1, '8dd43a4a0a2f438a819d38ae1f8c5ea9');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (92, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMjU5MiwiaWF0IjoxNzE5MTE2MTkyLCJqdGkiOiI3OWI2NTE4MzA5OGI0Y2FmYjdiY2Q4ODA0ZWQzN2U3MiIsInVzZXJfaWQiOjF9.8ADjgaE-DNtz_itUWXvj0bNsBF_x4V5m6jZ9-MerdfI', '2024-06-23 04:16:32.672833', '2024-06-24 04:16:32.000000', 1, '79b65183098b4cafb7bcd8804ed37e72');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (93, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMjc1MiwiaWF0IjoxNzE5MTE2MzUyLCJqdGkiOiJlMzVkODkwMGUxZGU0OWUxYjNjOTViNzc3YzhlNzY4NiIsInVzZXJfaWQiOjF9.A1rafZE_j6CKVEwwO2paSqiRhS6bsxwmhOTNzvS75JU', '2024-06-23 04:19:12.927019', '2024-06-24 04:19:12.000000', 1, 'e35d8900e1de49e1b3c95b777c8e7686');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (94, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMjc1NywiaWF0IjoxNzE5MTE2MzU3LCJqdGkiOiI2MDc5OGVmOTZjMTY0Yjk3OTU2ZTFjNGE0NTMzODY0MiIsInVzZXJfaWQiOjF9.qVhHdcN3gVCxUkaJnopZ8ocplMy9Q5rW06BvKbW_3p8', '2024-06-23 04:19:17.813241', '2024-06-24 04:19:17.000000', 1, '60798ef96c164b97956e1c4a45338642');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (95, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMjc2OSwiaWF0IjoxNzE5MTE2MzY5LCJqdGkiOiJkZGY3ZjA3NGNjOGY0ZDcwOThjYzA0ZDZjNDY0MzI5MSIsInVzZXJfaWQiOjF9.X-If9glKJAAKTZ9QsK9EyuT2MM3be9_O9T1AFVZ4oUU', '2024-06-23 04:19:29.362225', '2024-06-24 04:19:29.000000', 1, 'ddf7f074cc8f4d7098cc04d6c4643291');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (96, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMjgxNiwiaWF0IjoxNzE5MTE2NDE2LCJqdGkiOiI3YjYxYzcwNWIxNTQ0Y2EzYmU5ZWY4MDM2OTJmYjQ2NSIsInVzZXJfaWQiOjF9.gXy_JNbj2sdTXQem1zrMlzbJlzjDjLQz85b01LgvU2U', '2024-06-23 04:20:16.225108', '2024-06-24 04:20:16.000000', 1, '7b61c705b1544ca3be9ef803692fb465');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (97, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwMjgzMSwiaWF0IjoxNzE5MTE2NDMxLCJqdGkiOiI2MTRhOTY0OTlhNmI0ZTQwYWRkNWNkOWZhMjE5MmQyOSIsInVzZXJfaWQiOjF9.Gmt3_vsuqaNfffMrrZyRPO7Wa42F2JAD-af5AEe8mV0', '2024-06-23 04:20:31.959054', '2024-06-24 04:20:31.000000', 1, '614a96499a6b4e40add5cd9fa2192d29');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (98, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwNjg4MiwiaWF0IjoxNzE5MTIwNDgyLCJqdGkiOiJkNDg1MjdjNTU0YzA0MDA3OTQ3Njk4NzhlZGEyYjliMSIsInVzZXJfaWQiOjF9.Fhr41vvLOgL8uugZ8-Rbhcy9_gnLuszQauzJnQY0eDY', '2024-06-23 05:28:02.704463', '2024-06-24 05:28:02.000000', 1, 'd48527c554c0400794769878eda2b9b1');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (99, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwNjkyNCwiaWF0IjoxNzE5MTIwNTI0LCJqdGkiOiI2YTViZWQ5MmFlNjU0YTY5OGVmZGZmMWYyODRkMzJhOCIsInVzZXJfaWQiOjF9.8_OlIuL69mxn9fBdTtoZ9tl3nHqj2IebFrX6DBq7Yu0', '2024-06-23 05:28:44.025213', '2024-06-24 05:28:44.000000', 1, '6a5bed92ae654a698efdff1f284d32a8');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (100, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwNzMzMywiaWF0IjoxNzE5MTIwOTMzLCJqdGkiOiI2NjFmNGQyN2M1NDU0NDc4OGQ2N2FiZTgwYTRjZWQxNiIsInVzZXJfaWQiOjF9.vIFHk3FM8HYOv12lQ94oh7Ho_8F-Vr8clE7F_ElZm2I', '2024-06-23 05:35:33.379134', '2024-06-24 05:35:33.000000', 1, '661f4d27c54544788d67abe80a4ced16');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (101, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwNzMzOSwiaWF0IjoxNzE5MTIwOTM5LCJqdGkiOiI4ZWZmYzk0NDFiNDE0OWViYTM3ZGFkMGM5YWE0MDc5ZCIsInVzZXJfaWQiOjF9.MvEPkYiv8jYh4a9tUJ4Po9ltIwYUKBH1_42NdgkLCIg', '2024-06-23 05:35:39.991248', '2024-06-24 05:35:39.000000', 1, '8effc9441b4149eba37dad0c9aa4079d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (102, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwOTM1NSwiaWF0IjoxNzE5MTIyOTU1LCJqdGkiOiI1NjJmMTE1NTA3OGQ0MTE0OTU3M2Y3MWE3ZjY4N2FhZSIsInVzZXJfaWQiOjF9.ks-aNNCEMRzvsruT7F27fKcY1JmkIAqeoLLqjc-rxK0', '2024-06-23 06:09:15.605645', '2024-06-24 06:09:15.000000', 1, '562f1155078d41149573f71a7f687aae');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (103, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwOTU4NiwiaWF0IjoxNzE5MTIzMTg2LCJqdGkiOiI0OTNiMmQ5MzEwNDA0NzQ2OTFiMmRmZGQ0NGRjYmYxNiIsInVzZXJfaWQiOjF9.NSA0VKnMJ5fiE7HecKB4wa_9ysytSwjaNssJgNVILjY', '2024-06-23 06:13:06.192154', '2024-06-24 06:13:06.000000', 1, '493b2d931040474691b2dfdd44dcbf16');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (104, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwOTU5MywiaWF0IjoxNzE5MTIzMTkzLCJqdGkiOiJmNTU5MDE2OTE4OTU0M2Q4YjE1YzU3MjUyNDM0ZTc0NiIsInVzZXJfaWQiOjF9.fKPF3pg41DMdazM8ZikgqRkzLoohEX8bcgq-OAJzE7k', '2024-06-23 06:13:13.250376', '2024-06-24 06:13:13.000000', 1, 'f5590169189543d8b15c57252434e746');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (105, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwOTU5OCwiaWF0IjoxNzE5MTIzMTk4LCJqdGkiOiJiOGQ5MGFiN2NkYTA0MzYyYWMwYzA4NDhhNmIzMjEzMCIsInVzZXJfaWQiOjF9.6r9MPLTejVuDLITRTPPI5R5Vq1Sl8Ug79DO0HV_H-Ho', '2024-06-23 06:13:18.500007', '2024-06-24 06:13:18.000000', 1, 'b8d90ab7cda04362ac0c0848a6b32130');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (106, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwOTcxMCwiaWF0IjoxNzE5MTIzMzEwLCJqdGkiOiIyNTkwMGM3NWNhMzI0MjYyOGExZTJmNDc1OGQ1ODZhMSIsInVzZXJfaWQiOjF9.pX8Xv9LhtVpVNvrg2qxElSQVyI13Qa4YQNhB8tGO8Kc', '2024-06-23 06:15:10.172715', '2024-06-24 06:15:10.000000', 1, '25900c75ca3242628a1e2f4758d586a1');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (107, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwOTcxNSwiaWF0IjoxNzE5MTIzMzE1LCJqdGkiOiI1NzkxMzljZWM5ZDg0OWFlOWE1NmE2ODViZGFmM2UwNSIsInVzZXJfaWQiOjF9.A1eVEfgwQhw11PJIb-qH6QebTpI74c9eFEB9eDoeCd0', '2024-06-23 06:15:15.498931', '2024-06-24 06:15:15.000000', 1, '579139cec9d849ae9a56a685bdaf3e05');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (108, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIwOTgwMywiaWF0IjoxNzE5MTIzNDAzLCJqdGkiOiJhYTUwYjFkZjU1MzA0MzA5YmNmNzFlMGE5YWJmYjdhOSIsInVzZXJfaWQiOjF9.OaEi79xLsS06C4OsV504NZK2X5rjloHbUIkbqR9_O9c', '2024-06-23 06:16:43.488327', '2024-06-24 06:16:43.000000', 1, 'aa50b1df55304309bcf71e0a9abfb7a9');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (109, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMDA0MCwiaWF0IjoxNzE5MTIzNjQwLCJqdGkiOiJlYjk1NjAxNTczMWE0ZGNmYjZkNzg5MDM3MTIyNDE5YSIsInVzZXJfaWQiOjF9.0Mh1eMteoumKO8WAHg2hhr4ZjOcrdUxFJmSXWG9zres', '2024-06-23 06:20:40.090662', '2024-06-24 06:20:40.000000', 1, 'eb956015731a4dcfb6d789037122419a');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (110, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMDA0OSwiaWF0IjoxNzE5MTIzNjQ5LCJqdGkiOiI2NjQ5YzRiMzI2NzI0YzY2YTY3OTFhMjhjNWQwMzZiNCIsInVzZXJfaWQiOjF9.ZSMI70veMiObRuWjNkc18LmVA2ll-CHp4yp8jSnIqR8', '2024-06-23 06:20:49.275806', '2024-06-24 06:20:49.000000', 1, '6649c4b326724c66a6791a28c5d036b4');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (111, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMDA2NywiaWF0IjoxNzE5MTIzNjY3LCJqdGkiOiI4YjE3ZjBkM2JhZjM0NTg2OWZkNzY2YzMyM2FjNWY4NCIsInVzZXJfaWQiOjF9.wie5A2QF7rSNshZ1ztR-hHVBM37ESAJQ7hRi4TP3M4k', '2024-06-23 06:21:07.419615', '2024-06-24 06:21:07.000000', 1, '8b17f0d3baf345869fd766c323ac5f84');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (112, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMDE2NiwiaWF0IjoxNzE5MTIzNzY2LCJqdGkiOiI5NjhkNTVmNDEzNGI0NDMyOWQyM2RhM2IzZjhjYWZjMiIsInVzZXJfaWQiOjF9.ywhdEyrOsZLnOjZpSlMdXFLWZC0zul6eUkKcxqoDAvU', '2024-06-23 06:22:46.934810', '2024-06-24 06:22:46.000000', 1, '968d55f4134b44329d23da3b3f8cafc2');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (113, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMDMzMSwiaWF0IjoxNzE5MTIzOTMxLCJqdGkiOiJkMjJkYTM1ZTI2Zjk0NGJjYjBhOTFlNGMxYzQzMmE0MiIsInVzZXJfaWQiOjF9.EUqE3A2GNNeRhhsCM9B-evXYkOJrwaZm_8JgPf5VIGI', '2024-06-23 06:25:31.326139', '2024-06-24 06:25:31.000000', 1, 'd22da35e26f944bcb0a91e4c1c432a42');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (114, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMDMzNywiaWF0IjoxNzE5MTIzOTM3LCJqdGkiOiI0ZTQ4YjBiOGFiOTg0MjVmOGU5OTBiYzdkNzU3ZDZmNCIsInVzZXJfaWQiOjF9.eL_u2aQkPqcsqkQSs7GHtUIGLLqF04_awKxsxVK6Q_g', '2024-06-23 06:25:37.472715', '2024-06-24 06:25:37.000000', 1, '4e48b0b8ab98425f8e990bc7d757d6f4');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (115, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMDY4OSwiaWF0IjoxNzE5MTI0Mjg5LCJqdGkiOiJjNGY2ZmEzOTdiOGI0YzdiOTJiOWVmZDY2ZDBkYjU2ZSIsInVzZXJfaWQiOjF9.KhQpPPPCn0DAGZzTEv4-V0Vok8EEmHmoNzBO5o_-pKc', '2024-06-23 06:31:29.344972', '2024-06-24 06:31:29.000000', 1, 'c4f6fa397b8b4c7b92b9efd66d0db56e');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (116, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMDc4MCwiaWF0IjoxNzE5MTI0MzgwLCJqdGkiOiIxZDcwZTAyZTI0ZWM0MTU5YjRhNmFjMDQxZDhhYjAzNSIsInVzZXJfaWQiOjF9.K8j8sW4FBzn5EZINJzEsKbfw2xborWILlzHTpEhJato', '2024-06-23 06:33:00.892274', '2024-06-24 06:33:00.000000', 1, '1d70e02e24ec4159b4a6ac041d8ab035');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (117, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMDk1OSwiaWF0IjoxNzE5MTI0NTU5LCJqdGkiOiI4NTRjNDk5YTk1OTY0OTg0OGMwZDAyYTJhNzFjZjhhZiIsInVzZXJfaWQiOjF9.yotvNYvLDpVhmL9xAlmcnoKjnRv8Td4CNz527aMuOY0', '2024-06-23 06:35:59.043249', '2024-06-24 06:35:59.000000', 1, '854c499a959649848c0d02a2a71cf8af');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (118, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMDk3MywiaWF0IjoxNzE5MTI0NTczLCJqdGkiOiIyMmJmNmExMzQ4MzI0NjlmOGViYzljZTU1OTZlMTY0ZCIsInVzZXJfaWQiOjF9.4UkHOpDaaekvIrgLCEhiOByN0MsN5jYAEAmff4P-lfc', '2024-06-23 06:36:13.102683', '2024-06-24 06:36:13.000000', 1, '22bf6a134832469f8ebc9ce5596e164d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (119, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMDk4NiwiaWF0IjoxNzE5MTI0NTg2LCJqdGkiOiJlMzZhYjQyZmJlZjU0ODAyODVhYTRhOWYxMDNjNGQ3MCIsInVzZXJfaWQiOjF9.7JL96NJSZ3psa3RWAFnio1S755mnNcCy4p6pc4ys9-w', '2024-06-23 06:36:26.129272', '2024-06-24 06:36:26.000000', 1, 'e36ab42fbef5480285aa4a9f103c4d70');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (120, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMDk5MywiaWF0IjoxNzE5MTI0NTkzLCJqdGkiOiI1ZTllNDIxZTgyMDk0ZDBjOWJiNmE3ZjZjM2E5ZTAwYiIsInVzZXJfaWQiOjF9.b_LVfTjPLRM7ONGp3QjakOJCn4YcRO5ok7GbDmhm8b8', '2024-06-23 06:36:33.888000', '2024-06-24 06:36:33.000000', 1, '5e9e421e82094d0c9bb6a7f6c3a9e00b');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (121, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMTI4NywiaWF0IjoxNzE5MTI0ODg3LCJqdGkiOiI4ZTZhMDc1OWM4NTk0NmQ5YWE1NGQ1ZWY1ZTY5ZjQ4NSIsInVzZXJfaWQiOjF9.lvafBYs4xkbU1BX3Kh-URnUKgBNWhrYwLAmtTjWkp70', '2024-06-23 06:41:27.758203', '2024-06-24 06:41:27.000000', 1, '8e6a0759c85946d9aa54d5ef5e69f485');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (122, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMTc0OCwiaWF0IjoxNzE5MTI1MzQ4LCJqdGkiOiI3MzYzOWRhNTk4ODc0YTJhODViZjhiZTEyMmM4NzRkOSIsInVzZXJfaWQiOjF9.0A9rRQDsWcplthYV-2StiQC_04l73VxYXBqhInram1s', '2024-06-23 06:49:08.285261', '2024-06-24 06:49:08.000000', 1, '73639da598874a2a85bf8be122c874d9');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (123, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMTkwNiwiaWF0IjoxNzE5MTI1NTA2LCJqdGkiOiI1YTkzNjgyNWU2NDQ0ZTEwYjExODQzMDNkYjdhOGI1NCIsInVzZXJfaWQiOjF9.33FYkv7XBz1TUXtnFEYy_AJ-51kb6qs-15sHaS7h-OI', '2024-06-23 06:51:46.618269', '2024-06-24 06:51:46.000000', 1, '5a936825e6444e10b1184303db7a8b54');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (124, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMjE2MywiaWF0IjoxNzE5MTI1NzYzLCJqdGkiOiI4MmY2ODA3YzA4ZmI0ZTM1YTZmNDk2OWEzZmU2NDU2OCIsInVzZXJfaWQiOjF9.ne7iUtTO72jUgptKKfkZMqsjm4yTxF5wcwyXqCZLHl8', '2024-06-23 06:56:03.371899', '2024-06-24 06:56:03.000000', 1, '82f6807c08fb4e35a6f4969a3fe64568');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (125, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMjIwMiwiaWF0IjoxNzE5MTI1ODAyLCJqdGkiOiJiNTJhN2U0MDAwNDE0NThkYWVmMmYxYmZhMzQxOWRlYyIsInVzZXJfaWQiOjF9.I8g0I5pql1Lpz4f3kcDMP5wyEKsylx8mPe1WgKXOoxQ', '2024-06-23 06:56:42.621724', '2024-06-24 06:56:42.000000', 1, 'b52a7e400041458daef2f1bfa3419dec');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (126, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMjI1OSwiaWF0IjoxNzE5MTI1ODU5LCJqdGkiOiI1MWVmNDU5OTlhNzQ0ZWNmYTMyYzU3NjNjODI5OGNkNyIsInVzZXJfaWQiOjF9.eGnyaXy7vsYmi3XtxJsjW5qvDcbv2n5gdpCAEte7Lyc', '2024-06-23 06:57:39.281392', '2024-06-24 06:57:39.000000', 1, '51ef45999a744ecfa32c5763c8298cd7');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (127, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMjMzMCwiaWF0IjoxNzE5MTI1OTMwLCJqdGkiOiJlYzU1YWQ0ZjRlYWQ0ZjIyYTM5MDJkNTczZTdiMzIxNiIsInVzZXJfaWQiOjF9.cQc4SrDFMzCKmmLllOicAp9wrjTbCOO101SrpeBClD0', '2024-06-23 06:58:50.774751', '2024-06-24 06:58:50.000000', 1, 'ec55ad4f4ead4f22a3902d573e7b3216');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (128, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMjQ1MSwiaWF0IjoxNzE5MTI2MDUxLCJqdGkiOiI1Y2FmNTFiMDhlMjI0NTQzODlhNTExOWRlYmIwYTRjMyIsInVzZXJfaWQiOjF9.3tKHxiegnWVUYdal-bDFydR0CLbfbxVOI_a8WaMWOW8', '2024-06-23 07:00:51.073999', '2024-06-24 07:00:51.000000', 1, '5caf51b08e22454389a5119debb0a4c3');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (129, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMjY2NywiaWF0IjoxNzE5MTI2MjY3LCJqdGkiOiI1NWRjNTA4MDE1MDI0YWNhODQyZjQ2MTdiODJiOTZiNCIsInVzZXJfaWQiOjF9.9w4AvM1n-S5bpqziPWcR2IqUoYVFMHQTvJbMBWyGftk', '2024-06-23 07:04:27.528258', '2024-06-24 07:04:27.000000', 1, '55dc508015024aca842f4617b82b96b4');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (130, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMjg4NCwiaWF0IjoxNzE5MTI2NDg0LCJqdGkiOiIzNzI4NTkwNTgwNTk0MWMzYjkyY2RhNjc1MTdlYmU0YyIsInVzZXJfaWQiOjF9.xgVNG4DskfMI4KGHZgIT2beyWK0zagKgSkuquFd1wjw', '2024-06-23 07:08:04.093749', '2024-06-24 07:08:04.000000', 1, '37285905805941c3b92cda67517ebe4c');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (131, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMzA0OCwiaWF0IjoxNzE5MTI2NjQ4LCJqdGkiOiJjMjViM2Q3ZDdhNWM0MTY3YmE4MzU5OTk1MzI1NDg3OSIsInVzZXJfaWQiOjF9.BQuFFZV20PGUUezGKMz2Q79dqvXZzkG-Aav49U4yNkU', '2024-06-23 07:10:48.460454', '2024-06-24 07:10:48.000000', 1, 'c25b3d7d7a5c4167ba83599953254879');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (132, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMzQzNCwiaWF0IjoxNzE5MTI3MDM0LCJqdGkiOiI4NGM1NzA1NThhMDg0NzE2OGZlNWUwNjEyMjkzYjcyNSIsInVzZXJfaWQiOjF9.wBftmcH2EUPHwNH7HjmO2YcyX1ZD5NN49Ec9ibVSnf8', '2024-06-23 07:17:14.000398', '2024-06-24 07:17:14.000000', 1, '84c570558a0847168fe5e0612293b725');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (133, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMzU2OCwiaWF0IjoxNzE5MTI3MTY4LCJqdGkiOiI5MjU1MTgyZDU0NDU0NGVjOTJiMzUyYTg1MThhNWYwMCIsInVzZXJfaWQiOjF9.ZgwLXN1sIUCruCOXdNdWlxXiO5eqSIf4jZfZzpyi-YU', '2024-06-23 07:19:28.828943', '2024-06-24 07:19:28.000000', 1, '9255182d544544ec92b352a8518a5f00');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (134, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMzYwMywiaWF0IjoxNzE5MTI3MjAzLCJqdGkiOiI0ZTBjYmY3YWIyYmI0MWUzOTFkZWYwN2ZmNTgxMjcwZSIsInVzZXJfaWQiOjF9.F107aItPyRwEffC43NCzkbl7ogmFNzulMeYLaYRQgpM', '2024-06-23 07:20:03.767310', '2024-06-24 07:20:03.000000', 1, '4e0cbf7ab2bb41e391def07ff581270e');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (135, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMzY0OSwiaWF0IjoxNzE5MTI3MjQ5LCJqdGkiOiI4ZDA4MGNhMDBiOTE0MTRjOThmMzJkOGZhOTZmYWU0YSIsInVzZXJfaWQiOjF9.hhMOLDMugOY7RJPeCKE9kgA0N3E4BbYWnrHcWR5Htb4', '2024-06-23 07:20:49.045104', '2024-06-24 07:20:49.000000', 1, '8d080ca00b91414c98f32d8fa96fae4a');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (136, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxMzc0MiwiaWF0IjoxNzE5MTI3MzQyLCJqdGkiOiI2YTc2ZDE1Y2VmYjU0ZTUyOTVkYWRiZjgxMGI0NmFkZCIsInVzZXJfaWQiOjF9.jJPnD3k0NwPlU-VTaajaCDgAo6rcsNi8cyHwpWH52Pw', '2024-06-23 07:22:22.747176', '2024-06-24 07:22:22.000000', 1, '6a76d15cefb54e5295dadbf810b46add');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (137, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxNDAzMSwiaWF0IjoxNzE5MTI3NjMxLCJqdGkiOiJkZTg5NWU4MzM1NWU0MzA3OTRiNTk2MTdlYjJkODFjZCIsInVzZXJfaWQiOjF9.w4asfeSeCIeZER03h-_s7BHUMwICDRr5GrynQNxWHeg', '2024-06-23 07:27:11.216378', '2024-06-24 07:27:11.000000', 1, 'de895e83355e430794b59617eb2d81cd');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (138, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxNDE1NCwiaWF0IjoxNzE5MTI3NzU0LCJqdGkiOiIzMmFiZDQ0OGMxMDU0MGNhOTIxNGRkZDgzM2ZlNmZmNSIsInVzZXJfaWQiOjF9.WgoDO6oHCWmRDrAJHl1TfcFU0prRrwTjG1-FKaMEAbE', '2024-06-23 07:29:14.076926', '2024-06-24 07:29:14.000000', 1, '32abd448c10540ca9214ddd833fe6ff5');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (139, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxNDIxOCwiaWF0IjoxNzE5MTI3ODE4LCJqdGkiOiIzOTg2YzM4YmVhODI0ODYzYmVlNGJlMjQxOGE0NGIxZCIsInVzZXJfaWQiOjF9.TmCBYWLPWnLFW_2ESIhomRrI4GpZtDSbD47Ve2FM0AI', '2024-06-23 07:30:18.488900', '2024-06-24 07:30:18.000000', 1, '3986c38bea824863bee4be2418a44b1d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (140, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxNDIyNiwiaWF0IjoxNzE5MTI3ODI2LCJqdGkiOiJiZTI5ZWU3MGJiZWQ0MTkyYWE2MzcxODc0ZDcyZGFiNyIsInVzZXJfaWQiOjF9.-k5Vdt9jVfck5IOqdxW-tsqbhxoeGBO7vOP5RUso57E', '2024-06-23 07:30:26.511845', '2024-06-24 07:30:26.000000', 1, 'be29ee70bbed4192aa6371874d72dab7');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (141, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxNDM5MSwiaWF0IjoxNzE5MTI3OTkxLCJqdGkiOiIwNzA2M2Q1ZmM2ODg0OTEyYTdlOWZlYmNkMzI4Y2QyZCIsInVzZXJfaWQiOjF9.fdVcXle4Q_QYYi6fKaT9NoRUi_i7OLRbAyR0pe-wdoA', '2024-06-23 07:33:11.630591', '2024-06-24 07:33:11.000000', 1, '07063d5fc6884912a7e9febcd328cd2d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (142, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxNDc1NiwiaWF0IjoxNzE5MTI4MzU2LCJqdGkiOiI4NWE4ZjliZTY4ODc0YTQ0OGRiODlkY2I0ZTZmNzQ0YSIsInVzZXJfaWQiOjF9.3KUP5N-piQrgXPeiHTouOlHOrn_B9GcOIELFGkbL2W0', '2024-06-23 07:39:16.848916', '2024-06-24 07:39:16.000000', 1, '85a8f9be68874a448db89dcb4e6f744a');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (143, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxNDk5NywiaWF0IjoxNzE5MTI4NTk3LCJqdGkiOiJlYzI3N2FiNDI2ZjI0MTY2ODA0MDhkOWQ2NWY5Y2NlMyIsInVzZXJfaWQiOjF9.gMZpXkUkotIKDiiXK5kAmv6zZUj5rKhNH4ZqEPOOXbw', '2024-06-23 07:43:17.568921', '2024-06-24 07:43:17.000000', 1, 'ec277ab426f2416680408d9d65f9cce3');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (144, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxNTAyNSwiaWF0IjoxNzE5MTI4NjI1LCJqdGkiOiJhMjUzMTcyMmFiNjU0NjUzODQ3NTUxMzExOTA1NGU0NCIsInVzZXJfaWQiOjF9.lk2jcqWAaJygfVciwD5qPvuWXrd-IzYakRS85-BFwj8', '2024-06-23 07:43:45.910460', '2024-06-24 07:43:45.000000', 1, 'a2531722ab6546538475513119054e44');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (145, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxNTY4NSwiaWF0IjoxNzE5MTI5Mjg1LCJqdGkiOiIyMTIxYjM5NWIxM2M0Zjk0YWY0NGY1MjNhYjhlOTgyZiIsInVzZXJfaWQiOjF9.1G_h-6miriKD6ZY4SYXRx-xo4QcIoEH989hnMwa-b-s', '2024-06-23 07:54:45.664445', '2024-06-24 07:54:45.000000', 1, '2121b395b13c4f94af44f523ab8e982f');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (146, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxNjM1MSwiaWF0IjoxNzE5MTI5OTUxLCJqdGkiOiI4MjA3ZmNmZjc5ZTU0NWM5OTgxMWJjNjFjMDMyOTQ0ZCIsInVzZXJfaWQiOjF9.0ec-A2WA1rahC4iBJzZW5SQaWwkx-EqdqNlWYum05bo', '2024-06-23 08:05:51.132569', '2024-06-24 08:05:51.000000', 1, '8207fcff79e545c99811bc61c032944d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (147, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIxNjU1OCwiaWF0IjoxNzE5MTMwMTU4LCJqdGkiOiI2NGFlOGU4ZjEwMDY0YzI4OWMxMzQ5Yjk3ZWU2MGIwZiIsInVzZXJfaWQiOjF9.v_s1iEyJW0l9mMk9C_qY8vgJ4tEhqMrJiQw9om3VpLM', '2024-06-23 08:09:18.893216', '2024-06-24 08:09:18.000000', 1, '64ae8e8f10064c289c1349b97ee60b0f');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (148, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNDM1NiwiaWF0IjoxNzE5MTM3OTU2LCJqdGkiOiIzYmU0NmJjZDFiOTg0ZWIxYWUxNjUyMjFlYjc0ZjdkYiIsInVzZXJfaWQiOjF9.GLUB2ZchzEbowIqbchQHyOkjwxoIb3slkzYZGlLUCps', '2024-06-23 10:19:16.200782', '2024-06-24 10:19:16.000000', 1, '3be46bcd1b984eb1ae165221eb74f7db');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (149, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNDM2MCwiaWF0IjoxNzE5MTM3OTYwLCJqdGkiOiI1ZmEwNjRkNGEzNDY0ZWEzYjA4ZGExNGJlNWE4YzgxMiIsInVzZXJfaWQiOjF9.3aPQpw8Ayj8wmO0vz0Ut_jP9ZVsHaQ0YeIR6C-rCLSo', '2024-06-23 10:19:20.331232', '2024-06-24 10:19:20.000000', 1, '5fa064d4a3464ea3b08da14be5a8c812');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (150, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNTA1NSwiaWF0IjoxNzE5MTM4NjU1LCJqdGkiOiJjZDIxZTFiZGI0ZTE0M2NjODhlZWZiYjRjZTBjNmU4MiIsInVzZXJfaWQiOjF9.tXP3blfU5aq2omvvVW65Lq9jM02pECE2obFgoVG1SgY', '2024-06-23 10:30:55.806260', '2024-06-24 10:30:55.000000', 1, 'cd21e1bdb4e143cc88eefbb4ce0c6e82');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (151, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNTUyNCwiaWF0IjoxNzE5MTM5MTI0LCJqdGkiOiJkY2Q0MDhjYTIyN2M0MmM2OWYxYzE4NjAzMWJlZDIyZCIsInVzZXJfaWQiOjF9.6KjqW_V6AVOXvAQkuiqy5zGgqdRfg9EPiqjOs-A0dw0', '2024-06-23 10:38:44.109859', '2024-06-24 10:38:44.000000', 1, 'dcd408ca227c42c69f1c186031bed22d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (152, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNTU0OCwiaWF0IjoxNzE5MTM5MTQ4LCJqdGkiOiJiODE1YjE3M2NhZDQ0NjU3OTJmZTZjZWE3MjMzYmM0ZCIsInVzZXJfaWQiOjF9.zY1m16u3i3czlkvjA8AVD4N9BBpEuKswPI7iHRkN0Qw', '2024-06-23 10:39:08.786751', '2024-06-24 10:39:08.000000', 1, 'b815b173cad4465792fe6cea7233bc4d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (153, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNTU2OSwiaWF0IjoxNzE5MTM5MTY5LCJqdGkiOiIyYzUzZmM1MzhlZjY0OWRhYWEwYWNiZDdkM2QyYjExMCIsInVzZXJfaWQiOjF9.GQjznPlP0hCoeP9SvXvubymlmeTIPsnbqBTgoBzDtIM', '2024-06-23 10:39:29.040542', '2024-06-24 10:39:29.000000', 1, '2c53fc538ef649daaa0acbd7d3d2b110');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (154, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNTYxNiwiaWF0IjoxNzE5MTM5MjE2LCJqdGkiOiI1OGYwNzczYzEyZTA0MjhhOTI2NGNjMzlhM2RhYzdlMCIsInVzZXJfaWQiOjF9.aaF9wdlIaG5qwxV8oZUVTbMiZ8-fK8JqBmm6CZiwt5c', '2024-06-23 10:40:16.712445', '2024-06-24 10:40:16.000000', 1, '58f0773c12e0428a9264cc39a3dac7e0');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (155, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNTYyNSwiaWF0IjoxNzE5MTM5MjI1LCJqdGkiOiJhMjdiY2MwMjA2ZWQ0NDI4YjI5Njc4NjU1ODE3MjI5MSIsInVzZXJfaWQiOjF9.7Kt8UYFf7CZK5RgN9vt0tc_u-vQATohBlxlQJ2PHxXo', '2024-06-23 10:40:25.476060', '2024-06-24 10:40:25.000000', 1, 'a27bcc0206ed4428b296786558172291');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (156, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNTg3MiwiaWF0IjoxNzE5MTM5NDcyLCJqdGkiOiI2OTA1Yjg3MGY3OGE0NGIwOGFiNGNiYTg2MjQxYjI0ZCIsInVzZXJfaWQiOjF9.ZpBQoMKU7NeN5yumGB-8sYHMC3evhgxLmvivoRnYwSs', '2024-06-23 10:44:32.212689', '2024-06-24 10:44:32.000000', 1, '6905b870f78a44b08ab4cba86241b24d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (157, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNTkzMCwiaWF0IjoxNzE5MTM5NTMwLCJqdGkiOiIxZDU1YzYxNTExZWI0NTRjODFlOWE5ODE1ZTI2NGEzMCIsInVzZXJfaWQiOjF9.Hsbx-axhxDYRr8BWqgyqc8fcrkSnJg3SNETpD6oWQZ8', '2024-06-23 10:45:30.920188', '2024-06-24 10:45:30.000000', 1, '1d55c61511eb454c81e9a9815e264a30');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (158, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNTk1NSwiaWF0IjoxNzE5MTM5NTU1LCJqdGkiOiI5OWU4NzU1OTc4OGI0MjgzOTY5NDAxN2E0NDQ0NmQ2OSIsInVzZXJfaWQiOjF9.in_H5dTGPutuDRwpHOENFLFS7TbjhjCReNKUuSMABgU', '2024-06-23 10:45:55.312808', '2024-06-24 10:45:55.000000', 1, '99e87559788b42839694017a44446d69');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (159, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNjI2MSwiaWF0IjoxNzE5MTM5ODYxLCJqdGkiOiIzNzYyMmUyZDUwYzA0MGRkOWYyNmFhYTNlYmE0OWZhZCIsInVzZXJfaWQiOjF9.UTD5Rh2WpWyZidQga7USacMoVVI0l9bqUkHBaD1tQiY', '2024-06-23 10:51:01.580706', '2024-06-24 10:51:01.000000', 1, '37622e2d50c040dd9f26aaa3eba49fad');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (160, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNjY3MCwiaWF0IjoxNzE5MTQwMjcwLCJqdGkiOiI3ZTNmNGQyZDljNzQ0ZThhOWM2NDFiYjI1N2Y2MTI4OCIsInVzZXJfaWQiOjF9.B3R5EP382JmN-sVZ2_CnFg8y1ClEVrXfCz6bG8gycnU', '2024-06-23 10:57:50.130470', '2024-06-24 10:57:50.000000', 1, '7e3f4d2d9c744e8a9c641bb257f61288');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (161, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNjcxMSwiaWF0IjoxNzE5MTQwMzExLCJqdGkiOiJhZjQ0MmYzNjllODM0MjJlOWRkM2IyY2IxNTI5M2E4YiIsInVzZXJfaWQiOjF9.5Yy0nb9FfSXJSXWz06lF8jsgvntOLp_CsxR6sbseQVE', '2024-06-23 10:58:31.379832', '2024-06-24 10:58:31.000000', 1, 'af442f369e83422e9dd3b2cb15293a8b');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (162, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNzUxNSwiaWF0IjoxNzE5MTQxMTE1LCJqdGkiOiI0OGI2YzY4ZGQ2OGE0NmQxOTExODA4NjcyZmNlZTRkYyIsInVzZXJfaWQiOjF9.vbiX5ys47DHknYFaTSvC5e5LXJmkIlgx0JCH-1ctapE', '2024-06-23 11:11:55.130728', '2024-06-24 11:11:55.000000', 1, '48b6c68dd68a46d1911808672fcee4dc');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (163, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyNzU5OSwiaWF0IjoxNzE5MTQxMTk5LCJqdGkiOiIzMjFhODg1YzI2Mzk0NDEzOTgzZGVlZjhmODkwNzNmYSIsInVzZXJfaWQiOjF9.zGTKKXsdaIOfXq5PaCVKDMD-tx28JVU1FVMw23N0S2A', '2024-06-23 11:13:19.450170', '2024-06-24 11:13:19.000000', 1, '321a885c26394413983deef8f89073fa');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (164, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyODA1OSwiaWF0IjoxNzE5MTQxNjU5LCJqdGkiOiIwZmQ1ZmQxODUxNDA0MzhhYjQ2ZGEzM2IwY2U4N2ExOCIsInVzZXJfaWQiOjF9.v1pREtUgHmlDSuHQ-3dPWtu9cSUAktMyMvNbTd2bAbs', '2024-06-23 11:20:59.939812', '2024-06-24 11:20:59.000000', 1, '0fd5fd185140438ab46da33b0ce87a18');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (165, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyODA4MCwiaWF0IjoxNzE5MTQxNjgwLCJqdGkiOiI3ZTc1NjU5N2JlNmY0ZGFiOWMxY2U5NzM0N2E3MDc4MyIsInVzZXJfaWQiOjF9.jfRtbASz1geERVQWThE9QzvB4RagMwbB1YjnUV-L0No', '2024-06-23 11:21:20.069350', '2024-06-24 11:21:20.000000', 1, '7e756597be6f4dab9c1ce97347a70783');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (166, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyODA4NSwiaWF0IjoxNzE5MTQxNjg1LCJqdGkiOiI4MGVkNGI4NDcyN2E0ZDg1YmUxM2QxMDQ5Y2UwM2Q3NiIsInVzZXJfaWQiOjF9.M7tg_gI-8EeYkyxd-AG-MmtvX2s7vMEd3D-gVQMi1CQ', '2024-06-23 11:21:25.593585', '2024-06-24 11:21:25.000000', 1, '80ed4b84727a4d85be13d1049ce03d76');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (167, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyODEwMCwiaWF0IjoxNzE5MTQxNzAwLCJqdGkiOiIxYmZhMGE3ZTY3YmI0Y2JmYTI0MjBhM2FhOWE2ZmI0OSIsInVzZXJfaWQiOjF9.9YD8o2Q6rMz2q284wBCr_39-2jdPMMU0mQcPEiM2cLg', '2024-06-23 11:21:40.336195', '2024-06-24 11:21:40.000000', 1, '1bfa0a7e67bb4cbfa2420a3aa9a6fb49');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (168, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyODM5OSwiaWF0IjoxNzE5MTQxOTk5LCJqdGkiOiJhNzUyOTY2MWNhMjk0MzAzOTQ0N2U1YjhhODljYTU0YiIsInVzZXJfaWQiOjF9.vvVuZunbeCVilxVLT7ViAVo30tGSdp8j3BuxtC0ofhM', '2024-06-23 11:26:39.513318', '2024-06-24 11:26:39.000000', 1, 'a7529661ca2943039447e5b8a89ca54b');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (169, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyODQwMywiaWF0IjoxNzE5MTQyMDAzLCJqdGkiOiIzZDg5YjAzZjA4ZDg0MWEyYjdkZjgyZGUxYTBhODRiZCIsInVzZXJfaWQiOjF9.2fhAWGQAr4tqyXrn_J2kZEd2jS0A8PzL7FJPWkF0ju0', '2024-06-23 11:26:43.625310', '2024-06-24 11:26:43.000000', 1, '3d89b03f08d841a2b7df82de1a0a84bd');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (170, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyODQwNiwiaWF0IjoxNzE5MTQyMDA2LCJqdGkiOiJkOGMzOGFkNTAwMWY0ZDM1YmNiNTdmOGM5ZjNmNThlZSIsInVzZXJfaWQiOjF9.-AmKZ5ByvSeZhenbIwsIUt32uJ5EPcyTuL5nqZjfIQ4', '2024-06-23 11:26:46.461922', '2024-06-24 11:26:46.000000', 1, 'd8c38ad5001f4d35bcb57f8c9f3f58ee');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (171, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyODQwNiwiaWF0IjoxNzE5MTQyMDA2LCJqdGkiOiI0ZDUyY2JhNDgwMmI0YTlkYjFmZjdhZjAwYmQ2ZTA4NCIsInVzZXJfaWQiOjF9.t8kOrbD8gsU0mxMBqCKVOrSESBl4JzijcS_1HAKJ2Ik', '2024-06-23 11:26:46.826436', '2024-06-24 11:26:46.000000', 1, '4d52cba4802b4a9db1ff7af00bd6e084');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (172, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyODY2NCwiaWF0IjoxNzE5MTQyMjY0LCJqdGkiOiI4N2NiNTQ3MjI4NjY0YjVhOTczNzdhYjZiODFjNTlkNCIsInVzZXJfaWQiOjF9.vSrmv7fzXYnJgVJh4EHYH-JKhWJ5bjbKp4VUxnkzibA', '2024-06-23 11:31:04.494551', '2024-06-24 11:31:04.000000', 1, '87cb547228664b5a97377ab6b81c59d4');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (173, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyODc0NywiaWF0IjoxNzE5MTQyMzQ3LCJqdGkiOiI5YWIwZDMwMzViMTc0MmRjOGRhYWUwYjMwNTVlOTU0MyIsInVzZXJfaWQiOjF9.U1U_GbBGdCfYq-N1TxcS3lQbxvwhKB4_TUhNrOk_sd8', '2024-06-23 11:32:27.979317', '2024-06-24 11:32:27.000000', 1, '9ab0d3035b1742dc8daae0b3055e9543');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (174, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyODgxOSwiaWF0IjoxNzE5MTQyNDE5LCJqdGkiOiIwMjYyY2U5YmViZmI0NTVkYWM4NjcyYTYxMTI5YWY2OSIsInVzZXJfaWQiOjF9.E6ca767AZk5hFC3C42mOHbJoqUysSLqXAWRrfGdN11Q', '2024-06-23 11:33:39.581186', '2024-06-24 11:33:39.000000', 1, '0262ce9bebfb455dac8672a61129af69');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (175, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyODgzOCwiaWF0IjoxNzE5MTQyNDM4LCJqdGkiOiJhMDBkYTIzOWM5OGM0MGNmYmUyNWI2MTBiYjlmMDk1OCIsInVzZXJfaWQiOjF9.KClZLYHOc1hxnj-gxp_ekO6e3ER3Iy8ukUKGlaw9SmY', '2024-06-23 11:33:58.305455', '2024-06-24 11:33:58.000000', 1, 'a00da239c98c40cfbe25b610bb9f0958');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (176, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyOTAxNSwiaWF0IjoxNzE5MTQyNjE1LCJqdGkiOiIxMGEyMmFhNDU3MjU0OGFhOTRiZmVkNDE4YjA3ZjJjMyIsInVzZXJfaWQiOjF9.4LChnHFSop-hdsLHBXqWMhvHs4P4rGYIVMNtFc-mico', '2024-06-23 11:36:55.344799', '2024-06-24 11:36:55.000000', 1, '10a22aa4572548aa94bfed418b07f2c3');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (177, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyOTI3OSwiaWF0IjoxNzE5MTQyODc5LCJqdGkiOiI4ZjQwZGQyNTZhZDA0MzgwOTYzYjI1NTY5OTFhNmUwZiIsInVzZXJfaWQiOjF9.CzaKmj0dcAFhJwurQqjqtbsZJdsF5_akOovhVZtpo4A', '2024-06-23 11:41:19.071374', '2024-06-24 11:41:19.000000', 1, '8f40dd256ad04380963b2556991a6e0f');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (178, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyOTQxNCwiaWF0IjoxNzE5MTQzMDE0LCJqdGkiOiIwMWIzZjZjNTM4Yzk0NDY2YWFlODYzYmQyNTM2YmU4YSIsInVzZXJfaWQiOjF9.hTUmJaiwG4LSXPEqpD5kPKZb8famGVuEs1-JkBzvzpk', '2024-06-23 11:43:34.211116', '2024-06-24 11:43:34.000000', 1, '01b3f6c538c94466aae863bd2536be8a');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (179, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyOTgxMywiaWF0IjoxNzE5MTQzNDEzLCJqdGkiOiJiMzAzMmQ2ZTM4NTE0N2MxOGY0YWQwNjgzZTJjMzI2MyIsInVzZXJfaWQiOjF9.koCm9YPq02iI_8F5OZ8ik24BextxhNqNJtyTboYH_N4', '2024-06-23 11:50:13.795406', '2024-06-24 11:50:13.000000', 1, 'b3032d6e385147c18f4ad0683e2c3263');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (180, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIyOTk1OCwiaWF0IjoxNzE5MTQzNTU4LCJqdGkiOiI1MjE0NmNmODk2NjE0YjAzYjdkMzk3NWJmZTljYzlhYyIsInVzZXJfaWQiOjF9.pUO9W1ullEjNFbVDmUJAHxE5Nr9iqn_-xvE2_-J2YZU', '2024-06-23 11:52:38.060017', '2024-06-24 11:52:38.000000', 1, '52146cf896614b03b7d3975bfe9cc9ac');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (181, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIzMDExMywiaWF0IjoxNzE5MTQzNzEzLCJqdGkiOiJhN2IxZmRhM2EzYzE0ZWNjODRlOGVlNmExZjcxZWExOSIsInVzZXJfaWQiOjF9.a9G6jQ2uXBmcigE4D0RwLbVy1llPXZTj55UqN5rzIG0', '2024-06-23 11:55:13.010735', '2024-06-24 11:55:13.000000', 1, 'a7b1fda3a3c14ecc84e8ee6a1f71ea19');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (182, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIzMDI0MiwiaWF0IjoxNzE5MTQzODQyLCJqdGkiOiIxYjBiMjY3ZDNjZmY0ODA0YjAyMDc3Njk5M2Y2ODY3ZCIsInVzZXJfaWQiOjF9.XQYqLDZ6vrwspUpI36375qHQMjM69F8jqW9vH0IKKHU', '2024-06-23 11:57:22.300973', '2024-06-24 11:57:22.000000', 1, '1b0b267d3cff4804b020776993f6867d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (183, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIzMDMzMCwiaWF0IjoxNzE5MTQzOTMwLCJqdGkiOiI0Zjc3ODI3NzRiNjM0ZWY3YTY4YzU4ZWE0YzRiZDgzZSIsInVzZXJfaWQiOjF9.QHUNjrNzSF7h2fHdnedig3Xr6ropWSjyq3UyhocUSz4', '2024-06-23 11:58:50.063179', '2024-06-24 11:58:50.000000', 1, '4f7782774b634ef7a68c58ea4c4bd83e');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (184, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTIzMDYxOCwiaWF0IjoxNzE5MTQ0MjE4LCJqdGkiOiJhOGFmYWI0YjYzYmU0ZTM4YjdlZWY5Njc3YzM4MDcwYiIsInVzZXJfaWQiOjF9.uYncHCRSGoclZ3rWzFUTsMGsRlySeZEwmxU5rwZ5hJ0', '2024-06-23 12:03:38.281339', '2024-06-24 12:03:38.000000', 1, 'a8afab4b63be4e38b7eef9677c38070b');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (185, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5MDQ2NywiaWF0IjoxNzE5MjA0MDY3LCJqdGkiOiI4ZmYzMzcwMmZlMjU0ODcyYmNkZTBlYTQ3MTlmYzYwNiIsInVzZXJfaWQiOjF9.Bh3gdVO1sMaoYfltSj5b3mgLqSJ5n5AD846RyZYuRIc', '2024-06-24 04:41:07.183922', '2024-06-25 04:41:07.000000', 1, '8ff33702fe254872bcde0ea4719fc606');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (186, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5MTYyMywiaWF0IjoxNzE5MjA1MjIzLCJqdGkiOiI4YTRkYjllMWEyYzY0NDk2YmFiNTUyMTY1MmYyNDM1NiIsInVzZXJfaWQiOjF9.GN8lq5d7BgBTVY-DkA3IJZUaPJg8DcZ461IvmdOKRVU', '2024-06-24 05:00:23.888659', '2024-06-25 05:00:23.000000', 1, '8a4db9e1a2c64496bab5521652f24356');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (187, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5MzEzNiwiaWF0IjoxNzE5MjA2NzM2LCJqdGkiOiJlNWVmYzZiZjg2MWE0MDEwYTEzYmU5OGJkNzNmYTAxZiIsInVzZXJfaWQiOjF9.aumkodlPh7CflCFeZebKcvI-IeJW-5zMF-dJzeED8qI', '2024-06-24 05:25:36.840064', '2024-06-25 05:25:36.000000', 1, 'e5efc6bf861a4010a13be98bd73fa01f');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (188, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5Mzk0MiwiaWF0IjoxNzE5MjA3NTQyLCJqdGkiOiI0MWZmZjc3N2MzMjY0MDRjYjcwOTE2MGE4MWJlNjg3MyIsInVzZXJfaWQiOjF9.U3yFc2SlnOQTtzbSL_Y3EiU5z9NBCSC0xqngxu4C5kU', '2024-06-24 05:39:02.096467', '2024-06-25 05:39:02.000000', 1, '41fff777c326404cb709160a81be6873');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (189, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5NDMxMCwiaWF0IjoxNzE5MjA3OTEwLCJqdGkiOiIxN2UyNzgwZWNlYzY0NDZmODFkMzhkMzA2M2E4YzcwNSIsInVzZXJfaWQiOjF9.L0rIKyIoWI0rlzoBG5VkRyX-TrC1sKe4JX5ccgEGU8o', '2024-06-24 05:45:10.829689', '2024-06-25 05:45:10.000000', 1, '17e2780ecec6446f81d38d3063a8c705');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (190, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5NTI4MCwiaWF0IjoxNzE5MjA4ODgwLCJqdGkiOiJkOWU4MmU0ZTU4MDE0MDE0YmM2Zjk1ZTI5MTcxNzRjZiIsInVzZXJfaWQiOjF9.3L30A7i5zqIKc6UvwSeca0VxFwfazqfOctBgrqTJ8jk', '2024-06-24 06:01:20.354619', '2024-06-25 06:01:20.000000', 1, 'd9e82e4e58014014bc6f95e2917174cf');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (191, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5NzA1NCwiaWF0IjoxNzE5MjEwNjU0LCJqdGkiOiI4MTE2OTg4YWY5NDg0ODJhODc5YmM3ZWQ0YzQ5ZWM1YSIsInVzZXJfaWQiOjF9.H0gpxlmJTknSyPdjQJyLZAsuXgIzg8DxXqnVECT3Vqo', '2024-06-24 06:30:54.306992', '2024-06-25 06:30:54.000000', 1, '8116988af948482a879bc7ed4c49ec5a');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (192, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5NzM1NywiaWF0IjoxNzE5MjEwOTU3LCJqdGkiOiI5ZmExMDcwNjJmMGI0ZjQ1YWVhODM5ZTRkY2M1OWU4MyIsInVzZXJfaWQiOjF9.uPaX2Q4aBZ43uDRKp59sEc8XhbLB2_ao9kJGUrtI5B8', '2024-06-24 06:35:57.409661', '2024-06-25 06:35:57.000000', 1, '9fa107062f0b4f45aea839e4dcc59e83');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (193, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5NzUyOCwiaWF0IjoxNzE5MjExMTI4LCJqdGkiOiI3MTUzMDNkMjdiMmM0NWEwYjJhZWE0YTBlNDZhNmNiMyIsInVzZXJfaWQiOjF9.eCKqcnFoFzGlrBj2SDqrzS7J6pMXaUR7370HY5IJeo4', '2024-06-24 06:38:48.081707', '2024-06-25 06:38:48.000000', 1, '715303d27b2c45a0b2aea4a0e46a6cb3');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (194, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5NzcyMiwiaWF0IjoxNzE5MjExMzIyLCJqdGkiOiJmYmViZWEyZmY1MDk0NWFmYmEwZTQ3Yzk0N2JiOThhNSIsInVzZXJfaWQiOjF9.vMOkzB0a8STEKpc9AQdFhzgIwBHnFoIP7eXvb7BMirM', '2024-06-24 06:42:02.910651', '2024-06-25 06:42:02.000000', 1, 'fbebea2ff50945afba0e47c947bb98a5');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (195, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5ODE2OCwiaWF0IjoxNzE5MjExNzY4LCJqdGkiOiJlMTYyMzdlNGRjZWE0Y2YyOWNhMjgyZDcwMzAyMDY0YiIsInVzZXJfaWQiOjF9.Zjsnq_XnyAATaYL2_91ZTWDGPr4lqB1EEHTjEVRSahI', '2024-06-24 06:49:28.630397', '2024-06-25 06:49:28.000000', 1, 'e16237e4dcea4cf29ca282d70302064b');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (196, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5ODc0MCwiaWF0IjoxNzE5MjEyMzQwLCJqdGkiOiI5N2IwOTRlZGJhYjc0ZDVkYTY2ZWE4YTQ3MTE3YTVjMSIsInVzZXJfaWQiOjF9.ykauk_HzW6SowgrUafvz97SXWJHxYqrJkQkquZerSz8', '2024-06-24 06:59:00.806335', '2024-06-25 06:59:00.000000', 1, '97b094edbab74d5da66ea8a47117a5c1');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (197, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5ODg2MCwiaWF0IjoxNzE5MjEyNDYwLCJqdGkiOiI4M2E4MzEyZWIyMjE0NzkyODQ2ZWUyMTA2OTEwZGVlMyIsInVzZXJfaWQiOjF9.jjxckLejwcpX0vo-wUyJkfPIKz59t8yxjjZRGtNFLRQ', '2024-06-24 07:01:00.139170', '2024-06-25 07:01:00.000000', 1, '83a8312eb2214792846ee2106910dee3');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (198, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5OTA0OCwiaWF0IjoxNzE5MjEyNjQ4LCJqdGkiOiJjOWM4NGE0NTI4ZjU0NDU3YTMyMzI4OTc1ZWQ1YzRhMyIsInVzZXJfaWQiOjF9.xA4Po4nsN4p0VAEL5JwMlsaWHTnt_PcKr7WzX7dvmNw', '2024-06-24 07:04:08.257559', '2024-06-25 07:04:08.000000', 1, 'c9c84a4528f54457a32328975ed5c4a3');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (199, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5OTA5MSwiaWF0IjoxNzE5MjEyNjkxLCJqdGkiOiJhMmQwZGE4MDgwNmQ0MDdjYTkwYTZlNmFjOWNlYzJjMCIsInVzZXJfaWQiOjF9.JvROs73-pV3TPg_lxTST1W4yEmH7McEBztFx4RGqDAo', '2024-06-24 07:04:51.574276', '2024-06-25 07:04:51.000000', 1, 'a2d0da80806d407ca90a6e6ac9cec2c0');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (200, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5OTExMCwiaWF0IjoxNzE5MjEyNzEwLCJqdGkiOiIyOWQwYWZmZGVjNzk0NmI0YWNhZmZkZGUyODA4YmIyMCIsInVzZXJfaWQiOjF9.n2B5kEsUottrCswXbYe5dgTcPVQDpKJ_65DOUx2fuVg', '2024-06-24 07:05:10.146458', '2024-06-25 07:05:10.000000', 1, '29d0affdec7946b4acaffdde2808bb20');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (201, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5OTE0NywiaWF0IjoxNzE5MjEyNzQ3LCJqdGkiOiJmNzIwZWUxMjI1ZmY0ZDZkYWNmYjUyMzFjNDhkYjU5OSIsInVzZXJfaWQiOjF9.4ZJYw1h0uz-uM8wAL10iw7K9juwhqijWe4902nMYdRk', '2024-06-24 07:05:47.231524', '2024-06-25 07:05:47.000000', 1, 'f720ee1225ff4d6dacfb5231c48db599');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (202, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5OTIyNCwiaWF0IjoxNzE5MjEyODI0LCJqdGkiOiI2NDc2MTg5YWFlNTg0OTVmODhmMTRkMzE3OTVjZWRkOSIsInVzZXJfaWQiOjF9.MCNmVlLMZozrwNUUDxt_3mpFbc9aBZ0fbwTEPVDzw4E', '2024-06-24 07:07:04.959152', '2024-06-25 07:07:04.000000', 1, '6476189aae58495f88f14d31795cedd9');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (203, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5OTMzMywiaWF0IjoxNzE5MjEyOTMzLCJqdGkiOiJmY2M0MWJjNTI3ODY0ZDExODNmNTY4YWU3MzJmYTI3OSIsInVzZXJfaWQiOjF9.cVRkMff0uLuXcCzy1YcwxUqtK0W1NHxiZsOVbzRi5EM', '2024-06-24 07:08:53.288527', '2024-06-25 07:08:53.000000', 1, 'fcc41bc527864d1183f568ae732fa279');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (204, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5OTM1NCwiaWF0IjoxNzE5MjEyOTU0LCJqdGkiOiJkZDJmMTY1YzNiNWU0ZTYwYWFmNTA4ODM3NThjYjMyMyIsInVzZXJfaWQiOjF9.4aQ7x4AN97tK4dwGph3IhgcuJb4QAbC7eoZinVS5DJU', '2024-06-24 07:09:14.830689', '2024-06-25 07:09:14.000000', 1, 'dd2f165c3b5e4e60aaf50883758cb323');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (205, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5OTU5OSwiaWF0IjoxNzE5MjEzMTk5LCJqdGkiOiIzOGY0YThmMjFiZGI0ZjZlOTMxZGZlM2NjNjgwNDc5MCIsInVzZXJfaWQiOjF9.gvaFl6RzFFKjH4TP68csbPuqTsrWyrEgMfK6SCaODEk', '2024-06-24 07:13:19.243988', '2024-06-25 07:13:19.000000', 1, '38f4a8f21bdb4f6e931dfe3cc6804790');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (206, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTI5OTc5MSwiaWF0IjoxNzE5MjEzMzkxLCJqdGkiOiJmNzA1NjY2MjEzOTA0Y2YyODEyNDNjYzNkMzQ0ZWUwMyIsInVzZXJfaWQiOjF9.zE3b9ImWKGXo4sLalLpTpTkOY8ST-gi9hbGRT-SWRc4', '2024-06-24 07:16:31.517965', '2024-06-25 07:16:31.000000', 1, 'f705666213904cf281243cc3d344ee03');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (207, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTMwMTA4NiwiaWF0IjoxNzE5MjE0Njg2LCJqdGkiOiJmZDEwMThhNmMyMzE0OGE0Yjc4NTAwMTcyYmIzNzE1MiIsInVzZXJfaWQiOjF9.quIGjsj1ZEqIPmS5aKmNKHtQoiH7jzBkV5Th0dJJjCc', '2024-06-24 07:38:06.081084', '2024-06-25 07:38:06.000000', 1, 'fd1018a6c23148a4b78500172bb37152');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (208, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTMwMjc5NiwiaWF0IjoxNzE5MjE2Mzk2LCJqdGkiOiJkNjQ4MDE2YzdmZmE0ODhjYTYyOTUyNThlN2QyMjgwMyIsInVzZXJfaWQiOjF9.aVYtth5SFIe5qOvGqltZ-IJtE_MpQdf6yY9TFzVauC4', '2024-06-24 08:06:36.452317', '2024-06-25 08:06:36.000000', 1, 'd648016c7ffa488ca6295258e7d22803');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (209, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTMwNDc4MywiaWF0IjoxNzE5MjE4MzgzLCJqdGkiOiJlOWJmZjI3NGI3YzE0ZTg5YmM2NDBiMzFjMDk1MTkwMCIsInVzZXJfaWQiOjF9.pjIokyw1EWWzHAzwJs59kKM033XnV2zcLydB8VSA-II', '2024-06-24 08:39:43.176037', '2024-06-25 08:39:43.000000', 1, 'e9bff274b7c14e89bc640b31c0951900');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (210, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTMwODUxMSwiaWF0IjoxNzE5MjIyMTExLCJqdGkiOiJhMDk1MzY4OWU0OTI0NzJhOWU3MDAxNjgwZGJkZmJkNyIsInVzZXJfaWQiOjF9.j7-8yuOmKnBgPd53b3_U7OoOndumfegqAkjyOZrYPfQ', '2024-06-24 09:41:51.333236', '2024-06-25 09:41:51.000000', 1, 'a0953689e492472a9e7001680dbdfbd7');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (211, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTMxMzMxNSwiaWF0IjoxNzE5MjI2OTE1LCJqdGkiOiJhNzY4ZTI4NmEzMzE0NjY3OTE5ODllYTQxODY5MGMyZCIsInVzZXJfaWQiOjF9.Rmk_QB0iq6PCQ0CFGBlKqeygva0D1k2P3Ub3REQSuKE', '2024-06-24 11:01:55.234821', '2024-06-25 11:01:55.000000', 1, 'a768e286a331466791989ea418690c2d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (212, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTMxMzkwOCwiaWF0IjoxNzE5MjI3NTA4LCJqdGkiOiI3NDdhOTI5Mzk5NmE0NDcxODQ1ZDNkZWYwYWY4NDc3MyIsInVzZXJfaWQiOjF9.r5s2La0NzcGebnte0ZxLtD-2pXg-bfUN_4NlG3FH0_o', '2024-06-24 11:11:48.706847', '2024-06-25 11:11:48.000000', 1, '747a9293996a4471845d3def0af84773');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (213, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTMxNDQzOCwiaWF0IjoxNzE5MjI4MDM4LCJqdGkiOiJhMGEwOWU1OGUzOTA0MzE2YjJiMGFkMmY4ZjBhZDMyNSIsInVzZXJfaWQiOjF9.oJiRIBlMJCOKO_UVaoRNhNP-ShyCSj9my4F24UKibIQ', '2024-06-24 11:20:38.414229', '2024-06-25 11:20:38.000000', 1, 'a0a09e58e3904316b2b0ad2f8f0ad325');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (214, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTMxNTMyOCwiaWF0IjoxNzE5MjI4OTI4LCJqdGkiOiI2ZDU4MWNlMTc0Mjc0YjI4YmQ3YTQ5OGYwNGY0YjM3NyIsInVzZXJfaWQiOjF9.OUQ96zKby91rQ5LeFY247nf_qaCXIx1UFet3fS4vNTM', '2024-06-24 11:35:28.483678', '2024-06-25 11:35:28.000000', 1, '6d581ce174274b28bd7a498f04f4b377');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (215, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM2ODczMiwiaWF0IjoxNzE5MjgyMzMyLCJqdGkiOiJmNjY4OTVjMTgyMDY0NzRmYjVjNDEzNTRlMDU5MzY0NCIsInVzZXJfaWQiOjF9.lGg-zzl7FjevMWNB43oZITA49ee7Zk-JL5_-Ui_8l0k', '2024-06-25 02:25:32.189982', '2024-06-26 02:25:32.000000', 1, 'f66895c18206474fb5c41354e0593644');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (216, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM2OTI4NiwiaWF0IjoxNzE5MjgyODg2LCJqdGkiOiJlNGY0NzVkYzExOTk0MjYxOTc1NDdjMDI1ODEyYWZlMiIsInVzZXJfaWQiOjF9.36ZSr03chyWfZOvkUWPA_JXSNwUkc_ttTgIcWBdxjZQ', '2024-06-25 02:34:46.688315', '2024-06-26 02:34:46.000000', 1, 'e4f475dc1199426197547c025812afe2');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (217, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM2OTM5OCwiaWF0IjoxNzE5MjgyOTk4LCJqdGkiOiIzZDFjMzM4MDA3NTA0OGU2OGQ2ZjgxNTI2Y2I4YzE2NyIsInVzZXJfaWQiOjF9.4vCmVjbjyKEQD-Ln_ZhFol0EPvN9tCa2e_w-WzbMMbE', '2024-06-25 02:36:38.034809', '2024-06-26 02:36:38.000000', 1, '3d1c3380075048e68d6f81526cb8c167');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (218, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM3MjYzMCwiaWF0IjoxNzE5Mjg2MjMwLCJqdGkiOiIxYzhjZTQ2NGU5MmQ0MGNmYTAzYjQxYWYxNThkNzJiZiIsInVzZXJfaWQiOjF9.RYy89GDgOIvbv05FhHM5P6tP-bcOe1mX2-zjHQE32_I', '2024-06-25 03:30:30.994379', '2024-06-26 03:30:30.000000', 1, '1c8ce464e92d40cfa03b41af158d72bf');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (219, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM3MjkyMywiaWF0IjoxNzE5Mjg2NTIzLCJqdGkiOiJhODIxNTBjNmVlMGE0MmNjYTY5ZmYyODEzZmI1ZjY4MiIsInVzZXJfaWQiOjF9.jpVYBJXh1KkB0J4lzdXDJ6hLozaup8pgc0j1tNCR2v0', '2024-06-25 03:35:23.738668', '2024-06-26 03:35:23.000000', 1, 'a82150c6ee0a42cca69ff2813fb5f682');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (220, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM3MzEyOSwiaWF0IjoxNzE5Mjg2NzI5LCJqdGkiOiJlZmRlOWMxOTJkNDE0ODNjOTI5MzlmMmE0ZjNiYTIxYyIsInVzZXJfaWQiOjF9.wGMPwHZYUaQUsLx4y7lY7pPkOhER4nbCAH4FxvzkrN8', '2024-06-25 03:38:49.627347', '2024-06-26 03:38:49.000000', 1, 'efde9c192d41483c92939f2a4f3ba21c');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (221, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM3MzU1NCwiaWF0IjoxNzE5Mjg3MTU0LCJqdGkiOiI0NzgxZmEyZDhlZWM0YWY5YmVkYTIxNzA4NzI2YjZjMiIsInVzZXJfaWQiOjF9.QTpzqFy2SKf0Ls49Qz9uxbItn_Vi8rpxJOn1wqWJ3E8', '2024-06-25 03:45:54.837814', '2024-06-26 03:45:54.000000', 1, '4781fa2d8eec4af9beda21708726b6c2');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (222, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM3MzYxMSwiaWF0IjoxNzE5Mjg3MjExLCJqdGkiOiI3NTlkZjYyNDQxOGI0NjJkOWRlNDg3MzEwNTEwNzJhMCIsInVzZXJfaWQiOjF9.PmKqgd7xp1X8ai5JonefG1lD1JHa0hnYRSzgrOaO6jw', '2024-06-25 03:46:51.318546', '2024-06-26 03:46:51.000000', 1, '759df624418b462d9de48731051072a0');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (223, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM3NDA4MCwiaWF0IjoxNzE5Mjg3NjgwLCJqdGkiOiJhNzVmNjEyNzNlMjk0MTU2OWZhMGQ4OTg0MzU0MTcyMSIsInVzZXJfaWQiOjd9.ki-Y4lGLHPkBxhuTmu78RwFUguViI0bHKlVcUIqtWkY', '2024-06-25 03:54:40.265172', '2024-06-26 03:54:40.000000', 7, 'a75f61273e2941569fa0d89843541721');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (224, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM3NDg0OCwiaWF0IjoxNzE5Mjg4NDQ4LCJqdGkiOiI3ZTgwZWU4ODhiMDk0YzkyOTQ4ZTY5MTMzMWI1NWVjZSIsInVzZXJfaWQiOjd9.FklMQnKaJLWC0h_GRYO0s44p7T0tWjawvUJew48U0J8', '2024-06-25 04:07:28.916154', '2024-06-26 04:07:28.000000', 7, '7e80ee888b094c92948e691331b55ece');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (225, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM3NDg2MSwiaWF0IjoxNzE5Mjg4NDYxLCJqdGkiOiI4YjQ0ZGU5MjY3NTQ0NjBlYmMxNTVkMjc0MWUwNWJiZSIsInVzZXJfaWQiOjF9.QdN4bZ4rkJ43pwyDKqVOAq4GtN2i47BlY1FKBkUHRRY', '2024-06-25 04:07:41.689111', '2024-06-26 04:07:41.000000', 1, '8b44de926754460ebc155d2741e05bbe');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (226, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM3NTAyNCwiaWF0IjoxNzE5Mjg4NjI0LCJqdGkiOiJjNTZkZjI5OTExZjQ0YmViYmQxNWViNDc2YmE2NDAyYyIsInVzZXJfaWQiOjF9.3LuKpYYjcE5sLeDZFV3_hoIz3yAQ3GOGT1uyI4r354g', '2024-06-25 04:10:24.462343', '2024-06-26 04:10:24.000000', 1, 'c56df29911f44bebbd15eb476ba6402c');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (227, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM4MTM5MSwiaWF0IjoxNzE5Mjk0OTkxLCJqdGkiOiIxMTNhYjg0OTdlN2Y0MGI4ODc4NzZjMjdhOGViZDJjNCIsInVzZXJfaWQiOjF9.SmCt4u-bVJE3-wMF4BZjD3Do5BrkrjsSVnhipUMRGJA', '2024-06-25 05:56:31.582051', '2024-06-26 05:56:31.000000', 1, '113ab8497e7f40b887876c27a8ebd2c4');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (228, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM4MjAxMiwiaWF0IjoxNzE5Mjk1NjEyLCJqdGkiOiI4NDY5N2IxMmZjZGI0OWJlYmZkOWJmZTc5ODdlMWM5MCIsInVzZXJfaWQiOjd9.CrLZYWCbaJSR6-Yty65lSl1kvnNC5-LkNECsXzVXHgU', '2024-06-25 06:06:52.064397', '2024-06-26 06:06:52.000000', 7, '84697b12fcdb49bebfd9bfe7987e1c90');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (229, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM4NTc3MCwiaWF0IjoxNzE5Mjk5MzcwLCJqdGkiOiIyM2E4ZmU5NDViNTU0M2Q2YTJiY2FmNGFjOGMzYmM1YyIsInVzZXJfaWQiOjF9.jxisCmIaTYHvcmpwysQyRPlUWCjc7ULFTLdw-Ibv_Ug', '2024-06-25 07:09:30.070175', '2024-06-26 07:09:30.000000', 1, '23a8fe945b5543d6a2bcaf4ac8c3bc5c');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (230, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM4Njk3NywiaWF0IjoxNzE5MzAwNTc3LCJqdGkiOiJiNWU1ZDNiMTUxZjc0ZDQzYTUxNWY4M2IyZjZhYjQ0NyIsInVzZXJfaWQiOjF9.n4_DowqwpIIh1fh1ImLlONbaDuw1j0WK18taXi4NzOs', '2024-06-25 07:29:37.201494', '2024-06-26 07:29:37.000000', 1, 'b5e5d3b151f74d43a515f83b2f6ab447');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (231, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM4ODgwNCwiaWF0IjoxNzE5MzAyNDA0LCJqdGkiOiJhZTdhM2M4OWVjM2I0NmUyYTYzZDc3ZGNhMWY1NTAwNiIsInVzZXJfaWQiOjN9.6SqHJ9Tuf1j2YpUbmrTifDhjvIh57GVcuSR-GZHO760', '2024-06-25 08:00:04.932239', '2024-06-26 08:00:04.000000', 3, 'ae7a3c89ec3b46e2a63d77dca1f55006');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (232, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM5MDIyNSwiaWF0IjoxNzE5MzAzODI1LCJqdGkiOiIzYjlmMDBiYTA0ZWU0MTgzYTMyMmNiMjQ5MTY4MGMyYSIsInVzZXJfaWQiOjN9.3KGv6Cxk7dKA5Qc1hIC_YHUht8CAOJDWUnQPB4T55FU', '2024-06-25 08:23:45.155070', '2024-06-26 08:23:45.000000', 3, '3b9f00ba04ee4183a322cb2491680c2a');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (233, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM5MDI2OCwiaWF0IjoxNzE5MzAzODY4LCJqdGkiOiJiMTFiZjk3ZDQyZDI0M2U0ODk1NTliNjJiMjc4YjY3NyIsInVzZXJfaWQiOjN9.X-H5-Cnbd853Elm5kjIM_fOrOwxwTtnoP50bkh9sVMI', '2024-06-25 08:24:28.404797', '2024-06-26 08:24:28.000000', 3, 'b11bf97d42d243e489559b62b278b677');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (234, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM5MDQ3MywiaWF0IjoxNzE5MzA0MDczLCJqdGkiOiJmOGRkMWNkOWM1YTY0MTUwYWFlOGE4MDNmZTcxN2YzZCIsInVzZXJfaWQiOjh9.AAP-_7lAAmrilxaFiXVQ1oHqjF9hAqrMtG3x7QZtb0U', '2024-06-25 08:27:53.831135', '2024-06-26 08:27:53.000000', 8, 'f8dd1cd9c5a64150aae8a803fe717f3d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (235, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTM5MTE1MywiaWF0IjoxNzE5MzA0NzUzLCJqdGkiOiI3ZTk4NzE5OWNiOTE0YWM3YjEwNGRkY2U1M2FhZWVlNCIsInVzZXJfaWQiOjN9.1yMre4qn8t0OXmhP5wi86A75lf4PqH7xELLKgSSCZOU', '2024-06-25 08:39:13.271953', '2024-06-26 08:39:13.000000', 3, '7e987199cb914ac7b104ddce53aaeee4');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (236, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQwMjkzNCwiaWF0IjoxNzE5MzE2NTM0LCJqdGkiOiJmMzRhYjM3YWUxMTM0YWI1OWU4YTljYWY2MWJlMmQ0ZCIsInVzZXJfaWQiOjN9.u0KAhPf7e5usBaWuNpznezHpC6il0skyXIvsjsVz_GI', '2024-06-25 11:55:34.649927', '2024-06-26 11:55:34.000000', 3, 'f34ab37ae1134ab59e8a9caf61be2d4d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (237, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQwMjk2NiwiaWF0IjoxNzE5MzE2NTY2LCJqdGkiOiI5NzMyZWI4YzFlNjM0ZGJjYWYyNWQwYmNiNzQzYjQ5YyIsInVzZXJfaWQiOjEwfQ.E4gXrxoq048GcCx5CwqhaXMJoUUvbpE5DCSXhh0NhFg', '2024-06-25 11:56:06.253142', '2024-06-26 11:56:06.000000', 10, '9732eb8c1e634dbcaf25d0bcb743b49c');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (238, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQwMzI4MywiaWF0IjoxNzE5MzE2ODgzLCJqdGkiOiI3ZDEzM2QwOWNkZTA0ZTZhOTQxYTA3MDZlOTlkNGIwMiIsInVzZXJfaWQiOjN9.K81V0bvX6CIAn4Y6c9UZtzBBF5tVqKEu7KVkIBjegfk', '2024-06-25 12:01:23.395004', '2024-06-26 12:01:23.000000', 3, '7d133d09cde04e6a941a0706e99d4b02');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (239, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQwMzM0MSwiaWF0IjoxNzE5MzE2OTQxLCJqdGkiOiI4ZTgxMzYxOTc2ZGI0YTI2YWNkNGIxNTQwNDE2YTlkMCIsInVzZXJfaWQiOjF9.3GiTal1weYVuwWaONSywNibo-r4U6tsrCTG0mY23m8o', '2024-06-25 12:02:21.367178', '2024-06-26 12:02:21.000000', 1, '8e81361976db4a26acd4b1540416a9d0');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (240, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQwMzQ2MCwiaWF0IjoxNzE5MzE3MDYwLCJqdGkiOiI2NzkyZmE5NDY4NzE0ZjVkODQ0OGM0NzU4NzUyYjdiOCIsInVzZXJfaWQiOjl9.wFTjjk13N7FNUaVdvk0gtBvFT1PrVMXrwg6Fhh-aEfU', '2024-06-25 12:04:20.145670', '2024-06-26 12:04:20.000000', 9, '6792fa9468714f5d8448c4758752b7b8');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (241, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQwNDQyNCwiaWF0IjoxNzE5MzE4MDI0LCJqdGkiOiJhZmU0NGNlNmQ4MjA0MjI4YTc5NTJhNzcxZmVlMTkxOCIsInVzZXJfaWQiOjEwfQ.FIDztaoX8uLiDseip5gKHfq3EdxM_i5h1vvErkTxhGg', '2024-06-25 12:20:24.807340', '2024-06-26 12:20:24.000000', 10, 'afe44ce6d8204228a7952a771fee1918');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (242, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQwNDU4NCwiaWF0IjoxNzE5MzE4MTg0LCJqdGkiOiI2MmMzZDdlYTFmNmY0OThiOGYzNzRmY2U0ZGE5YTZmNyIsInVzZXJfaWQiOjN9.-zMpnAkXAN67R1MKNT8Pr8x01E8t3t0HvZ-3k07rLnQ', '2024-06-25 12:23:04.806889', '2024-06-26 12:23:04.000000', 3, '62c3d7ea1f6f498b8f374fce4da9a6f7');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (243, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQwNDY4NywiaWF0IjoxNzE5MzE4Mjg3LCJqdGkiOiJkNWJmMGMzYzBiYjQ0MjdiYTY5MjcwZWZjY2UxNjZjZiIsInVzZXJfaWQiOjl9.dnTURxuOiwWTvUVKUhQ-bGoNImcrtVW2_Cr3Kfw8b_k', '2024-06-25 12:24:47.210158', '2024-06-26 12:24:47.000000', 9, 'd5bf0c3c0bb4427ba69270efcce166cf');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (244, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQwNTE0MiwiaWF0IjoxNzE5MzE4NzQyLCJqdGkiOiIxMWRhN2FlMmMwYWQ0ZGUxYjU3YzkxM2E2M2VmNTFlNCIsInVzZXJfaWQiOjN9.NdMFAT9pamPAzmbBdE91MijFWnfrOlgiPvBSWUiy1KY', '2024-06-25 12:32:22.448817', '2024-06-26 12:32:22.000000', 3, '11da7ae2c0ad4de1b57c913a63ef51e4');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (245, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ1OTE2OSwiaWF0IjoxNzE5MzcyNzY5LCJqdGkiOiI5ZDhiYmZmNThlNDI0OGMzYjgwZTA5Y2ZhYTZkZGNjMCIsInVzZXJfaWQiOjN9.bDd0TyL-pGU8f9iv5bV1oG-_SYaLWfQDh20OMg6hwjk', '2024-06-26 03:32:49.296198', '2024-06-27 03:32:49.000000', 3, '9d8bbff58e4248c3b80e09cfaa6ddcc0');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (246, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ2NDAzOCwiaWF0IjoxNzE5Mzc3NjM4LCJqdGkiOiI2NjhiYWVlOGFhYjM0Y2ZhYmE1ODdmNTNhYmI3YjQ0NSIsInVzZXJfaWQiOjF9.n3zcLvQJcfLrjvhkvclg-KnJzhD5XW4UfU9CJXmAhg0', '2024-06-26 04:53:58.834678', '2024-06-27 04:53:58.000000', 1, '668baee8aab34cfaba587f53abb7b445');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (247, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ2Nzg4NCwiaWF0IjoxNzE5MzgxNDg0LCJqdGkiOiI5M2UzZDk4MmNlMDU0OTU0OWE3NjYxNTU3YzNkYjk5MyIsInVzZXJfaWQiOjN9.50bCsPi64a4d9NEBszgOuVn0Rp2yZKJsRr9N7u9exe8', '2024-06-26 05:58:04.958642', '2024-06-27 05:58:04.000000', 3, '93e3d982ce0549549a7661557c3db993');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (248, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ2Nzk1OCwiaWF0IjoxNzE5MzgxNTU4LCJqdGkiOiJkMTU1N2VmZGFjZTU0ODRmOGRhZDI5NGNhMjAxYWQ5MiIsInVzZXJfaWQiOjF9.J3ziVVT_dWbpohU4fnd_2cNRdM7mrIrktFESPUSgxiM', '2024-06-26 05:59:18.269041', '2024-06-27 05:59:18.000000', 1, 'd1557efdace5484f8dad294ca201ad92');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (249, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ2ODMxNywiaWF0IjoxNzE5MzgxOTE3LCJqdGkiOiI4MDdjYjE0NTU2NmY0N2ViOTkxMzJlMjM0NzhlY2RkMyIsInVzZXJfaWQiOjF9.qCft-PlIk7ByH-UJ_W9dHJGVKsBi6HqRRcFmVgizhy8', '2024-06-26 06:05:17.262368', '2024-06-27 06:05:17.000000', 1, '807cb145566f47eb99132e23478ecdd3');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (250, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ2OTAwNywiaWF0IjoxNzE5MzgyNjA3LCJqdGkiOiIzOGU3YTg1OTllZGI0NWQ1OWZjMDJlMjAwZjI0YTQ3OSIsInVzZXJfaWQiOjF9.AmpIxeGahvhblXY4sSozjybW3WgPSBwWf09FNUz8gTs', '2024-06-26 06:16:47.433225', '2024-06-27 06:16:47.000000', 1, '38e7a8599edb45d59fc02e200f24a479');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (251, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ2OTE5NywiaWF0IjoxNzE5MzgyNzk3LCJqdGkiOiIwNDM0NWE0OGE1Yzc0NTA1YmU1YWY2N2U2YTczYzlmYiIsInVzZXJfaWQiOjF9.YexefMCwg8z4k5iYVQLOPTedSQvirfHKNIQwmcWouYk', '2024-06-26 06:19:57.128086', '2024-06-27 06:19:57.000000', 1, '04345a48a5c74505be5af67e6a73c9fb');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (252, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3MjQ0MiwiaWF0IjoxNzE5Mzg2MDQyLCJqdGkiOiJjOTNmMjU4ZmM5MmI0OTI2OGFlNGE3NzQxYTUxMjFmYiIsInVzZXJfaWQiOjl9.hBc9SaENZbSLBm9g4Slv3x8NTwoJm8qfa5fsQ3eo49s', '2024-06-26 07:14:02.147891', '2024-06-27 07:14:02.000000', 9, 'c93f258fc92b49268ae4a7741a5121fb');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (253, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3MjYxMSwiaWF0IjoxNzE5Mzg2MjExLCJqdGkiOiJmODcwZGFlNzFhM2E0NTFkOWFjYjQxNjkwMzMyNzYxNyIsInVzZXJfaWQiOjN9.-dYpTPqroqIF_qgLeG1Zo9h-DdveeL3TBb4ph1JTOyE', '2024-06-26 07:16:51.978439', '2024-06-27 07:16:51.000000', 3, 'f870dae71a3a451d9acb416903327617');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (254, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3MjY0MywiaWF0IjoxNzE5Mzg2MjQzLCJqdGkiOiJiYTYwMWE5MTBjYjk0ZTU1ODhjMWU4Yzc0MzM0NDcxNiIsInVzZXJfaWQiOjF9.-VM-a5Vu9qfZoO3y-RsWvT2NhBdvUELTID8dAgYVEFE', '2024-06-26 07:17:23.238098', '2024-06-27 07:17:23.000000', 1, 'ba601a910cb94e5588c1e8c743344716');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (255, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3MzEyOCwiaWF0IjoxNzE5Mzg2NzI4LCJqdGkiOiIxOWMyYTY2ZjVkMTQ0MDUyOTdlYzA5NjI0NmUxZGEwYiIsInVzZXJfaWQiOjF9.F5UgY_r_SuBnrhjTYURTa9DjIfSYx--BqReS_n3FuUY', '2024-06-26 07:25:28.804313', '2024-06-27 07:25:28.000000', 1, '19c2a66f5d14405297ec096246e1da0b');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (256, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3Mzc5OCwiaWF0IjoxNzE5Mzg3Mzk4LCJqdGkiOiIwOWJiZDljNzgzNTc0MWNkOGYxNmRjOTBkMTU1ZmJlNSIsInVzZXJfaWQiOjN9.tOrAlDJDDPicdErDQMU_TXriQuL1a7nnp8AJbwThJII', '2024-06-26 07:36:38.556971', '2024-06-27 07:36:38.000000', 3, '09bbd9c7835741cd8f16dc90d155fbe5');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (257, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3MzkzNSwiaWF0IjoxNzE5Mzg3NTM1LCJqdGkiOiJkNmZlNDY1ZjhkZDQ0YjZkYjZlNjVjYjY2Yjc2OGFhMSIsInVzZXJfaWQiOjF9.GeVDGc6o5zP5N2UG07oFh93tJhvEQaojuE5rbvBKqjw', '2024-06-26 07:38:55.834826', '2024-06-27 07:38:55.000000', 1, 'd6fe465f8dd44b6db6e65cb66b768aa1');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (258, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3NTgxMywiaWF0IjoxNzE5Mzg5NDEzLCJqdGkiOiI1MzdlYzY1MWJjYmE0YjQxODI2NWQyNTYzOTFhNmI4ZCIsInVzZXJfaWQiOjF9.rjQnaA-b-fp4-8v8gcK-vOjkCVqbFEJ8k5Zpd8nGNSA', '2024-06-26 08:10:13.728320', '2024-06-27 08:10:13.000000', 1, '537ec651bcba4b418265d256391a6b8d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (259, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3ODE4NCwiaWF0IjoxNzE5MzkxNzg0LCJqdGkiOiI5ZjM4NWY1ZmZhMzU0M2ZlOWY5YjRlZGJjZmIwMzEyYiIsInVzZXJfaWQiOjd9.srAw-w6Xs-mMkWU4rDW52tqGCeNsKe2HXqJznTYARq8', '2024-06-26 08:49:44.653126', '2024-06-27 08:49:44.000000', 7, '9f385f5ffa3543fe9f9b4edbcfb0312b');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (260, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3ODQyNSwiaWF0IjoxNzE5MzkyMDI1LCJqdGkiOiI2YzAyY2ZhZTVlMDc0ZDU1YmEwMTA1ODYzOTVmYmYzYiIsInVzZXJfaWQiOjExfQ.xQWnSwHHQpZRNgvh1Cj31HqdWfSpbHWerC6tahr21yw', '2024-06-26 08:53:45.758676', '2024-06-27 08:53:45.000000', 11, '6c02cfae5e074d55ba010586395fbf3b');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (261, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3ODY4NCwiaWF0IjoxNzE5MzkyMjg0LCJqdGkiOiJiMTc4NjdmNmViYzQ0M2M2YTg3YjYyZmU2NGEwOTNhYiIsInVzZXJfaWQiOjExfQ.W4S1CyohH11Q5b5PhzJZReSMWNQMfCAZOizeZe1sGN4', '2024-06-26 08:58:04.737575', '2024-06-27 08:58:04.000000', 11, 'b17867f6ebc443c6a87b62fe64a093ab');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (262, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3ODczMiwiaWF0IjoxNzE5MzkyMzMyLCJqdGkiOiI3ZjI3NGMzNTI1NDA0MzZlOWRmMzE3YmQzMmE4OTkwMCIsInVzZXJfaWQiOjF9.OaSXFUBZAA5rNrGxBr1MpZLj8x1no6tm5fa7xAjUoaU', '2024-06-26 08:58:52.813940', '2024-06-27 08:58:52.000000', 1, '7f274c352540436e9df317bd32a89900');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (263, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3ODc3MSwiaWF0IjoxNzE5MzkyMzcxLCJqdGkiOiJmY2ExOTY2NzEwMjA0YTUzOTQ0M2NiY2Q5MjY0YTg2ZSIsInVzZXJfaWQiOjN9.xTca3_FPRlUFJUoSTn5AihO6fohmmO-xfwIiY9tYv8s', '2024-06-26 08:59:31.663979', '2024-06-27 08:59:31.000000', 3, 'fca1966710204a539443cbcd9264a86e');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (264, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3ODk2MywiaWF0IjoxNzE5MzkyNTYzLCJqdGkiOiI0NzlkNDhjNDBhMGY0YzFkYWNhNTg5MzdjNjM3MzY2NSIsInVzZXJfaWQiOjF9.cI91XpTEtK_qY-4UxhRBAx7O8pj5ufFvPEIt4XfKsUU', '2024-06-26 09:02:43.073522', '2024-06-27 09:02:43.000000', 1, '479d48c40a0f4c1daca58937c6373665');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (265, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3ODk3NCwiaWF0IjoxNzE5MzkyNTc0LCJqdGkiOiI2NzIyNDE5MDI1ODE0NGFhOGFkMGM1ZDM4YTZhNDY3YSIsInVzZXJfaWQiOjExfQ.bi9dAeuwaYFxzyjwiyw4CqNHkOvwPB7-NgMdcP_97T0', '2024-06-26 09:02:54.596337', '2024-06-27 09:02:54.000000', 11, '67224190258144aa8ad0c5d38a6a467a');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (266, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3OTA1OCwiaWF0IjoxNzE5MzkyNjU4LCJqdGkiOiI0N2Y2MGI2ZmVmNDY0YmNiYjY0MzBkZmJkODAzZTE5MyIsInVzZXJfaWQiOjF9.GFoD0c_vbc_o6bnDYNDhX4OGF-8lvhOedc-e7rSyiq0', '2024-06-26 09:04:18.018219', '2024-06-27 09:04:18.000000', 1, '47f60b6fef464bcbb6430dfbd803e193');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (267, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTQ3OTA3NywiaWF0IjoxNzE5MzkyNjc3LCJqdGkiOiI3OWFkY2UxMzNlOTU0NjA0Yjg2ZTNkYTY4MzI5N2FiMyIsInVzZXJfaWQiOjl9.oy1R0mm5od405b1qUAGnF8U-_AxQamnY5knTLfI5xq4', '2024-06-26 09:04:37.361267', '2024-06-27 09:04:37.000000', 9, '79adce133e954604b86e3da683297ab3');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (268, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTU0NTM3MywiaWF0IjoxNzE5NDU4OTczLCJqdGkiOiJjODU0NjU0MzU0ZjA0NTYzYWFmYzg3MDYzYjAwN2Q0MCIsInVzZXJfaWQiOjF9.OFddcaxhwYLlGWuaKBdJEDYx0TTb7fe4qnV6499yQMM', '2024-06-27 03:29:33.605030', '2024-06-28 03:29:33.000000', 1, 'c854654354f04563aafc87063b007d40');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (269, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTYyODA0OCwiaWF0IjoxNzE5NTQxNjQ4LCJqdGkiOiJjMmI1MDkyNzZmMmU0YTk5YTgwOTY2MmEzYmE4OTdiZSIsInVzZXJfaWQiOjF9.yxglpH1Uq0E9YywOM0-WXq7pe3OXBAtIuYbp4FU0slQ', '2024-06-28 02:27:28.975770', '2024-06-29 02:27:28.000000', 1, 'c2b509276f2e4a99a809662a3ba897be');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (270, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTYyODUyOCwiaWF0IjoxNzE5NTQyMTI4LCJqdGkiOiIwNDJmMWYyZmRlNTg0MGZjOTExNjk1OTkyMzdjOGJlYSIsInVzZXJfaWQiOjExfQ.MZsLUwwpkwfz4Ix99Chtu5kVUcBZms7kVzM9U_cHzbc', '2024-06-28 02:35:28.868574', '2024-06-29 02:35:28.000000', 11, '042f1f2fde5840fc91169599237c8bea');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (271, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTYyODc4NiwiaWF0IjoxNzE5NTQyMzg2LCJqdGkiOiIyZWQzMWRjNjJlZmE0MTZkYTRkNWZlMTc2ODAzMTA4NyIsInVzZXJfaWQiOjF9.-BYmIDERssbeGPkTrb4HQ49dfF--i8N6UXV8IXF-5mQ', '2024-06-28 02:39:46.257928', '2024-06-29 02:39:46.000000', 1, '2ed31dc62efa416da4d5fe1768031087');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (272, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTYyOTQ4MSwiaWF0IjoxNzE5NTQzMDgxLCJqdGkiOiJmZTE5N2UyOWQ4Njc0MTc2OWVjYzNlM2EyMTg0MDNjYSIsInVzZXJfaWQiOjF9.Ag7L88IbVWX4OmygyqT4jmPrIfg_U5u4LXLrInnc92M', '2024-06-28 02:51:21.059466', '2024-06-29 02:51:21.000000', 1, 'fe197e29d86741769ecc3e3a218403ca');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (273, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTYyOTY2MSwiaWF0IjoxNzE5NTQzMjYxLCJqdGkiOiJkZjNkYzU0OTZhY2Y0ZGMxOWQyZDVjMzE2YmY0ZjQzNiIsInVzZXJfaWQiOjF9.Ses6x6eD_9DsaYrRqsezaNEv-1ER2NFkniuzkkhl3G0', '2024-06-28 02:54:21.847939', '2024-06-29 02:54:21.000000', 1, 'df3dc5496acf4dc19d2d5c316bf4f436');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (274, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTYyOTgwMCwiaWF0IjoxNzE5NTQzNDAwLCJqdGkiOiIwOGZjMzhkZWRiNWM0MGNiYmY1NDk2YzBlOTY0M2M5ZSIsInVzZXJfaWQiOjF9.OvSbe3Nzw2gqgBGIcDZkHSCidNxKPAp5NuCJBlDwJc8', '2024-06-28 02:56:40.962193', '2024-06-29 02:56:40.000000', 1, '08fc38dedb5c40cbbf5496c0e9643c9e');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (275, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTYzMDM3MCwiaWF0IjoxNzE5NTQzOTcwLCJqdGkiOiI3ZDg1MzhhOTFlMjY0YWU4YTEwMmY3OTRiNGJjOTEyYyIsInVzZXJfaWQiOjF9.kD29BtL6wlRVTn_aqHrUVLjDatWHlMZns5MX4COed9A', '2024-06-28 03:06:10.952979', '2024-06-29 03:06:10.000000', 1, '7d8538a91e264ae8a102f794b4bc912c');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (276, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTYzMDQxNCwiaWF0IjoxNzE5NTQ0MDE0LCJqdGkiOiI3MGEzZDQ1N2U3YTk0ZTM5YmQ5NDVkN2M1YTc3MDY1ZCIsInVzZXJfaWQiOjF9.XwjQ-PC11BlmzkfUDFmZR19IbSHia3ZFo2g_P282AyM', '2024-06-28 03:06:54.853648', '2024-06-29 03:06:54.000000', 1, '70a3d457e7a94e39bd945d7c5a77065d');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (277, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTYzMDU4NiwiaWF0IjoxNzE5NTQ0MTg2LCJqdGkiOiI2NjE4YWQzYzVkNDI0YTFjOGNmN2E2MTliYzM4MDk1ZSIsInVzZXJfaWQiOjF9.v4dnsZdnWAAJR0UJdqV2Nj1MIwuwy7Wm10-P2L2DggI', '2024-06-28 03:09:46.151196', '2024-06-29 03:09:46.000000', 1, '6618ad3c5d424a1c8cf7a619bc38095e');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (278, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTYzMTAxOSwiaWF0IjoxNzE5NTQ0NjE5LCJqdGkiOiJkYmU3NTBmMGM1Zjc0NTJmOWZhMzk5MTQ1ZTMyMzU1OSIsInVzZXJfaWQiOjF9.2XsQrCaxokrNXlxUdSoHhMIoxwWEua5Rmif8xqfuc8M', '2024-06-28 03:16:59.615135', '2024-06-29 03:16:59.000000', 1, 'dbe750f0c5f7452f9fa399145e323559');
INSERT INTO `token_blacklist_outstandingtoken` VALUES (279, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTcxOTYzMTQ5MCwiaWF0IjoxNzE5NTQ1MDkwLCJqdGkiOiI3OGViY2M1MzlhN2Y0OTI5OTFjZmE0YTMzZjU2NjljNiIsInVzZXJfaWQiOjF9.loSAuXMdDkTcq6SGrIC-G0gx1MoxsIZ4_Wgftp4QNXc', '2024-06-28 03:24:50.685419', '2024-06-29 03:24:50.000000', 1, '78ebcc539a7f492991cfa4a33f5669c6');

-- ----------------------------
-- Table structure for users_user
-- ----------------------------
DROP TABLE IF EXISTS `users_user`;
CREATE TABLE `users_user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE,
  UNIQUE INDEX `email`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_user
-- ----------------------------
INSERT INTO `users_user` VALUES (1, 'pbkdf2_sha256$260000$6VTNarGPKms0RRsFoBlgZc$FYgDc7u46MBfnXq0nsEH/ohHmV2D74SoMLxWQNSTLhw=', '2024-06-14 05:29:58.336821', 1, 'root', '', '', 1, 1, '2024-06-14 05:29:24.357353', 'admin', '807863225@qq.com', NULL, '2024-06-14 05:29:24.550364');
INSERT INTO `users_user` VALUES (2, 'pbkdf2_sha256$260000$pvoDp3U7Ih3uqC3TGlwH2x$E645+JKXBu1QKlzgmNgGZlp2qIi3ZWolQdjpMRWCOBE=', NULL, 0, 'testuser', '', '', 0, 1, '2024-06-14 09:34:05.315982', 'student', 'testuser@example.com', '1234567890', '2024-06-14 09:34:05.316958');
INSERT INTO `users_user` VALUES (3, 'pbkdf2_sha256$260000$62RyjyxLi4vC9ysboQnv8S$sSUnE9sfw8sWM6JQdR5X6dsFBBR+lzcQ5HXMBHGvT0k=', NULL, 0, 'admin', '', '', 0, 1, '2024-06-23 04:36:52.488858', 'student', '123456@sample.com', NULL, '2024-06-23 04:36:52.488858');
INSERT INTO `users_user` VALUES (4, 'pbkdf2_sha256$260000$FMAdF5JsC1uiCFcgnwfX5o$o66ZkuSGwfoFNhXXEzu6Kc+2TGPx0vA33ibFLmiLsfY=', NULL, 0, 'admin2', '', '', 0, 1, '2024-06-23 04:37:19.420292', 'student', '123456789@sample.com', NULL, '2024-06-23 04:37:19.421295');
INSERT INTO `users_user` VALUES (5, 'pbkdf2_sha256$260000$KhIoUJXTlZFJNadoA30UIM$KWCz2UO8ODiXXW0nhbUXxPZpuEwLjArFomM2vcDf2o4=', NULL, 0, 'liangzhongyu', '', '', 0, 1, '2024-06-23 05:15:35.436745', 'admin', '12345678@sample.com', NULL, '2024-06-23 05:15:35.437366');
INSERT INTO `users_user` VALUES (6, 'pbkdf2_sha256$260000$U6Uqcy17fDdCdmRk3TPGqN$6UB/ZpXKvzGWkbwzYEFFcNUEeey4UMuQMGPKtpk3Bmw=', NULL, 0, 'liangzhong', '', '', 0, 1, '2024-06-23 05:16:21.594003', 'admin', '1234567@sample.com', NULL, '2024-06-23 05:16:21.594003');
INSERT INTO `users_user` VALUES (7, 'pbkdf2_sha256$260000$yMNQkIboeMdgYZBYLrXY7W$+5YCgKY7wRnqFtgGT2kPSznPyMkEumbPDMfRggmLLZE=', NULL, 0, 'zhong', '', '', 0, 1, '2024-06-25 03:53:36.840276', 'teacher', '24162416@sample.com', NULL, '2024-06-25 03:53:36.850050');
INSERT INTO `users_user` VALUES (8, 'pbkdf2_sha256$260000$NXVF7IDOEOTYb82uBs78hp$SH87yjsuExmlJO/a3oaDpHt39yA+u9zPmXqnsQylLfk=', NULL, 0, 'lzy', '', '', 0, 1, '2024-06-25 08:26:34.914072', 'student', '80786322@qq.com', NULL, '2024-06-25 08:26:34.914072');
INSERT INTO `users_user` VALUES (9, 'pbkdf2_sha256$260000$TwyIbnlD3xUzYN0zEwGCma$kYwYQKzc/liBIBnYKPz15fSyMXYfdFP9Ol10xc8fhd0=', NULL, 0, 'IKUN', '', '', 0, 1, '2024-06-25 09:08:19.227599', 'student', 'ikunhome@sample.com', '114515145', '2024-06-25 09:08:19.228577');
INSERT INTO `users_user` VALUES (10, 'pbkdf2_sha256$260000$asdcR85RnH4mkEOagtp6Dv$/z2vZDAeJnFPSCJvF9TQzjzAZMHmuh4x+sgdWM6T/qw=', NULL, 0, 'kunkun', '', '', 0, 1, '2024-06-25 09:15:14.521432', 'teacher', 'ikunshome@sample.com', '20240625', '2024-06-25 09:15:14.521432');
INSERT INTO `users_user` VALUES (11, 'pbkdf2_sha256$260000$cZ87e349SUmJ31Y5cxXmSb$FZA0Gc9uYXEHejXmzVX1vJdFY6iB8nnyaAEONjnd8DE=', NULL, 0, 'ling', '', '', 0, 1, '2024-06-25 10:32:42.945556', 'teacher', 'chenggao@qq.com', '2312321312', '2024-06-25 10:32:42.946532');
INSERT INTO `users_user` VALUES (12, 'pbkdf2_sha256$260000$7ABMXI6RxtdhQfb2BwV86k$VfKoY0l7wJ7sdQutTRGARRR7d3bV+/2crQB77tnRLms=', NULL, 0, 'kuaidian', '', '', 0, 1, '2024-06-25 10:34:06.052926', 'teacher', 'aaaaaaaaa@qqq.com', '12345567', '2024-06-25 10:34:06.052926');
INSERT INTO `users_user` VALUES (13, 'pbkdf2_sha256$260000$mqg5mLwrPwFSX3bqAYvjhp$5EXrCYchE/oD7KUCI7xA3XuNYD6mMp5MoY4M9EswYV4=', NULL, 0, 'haibuxing', '', '', 0, 1, '2024-06-25 10:39:12.795623', 'student', '123123123@sample.com', 'qweqew123', '2024-06-25 10:39:12.796651');
INSERT INTO `users_user` VALUES (14, 'pbkdf2_sha256$260000$ldIdEK0NLbLSVCqUfmVnc5$z5YYg2dWuoymaVD7OOPBQH/RxaSPbf3hoeIqnj9vu+4=', NULL, 0, 'sususu', '', '', 0, 1, '2024-06-25 11:24:43.232579', 'student', '222111333@qqq.com', 'sdada', '2024-06-25 11:24:43.232579');
INSERT INTO `users_user` VALUES (15, 'pbkdf2_sha256$260000$ZYMZu1l0ROB31Ux1DIvm3T$RB76vxflbNqSwbNuF+V24fK568bypFAxVR5xgyIj5N4=', NULL, 0, 'adadadad', '', '', 0, 1, '2024-06-25 11:34:18.815527', 'student', 'qweqwewqe@qq.com', '123123123', '2024-06-25 11:34:18.815527');
INSERT INTO `users_user` VALUES (16, 'pbkdf2_sha256$260000$8XKc5jTQ6xQyGsJTlQzUyG$aqlf4vtKlo7dD2y9VUHFpDky3iK72hnsPDBWKHD23UM=', NULL, 0, 'kkkkkk', '', '', 0, 1, '2024-06-25 11:48:12.798534', 'student', '12345612@qq.com', '12321315', '2024-06-25 11:48:12.799545');
INSERT INTO `users_user` VALUES (17, 'pbkdf2_sha256$260000$rUJClQGTsY7nKu0hIyhT7J$lvKYUa7CIPnIGBImu9lfh/lsR4LigAcvcZLj8ybt1jk=', NULL, 0, 'llkl', '', '', 0, 1, '2024-06-25 11:53:54.031431', 'student', '1234142@QQ.COM', '255456', '2024-06-25 11:53:54.031431');
INSERT INTO `users_user` VALUES (18, 'pbkdf2_sha256$260000$IPAobJZJzJm6C3M7ZxD0Bc$Ex7f6+r0xTDZoQvvl0nBCIYpB7r4x0jkcwf8fufeeKA=', NULL, 0, 'asdad', '', '', 0, 1, '2024-06-25 11:55:09.001474', 'teacher', 'sdada@qq.com', 'asdasdas', '2024-06-25 11:55:09.001474');

-- ----------------------------
-- Table structure for users_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_user_groups`;
CREATE TABLE `users_user_groups`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_user_groups_user_id_group_id_b88eab82_uniq`(`user_id` ASC, `group_id` ASC) USING BTREE,
  INDEX `users_user_groups_group_id_9afc8d0e_fk_auth_group_id`(`group_id` ASC) USING BTREE,
  CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_user_user_permissions`;
CREATE TABLE `users_user_user_permissions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_user_user_permissions_user_id_permission_id_43338c45_uniq`(`user_id` ASC, `permission_id` ASC) USING BTREE,
  INDEX `users_user_user_perm_permission_id_0b93982e_fk_auth_perm`(`permission_id` ASC) USING BTREE,
  CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_user_user_permissions
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
