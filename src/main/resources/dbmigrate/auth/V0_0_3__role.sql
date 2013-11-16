

-------------------------------------------------------------------------------
--  role
-------------------------------------------------------------------------------
CREATE TABLE AUTH_ROLE(
        ID BIGINT GENERATED BY DEFAULT AS IDENTITY(START WITH 1) NOT NULL,
        NAME VARCHAR(50),
	GLOBAL_ID BIGINT,
	LOCAL_ID BIGINT,
        DESCN VARCHAR(200),
	ROLE_DEF_ID BIGINT,
        CONSTRAINT PK_AUTH_ROLE PRIMARY KEY(ID),
        CONSTRAINT FK_AUTH_ROLE_DEF FOREIGN KEY(ROLE_DEF_ID) REFERENCES AUTH_ROLE_DEF(ID)
);