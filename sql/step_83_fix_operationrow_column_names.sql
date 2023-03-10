ALTER TABLE OH_OPERATIONROW CHANGE OPER_ID OPER_OPE_ID_A VARCHAR(10) NOT NULL;

ALTER TABLE OH_OPERATIONROW ENGINE = INNODB, CONVERT TO CHARACTER SET utf8;

ALTER TABLE OH_OPERATIONROW 
ADD INDEX FK_OPERATIONROW_OPERATION_idx (OPER_OPE_ID_A ASC);

ALTER TABLE OH_OPERATIONROW 
ADD CONSTRAINT FK_OPERATIONROW_OPERATION
  FOREIGN KEY (OPER_OPE_ID_A)
  REFERENCES oh_operation (OPE_ID_A)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


  