CREATE table "USERCOMMENT" (
    "ID"         NUMBER NOT NULL,
    "COMMENT1"   VARCHAR2(4000),
    "EMAIL"      VARCHAR2(4000),
    constraint  "USERCOMMENT_PK" primary key ("ID")
)
/

CREATE sequence "USERCOMMENT_SEQ" 
/

CREATE trigger "BI_USERCOMMENT"  
  before insert on "USERCOMMENT"              
  for each row 
begin  
    select "USERCOMMENT_SEQ".nextval into :NEW.ID from dual;
end;
/   

