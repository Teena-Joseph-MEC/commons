
CREATE TABLE IF NOT EXISTS `notification` (
    `notification_id` INT NOT NULL,
    `employee_id`INT NOT NULL,
    `message` VARCHAR(30) NOT NULL,
    `is_read` BOOLEAN DEFAULT FALSE,
    `title` VARCHAR(30) NOT NULL,
    `date` DATE,
    PRIMARY KEY(`notification_id`)
);


CREATE TABLE IF NOT EXISTS `substitution` (
	`substitute_id` INT NOT NULL,
	`leave_id` INT NOT NULL,
	`date_of_approval` DATE NOT NULL,
	PRIMARY KEY (`substitute_id`)
);

CREATE TABLE `login` (
    `employee_id` INT NOT NULL,
    `username` VARCHAR(128) NOT NULL,
    `password` VARCHAR(256) NOT NULL,
    `isActive` BOOLEAN DEFAULT TRUE,
    `roles` VARCHAR(512), 
    `created_ts` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY(`username`)
);

INSERT INTO login (employee_id,username, password,isActive, roles, created_ts) VALUES (1,'admin','admin',true,'ADMIN', current_timestamp());
INSERT INTO login (employee_id,username, password,isActive, roles, created_ts) VALUES (2,'arjun','qwerty',true,'STAFF', current_timestamp());
INSERT INTO login (employee_id,username, password,isActive, roles, created_ts) VALUES (3,'chinmay','qwertyu',true,'ADMIN', current_timestamp());

