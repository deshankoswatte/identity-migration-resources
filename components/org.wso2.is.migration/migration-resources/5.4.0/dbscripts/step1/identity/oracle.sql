ALTER TABLE IDN_OAUTH_CONSUMER_APPS ADD USER_ACCESS_TOKEN_EXPIRE_TIME NUMBER(19) DEFAULT 3600000
/
ALTER TABLE IDN_OAUTH_CONSUMER_APPS ADD APP_ACCESS_TOKEN_EXPIRE_TIME NUMBER(19) DEFAULT 3600000
/
ALTER TABLE IDN_OAUTH_CONSUMER_APPS ADD REFRESH_TOKEN_EXPIRE_TIME NUMBER(19) DEFAULT 84600000
/

ALTER TABLE IDN_OAUTH2_ACCESS_TOKEN MODIFY ACCESS_TOKEN VARCHAR(2048)
/
ALTER TABLE IDN_OAUTH2_ACCESS_TOKEN MODIFY REFRESH_TOKEN VARCHAR(2048)
/

CREATE TABLE IDN_OAUTH2_SCOPE_BINDING (
  SCOPE_ID INTEGER NOT NULL,
  SCOPE_BINDING VARCHAR2(255),
  FOREIGN KEY (SCOPE_ID) REFERENCES IDN_OAUTH2_SCOPE(SCOPE_ID) ON DELETE CASCADE)
/


ALTER TABLE IDN_IDENTITY_USER_DATA MODIFY DATA_VALUE VARCHAR(2048)
/

DELETE FROM IDN_CLAIM WHERE CLAIM_URI = 'urn:scim:schemas:core:1.0:roles'
/
