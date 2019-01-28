/* 사용자 */
CREATE TABLE users (
	userno INTEGER NOT NULL, /* 사용자 번호 */
	id VARCHAR2(20) NOT NULL, /* 사용자 아이디 */
	password VARCHAR2(20), /* 사용자 비밀번호 */
	username VARCHAR2(20), /* 사용자 이름 */
	email VARCHAR2(40), /* 사용자 이메일 */
	nickname VARCHAR2(20), /* 사용자 닉네임 */
	userimage VARCHAR2(255), /* 사용자 이미지 */
	userbirth VARCHAR2(10), /* 사용자 생년월일 */
	sex INTEGER, /* 사용자 성별 */
	useraccess INTEGER /* 사용자 권한 */
);

COMMENT ON TABLE users IS '사용자';

COMMENT ON COLUMN users.userno IS '사용자 번호';

COMMENT ON COLUMN users.id IS '사용자 아이디';

COMMENT ON COLUMN users.password IS '사용자 비밀번호';

COMMENT ON COLUMN users.username IS '사용자 이름';

COMMENT ON COLUMN users.email IS '사용자 이메일';

COMMENT ON COLUMN users.nickname IS '사용자 닉네임';

COMMENT ON COLUMN users.userimage IS '사용자 이미지';

COMMENT ON COLUMN users.userbirth IS '사용자 생년월일';

COMMENT ON COLUMN users.sex IS '사용자 성별';

COMMENT ON COLUMN users.useraccess IS '사용자 권한';

ALTER TABLE users
	ADD
		CONSTRAINT PK_users
		PRIMARY KEY (
			userno
		);

/* Seya단어(영) */
CREATE TABLE seyaword_eng (
	seyawordno INTEGER NOT NULL, /* Seya단어 번호 */
	seyawordname VARCHAR2(255), /* 단어 이름 */
	seyawordbookno INTEGER /* Seya단어장 번호 */
);

COMMENT ON TABLE seyaword_eng IS 'Seya단어(영)';

COMMENT ON COLUMN seyaword_eng.seyawordno IS 'Seya단어 번호';

COMMENT ON COLUMN seyaword_eng.seyawordname IS '단어 이름';

COMMENT ON COLUMN seyaword_eng.seyawordbookno IS 'Seya단어장 번호';

ALTER TABLE seyaword_eng
	ADD
		CONSTRAINT PK_seyaword_eng
		PRIMARY KEY (
			seyawordno
		);

/* Seya게임스코어 */
CREATE TABLE seyagamescore (
	seyagamescoreno INTEGER NOT NULL, /* Seya게임 번호 */
	gameselectno INTEGER, /* 게임 종류 번호 */
	seyawordbookno INTEGER, /* Seya단어장 번호 */
	userno INTEGER, /* 사용자 번호 */
	seyagamescore INTEGER /* Seya게임 점수 */
);

COMMENT ON TABLE seyagamescore IS 'Seya게임스코어';

COMMENT ON COLUMN seyagamescore.seyagamescoreno IS 'Seya게임 번호';

COMMENT ON COLUMN seyagamescore.gameselectno IS '게임 종류 번호';

COMMENT ON COLUMN seyagamescore.seyawordbookno IS 'Seya단어장 번호';

COMMENT ON COLUMN seyagamescore.userno IS '사용자 번호';

COMMENT ON COLUMN seyagamescore.seyagamescore IS 'Seya게임 점수';

ALTER TABLE seyagamescore
	ADD
		CONSTRAINT PK_seyagamescore
		PRIMARY KEY (
			seyagamescoreno
		);

/* 단어장 */
CREATE TABLE wordbook (
	wordbookno INTEGER NOT NULL, /* 단어장 번호 */
	wordbookname VARCHAR2(20), /* 단어장 이름 */
	wordbookregdate DATE, /* 단어장 생성일 */
	wordbookaccess INTEGER, /* 단어장 권한 */
	wordbooktype INTEGER, /* 단어장구분 */
	directoryno INTEGER /* 디렉토리 번호 */
);

COMMENT ON TABLE wordbook IS '단어장';

COMMENT ON COLUMN wordbook.wordbookno IS '단어장 번호';

COMMENT ON COLUMN wordbook.wordbookname IS '단어장 이름';

COMMENT ON COLUMN wordbook.wordbookregdate IS '단어장 생성일';

COMMENT ON COLUMN wordbook.wordbookaccess IS '단어장 권한';

COMMENT ON COLUMN wordbook.wordbooktype IS '단어장구분';

COMMENT ON COLUMN wordbook.directoryno IS '디렉토리 번호';

ALTER TABLE wordbook
	ADD
		CONSTRAINT PK_wordbook
		PRIMARY KEY (
			wordbookno
		);

/* Seya단어장 */
CREATE TABLE seyawordbook (
	seyawordbookno INTEGER NOT NULL, /* Seya단어장 번호 */
	seyawordbookname VARCHAR2(20), /* Seya단어장 이름 */
	seyawordbookregdate DATE, /* Seya단어장 생성일 */
	seyawordbookaccess INTEGER, /* Seya단어장 권한 */
	seyawordbooktype INTEGER, /* Seya단어장 구분 */
	seyadirectoryno INTEGER /* Seya디렉토리 번호 */
);

COMMENT ON TABLE seyawordbook IS 'Seya단어장';

COMMENT ON COLUMN seyawordbook.seyawordbookno IS 'Seya단어장 번호';

COMMENT ON COLUMN seyawordbook.seyawordbookname IS 'Seya단어장 이름';

COMMENT ON COLUMN seyawordbook.seyawordbookregdate IS 'Seya단어장 생성일';

COMMENT ON COLUMN seyawordbook.seyawordbookaccess IS 'Seya단어장 권한';

COMMENT ON COLUMN seyawordbook.seyawordbooktype IS 'Seya단어장 구분';

COMMENT ON COLUMN seyawordbook.seyadirectoryno IS 'Seya디렉토리 번호';

ALTER TABLE seyawordbook
	ADD
		CONSTRAINT PK_seyawordbook
		PRIMARY KEY (
			seyawordbookno
		);

/* 게임스코어 */
CREATE TABLE gamescore (
	gamescoreno INTEGER NOT NULL, /* 단어장게임 번호 */
	wordbookno INTEGER, /* 단어장 번호 */
	gameselectno INTEGER, /* 게임 종류 번호 */
	userno INTEGER, /* 사용자 번호 */
	gamescore INTEGER /* 단어장게임 점수 */
);

COMMENT ON TABLE gamescore IS '게임스코어';

COMMENT ON COLUMN gamescore.gamescoreno IS '단어장게임 번호';

COMMENT ON COLUMN gamescore.wordbookno IS '단어장 번호';

COMMENT ON COLUMN gamescore.gameselectno IS '게임 종류 번호';

COMMENT ON COLUMN gamescore.userno IS '사용자 번호';

COMMENT ON COLUMN gamescore.gamescore IS '단어장게임 점수';

ALTER TABLE gamescore
	ADD
		CONSTRAINT PK_gamescore
		PRIMARY KEY (
			gamescoreno
		);

/* 게임 종류 */
CREATE TABLE gameselect (
	gameselectno INTEGER NOT NULL, /* 게임 종류 번호 */
	gameselectname VARCHAR2(20) /* 게임 이름 */
);

COMMENT ON TABLE gameselect IS '게임 종류';

COMMENT ON COLUMN gameselect.gameselectno IS '게임 종류 번호';

COMMENT ON COLUMN gameselect.gameselectname IS '게임 이름';

ALTER TABLE gameselect
	ADD
		CONSTRAINT PK_gameselect
		PRIMARY KEY (
			gameselectno
		);

/* Seya의미(한) */
CREATE TABLE seyamean_kor (
	seyameanno INTEGER NOT NULL, /* Seya의미 번호 */
	seyameanname VARCHAR2(255), /* Seya의미 이름 */
	seyawordno INTEGER /* Seya단어 번호 */
);

COMMENT ON TABLE seyamean_kor IS 'Seya의미(한)';

COMMENT ON COLUMN seyamean_kor.seyameanno IS 'Seya의미 번호';

COMMENT ON COLUMN seyamean_kor.seyameanname IS 'Seya의미 이름';

COMMENT ON COLUMN seyamean_kor.seyawordno IS 'Seya단어 번호';

ALTER TABLE seyamean_kor
	ADD
		CONSTRAINT PK_seyamean_kor
		PRIMARY KEY (
			seyameanno
		);

/* 디렉토리 */
CREATE TABLE directory (
	directoryno INTEGER NOT NULL, /* 디렉토리 번호 */
	directoryname VARCHAR2(20), /* 디렉토리 이름 */
	userno INTEGER /* 사용자 번호 */
);

COMMENT ON TABLE directory IS '디렉토리';

COMMENT ON COLUMN directory.directoryno IS '디렉토리 번호';

COMMENT ON COLUMN directory.directoryname IS '디렉토리 이름';

COMMENT ON COLUMN directory.userno IS '사용자 번호';

ALTER TABLE directory
	ADD
		CONSTRAINT PK_directory
		PRIMARY KEY (
			directoryno
		);

/* 단어(영) */
CREATE TABLE word_eng (
	wordno INTEGER NOT NULL, /* 단어 번호 */
	wordname VARCHAR2(255), /* 단어 이름 */
	wordbookno INTEGER /* 단어장 번호 */
);

COMMENT ON TABLE word_eng IS '단어(영)';

COMMENT ON COLUMN word_eng.wordno IS '단어 번호';

COMMENT ON COLUMN word_eng.wordname IS '단어 이름';

COMMENT ON COLUMN word_eng.wordbookno IS '단어장 번호';

ALTER TABLE word_eng
	ADD
		CONSTRAINT PK_word_eng
		PRIMARY KEY (
			wordno
		);

/* 의미(한) */
CREATE TABLE mean_kor (
	meanno INTEGER NOT NULL, /* 의미 번호 */
	meanname VARCHAR2(255), /* 의미 이름 */
	wordno INTEGER /* 단어 번호 */
);

COMMENT ON TABLE mean_kor IS '의미(한)';

COMMENT ON COLUMN mean_kor.meanno IS '의미 번호';

COMMENT ON COLUMN mean_kor.meanname IS '의미 이름';

COMMENT ON COLUMN mean_kor.wordno IS '단어 번호';

ALTER TABLE mean_kor
	ADD
		CONSTRAINT PK_mean_kor
		PRIMARY KEY (
			meanno
		);

/* Seya디렉토리 */
CREATE TABLE seyadirectory (
	seyadirectoryno INTEGER NOT NULL, /* Seya디렉토리 번호 */
	seyadirectoryname VARCHAR2(20), /* Seya디렉토리 이름 */
	userno INTEGER /* 사용자 번호 */
);

COMMENT ON TABLE seyadirectory IS 'Seya디렉토리';

COMMENT ON COLUMN seyadirectory.seyadirectoryno IS 'Seya디렉토리 번호';

COMMENT ON COLUMN seyadirectory.seyadirectoryname IS 'Seya디렉토리 이름';

COMMENT ON COLUMN seyadirectory.userno IS '사용자 번호';

ALTER TABLE seyadirectory
	ADD
		CONSTRAINT PK_seyadirectory
		PRIMARY KEY (
			seyadirectoryno
		);
		
CREATE SEQUENCE GAMESCORE_SEQ	INCREMENT BY 1

CREATE SEQUENCE MEAN_KOR_SEQ INCREMENT BY 1

CREATE SEQUENCE SEYAWORD_ENG_SEQ INCREMENT BY 1

CREATE SEQUENCE SEYAMEAN_KOR_SEQ INCREMENT BY 1

CREATE SEQUENCE WORD_ENG_SEQ INCREMENT BY 1

CREATE SEQUENCE WORDBOOK_SEQ INCREMENT BY 1

CREATE SEQUENCE SEYAGAMESCORE_SEQ INCREMENT BY 1

CREATE SEQUENCE USERS_SEQ INCREMENT BY 1