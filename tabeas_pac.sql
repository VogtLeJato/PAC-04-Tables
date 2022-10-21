CREATE TABLE COURSES
(
    COURSE_ID INT PRIMARY KEY,
    COURSE_NAME VARCHAR(30)
)

CREATE TABLE CLASSES
(
    CLASS_ID INT PRIMARY KEY,
    CLASS_FASE INT,
    COURSE_ID FOREIGN KEY REFERENCES COURSES(COURSE_ID)
)

CREATE TABLE USERS
(
    USER_REGISTRATION VARCHAR(30) PRIMARY KEY,
    USER_NAME VARCHAR(30),
    USER_EMAIL VARCHAR(30),
    CLASS_ID INT FOREIGN KEY REFERENCES CLASSES(CLASS_ID)
)

CREATE TABLE PHOTOS
(
    USER_REGISTRATION VARCHAR(30) PRIMARY KEY FOREIGN KEY REFERENCES USERS(USER_REGISTRATION),
    PHOTO_FULL_PATH VARCHAR(30)
)

CREATE TABLE CERTIFICATES
(
    CERTIFICATE_ID INT PRIMARY KEY,
    USER_REGISTRATION VARCHAR(30) FOREIGN KEY REFERENCES USERS(USER_REGISTRATION),
    CERTIFICATE_FULL_PATH VARCHAR(30),
    CERTIFICATE_DESCRIPTION VARCHAR(30),
    CERTIFICATE_DURATION INT 
)

CREATE TABLE INTERACTIONS
(
    INTERACTION_DATETIME DATETIME,
    INTERACTION_TYPE INT,
    CERTIFICATE_ID INT FOREIGN KEY REFERENCES CERTIFICATES(CERTIFICATE_ID),
    INTERACTION_DESCRIPTION VARCHAR(30),
    CONSTRAINT INTERACTION_PK PRIMARY KEY(INTERACTION_DATETIME, CERTIFICATE_ID)
)

