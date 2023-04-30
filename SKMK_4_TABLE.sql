-- 계정 생성 --SYS 계정으로만 실행 가능
/*
CREATE USER C##SKMK IDENTIFIED BY 1234;
GRANT CONNECT , RESOURCE TO C##SKMK;
ALTER USER C##SKMK DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;
*/



DROP TABLE "MEMBER"                 CASCADE CONSTRAINTS PURGE;
DROP TABLE "FREE_BOARD"             CASCADE CONSTRAINTS PURGE;
DROP TABLE "FREE_BOARD_COMMENT"     CASCADE CONSTRAINTS PURGE;
DROP TABLE "CAREER"                 CASCADE CONSTRAINTS PURGE;
DROP TABLE "Untitled"               CASCADE CONSTRAINTS PURGE;
DROP TABLE "ALERT_CAT"              CASCADE CONSTRAINTS PURGE;
DROP TABLE "QUOTATION__STATUS"      CASCADE CONSTRAINTS PURGE;
DROP TABLE "ALERT"                  CASCADE CONSTRAINTS PURGE;              
DROP TABLE "BANNER"                 CASCADE CONSTRAINTS PURGE;
DROP TABLE "ADMIN_RIGHTS"           CASCADE CONSTRAINTS PURGE;
DROP TABLE "ESTIMATE_CAT"           CASCADE CONSTRAINTS PURGE;
DROP TABLE "REVIEW_COMMENT"         CASCADE CONSTRAINTS PURGE;
DROP TABLE "FREELACNER_QA_REPLY"    CASCADE CONSTRAINTS PURGE;
DROP TABLE "FREELANCER_QA"          CASCADE CONSTRAINTS PURGE;
DROP TABLE "WITHDRAWAL_DETAIL"      CASCADE CONSTRAINTS PURGE;
DROP TABLE "DEPOSIT _DETAIL"        CASCADE CONSTRAINTS PURGE;
DROP TABLE "ACCOUNT"                CASCADE CONSTRAINTS PURGE;
DROP TABLE "RECEIPT"                CASCADE CONSTRAINTS PURGE;
DROP TABLE "WISH_LIST"              CASCADE CONSTRAINTS PURGE;
DROP TABLE "FREELANCER_CLASS"       CASCADE CONSTRAINTS PURGE;
DROP TABLE "REQUEST_CAT"            CASCADE CONSTRAINTS PURGE;
DROP TABLE "REPORT_CATEGORY"        CASCADE CONSTRAINTS PURGE;
DROP TABLE "NOTICE_CATEGORY"        CASCADE CONSTRAINTS PURGE;
DROP TABLE "FAQ_CATEGORY"           CASCADE CONSTRAINTS PURGE;
DROP TABLE "USER_STATUS"            CASCADE CONSTRAINTS PURGE;
DROP TABLE "REVIEW"                 CASCADE CONSTRAINTS PURGE;
DROP TABLE "QUESTION_ANSWER"        CASCADE CONSTRAINTS PURGE;
DROP TABLE "ESTIMATE_OPTION"        CASCADE CONSTRAINTS PURGE;
DROP TABLE "QUOTATION"              CASCADE CONSTRAINTS PURGE;
DROP TABLE "REPORT"                 CASCADE CONSTRAINTS PURGE;
DROP TABLE "QNA"                    CASCADE CONSTRAINTS PURGE;
DROP TABLE "NOTICE"                 CASCADE CONSTRAINTS PURGE;
DROP TABLE "ADMN"                   CASCADE CONSTRAINTS PURGE;
DROP TABLE "FAQ"                    CASCADE CONSTRAINTS PURGE;
DROP TABLE "ESTIMATE"               CASCADE CONSTRAINTS PURGE;
DROP TABLE "REQUEST"                CASCADE CONSTRAINTS PURGE;
DROP TABLE "FREELANCER"             CASCADE CONSTRAINTS PURGE;
DROP TABLE "MESSAGE"                CASCADE CONSTRAINTS PURGE;
DROP TABLE "QNA_CATEGORY"           CASCADE CONSTRAINTS PURGE;
DROP TABLE "EDUCATION"              CASCADE CONSTRAINTS PURGE;
DROP TABLE "EDU_SCH_STATUS"         CASCADE CONSTRAINTS PURGE;

DROP SEQUENCE SEQ_MEMBER                ;
DROP SEQUENCE SEQ_FREE_BOARD            ;
DROP SEQUENCE SEQ_FREE_BOARD_COMMENT    ;
DROP SEQUENCE SEQ_QNA_CATEGORY          ;
DROP SEQUENCE SEQ_MESSAGE               ;
DROP SEQUENCE SEQ_FREELANCER            ;
DROP SEQUENCE SEQ_REQUEST               ;
DROP SEQUENCE SEQ_ESTIMATE              ;
DROP SEQUENCE SEQ_FAQ                   ;
DROP SEQUENCE SEQ_ADMN                  ;
DROP SEQUENCE SEQ_NOTICE                ;
DROP SEQUENCE SEQ_QNA                   ;
DROP SEQUENCE SEQ_REPORT                ;
DROP SEQUENCE SEQ_QUOTATION             ;
DROP SEQUENCE SEQ_ESTIMATE_OPTION       ;
DROP SEQUENCE SEQ_QUESTION_ANSWER       ;
DROP SEQUENCE SEQ_REVIEW                ;
DROP SEQUENCE SEQ_USER_STATUS           ;
DROP SEQUENCE SEQ_FAQ_CATEGORY          ;
DROP SEQUENCE SEQ_NOTICE_CATEGORY       ;
DROP SEQUENCE SEQ_REPORT_CATEGORY       ;
DROP SEQUENCE SEQ_REQUEST_CAT           ;
DROP SEQUENCE SEQ_FREELANCER_CLASS      ;
DROP SEQUENCE SEQ_WISH_LIST             ;
DROP SEQUENCE SEQ_RECEIPT               ;
DROP SEQUENCE SEQ_ACCOUNT               ;
DROP SEQUENCE SEQ_DEPOSIT_DETAIL        ;
DROP SEQUENCE SEQ_WITHDRAWAL_DETAIL     ;
DROP SEQUENCE SEQ_FREELANCER_QA         ;
DROP SEQUENCE SEQ_FREELACNER_QA_REPLY   ;
DROP SEQUENCE SEQ_REVIEW_COMMENT        ;
DROP SEQUENCE SEQ_ESTIMATE_CAT          ;
DROP SEQUENCE SEQ_ADMIN_RIGHTS          ;
DROP SEQUENCE SEQ_BANNER                ;
DROP SEQUENCE SEQ_ALERT                 ;
DROP SEQUENCE SEQ_QUOTATION__STATUS     ;
DROP SEQUENCE SEQ_ALERT_CAT             ;
DROP SEQUENCE SEQ_Untitled              ;
DROP SEQUENCE SEQ_CAREER                ;
DROP SEQUENCE SEQ_EDUCATION             ;
DROP SEQUENCE SEQ_EDU_SCH_STATUS        ;


CREATE TABLE "MEMBER" (
	"MEMBER_NO"	            NUMBER		            NOT NULL,
	"STATUS_NO"	            CHAR(1)	DEFAULT 1	    NOT NULL,
	"MEMBER_ID"	            VARCHAR2(16)		    NOT NULL,
	"MEMBER_PWD"	        VARCHAR2(20)		    NOT NULL,
	"MEMBER_NICK"	        VARCHAR2(30)		    NOT NULL,
	"MEMBER_PHONE"	        CHAR(11)		                ,
	"MEMBER_EMAIL"	        VARCHAR2(100)		            ,
	"MEMBER_INTERST"	    VARCHAR2(100)		            ,
	"MEMBER_SIGN_DATE"	    TIMESTAMP	    DEFAULT SYSDATE	,
	"MEMBER_MODIFI_DATE"	TIMESTAMP	    DEFAULT SYSDATE	,
	"MEMBER_BANK"	        VARCHAR2(18)		            ,
	"MEMBER_ACCOUNT"	    VARCHAR2(100)		            ,
	"MEMBER_CASH"	        NUMBER		                    ,
	"MEMBER_PROFILE_PHOTO"	VARCHAR2(100)		            ,
	"MEMBER_NICK_STATUS"	CHAR(1)		
);


CREATE TABLE "FREE_BOARD" (
	"BOARD_NO"	                NUMBER		        NOT NULL,
	"MEMBER_NO"	                NUMBER		        NOT NULL,
	"FREE_BOARD_TITLE"	        VARCHAR2(20)		        ,
	"FREE_BOARD_CONTENT"	    VARCHAR2(4000)		        ,
	"FREE_BOARD_ENROLL_DATE"	TIMESTAMP		            ,
	"FREE_BOARD_EDIT_DATE"	    TIMESTAMP		            ,
	"FREE_BOARD_STATUS"	        CHAR(1)	DEFAULT 1	NOT NULL,
	"FREE_BOARD_HIT"	        NUMBER		                ,
	"FREE_BOARD_LIKE"	        NUMBER		                ,
	"FREE_BOARD_ATTACHMENT"	    VARCHAR2(4000)		
);

CREATE TABLE "FREE_BOARD_COMMENT" (
	"COMMENT_NO"	                NUMBER		    NOT NULL,
	"MEMBER_NO"	                    NUMBER		    NOT NULL,
	"BOARD_NO"	                    NUMBER		    NOT NULL,
	"REPLY_NO"	                    NUMBER		    NOT NULL,
	"COMMENT_CONTENT"	            VARCHAR2(100)		    ,
	"COMMENT_ENROLL_DATE"	        TIMESTAMP		        ,
	"COMMENT_EDIT_DATE"	            TIMESTAMP		        ,
	"COMMENT_STATUS"	            CHAR(1)		
);


CREATE TABLE "QNA_CATEGORY" (
	"QNA_CAT_NO"	    NUMBER		        NOT NULL,
	"QNA_CAT_NAME"	    VARCHAR2(100)		
);


CREATE TABLE "MESSAGE" (
	"MAIL_NO"	        NUMBER		        NOT NULL,
	"QUOTATION_NO"	    NUMBER		        NOT NULL,
	"MEMBER_NO2"	    NUMBER		        NOT NULL,
	"REQUEST_NO"	    NUMBER		        NOT NULL,
	"MAIL_TITLE"	    VARCHAR2(10)		        ,
	"MAIL_CONTENT"	    VARCHAR2(4000)		        ,
	"MAIL_FILE"	        VARCHAR2(4000)		        ,
	"MAIL_ENROLL_DATE"	TIMESTAMP		            ,
	"MAIL_CHECK"	    CHAR(1)	DEFAULT 0   NOT NULL,
	"MAIL_STATUS"	    CHAR(1)		
);


CREATE TABLE "FREELANCER" (
	"FREELANCER_NO"	            NUMBER		    NOT NULL,
	"MEMBER_NO"	                NUMBER		    NOT NULL,
	"FREELANCER_CLASS_NO"	    NUMBER		    NOT NULL,
	"FREELANCER_INRODUCTION"	VARCHAR2(500)		    ,
	"FIELD_OF_EXPERTISE"	    VARCHAR2(200)		    ,
	"FREELANCER_ADDRESS"	    VARCHAR2(200)		    ,
	"FREELANCER_CONTACT_TIME"	VARCHAR2(50)		    ,
	"FREELANCER_STATUS"	        CHAR(1)		
);


CREATE TABLE "REQUEST" (
	"REQUEST_NO"	        NUMBER		    NOT NULL,
	"REQUEST_CAT_NO"	    NUMBER		    NOT NULL,
	"QUOTATION_NO"	        NUMBER		    NOT NULL,
	"REQUEST_CONSENT"	    CHAR(1)		            ,
	"REQUEST_PRICE"     	NUMBER		            ,
	"REQUEST_PERIOD"	    VARCHAR2(100)		
);


CREATE TABLE "ESTIMATE" (
	"ESTIMATE_NO"	                NUMBER		    NOT NULL,
	"NUM"	                        NUMBER		    NOT NULL,
	"ESTIMATE_CAT_NO"	            NUMBER		    NOT NULL,
	"ESTIMATE_TITLE"	            VARCHAR2(300)		    ,
	"ESTIMATE_THUMBNAIL"	        VARCHAR2(100)		    ,
	"ESTIMATE_LINE_INTRODUCTION"	VARCHAR2(1500)		    ,
	"ESTIMATE_PRICE"	            NUMBER		            ,
	"ESTIMATE_DETAIL"	            VARCHAR2(4000)		    ,
	"ESTIMATE_DETAIL_FILE"	        VARCHAR2(4000)		    ,
	"ESTIMATE_PORTFOLIO"	        VARCHAR2(100)		    ,
	"BUSINESS_REGISTRATION_NUMBER"	VARCHAR2(10)		    ,
	"ESTIMATE_ENROLL_DATE"	        TIMESTAMP		        ,
	"ESTIMATE_MODIFICATION_DATE"	TIMESTAMP		        ,
	"ESTIMATE_STATUS"	            CHAR(1)		            ,
	"ESTIMATE_VIEWS"	            NUMBER		
);


CREATE TABLE "FAQ" (
	"FAQ_NO"	        NUMBER		NOT NULL,
	"ADMIN_NO"	        NUMBER		NOT NULL,
	"FAQ_CAT_NO"	    NUMBER		NOT NULL,
	"FAQ_TITLE"	        VARCHAR2(100)		,
	"FAQ_Q_CONTENT"	    VARCHAR2(4000)		,
	"FAQ_A_CONTENT"	    VARCHAR2(4000)		,
	"FAQ_STATUS"	    CHAR(1)		        ,
	"FAQ_HIT"	        NUMBER		        ,
	"FAQ_ENROLLDATE"	TIMESTAMP		    ,
	"FAQ_MODIFYDATE"	TIMESTAMP		
);


CREATE TABLE "ADMN" (
	"ADMIN_NO"	    NUMBER		    NOT NULL,
	"ADMIN_GR_NO"	NUMBER		    NOT NULL,
	"ADMIN_ID"	    VARCHAR2(16)	    	,
	"ADMIN_PWD"	    VARCHAR2(20)		    ,
	"ADMIN_NICK"	VARCHAR2(30)		
);


CREATE TABLE "NOTICE" (
	"NOTI_NO"	        NUMBER		NOT NULL,
	"NOTI_CAT_NO"	    NUMBER		NOT NULL,
	"ADMIN_NO"	        NUMBER		NOT NULL,
	"NOTI_TITLE"	    VARCHAR2(100)		,
	"NOTI_CONTENT"	    VARCHAR2(4000)		,
	"NOTI_ENROLLDATE"	TIMESTAMP		    ,
	"NOTI_MODIFYDATE"	TIMESTAMP		    ,
	"NOTI_STATUS"	    CHAR(1)		        ,
	"NOTI_HIT"	        NUMBER		
);


CREATE TABLE "QNA" (
	"QNA_NO"	        NUMBER		NOT NULL,
	"MEMBER_NO"	        NUMBER		NOT NULL,
	"QNA_CAT_NO"	    NUMBER		NOT NULL,
	"QNA_TITLE" 	    VARCHAR2(100)		,
	"QNA_CONTENT"	    VARCHAR2(4000)		,
	"QNA_ENROLLDATE"	TIMESTAMP		    ,
	"QNA_STATUS"	    CHAR(1)		
);


CREATE TABLE "REPORT" (
	"RPT_NO"	        NUMBER		    NOT NULL,
	"RPTCAT_NO"	        NUMBER		    NOT NULL,
	"MEMBER_NO"	        NUMBER		    NOT NULL,
	"MEMBER_NO_BAD"	    NUMBER		    NOT NULL,
	"RPT_TITLE"	        VARCHAR2(100)		    ,
	"RPT_CONTENT"	    VARCHAR2(4000)		
);


CREATE TABLE "QUOTATION" (
	"QUOTATION_NO"	                NUMBER		    NOT NULL,
	"ESTIMATE_NO"	                NUMBER		    NOT NULL,
	"QUOTATION_PREV_VER"	        NUMBER		    NOT NULL,
	"MEMBER_NO"	                    NUMBER		    NOT NULL,
	"QUOTATION_STATUS_NO"	        NUMBER		    NOT NULL,
	"REQUEST_NO"	                NUMBER		    NOT NULL,
	"QUOTATION_PRICE"	            NUMBER		            ,
	"QUOTATION_PERIOD"	            VARCHAR2(100)	    	,
	"QUOTATION_ENROLL_DATE"	        TIMESTAMP		        ,
	"QUOTATION_MODIFICATION_DATE"	TIMESTAMP		
);


CREATE TABLE "ESTIMATE_OPTION" (
	"ESTIMATE_OPTION_NO"	        NUMBER		    NOT NULL,
	"ESTIMATE_NO"	                NUMBER		    NOT NULL,
	"ESTIMATE_OPTION_NAME"	        VARCHAR2(200)		    ,
	"ESTIMATE_OPTION_PRICE"	        NUMBER		            ,
	"ESTIMATE_OPTION_QUANTITY"	    NUMBER		
);


CREATE TABLE "QUESTION_ANSWER" (
	"QUESTION_ANSWER_NO"	        NUMBER		    NOT NULL,
	"ADMIN_NO"	                    NUMBER		    NOT NULL,
	"QNA_NO"	                    NUMBER		    NOT NULL,
	"QUESTION_ANSWER_CONTENT"	    VARCHAR2(4000)		    ,
	"QUESTION_ANSWER_ENROLLDATE"	TIMESTAMP		
);


CREATE TABLE "REVIEW" (
	"REVIEW_NO"	                    NUMBER		    NOT NULL,
	"ESTIMATE_NO"	                NUMBER		    NOT NULL,
	"MEMBER_NO"	                    NUMBER		    NOT NULL,
	"REVIEW_CONTENT"	            VARCHAR2(500)		    ,
	"REVIEW_PHOTO"	                VARCHAR2(100)		    ,
	"REVIEW_RATING"	                NUMBER		            ,
	"REVIEW_ENROLL_DATE"	        TIMESTAMP		        ,
	"REVIEW_MODIFICATION_DATE"	    TIMESTAMP		        ,
	"REVIEW_STATUS"             	CHAR(1)		
);





CREATE TABLE "USER_STATUS" (
	"STATUS_NO"     	        NUMBER		    NOT NULL,
	"STATUS_NAME"	            VARCHAR2(10)		
);


CREATE TABLE "FAQ_CATEGORY" (
	"FAQ_CAT_NO"	            NUMBER		    NOT NULL,
	"FAQ_CAT_NAME"	            VARCHAR2(100)		
);


CREATE TABLE "NOTICE_CATEGORY" (
	"NOTI_CAT_NO"	            NUMBER		    NOT NULL,
	"NOTI_CAT_NAME"	            VARCHAR2(100)		
);


CREATE TABLE "REPORT_CATEGORY" (
	"RPT_CAT_NO"	            NUMBER		    NOT NULL,
	"RPT_CAT_NAME"	            VARCHAR2(100)		
);


CREATE TABLE "REQUEST_CAT" (
	"REQUEST_CAT_NO"	        NUMBER		    NOT NULL,
	"REQUEST_CAT_NAME"	        VARCHAR2(30)		
);


CREATE TABLE "FREELANCER_CLASS" (
	"FREELANCER_CLASS_NO"	    NUMBER		    NOT NULL,
	"FREELANCER_CLASS_NAME"	    VARCHAR2(30)		
);


CREATE TABLE "WISH_LIST" (
	"MEMBER_NO"	                NUMBER		    NOT NULL,
	"ESTIMATE_NO"	            NUMBER		    NOT NULL
);


CREATE TABLE "RECEIPT" (
	"RECEIPT_NO"	            NUMBER		    NOT NULL,
	"QUOTATION_NO"	            NUMBER		    NOT NULL,
	"RECEIPT_ENROLL_DATE"	    VARCHAR2(100)		    ,
	"RECEIPT_PRICE"	            NUMBER		
);


CREATE TABLE "ACCOUNT" (
	"TRANSACTION_ID"	        NUMBER		    NOT NULL,
	"DEPOSTI_NO"	            NUMBER		    NOT NULL,
	"WITHDRWAL_ID"	            NUMBER		    NOT NULL,
	"BALANCE"	                NUMBER		
);


CREATE TABLE "DEPOSIT _DETAIL" (
	"DEPOSIT_NO"	            NUMBER		    NOT NULL,
	"PAYER"	                    VARCHAR2(50)	        ,
	"DEPOSIT_AMOUNT"	        NUMBER		            ,
	"DEPOSIT_RSH"	            VARCHAR2(100)		
);


CREATE TABLE "WITHDRAWAL_DETAIL" (
	"WITHDRWAL_ID"	            NUMBER		    NOT NULL,
	"RECEIVER"	                VARCHAR2(50)	        ,
	"WITHDRWAL_AMOUNT"	        NUMBER		            ,
	"WITHDRAWAL_RSN"	        VARCHAR2(100)		
);


CREATE TABLE "FREELANCER_QA" (
	"F_QNA_NO"	                NUMBER		    NOT NULL,
	"MEMBER_NO"	                NUMBER		    NOT NULL,
	"ESTIMATE_NO"	            NUMBER		    NOT NULL,
	"F_QNA_TITLE"	            VARCHAR2(100)		    ,
	"F_QNA_CONTENT"	            VARCHAR2(4000)		    ,
	"F_QNA_ENROLL_DATE"	        TIMESTAMP		        ,
	"F_QNA_STATUS"	            CHAR(1)		
);


CREATE TABLE "FREELACNER_QA_REPLY" (
	"F_QNA_REPLY_NO"	        NUMBER		    NOT NULL,
	"F_QNA_NO"	                NUMBER		    NOT NULL,
	"F_QNA_REPLY_CONTENT"	    VARCHAR2(4000)		    ,
	"F_QNA_REPLY_ENROLL_DATE"	TIMESTAMP		        ,
	"F_QNA_REPLY_EDIT_DATE"	    TIMESTAMP		        ,
	"F_QNA_REPLY_STATUS"	    CHAR(1)		
);


CREATE TABLE "REVIEW_COMMENT" (
	"REVIEW_COMMENT_NO"	                NUMBER		    NOT NULL,
	"REVIEW_NO"	                        NUMBER		    NOT NULL,
	"NUM"	                            NUMBER		    NOT NULL,
	"REVIEW_COMMENT_CONTENT"	        VARCHAR2(500)		    ,
	"REVIEW_COMMENT_ENROLL_DATE"	    TIMESTAMP		        ,
	"REVIEW_COMMENT_MODIFICATION_DATE"	TIMESTAMP		        ,
	"REVIEW_COMMENT_STATUS"	            CHAR(1)		
);


CREATE TABLE "ESTIMATE_CAT" (
	"ESTIMATE_CAT_NO"	                NUMBER		    NOT NULL,
	"ABOVE_CAT_NO"	                    NUMBER		    NOT NULL,
	"ESTIMATE_CAT_NAME"	                VARCHAR2(60)		    ,
	"ESTIMATE_CAT_SCOPE"	            VARCHAR2(3)		
);


CREATE TABLE "ADMIN_RIGHTS" (
	"ADMIN_RIGHTS_NO"	            NUMBER		    NOT NULL,
	"ADMIN_RIGHTS_NAME"	            VARCHAR2(20)		
);


CREATE TABLE "BANNER" (
	"BANNER_NO"	                    NUMBER		NOT NULL,
	"BANNER_TITLE"	                VARCHAR2(100)		,
	"BANNER_FILE"	                VARCHAR2(100)		,
	"BANNER_ENROLLDATE"	            TIMESTAMP		    ,
	"BANNER_STATUS"	                CHAR(1)		
);


CREATE TABLE "ALERT" (
	"ALERT_NO"	        NUMBER		NOT NULL,
	"MEMBER_NO"	        NUMBER		NOT NULL,
	"MEMBER_NO2"	    NUMBER		NOT NULL,
	"ALERT_CAT_NO"	    NUMBER		NOT NULL,
	"MAIL_NO"	        NUMBER		NOT NULL,
	"ALERT_STATUS"	    CHAR(1)		
);


CREATE TABLE "QUOTATION__STATUS" (
	"QUOTATION_STATUS_NO"	    NUMBER		    NOT NULL,
	"QUOTATION_STATUS_NAME"	    VARCHAR2(100)		
);


CREATE TABLE "ALERT_CAT" (
	"ALERT_CAT_NO"	        NUMBER		    NOT NULL,
	"ALERT_CAT_NAME"	    VARCHAR2(10)		
);


CREATE TABLE "Untitled" (
	"Key"	VARCHAR(255)		NOT NULL
);


CREATE TABLE "CAREER" (
	"CAREER_NO"	        NUMBER		NOT NULL,
	"FREELANCER_NO" 	NUMBER		NOT NULL,
	"CAREER_DATE"	    NUMBER		        ,
	"CAREER_COMPANY"	VARCHAR(30)		    ,
	"CAREER_DEPT"	    VARCHAR(30)		    ,
	"CAREER_RESP"	    VARCHAR(30)		    ,
	"CAREER_LOCATION"	VARCHAR(15)		    ,
	"CAREER_EMP_DATE"	NUMBER		
);


CREATE TABLE "EDUCATION" (
	"EDU_NO"	        NUMBER		NOT NULL,
	"FREELANCER_NO"	    NUMBER		NOT NULL,
	"EDU_STATUS_NO"	    NUMBER		NOT NULL,
	"EDU_SCH"	        VARCHAR(72)		    ,
	"EDU_DEP"	        VARCHAR(72)		
);



CREATE TABLE "EDU_SCH_STATUS" (
	"EDU_STATUS_NO"	    NUMBER		NOT NULL,
	"STATUS_NAME"	    CHAR(6)		
);


--/시퀀스생성
CREATE SEQUENCE SEQ_MEMBER              INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_FREE_BOARD          INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_QNA_CATEGORY        INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_MESSAGE             INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_FREELANCER          INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_REQUEST             INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_ESTIMATE            INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_FAQ                 INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_ADMN                INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_NOTICE              INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_QNA                 INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_REPORT              INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_QUOTATION           INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_ESTIMATE_OPTION     INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_QUESTION_ANSWER     INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_REVIEW              INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_FREE_BOARD_COMMENT  INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_USER_STATUS         INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_FAQ_CATEGORY        INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_NOTICE_CATEGORY     INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_REPORT_CATEGORY     INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_REQUEST_CAT         INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_FREELANCER_CLASS    INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_WISH_LIST           INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_RECEIPT             INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_ACCOUNT             INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_DEPOSIT_DETAIL      INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_WITHDRAWAL_DETAIL   INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_FREELANCER_QA       INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_FREELACNER_QA_REPLY INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_REVIEW_COMMENT      INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_ESTIMATE_CAT        INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_ADMIN_RIGHTS        INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_BANNER              INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_ALERT               INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_QUOTATION__STATUS   INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_ALERT_CAT           INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_Untitled            INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_CAREER              INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_EDUCATION           INCREMENT BY 1 START WITH 100 NOCACHE ;
CREATE SEQUENCE SEQ_EDU_SCH_STATUS      INCREMENT BY 1 START WITH 100 NOCACHE ;


--/제약조건 추가
ALTER TABLE "MEMBER" 
ADD CONSTRAINT "PK_MEMBER" 
PRIMARY KEY (
"MEMBER_NO"
);


ALTER TABLE "FREE_BOARD" 
ADD CONSTRAINT "PK_FREE_BOARD" 
PRIMARY KEY (
    "BOARD_NO"
);
ALTER TABLE "FREE_BOARD" 
ADD CONSTRAINT "FK_MEMBER_NO" 
FOREIGN KEY (
    "MEMBER_NO"
)
REFERENCES "MEMBER" (
    "MEMBER_NO"
);


ALTER TABLE "FREE_BOARD_COMMENT" 
ADD CONSTRAINT "PK_FREE_BOARD_COMMENT" 
PRIMARY KEY (
	"COMMENT_NO"
);
ALTER TABLE "FREE_BOARD_COMMENT" 
ADD CONSTRAINT "FK_MEMBER_NO_COMMENT" 
FOREIGN KEY (
    "MEMBER_NO"
)
REFERENCES "MEMBER" (
    "MEMBER_NO"
);
ALTER TABLE "FREE_BOARD_COMMENT" 
ADD CONSTRAINT "FK_BOARD_NO" 
FOREIGN KEY (
    "BOARD_NO"
)
REFERENCES "FREE_BOARD" (
    "BOARD_NO"
);




ALTER TABLE "QNA_CATEGORY" ADD CONSTRAINT "PK_QNA_CATEGORY" PRIMARY KEY (
	"QNA_CAT_NO"
);


ALTER TABLE "MESSAGE" ADD CONSTRAINT "PK_MESSAGE" PRIMARY KEY (
	"MAIL_NO"
);
ALTER TABLE "FREELANCER" ADD CONSTRAINT "PK_FREELANCER" PRIMARY KEY (
	"FREELANCER_NO"
);
ALTER TABLE "REQUEST" ADD CONSTRAINT "PK_REQUEST" PRIMARY KEY (
	"REQUEST_NO"
);
ALTER TABLE "ESTIMATE" ADD CONSTRAINT "PK_ESTIMATE" PRIMARY KEY (
	"ESTIMATE_NO"
);
ALTER TABLE "FAQ" ADD CONSTRAINT "PK_FAQ" PRIMARY KEY (
	"FAQ_NO"
);
ALTER TABLE "ADMN" ADD CONSTRAINT "PK_ADMN" PRIMARY KEY (
	"ADMIN_NO"
);
ALTER TABLE "NOTICE" ADD CONSTRAINT "PK_NOTICE" PRIMARY KEY (
	"NOTI_NO"
);
ALTER TABLE "QNA" ADD CONSTRAINT "PK_QNA" PRIMARY KEY (
	"QNA_NO"
);
ALTER TABLE "REPORT" ADD CONSTRAINT "PK_REPORT" PRIMARY KEY (
	"RPT_NO"
);
ALTER TABLE "QUOTATION" ADD CONSTRAINT "PK_QUOTATION" PRIMARY KEY (
	"QUOTATION_NO"
);
ALTER TABLE "ESTIMATE_OPTION" ADD CONSTRAINT "PK_ESTIMATE_OPTION" PRIMARY KEY (
	"ESTIMATE_OPTION_NO"
);
ALTER TABLE "QUESTION_ANSWER" ADD CONSTRAINT "PK_QUESTION_ANSWER" PRIMARY KEY (
	"QUESTION_ANSWER_NO"
);
ALTER TABLE "REVIEW" ADD CONSTRAINT "PK_REVIEW" PRIMARY KEY (
	"REVIEW_NO"
);

ALTER TABLE "USER_STATUS" ADD CONSTRAINT "PK_USER_STATUS" PRIMARY KEY (
	"STATUS_NO"
);
ALTER TABLE "FAQ_CATEGORY" ADD CONSTRAINT "PK_FAQ_CATEGORY" PRIMARY KEY (
	"FAQ_CAT_NO"
);
ALTER TABLE "NOTICE_CATEGORY" ADD CONSTRAINT "PK_NOTICE_CATEGORY" PRIMARY KEY (
	"NOTI_CAT_NO"
);
ALTER TABLE "REPORT_CATEGORY" ADD CONSTRAINT "PK_REPORT_CATEGORY" PRIMARY KEY (
	"RPT_CAT_NO"
);
ALTER TABLE "REQUEST_CAT" ADD CONSTRAINT "PK_REQUEST_CAT" PRIMARY KEY (
	"REQUEST_CAT_NO"
);
ALTER TABLE "FREELANCER_CLASS" ADD CONSTRAINT "PK_FREELANCER_CLASS" PRIMARY KEY (
	"FREELANCER_CLASS_NO"
);
ALTER TABLE "WISH_LIST" ADD CONSTRAINT "PK_WISH_LIST" PRIMARY KEY (
	"MEMBER_NO",
	"ESTIMATE_NO"
);
ALTER TABLE "RECEIPT" ADD CONSTRAINT "PK_RECEIPT" PRIMARY KEY (
	"RECEIPT_NO"
);
ALTER TABLE "ACCOUNT" ADD CONSTRAINT "PK_ACCOUNT" PRIMARY KEY (
	"TRANSACTION_ID"
);
ALTER TABLE "DEPOSIT _DETAIL" ADD CONSTRAINT "PK_DEPOSIT _DETAIL" PRIMARY KEY (
	"DEPOSIT_NO"
);
ALTER TABLE "WITHDRAWAL_DETAIL" ADD CONSTRAINT "PK_WITHDRAWAL_DETAIL" PRIMARY KEY (
	"WITHDRWAL_ID"
);
ALTER TABLE "FREELANCER_QA" ADD CONSTRAINT "PK_FREELANCER_QA" PRIMARY KEY (
	"F_QNA_NO"
);
ALTER TABLE "FREELACNER_QA_REPLY" ADD CONSTRAINT "PK_FREELACNER_QA_REPLY" PRIMARY KEY (
	"F_QNA_REPLY_NO"
);
ALTER TABLE "REVIEW_COMMENT" ADD CONSTRAINT "PK_REVIEW_COMMENT" PRIMARY KEY (
	"REVIEW_COMMENT_NO"
);
ALTER TABLE "ESTIMATE_CAT" ADD CONSTRAINT "PK_ESTIMATE_CAT" PRIMARY KEY (
	"ESTIMATE_CAT_NO"
);
ALTER TABLE "ADMIN_RIGHTS" ADD CONSTRAINT "PK_ADMIN_RIGHTS" PRIMARY KEY (
	"ADMIN_RIGHTS_NO"
);
ALTER TABLE "BANNER" ADD CONSTRAINT "PK_BANNER" PRIMARY KEY (
	"BANNER_NO"
);
ALTER TABLE "ALERT" ADD CONSTRAINT "PK_ALERT" PRIMARY KEY (
	"ALERT_NO"
);
ALTER TABLE "QUOTATION__STATUS" ADD CONSTRAINT "PK_QUOTATION__STATUS" PRIMARY KEY (
	"QUOTATION_STATUS_NO"
);
ALTER TABLE "ALERT_CAT" ADD CONSTRAINT "PK_ALERT_CAT" PRIMARY KEY (
	"ALERT_CAT_NO"
);
ALTER TABLE "Untitled" ADD CONSTRAINT "PK_UNTITLED" PRIMARY KEY (
	"Key"
);
ALTER TABLE "CAREER" ADD CONSTRAINT "PK_CAREER" PRIMARY KEY (
	"CAREER_NO"
);
ALTER TABLE "EDUCATION" ADD CONSTRAINT "PK_EDUCATION" PRIMARY KEY (
	"EDU_NO"
);
ALTER TABLE "EDU_SCH_STATUS" ADD CONSTRAINT "PK_EDU_SCH_STATUS" PRIMARY KEY (
	"EDU_STATUS_NO"
);




--/더미데이터
-- MEMBER 
BEGIN 
  FOR i IN 1..10 LOOP
    INSERT INTO MEMBER (
      MEMBER_NO,
      STATUS_NO,
      MEMBER_ID,
      MEMBER_PWD,
      MEMBER_NICK,
      MEMBER_PHONE,
      MEMBER_EMAIL,
      MEMBER_INTERST,
      MEMBER_BANK,
      MEMBER_ACCOUNT,
      MEMBER_CASH,
      MEMBER_PROFILE_PHOTO,
      MEMBER_NICK_STATUS
    )
    VALUES (
      SEQ_MEMBER.NEXTVAL,
      '1',
      'user' || LPAD(i, 3, '0'),
      '1234',
      'nick' || LPAD(i, 3, '0'),
      '010'|| RPAD(i, 8, '0'),
      'user' || LPAD(i, 3, '0') || '@email.com',
      LPAD(i, 3, '0'),
      '은행' || LPAD(i, 3, '0'),
      '계좌' || LPAD(i, 3, '0'),
      i || 00,
      '프로필' || LPAD(i, 3, '0') || '.jpg',
      'Y'
    );
  END LOOP;
END;
/

-- FREE_BOARD
BEGIN 
  FOR i IN 1..10 LOOP
    INSERT INTO FREE_BOARD (
      BOARD_NO,
      MEMBER_NO,
      FREE_BOARD_TITLE,
      FREE_BOARD_CONTENT,
      FREE_BOARD_ENROLL_DATE,
      FREE_BOARD_EDIT_DATE,
      FREE_BOARD_HIT,
      FREE_BOARD_LIKE,
      FREE_BOARD_ATTACHMENT
    )
    VALUES (
      SEQ_FREE_BOARD.NEXTVAL,
      SEQ_FREE_BOARD.NEXTVAL,
      '제목' || LPAD(i, 3, '0'),
      LPAD(i, 3, '0') || '번째 자유게시판 내용입니다',
      SYSDATE,
      SYSDATE,
      i,
      i,
      '첨부파일' || LPAD(i, 3, '0') || '.pdf'
    );
  END LOOP;
END;
/

--FREE_BOARD_COMMENT
BEGIN
    FOR i IN 1..10 LOOP
    INSERT INTO FREE_BOARD_COMMENT (
        COMMENT_NO,
        MEMBER_NO,
        BOARD_NO,
        REPLY_NO,
        COMMENT_CONTENT,
        COMMENT_ENROLL_DATE,
        COMMENT_EDIT_DATE
        
    )
    VALUES (
        SEQ_FREE_BOARD_COMMENT.NEXTVAL,
        SEQ_FREE_BOARD_COMMENT.NEXTVAL,
        SEQ_FREE_BOARD.NEXTVAL,
        SEQ_FREE_BOARD_COMMENT.NEXTVAL,
        '댓글 내용' || LPAD(i, 3, '0'),
        SYSDATE,
        SYSDATE
        
    );
    END LOOP;
END;
/
    



-- QNA_CATEGORY
BEGIN
    FOR i IN 1..10 LOOP
    INSERT INTO QNA_CATEGORY (
        QNA_CAT_NO,
        QNA_CAT_NAME	    
    )
    VALUES (
        SEQ_QNA_CATEGORY.NEXTVAL,
        '카테고리' || LPAD(i , 3, '0')
    );
    END LOOP;
END;
/

-- MESSAGE
BEGIN
  FOR i IN 1..10 LOOP
    INSERT INTO MESSAGE (
      MAIL_NO,
      QUOTATION_NO,
      MEMBER_NO2,
      REQUEST_NO,
      MAIL_TITLE,
      MAIL_CONTENT,
      MAIL_FILE,
      MAIL_ENROLL_DATE,
      MAIL_CHECK,
      MAIL_STATUS
    )
    VALUES (
      SEQ_MESSAGE.NEXTVAL,
      i,
      i,
      i,
      '제목' || LPAD(i, 3, '0'),
      LPAD(i, 3, '0') || '번째 메세지 내용',
      '파일' || LPAD(i, 3, '0') || '.pdf',
      SYSDATE,
      '0',
      '1'
    );
  END LOOP;
END;
/

-- FREELANCER
BEGIN
  FOR i IN 1..10 LOOP
    INSERT INTO FREELANCER (
      FREELANCER_NO,
      MEMBER_NO,
      FREELANCER_CLASS_NO,
      FREELANCER_INRODUCTION,
      FIELD_OF_EXPERTISE,
      FREELANCER_ADDRESS,
      FREELANCER_CONTACT_TIME,
      FREELANCER_STATUS
    )
    VALUES (
      SEQ_FREELANCER.NEXTVAL,
      i,
      i,
      'introduction' || LPAD(i, 3, '0'),
      'expertise' || LPAD(i, 3, '0'),
      'address' || LPAD(i, 3, '0'),
      'contact_time' || LPAD(i, 3, '0'),
      'Y'
    );
  END LOOP;
END;
/





