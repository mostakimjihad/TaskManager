-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2024 at 11:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taskmanager`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add project', 7, 'add_project'),
(26, 'Can change project', 7, 'change_project'),
(27, 'Can delete project', 7, 'delete_project'),
(28, 'Can view project', 7, 'view_project'),
(29, 'Can add employee', 8, 'add_employee'),
(30, 'Can change employee', 8, 'change_employee'),
(31, 'Can delete employee', 8, 'delete_employee'),
(32, 'Can view employee', 8, 'view_employee'),
(33, 'Can add project update', 9, 'add_projectupdate'),
(34, 'Can change project update', 9, 'change_projectupdate'),
(35, 'Can delete project update', 9, 'delete_projectupdate'),
(36, 'Can view project update', 9, 'view_projectupdate');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$IIFS0Sk3G5WUp81nXYum84$ww4L1hdHxd+V4806EbMdCK3t24cY511vK5S0Vj7F9Zg=', '2024-04-01 06:19:55.520617', 1, 'jihad', '', '', 'mostakimjihad652001@gmail.com', 1, 1, '2024-04-01 06:19:07.172827');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'manager', 'employee'),
(7, 'manager', 'project'),
(9, 'manager', 'projectupdate'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-04-01 05:44:25.139897'),
(2, 'auth', '0001_initial', '2024-04-01 05:44:25.461315'),
(3, 'admin', '0001_initial', '2024-04-01 05:44:25.542210'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-04-01 05:44:25.546710'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-01 05:44:25.551437'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-04-01 05:44:25.590138'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-04-01 05:44:25.623622'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-04-01 05:44:25.632775'),
(9, 'auth', '0004_alter_user_username_opts', '2024-04-01 05:44:25.638623'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-04-01 05:44:25.663819'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-04-01 05:44:25.665206'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-04-01 05:44:25.669895'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-04-01 05:44:25.679004'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-04-01 05:44:25.688360'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-04-01 05:44:25.698560'),
(16, 'auth', '0011_update_proxy_permissions', '2024-04-01 05:44:25.705809'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-04-01 05:44:25.715680'),
(18, 'manager', '0001_initial', '2024-04-01 05:44:25.882191'),
(19, 'sessions', '0001_initial', '2024-04-01 05:44:25.901193'),
(20, 'manager', '0002_alter_employee_username', '2024-04-01 06:09:27.984621');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('fx76naka22fu0o4l79yvshjbvomfc9z5', '.eJxVjsEOgjAQRP-lZ9MsbaHg0bvf0Ox2dwU1kFA4Gf9dSIjR67yZl3mZhOvSp7XInAY2Z1OZ029GmB8y7oDvON4mm6dxmQeye8UetNjrxPK8HN0_QY-l39YuSNe1IaBA5DpHdcI5k3cEmVRrr4RaR6DgoGp9FOKmgoaiCigH3KTfj_79AcOjPKw:1rrkli:_Ks7yktyOZYlgPMV7ZB7C1J1KctSmz5qCiSqyX2g9lQ', '2024-04-16 20:30:06.350053');

-- --------------------------------------------------------

--
-- Table structure for table `manager_employee`
--

CREATE TABLE `manager_employee` (
  `id` bigint(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `roll` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager_employee`
--

INSERT INTO `manager_employee` (`id`, `username`, `password`, `roll`) VALUES
(1, 'dotlines', 'dotlines', 'admin'),
(3, 'jihad', 'jihad', 'manager'),
(4, 'sagor', 'sagor', 'manager'),
(5, 'real', 'real', 'manager'),
(6, 'rohan', 'rohan', 'developer'),
(7, 'arafat', 'arafat', 'developer'),
(8, 'video', 'video', 'manager'),
(9, 'demo', 'demo', 'manager'),
(10, 'dev', 'dev', 'developer'),
(11, 'dev2', 'dev2', 'developer'),
(12, 'aminul', 'a,omi;', 'manager'),
(13, 'akash', 'akash', 'developer'),
(14, 'hasib', 'hasib', 'manager'),
(15, 'miraz', 'miraz', 'developer');

-- --------------------------------------------------------

--
-- Table structure for table `manager_employee_projects`
--

CREATE TABLE `manager_employee_projects` (
  `id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager_employee_projects`
--

INSERT INTO `manager_employee_projects` (`id`, `employee_id`, `project_id`) VALUES
(1, 3, 1),
(4, 3, 2),
(15, 3, 4),
(17, 3, 5),
(21, 3, 6),
(2, 4, 1),
(16, 4, 4),
(22, 4, 6),
(5, 5, 2),
(3, 6, 1),
(7, 6, 2),
(19, 6, 5),
(23, 6, 6),
(8, 7, 2),
(20, 7, 5),
(11, 8, 3),
(12, 9, 3),
(13, 10, 3),
(14, 11, 3),
(18, 14, 5),
(24, 15, 6);

-- --------------------------------------------------------

--
-- Table structure for table `manager_project`
--

CREATE TABLE `manager_project` (
  `id` bigint(20) NOT NULL,
  `project_name` varchar(30) NOT NULL,
  `due_date` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager_project`
--

INSERT INTO `manager_project` (`id`, `project_name`, `due_date`, `status`) VALUES
(1, 'taskmanager', '2024-04-24', 'ongoing'),
(2, 'test', '2024-04-18', 'complete'),
(3, 'Demo Project', '2024-04-18', 'complete'),
(4, 'New Test', '2024-04-25', 'ongoing'),
(5, 'FOOD PANDA', '2024-04-12', 'complete'),
(6, 'BKASH', '2024-04-19', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `manager_projectupdate`
--

CREATE TABLE `manager_projectupdate` (
  `id` bigint(20) NOT NULL,
  `comment` varchar(30) NOT NULL,
  `completion` varchar(30) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `project_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manager_projectupdate`
--

INSERT INTO `manager_projectupdate` (`id`, `comment`, `completion`, `employee_id`, `project_id`) VALUES
(8, 'done', '2', 6, 1),
(9, 'yo', '5', 6, 1),
(10, 'frontend done', '10', 7, 2),
(11, 'login backed done', '20', 6, 2),
(12, 'fully done', '100', 6, 2),
(14, 'frontend done', '50', 10, 3),
(15, 'backend done', '100', 10, 3),
(16, 'frontend done', '50', 6, 5),
(17, 'backend done', '100', 6, 5),
(18, 'frontend done', '50', 15, 6),
(19, 'backend done', '100', 15, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `manager_employee`
--
ALTER TABLE `manager_employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manager_employee_username_518988e2_uniq` (`username`);

--
-- Indexes for table `manager_employee_projects`
--
ALTER TABLE `manager_employee_projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `manager_employee_projects_employee_id_project_id_95ff2cc4_uniq` (`employee_id`,`project_id`),
  ADD KEY `manager_employee_pro_project_id_4813c1ae_fk_manager_p` (`project_id`);

--
-- Indexes for table `manager_project`
--
ALTER TABLE `manager_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager_projectupdate`
--
ALTER TABLE `manager_projectupdate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manager_projectupdat_employee_id_2706ceeb_fk_manager_e` (`employee_id`),
  ADD KEY `manager_projectupdate_project_id_02a62dbb_fk_manager_project_id` (`project_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `manager_employee`
--
ALTER TABLE `manager_employee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `manager_employee_projects`
--
ALTER TABLE `manager_employee_projects`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `manager_project`
--
ALTER TABLE `manager_project`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `manager_projectupdate`
--
ALTER TABLE `manager_projectupdate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `manager_employee_projects`
--
ALTER TABLE `manager_employee_projects`
  ADD CONSTRAINT `manager_employee_pro_employee_id_8a317ae6_fk_manager_e` FOREIGN KEY (`employee_id`) REFERENCES `manager_employee` (`id`),
  ADD CONSTRAINT `manager_employee_pro_project_id_4813c1ae_fk_manager_p` FOREIGN KEY (`project_id`) REFERENCES `manager_project` (`id`);

--
-- Constraints for table `manager_projectupdate`
--
ALTER TABLE `manager_projectupdate`
  ADD CONSTRAINT `manager_projectupdat_employee_id_2706ceeb_fk_manager_e` FOREIGN KEY (`employee_id`) REFERENCES `manager_employee` (`id`),
  ADD CONSTRAINT `manager_projectupdate_project_id_02a62dbb_fk_manager_project_id` FOREIGN KEY (`project_id`) REFERENCES `manager_project` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
