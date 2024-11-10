CREATE
DATABASE `llama` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE TABLE `answers`
(
    `id`          int NOT NULL AUTO_INCREMENT,
    `question_id` int DEFAULT NULL,
    `correct`     tinyint(1) DEFAULT NULL,
    `created_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at`  timestamp NULL DEFAULT NULL,
    `text`        text,
    PRIMARY KEY (`id`),
    KEY           `question_id` (`question_id`),
    CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `class_answers`
(
    `id`                int NOT NULL AUTO_INCREMENT,
    `class_question_id` int DEFAULT NULL,
    `correct`           tinyint(1) DEFAULT NULL,
    `created_at`        timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at`        timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at`        timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY                 `class_question_id` (`class_question_id`),
    CONSTRAINT `class_answers_ibfk_1` FOREIGN KEY (`class_question_id`) REFERENCES `class_questions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `class_questions`
(
    `id`         int NOT NULL AUTO_INCREMENT,
    `class_id`   int DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY          `class_id` (`class_id`),
    CONSTRAINT `class_questions_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `classes`
(
    `id`         int NOT NULL AUTO_INCREMENT,
    `user_id`    int DEFAULT NULL,
    `content`    tinyint(1) DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY          `user_id` (`user_id`),
    CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `explains`
(
    `id`         int NOT NULL AUTO_INCREMENT,
    `answer_id`  int DEFAULT NULL,
    `content`    text,
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY          `question_id` (`answer_id`),
    CONSTRAINT `explains_ibfk_1` FOREIGN KEY (`answer_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `image_questions`
(
    `id`          int NOT NULL AUTO_INCREMENT,
    `question_id` int DEFAULT NULL,
    `created_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at`  timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY           `question_id` (`question_id`),
    CONSTRAINT `image_questions_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `questions`
(
    `id`         int NOT NULL AUTO_INCREMENT,
    `test_id`    int DEFAULT NULL,
    `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` timestamp NULL DEFAULT NULL,
    `text`       text,
    PRIMARY KEY (`id`),
    KEY          `test_id` (`test_id`),
    CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tests`
(
    `id`          int          NOT NULL AUTO_INCREMENT,
    `title`       varchar(255) NOT NULL,
    `description` varchar(255) DEFAULT NULL,
    `institution` varchar(255) DEFAULT NULL,
    `subject`     varchar(255) DEFAULT NULL,
    `date`        datetime     DEFAULT NULL,
    `created_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at`  timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `users`
(
    `id`         int          NOT NULL AUTO_INCREMENT,
    `email`      varchar(255) NOT NULL,
    `password`   varchar(255) NOT NULL,
    `created_at` datetime(3) DEFAULT NULL,
    `updated_at` datetime(3) DEFAULT NULL,
    `deleted_at` datetime(3) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY          `idx_users_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `users_answers`
(
    `id`          int NOT NULL AUTO_INCREMENT,
    `user_id`     int DEFAULT NULL,
    `question_id` int DEFAULT NULL,
    `answer_id`   int DEFAULT NULL,
    `created_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at`  timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at`  timestamp NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY           `user_id` (`user_id`),
    KEY           `question_id` (`question_id`),
    KEY           `answer_id` (`answer_id`),
    CONSTRAINT `users_answers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
    CONSTRAINT `users_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
    CONSTRAINT `users_answers_ibfk_3` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE
DATABASE `llama` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE
DATABASE `llama` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE
DATABASE `llama` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE DATABASE `llama` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

CREATE DATABASE `llama` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;