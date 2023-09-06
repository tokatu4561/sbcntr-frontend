create table if not exists User (
    id int NOT NULL AUTO_INCREMENT,
    `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` datetime ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `name` varchar(20) NULL DEFAULT NULL,
    `email` varchar(20),
    `hashedPassword` varchar(50) NULL DEFAULT NULL,
    `role` varchar(50) NOT NULL DEFAULT "user",
    PRIMARY KEY ( `id` ) 
);

create table if not exists Session (
    id int NOT NULL AUTO_INCREMENT,
    `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` datetime ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `expiresAt` datetime NULL,
    `userId` int NOT NULL,
    `handle` varchar(50) UNIQUE,
    `hashedSessionToken` varchar(50) NULL DEFAULT NULL,
    `antiCSRFToken` varchar(50) NULL DEFAULT NULL,
    `publicData` varchar(50) NULL DEFAULT NULL,
    `privateData` varchar(50) NULL DEFAULT NULL,
    PRIMARY KEY ( `id` )
);

create table if not exists Item (
    id int NOT NULL AUTO_INCREMENT,
    `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `name` varchar(10), 
    title varchar(10),
    img varchar(10),
    favorite boolean,
    PRIMARY KEY ( `id` )
);

create table if not exists Notification (
    id int NOT NULL AUTO_INCREMENT,
    `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    title varchar(20),
    category varchar(50),
    unread boolean,
    PRIMARY KEY ( `id` )
);