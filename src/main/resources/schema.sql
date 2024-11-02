CREATE TABLE DIVISION (
    divisionId BIGINT AUTO_INCREMENT PRIMARY KEY,
    division_Name VARCHAR(50) NOT NULL
);


CREATE TABLE BUILD (
    buildId BIGINT AUTO_INCREMENT PRIMARY KEY,
    buildName VARCHAR(50) NOT NULL
);


CREATE TABLE DEPARTMENT (
    departmentId BIGINT AUTO_INCREMENT PRIMARY KEY,
    departmentName VARCHAR(50) NOT NULL 
);


CREATE TABLE ROOM (
    roomId VARCHAR(10) NOT NULL,
    capacity INT NOT NULL,
    roomNameENG VARCHAR(50),
    roomNameTH VARCHAR(50),
    roomStatus VARCHAR(50),
    buildId BIGINT, 
    departmentId BIGINT,
    PRIMARY KEY (roomId, buildId),
    CONSTRAINT fk_build FOREIGN KEY (buildId) REFERENCES BUILD(buildId),
    CONSTRAINT fk_department FOREIGN KEY (departmentId) REFERENCES DEPARTMENT(departmentId)
);


CREATE TABLE USERS (
    userId BIGINT AUTO_INCREMENT PRIMARY KEY,
    usersName VARCHAR(50) NOT NULL,
    usersType VARCHAR(50) NOT NULL,
    usersMail VARCHAR(50) NOT NULL,
    usersPhone VARCHAR(50) NOT NULL,
    usersPassword VARCHAR(50) NOT NULL,
    divisionId BIGINT,
    CONSTRAINT fk_division FOREIGN KEY (divisionId) REFERENCES DIVISION(divisionId)  
);
