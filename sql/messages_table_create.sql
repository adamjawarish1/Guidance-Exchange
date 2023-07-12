CREATE TABLE Messages_t (
  MessageID INT(9) NOT NULL Auto_Increment,
  SenderID INT(9) NOT NULL,
  MessageSubject VARCHAR(255) NOT NULL,
  MessageBody LONGTEXT NOT NULL,
  SendDate DATETIME NOT NULL,
  ParentMessageID INT(9),
  CONSTRAINT Messages_t_PK PRIMARY KEY (MessageID),
  CONSTRAINT Messages_t_FK1 FOREIGN KEY (SenderID) REFERENCES Auth_t(UserID)
) Auto_Increment = 1;