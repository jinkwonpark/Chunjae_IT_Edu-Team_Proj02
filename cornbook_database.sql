CREATE DATABASE cornbook;

USE cornbook;

SHOW TABLES;
-- 회원 가입 테이블
CREATE TABLE member(
                       id VARCHAR(16) NOT NULL,   								-- 아이디
                       pw VARCHAR(300) NOT NULL,  								-- 비밀번호
                       NAME VARCHAR(100) NOT NULL,  							-- 이름
                       email VARCHAR(100) NOT NULL,   							-- 이메일
                       tel VARCHAR(13),   										-- 전화번호
                       birth DATE, 											-- 생년월일
                       address VARCHAR(300), 									-- 주소
                       resdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,   -- 가입일
                       POINT INT DEFAULT 0,   									-- 포인트
                       grade VARCHAR(4) DEFAULT 'F', 							-- 멤버쉽 등급
                       per int,												-- 숫자별 특정 인원 지정 -> (0 : 관리자), (1 : 고객)
                       PRIMARY KEY (id)
);

-- 관리자 페이지에서 사용자가 특정 인원 판매자 지정 필요
INSERT INTO member(id, pw, NAME, email, tel, birth, per) VALUES('admin','1234', '관리자', 'admin@shop.com', '010-1004-1004', '1998-01-01', 0);
INSERT INTO member(id, pw, NAME, email, tel, birth, address, per) VALUES('kimhk','1234', '김현경', 'kimhk@shop.com', '010-1234-5678', '2000-01-01','서울 금천구 디지털로 185<br>2관 11층<br>08511', 1);
INSERT INTO member(id, pw, NAME, email, tel, birth, address, per) VALUES('kimbk','qwer1234!', '김보경', 'kimbk@shop.com', '010-8765-4321', '2000-01-01','서울 금천구 디지털로 185<br>2관 11층<br>08511', 1);
INSERT INTO member(id, pw, NAME, email, tel, birth, address, per) VALUES('parkjk','2318358', '박진권', 'park@shop.com', '010-1111-2222', '2000-01-01','서울 금천구 디지털로 185<br>2관 11층<br>08511', 1);
INSERT INTO member(id, pw, NAME, email, tel, birth, address, per) VALUES('sirious920','xogns1234!', '오태훈', 'dhxogns920@shop.com', '010-7329-7484', '1998-09-20','서울 금천구 디지털로 185<br>2관 11층<br>08511', 1);
INSERT INTO member(id, pw, NAME, email, tel, birth, address, per) VALUES('shin','asdf1234!', '신예은', 'shin@shop.com', '010-9999-8888', '2000-01-01','서울 금천구 디지털로 185<br>2관 11층<br>08511', 1);

COMMIT;

SELECT * FROM member;


UPDATE member SET pw='6lRVDcHqc9ceHafDPXmPbz2r4KRXzN1Bi/k0wAQZFua0seXPMFKXMHY6Ut5PW6anSpaKsA==' WHERE id='admin';
UPDATE member SET pw='6lRVDcHqc9ceHafDPXmPbz2r4KRXzN1Bi/k0wAQZFua0seXPMFKXMHY6Ut5PW6anSpaKsA==' WHERE id='kimhk';
UPDATE member SET pw='qK2aVyBfeZfFcZAYbnfIaMVr/yppCwrnlKSMGhy2wRBdm2MFX9KtVTF7WoGPr5PP2EooyQ==' WHERE id='kimbk';
UPDATE member SET pw='ayDlB61VvnK8CHscf/moQNTbqywdHHf1hT/G8SgChm40NB2Se86VKKg2fibN8MYuIN5XHg==' WHERE id='parkjk';
UPDATE member SET pw='y77ZcnJueDxVMDDVzGMQTBq3ti0m0w3jEBRA9Ib901OMXn+gqj5W/XEzTfJJqEFVWn7PKw==' WHERE id='sirious920';
UPDATE member SET pw='hmQ6nKUBYdXpLQGoN05drYLHeg3XF+wdBGad1DFuDI64MMRM/8bYIP/lzjgcjqL3vRRtDA==' WHERE id='shin';

--------------------------------------------------------------

-- 매장 전용 공지사항(notice) 테이블 생성
create table notice(
                       no int primary KEY AUTO_INCREMENT,
                       title varchar(200) not NULL,
                       content varchar(1000),
                       resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                       visit int DEFAULT 0
);

-- 매장 전용 공지사항 더미글 추가 10건

INSERT INTO notice(title, content) VALUES ('새 학년을 맞이하는 초등학교 교과서 세일! 준비되셨나요?', '학부모님과 학생 여러분, 새 학년을 맞이하는 시즌이 왔습니다! 새로운 학년을 위해 준비하시고, 재미있고 흥미로운 학습을 도와줄 초등학교 교과서, 문제집 및 학습 자료를 만나보세요. 특별 할인 혜택과 번들 상품을 놓치지 마세요. 지금 바로 쇼핑하고 아이의 학습 여정을 응원해주세요!');

INSERT INTO notice(title, content) VALUES ('더 높은 학습 경험을 위해: 중학교 교과서 세일 중!', '학생들과 교사님들께 알립니다! 중학교 교과서 판매가 시작되었습니다. 과학부터 문학까지 다양한 주제와 과목을 다루는 포괄적인 중학교 교과서를 만나보세요. 수학부터 문학까지, 다양한 분야의 교과서를 제공합니다. 제한된 시간의 특별 혜택을 놓치지 마시고, 지금 교과서를 구매하여 학년을 효과적으로 시작하세요!');

INSERT INTO notice(title, content) VALUES ('학업 우수성을 달성하세요! 고등학교 교과서 세일 진행 중!', '고등학교 학생 여러분, 학업적인 도전을 뛰어넘을 준비가 되셨나요? 우수한 고등학교 교과서 컬렉션으로 교육적인 목표를 달성해보세요. 대학 입학 시험 준비 또는 고급 과목에 깊이 빠져들 때 필요한 교과서를 만나보세요. 과학, 역사, 고급 수학 및 외국어까지 모두 다양한 주제를 다루고 있습니다. 지금 쇼핑하고 교육적인 성공을 향한 투자를 시작하세요!');

INSERT INTO notice(title, content) VALUES ('호기심과 학습의 불꽃을 키우세요! 초등학교 문제집 세일을 만나보세요!', '학부모님과 어린 학습자 여러분, 초등학교 문제집 세일로 호기심과 발견의 세계로 빠져보세요. 신중하게 디자인된 문제집을 통해 과목을 생생하게 만들어 활동적인 학습을 장려합니다. 다채로운 수학 문제에서 창의적인 글 쓰기까지, 교육을 재미있게 만들어주는 도구를 제공합니다. 이 기회를 놓치지 마시고 지금 바로 쇼핑을 시작하여 아이의 학습 여정을 풍요롭게 해보세요!');

INSERT INTO notice(title, content) VALUES ('중학교 문제집으로 학습의 힘을 높이세요: 콘에듀에서 쇼핑하세요!', '중학교 학생 여러분, 중학교 문제집 세일로 학습을 한 단계 더 업그레이드해보세요. 다양한 과목을 다루는 포괄적인 문제집은 학습을 동시에 도전적이고 즐겁게 만들어줍니다. 과학 개념을 다지거나 언어 기술을 향상시킬 때까지, 우리의 문제집은 여러분의 성공을 돕기 위해 디자인되었습니다. 뛰어남을 위한 기회를 잡아보세요 - 문제집을 지금 구매하세요!');

INSERT INTO notice(title, content) VALUES ('뛰어난 성취를 이루세요: 고등학교 문제집 세일이 시작되었습니다!', '고등학교 학생 여러분, 뛰어난 성취의 시작은 지식에서 출발합니다. 고등학교 문제집 세일로 깊은 이해와 비판적 사고를 키워보세요. 고급 수학부터 생각을 자극하는 문학 분석까지, 문제집은 여러분이 뛰어난 성과를 이루기 위한 실습을 제공합니다. 기다리지 마세요 - 세일을 살펴보고 학업적 성공을 위한 투자를 시작하세요!');

INSERT INTO notice(title, content) VALUES ('지식의 세계를 열다! 초등학교 참고서 세일을 만나보세요', '학부모님과 귀여운 학생 여러분, 우리와 함께 초등학교 참고서 세일을 통해 발견의 여행을 떠나보세요. 다양한 주제를 흥미롭고 유익하게 다루는 참고서로 지식의 세계로의 입구를 열어드립니다. 다채로운 백과사전부터 매력적인 지도까지, 호기심을 자극하고 학습을 사랑하게 만들 준비가 되어 있습니다. 놓치지 마세요 - 지금 바로 쇼핑을 시작하여 아이의 교육을 풍요롭게 해보세요!');

INSERT INTO notice(title, content) VALUES ('교실 밖의 세계를 탐험하세요: 중학교 참고서 세일을 만나보세요!', '중학교 학생 여러분, 중학교 참고서 세일로 교실 밖의 지식을 넓혀보세요. 정성껏 고른 참고서는 어린 마음을 사로잡는 다양한 주제를 자세히 다룹니다. 역사를 파헤치거나 과학의 경이를 탐험하던 중, 참고서는 깊이 있는 통찰력을 제공하며 비판적 사고를 격려합니다. 교실을 벗어나 더 많이 배울 수 있는 이 기회를 잡아보세요 - 지금 쇼핑하세요!');

INSERT INTO notice(title, content) VALUES ('고등학교 참고서 세일로 학습을 높이세요!', '고등학교 학생 여러분, 고등학교 참고서 세일로 교육을 한 단계 더 업그레이드해보세요. 다양한 주제에 걸쳐 뛰어난 학습을 지원하는 참고서 컬렉션을 만나보실 수 있습니다. 문학 분석부터 포괄적인 과학 안내까지, 참고서는 권위 있는 정보를 제공하여 연구와 탐험을 돕습니다. 기다리지 마세요 - 학업적 성장을 위해 투자하고 지금 세일을 살펴보세요!');

commit;

select * from notice;

----------------------------------------------------------------------------------------------------------------

-- 고객 전용 공지사항(board) 테이블 생성
CREATE TABLE board(
                      bno int PRIMARY KEY AUTO_INCREMENT,
                      title VARCHAR(200) NOT NULL,
                      content VARCHAR(1000),
                      author VARCHAR(16),
                      resdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                      cnt INT DEFAULT 0
);

-- 공지사항 더미글 추가 10건
INSERT INTO board(title, content, author) VALUES ('게시판1', '여기는 게시판1입니다', 'oh');

INSERT INTO board(title, content, author) VALUES ('게시판2', '여기는 게시판2입니다', 'shin');

INSERT INTO board(title, content, author) VALUES ('게시판3', '여기는 게시판3입니다', 'park');

INSERT INTO board(title, content, author) VALUES ('게시판4', '여기는 게시판4입니다', 'kimhk');

INSERT INTO board(title, content, author) VALUES ('게시판5', '여기는 게시판5입니다', 'kimbk');

INSERT INTO board(title, content, author) VALUES ('게시판6', '여기는 게시판6입니다', 'oh');

INSERT INTO board(title, content, author) VALUES ('게시판7', '여기는 게시판7입니다', 'shin');

INSERT INTO board(title, content, author) VALUES ('게시판8', '여기는 게시판8입니다', 'park');

INSERT INTO board(title, content, author) VALUES ('게시판9', '여기는 게시판9입니다 ', 'kimbk');

INSERT INTO board(title, content, author) VALUES ('게시판10', '여기는 게시판10입니다', 'kimhk');

COMMIT;

SELECT * FROM board;

------------------------------------------------------------------------

-- 고객 전용 문의 테이블 생성 -- 고객만 사용 가능
CREATE TABLE askboard(
                         bno int PRIMARY KEY AUTO_INCREMENT ,
                         title VARCHAR(200) NOT NULL,
                         content VARCHAR(1000),
                         author VARCHAR(16),
                         resdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                         cnt INT DEFAULT 0,
                         FOREIGN KEY(author) REFERENCES member(id) ON DELETE CASCADE
);

SELECT * FROM askboard;

-- 고객 전용 문의 테이블 더미글 추가 10건
INSERT INTO askboard(title, content, author) VALUES ('문의1', '문의1 입니다', 'sirious920');

INSERT INTO askboard(title, content, author) VALUES ('문의2', '문의2 입니다', 'shin');

INSERT INTO askboard(title, content, author) VALUES ('문의3', '문의3 입니다', 'parkjk');

INSERT INTO askboard(title, content, author) VALUES ('문의4', '문의4 입니다', 'kimhk');

INSERT INTO askboard(title, content, author) VALUES ('문의5', '문의5 입니다', 'kimbk');

INSERT INTO askboard(title, content, author) VALUES ('문의6', '문의6 입니다', 'sirious920');

INSERT INTO askboard(title, content, author) VALUES ('문의7', '문의7 입니다', 'shin');

INSERT INTO askboard(title, content, author) VALUES ('문의8', '문의8 입니다', 'parkjk');

INSERT INTO askboard(title, content, author) VALUES ('문의9', '문의9 입니다', 'kimhk');

INSERT INTO askboard(title, content, author) VALUES ('문의10', '문의10 입니다', 'kimbk');

COMMIT;

SELECT * FROM askboard;

-----------------------------------------------------------------------------------------------------

-- 질문 및 답변 테이블 생성
CREATE TABLE qna(
                    qno int PRIMARY KEY AUTO_INCREMENT,   			            -- 번호
                    title VARCHAR(100) NOT NULL,   					-- 제목
                    content VARCHAR(1000) NOT NULL,   				-- 내용
                    author VARCHAR(16),   							-- 작성자
                    resdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,    -- 등록일
                    visit INT DEFAULT 0,   							-- 조회수
                    lev INT DEFAULT 0, 								-- 질문(0), 답변(1)
                    par INT,										-- 질문(자신 레코드의 qno), 답변(질문의 글번호)
                    secret BOOLEAN DEFAULT false,				    -- 비밀글 유무
                    FOREIGN KEY(author) REFERENCES member(id) ON DELETE CASCADE
);

-- 더미 데이터 작성
INSERT INTO qna(title, content, author, lev, secret) VALUES('질문1', '질문입니다. 1', 'kimbk', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=1;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문2', '질문입니다. 2', 'parkjk', 0, true);

UPDATE qna SET par=qno WHERE lev=0 AND qno=2;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문3', '질문입니다. 3', 'kimhk', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=3;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문4', '질문입니다. 4', 'parkjk', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=4;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문5', '질문입니다. 5', 'kimbk', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=5;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문6', '질문입니다. 6', 'sirious920', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=6;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문7', '질문입니다. 7', 'shin', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=7;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문8', '질문입니다. 8', 'shin', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=8;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문9', '질문입니다. 9', 'parkjk', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=9;

INSERT INTO qna(title, content, author, lev, secret) VALUES('질문10', '질문입니다. 10', 'kimbk', 0, false);

UPDATE qna SET par=qno WHERE lev=0 AND qno=10;

-- 답변

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문1에 대한 답변', '답변입니다. 1', 'admin', 1, 1, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문2에 대한 답변', '답변입니다. 2.', 'admin', 1, 2, true);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문3에 대한 답변', '답변입니다. 3', 'admin', 1, 3, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문4에 대한 답변', '답변입니다. 4', 'admin', 1, 4, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문5에 대한 답변', '답변입니다. 5', 'admin', 1, 5, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문6에 대한 답변', '답변입니다. 6', 'admin', 1, 6, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문7에 대한 답변', '답변입니다. 7', 'admin', 1, 7, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문8에 대한 답변', '답변입니다. 8', 'admin', 1, 8, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문9에 대한 답변', '답변입니다. 9', 'admin', 1, 9, false);

INSERT INTO qna(title, content, author, lev, par, secret) VALUES ('질문10에 대한 답변', '답변입니다. 10', 'admin', 1, 10, false);

COMMIT;

select * from qna;

-- QnA 리스트
SELECT a.qno AS qno, a.title AS title, a.content AS content, a.author AS author, a.resdate AS resdate, a.visit AS visit, a.lev AS lev,
       a.par AS par, b.name AS name FROM qna a, member b WHERE a.author=b.id ORDER BY a.par DESC, a.lev ASC, a.qno ASC;

-- qna JOIN & VIEW 생성 ( 내가 쓴 글에 이용)
CREATE VIEW qnalist2 AS (SELECT a.qno AS qno, a.title AS title, a.content AS content, a.author AS author, a.resdate AS resdate, a.visit AS visit, a.lev AS lev,
                                a.par AS par, b.id AS id FROM qna a, member b WHERE a.author=b.id ORDER BY a.par DESC, a.lev ASC, a.qno ASC);

SELECT * FROM qnalist2;


-----------------------------------------------------------------------------------------------------------------------

-- 자주 묻는 질문 (FAQ) 테이블 생성

CREATE TABLE faq (
                     fno int PRIMARY KEY AUTO_INCREMENT,
                     question VARCHAR(1000) NOT NULL,
                     answer VARCHAR(1000) NOT NULL,
                     cnt INT DEFAULT 0 NOT NULL
);

INSERT INTO faq(question, answer) VALUES('어떤 유형의 교육자료를 제공하나요?', '초등학교, 중학교 및 고등학교 학생들을 위한 교과서, 참고서 및 워크북을 포함한 다양한 교육자료를 제공합니다.');

INSERT INTO faq(question, answer) VALUES('책은 실물 및 디지털 형식으로 모두 제공되나요?', '네, 대부분의 책은 실물 및 디지털 형식으로 제공되며 다양한 학습 선호도를 고려합니다.');

INSERT INTO faq(question, answer) VALUES('어떻게 주문을 할 수 있나요?', '웹사이트를 통해 원하는 책을 선택하고 결제 과정을 따라주시면 간편하게 주문하실 수 있습니다.');

INSERT INTO faq(question, answer) VALUES('책 내용의 샘플을 볼 수 있나요?', '네, 책 제품 페이지에서 일부 페이지의 미리보기를 제공합니다. 내용과 레이아웃을 미리 확인하실 수 있습니다.');

INSERT INTO faq(question, answer) VALUES('반품 정책은 어떻게 되나요?', '배송 후 30일 이내에 반품이 가능합니다. 자세한 내용은 반품 정책 페이지를 참조하시기 바랍니다.');

INSERT INTO faq(question, answer) VALUES('반품을 어떻게 진행하나요?', ' 웹사이트 내 계정을 통해 반품을 진행하실 수 있습니다. 안내된 지침을 따르시고 고객 지원팀의 도움을 받으실 수 있습니다.');

INSERT INTO faq(question, answer) VALUES('책이나 주제에 대한 제안을 할 수 있나요?', '물론입니다! 귀하의 제안을 소중히 생각합니다. 고객 지원팀에 귀하의 의견을 보내주시면 됩니다.

');

INSERT INTO faq(question, answer) VALUES(' 환불을 제공하나요?', '네, 반품이 가능한 경우 환불을 제공합니다. 반품 물품을 수령하고 검사한 후 환불 절차를 진행합니다.');

INSERT INTO faq(question, answer) VALUES('책은 정기적으로 업데이트되나요?', '네, 정확성과 관련성을 보장하기 위해 최신 교과서 및 참고 자료의 최신 판을 제공하기 위해 노력하고 있습니다.');


COMMIT;

select * from faq;

----------------------------------------------------------------------------------

-- 고객 문의 게시판 댓글 테이블 생성

create table askComment(
                           cno INT PRIMARY KEY AUTO_INCREMENT,
                           bno INT,
                           author VARCHAR(16),
                           resdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                           content VARCHAR(200),
                           FOREIGN KEY(bno) REFERENCES askboard(bno) ON DELETE CASCADE
);

-- 더미 데이터 추가
INSERT INTO askComment(bno, author, content) VALUES(1, 'admin', '댓글 기능 더미데이터1');
INSERT INTO askComment(bno, author, content) VALUES(2, 'admin', '댓글 기능 더미데이터2');
INSERT INTO askComment(bno, author, content) VALUES(3, 'shin', '댓글 기능 더미데이터3');
INSERT INTO askComment(bno, author, content) VALUES(4, 'park', '댓글 기능 더미데이터3');
INSERT INTO askComment(bno, author, content) VALUES(5, 'oh', '댓글 기능 더미데이터3');
INSERT INTO askComment(bno, author, content) VALUES(6, 'shin', '댓글 기능 더미데이터3');
INSERT INTO askComment(bno, author, content) VALUES(7, 'park', '댓글 기능 더미데이터3');
INSERT INTO askComment(bno, author, content) VALUES(8, 'oh', '댓글 기능 더미데이터3');
INSERT INTO askComment(bno, author, content) VALUES(1, 'shin', '댓글 기능 더미데이터3');
INSERT INTO askComment(bno, author, content) VALUES(1, 'park', '댓글 기능 더미데이터3');

COMMIT;

SELECT * FROM askcomment;

------------------------------------------------------------------------------------------------------------------------------

-- 파일 업로드 -- 필요한지는 모르겠음...

create table filetest(
                         uname varchar(200),
                         subject varchar(300),
                         content varchar(1000),
                         filename varchar(500)
);

create table filetest2(
                          uname varchar(200),
                          subject varchar(300),
                          content varchar(1000),
                          filename1 varchar(500),
                          filename2 varchar(500),
                          filename3 varchar(500)
);

select * from filetest2;

------------------------------------------------------------------------------------------------------------------------------

-- 상품 테이블 생성
create table product(
                        pro_no INT PRIMARY KEY AUTO_INCREMENT,
                        cate_id VARCHAR(4) NOT NULL,								-- 품목 명
                        pro_cate_no VARCHAR(100) NOT NULL, 							-- 상품번호+Category : 1-10 이런 형식
                        price INT DEFAULT 0, 										-- 상품 가격
                        title VARCHAR(100) NOT NULL,								-- 상품명
                        description VARCHAR(200), 									-- 상품 썸네일 설명
                        pro_content VARCHAR(2000), 									-- 상품 설명
                        thumb VARCHAR(256), 										-- 상품 썸네일
                        img_src VARCHAR(5000) DEFAULT 'no_img.jpg', 				-- 상품 이미지 리스트
                        regdate timestamp default CURRENT_TIMESTAMP 				-- 상품 게시 날짜
);

-- 상품 더미데이터 취합
INSERT INTO product VALUES (DEFAULT, 'A', 'A-1', 11000, '초등학교 음악 6학년 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-1.jpg', 'A-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-2', 11000, '초등학교 미술 3학년 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-2.jpg', 'A-2.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-3', 11000, '초등학교 사회 3학년 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-3.jpg', 'A-3.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-4', 11000, '초등학교 사회 4학년 2학기 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-4.jpg', 'A-4.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-5', 11000, '초등학교 사회 4학년 1학기 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-5.jpg', 'A-5.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-6', 11000, '초등학교 사회 6학년 1학기 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-6.jpg', 'A-6.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-7', 11000, '초등학교 과학 5학년 1학기 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-7.jpg', 'A-7.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-8', 11000, '초등학교 과학 5학년 2학기 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-8.jpg', 'A-8.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-9', 11000, '초등학교 음악 3학년 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-9.jpg', 'A-9.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'A', 'A-10', 11000, '초등학교 음악 5학년 교과서', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-10.jpg', 'A-10.jpg' , DEFAULT);


INSERT INTO product VALUES (DEFAULT, 'B', 'B-1', 5000, '어떤 교과서를 쓰더라도 언제나 우등생 사회 5-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-1.jpg', 'B-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-2', 5000, '어떤 교과서를 쓰더라도 언제나 우등생 가을＊겨울 1-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-2.jpg', 'B-2.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-3', 5000, '어떤 교과서를 쓰더라도 언제나 우등생 과학 6-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-3.jpg', 'B-3.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-4', 5000, '어떤 교과서를 쓰더라도 언제나 우등생 국어 3-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-4.jpg', 'B-4.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-5', 5000, '어떤 교과서를 쓰더라도 언제나 우등생 수학 1-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-5.jpg', 'B-5.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-6', 5000, '어떤 교과서를 쓰더라도 언제나 우등생 수학 5-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-6.jpg', 'B-6.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-7', 5000, '어떤 교과서를 쓰더라도 언제나 우등생 과학 6-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-7.jpg', 'B-7.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-8', 5000, '개념 꿀꺽 국어, 과학, 사회 3-1', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-8.jpg', 'B-8.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-9', 5000, '개념 꿀꺽 수학 6-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-9.jpg', 'B-9.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'B', 'B-10', 5000, '개념 꿀꺽 수학 6-1', '상품 요약설명',  '상품상세설명-목차, 내용', 'B-10.jpg', 'B-10.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-1', 5000, '문해력 독해가 힘이다 디지털, 비문학편 3단계 B', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-1.jpg', 'C-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-2', 5000, '문해력 독해가 힘이다 디지털, 비문학편 4단계 B', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-2.jpg', 'C-2.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-3', 5000, '문해력 독해가 힘이다 5-B 문장제 수학편', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-3.jpg', 'C-3.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-4', 5000, '문해력 독해가 힘이다 4-B 문장제 수학편', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-4.jpg', 'C-4.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-5', 5000, '수학 리더 응용, 심화 5-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-5.jpg', 'C-5.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-6', 5000, '수학 리더 응용, 심화 6-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-6.jpg', 'C-6.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-7', 5000, '똑똑한 하루 Phonics 3A', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-7.jpg', 'C-7.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-8', 5000, '똑똑한 하루 Phonics 2B', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-8.jpg', 'C-8.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-9', 5000, '똑똑한 하루 Grammar 3A', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-9.jpg', 'C-9.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'C', 'C-10', 5000, '수학 리더 연산 5A', '상품 요약설명',  '상품상세설명-목차, 내용', 'C-10.jpg', 'C-10.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-1', 5000, '수업을 살리는 실과 레시피101', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-1.jpg', 'D-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-2', 5000, 'A가시개미와 나무괴물', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-2.jpg', 'D-2.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-3', 5000, '예쁘군과 멋진걸', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-3.jpg', 'D-3.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-4', 5000, '수업을 살리는 체육 레시피', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-4.jpg', 'D-4.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-5', 5000, '수업을 살리는 음악 레시피', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-5.jpg', 'D-5.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-6', 5000, 'A가시개미와 나무괴물', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-6.jpg', 'D-6.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-7', 5000, 'LIVE 세계사 - 인도', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-7.jpg', 'D-7.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-8', 5000, '산과 염기 LIVE  과학', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-8.jpg', 'D-8.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-9', 5000, '초등학교 음악 6학년', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-9.jpg', 'D-9.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'D', 'D-10', 5000, '누구나 쉽고 재미있게 사고력 수학 노크 PA3', '상품 요약설명',  '상품상세설명-목차, 내용', 'D-10.jpg', 'D-10.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-1', 5000, '중학교 국어 1-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-1.jpg', 'E-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-2', 5000, '중학교 국어 1-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-2.jpg', 'E-2.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-3', 5000, '중학교 국어 3-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-3.jpg', 'E-3.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-4', 5000, '중학교 사회 2', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-4.jpg', 'E-4.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-5', 5000, '중학교 역사 부도', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-5.jpg', 'E-5.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-6', 5000, 'Middle School English 2', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-6.jpg', 'E-6.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-7', 5000, '중학교 역사 2', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-7.jpg', 'E-7.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-8', 5000, '중학교 사회 1', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-8.jpg', 'E-8.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-9', 5000, 'Middle School English 3', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-9.jpg', 'E-9.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'E', 'E-10', 5000, '중학교 수학 3', '상품 요약설명',  '상품상세설명-목차, 내용', 'E-10.jpg', 'E-10.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-1', 5000, '수학의 힘 개념편 3-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-2', 5000, '시험비법 과학전략 중학 1-2 ', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-3', 5000, '체크체크 베이직 N제 수학 3-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-4', 5000, '체크체크 영어 2-B', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-5', 5000, '시작은 하루 영어 어휘 2', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-6', 5000, '체크체크 베이직 N제 수학 2-1', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-7', 5000, '체크체크 베이직 수학 3-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-8', 5000, '체크체크 사회 2-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-9', 5000, '체크체크 역사 1', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'F', 'F-10', 5000, '체크체크 과학 2-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'F-1.jpg', 'F-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-1', 5000, '해법 열공 기출 문제집 수학 중간범위 1', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-2', 5000, 'All 100 올백 기출문제집 중1 수학', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-3', 5000, '중학전략 사회 2', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-4', 5000, '영어전략 구문  중학 2', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-5', 5000, '시험비법 수학전략 중학 3-2 ', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-6', 5000, '특목고 대비 일등 전략 중학 수학 3-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-7', 5000, '특목고 대비 일등 전략 중학 영어 문법', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-8', 5000, '국가수준 학업성취도 평가 문제집 중3 국어', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-9', 5000, '국가수준 학업성취도 평가 문제집 중3 과학', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'G', 'G-10', 5000, '7일 끝 중간고사 기말고사 중학 과학 3-2', '상품 요약설명',  '상품상세설명-목차, 내용', 'G-1.jpg', 'G-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-1', 5000, '홍길동전 최고운전', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-2', 5000, '춘향전 운영전', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-3', 5000, '숙향전 최척전', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-4', 5000, '한번에 풀리는 물리학 esc', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-5', 5000, '한번에 풀리는 화학 esc', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-6', 5000, '한번에 풀리는 생명과학 esc', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-7', 5000, '한번에 풀리는 지구과학 esc', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-8', 5000, 'MY VOCA 1800 Level 1', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-9', 5000, 'MY VOCA 1800 Level 1', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'H', 'H-10', 5000, '쉽게 읽는 고전 소설 세트', '상품 요약설명',  '상품상세설명-목차, 내용', 'H-1.jpg', 'H-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-1', 5000, '고등학교 국어', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-2', 5000, '고등학교 문학', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-3', 5000, '고등학교 한국사', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-4', 5000, '고등학교 사회 문화', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-5', 5000, 'High School English', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-6', 5000, '고등학교 수학2', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-7', 5000, '고등학교 통합과학', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-8', 5000, '고등학교 교육학', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-9', 5000, '고등학교 생명과학1', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'I', 'I-10', 5000, '고등학교 기하', '상품 요약설명',  '상품상세설명-목차, 내용', 'I-1.jpg', 'I-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-1', 5000, '고등 기하 셀파', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-2', 5000, '고등 기하 확률과 통계', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-3', 5000, '고등 수학(하) 개념 해결의 법칙', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-4', 5000, '개념 해결의 법칙 확률과 통계', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-5', 5000, '고등 셀파 윤리와 사상', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

-- INSERT INTO product VALUES (DEFAULT, 'J', 'J-6', 5000, '초등학교 음악 6학년', '상품 요약설명',  '상품상세설명-목차, 내용', 'A-1.jpg', 'A-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-7', 5000, '실전에 강한 수능전략 화법과 작문', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-8', 5000, '실전에 강한 수능전략 생활과 윤리', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-9', 5000, '시작은 하루 수능', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'J', 'J-10', 5000, '고등 셀파 통합과학', '상품 요약설명',  '상품상세설명-목차, 내용', 'J-1.jpg', 'J-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-1', 5000, '실전에 강한 수능전략 미적분', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-2', 5000, '실전에 강한 수능전략 확률과 통계', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-3', 5000, '실전에 강한 수능전략 화법과 작문', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-4', 5000, '실전에 강한 수능전략 생활과 윤리', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-5', 5000, '시작은 하루 수능 수학2 기초', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-6', 5000, '시작은 하루 수능 한국사 기초', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-7', 5000, '처음 만나는 수능 구문 Basic  기본', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-8', 5000, '고단백 독서', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-9', 5000, '고단백 언어와 매체', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'K', 'K-10', 5000, '한 권에 끝내는 수능 필독서 수능 셀파 국어영역 문법 특강', '상품 요약설명',  '상품상세설명-목차, 내용', 'K-1.jpg', 'K-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'L', 'L-1', 5000, '한자 1800', '상품 요약설명',  '상품상세설명-목차, 내용', 'L-1.jpg', 'L-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'L', 'L-2', 5000, '자격증 한번에 따기 3급', '상품 요약설명',  '상품상세설명-목차, 내용', 'L-1.jpg', 'L-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'L', 'L-3', 5000, '국가수준 학업 성취도 평가 문제집 3권', '상품 요약설명',  '상품상세설명-목차, 내용', 'L-1.jpg', 'L-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'L', 'L-4', 5000, '국가수준 학업 성취도 평가 문제집 고2  국어', '상품 요약설명',  '상품상세설명-목차, 내용', 'L-1.jpg', 'L-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'L', 'L-5', 5000, '국가수준 학업 성취도 평가 문제집 고2  영어', '상품 요약설명',  '상품상세설명-목차, 내용', 'L-1.jpg', 'L-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'L', 'L-6', 5000, '국가수준 학업 성취도 평가 문제집 고2  수학', '상품 요약설명',  '상품상세설명-목차, 내용', 'L-1.jpg', 'L-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'Q', 'Q-1', 5000, '돌잡이 한글 18종+디지털 북', '상품 요약설명',  '상품상세설명-목차, 내용', 'Q-1.jpg', 'Q-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'Q', 'Q-2', 5000, '돌잡이 수학 18종+디지털 북', '상품 요약설명',  '상품상세설명-목차, 내용', 'Q-1.jpg', 'Q-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'Q', 'Q-3', 5000, '빅키즈 수학 29종+디지털 북', '상품 요약설명',  '상품상세설명-목차, 내용', 'Q-1.jpg', 'Q-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'Q', 'Q-4', 5000, '빅키즈 지식자람 25종+디지털 북', '상품 요약설명',  '상품상세설명-목차, 내용', 'Q-1.jpg', 'Q-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'Q', 'Q-5', 5000, '돌잡이 영어 33종+ 디지털 북', '상품 요약설명',  '상품상세설명-목차, 내용', 'Q-1.jpg', 'Q-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'Q', 'Q-6', 5000, '돌잡이 한글 18종+ 디지털 북', '상품 요약설명',  '상품상세설명-목차, 내용', 'Q-1.jpg', 'Q-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'Q', 'Q-7', 5000, '탐험스티커 3종 세트 동물+탈것+영화', '상품 요약설명',  '상품상세설명-목차, 내용', 'Q-1.jpg', 'Q-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'R', 'R-1', 5000, '코딩토이 마이빅 46종+전용 앱 2종', '상품 요약설명',  '상품상세설명-목차, 내용', 'R-1.jpg', 'R-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'S', 'S-1', 5000, 'MOYAMONG & Friends', '상품 요약설명',  '상품상세설명-목차, 내용', 'S-1.jpg', 'S-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'S', 'S-2', 5000, 'MOYAMONG & Friends', '상품 요약설명',  '상품상세설명-목차, 내용', 'S-1.jpg', 'S-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'S', 'S-3', 5000, 'MOYAMONG & Friends', '상품 요약설명',  '상품상세설명-목차, 내용', 'S-1.jpg', 'S-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'S', 'S-4', 5000, 'MOYAMONG & Friends', '상품 요약설명',  '상품상세설명-목차, 내용', 'S-1.jpg', 'S-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'S', 'S-5', 5000, 'MOYAMONG & Friends', '상품 요약설명',  '상품상세설명-목차, 내용', 'S-1.jpg', 'S-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'S', 'S-6', 5000, 'MOYAMONG & Friends', '상품 요약설명',  '상품상세설명-목차, 내용', 'S-1.jpg', 'S-1.jpg' , DEFAULT);

INSERT INTO product VALUES (DEFAULT, 'S', 'S-7', 5000, 'MOYAMONG & Friends년', '상품 요약설명',  '상품상세설명-목차, 내용', 'S-1.jpg', 'S-1.jpg' , DEFAULT);

select * from product;
-- 상품 부가정보 테이블 생성
create table addinfo(
                        add_no int primary KEY AUTO_INCREMENT,
                        pro_no integer not null,
                        title varchar(200) not null,
                        movie varchar(256) default 'sample1.mp4',
                        resdate timestamp default current_timestamp
);

INSERT INTO addinfo VALUES (DEFAULT, 1,'초등학교 사회 3학년 교과서','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 2,'초등학교 사회 4학년 2학기 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 3,'초등학교 사회 4학년 1학기 교과서','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 4,'초등학교 사회 6학년 1학기 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 5,'초등학교 과학 5학년 1학기 교과서','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 6,'초등학교 과학 5학년 2학기 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 7,'초등학교 음악 3학년 교과서','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 8,'초등학교 음악 5학년 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 9,'초등학교 음악 6학년 교과서','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 10,'초등학교 미술 3학년 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 11,'초등학교 사회 3학년 교과서','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 12,'초등학교 사회 4학년 2학기 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 13,'초등학교 사회 4학년 1학기 교과서','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 14,'초등학교 사회 6학년 1학기 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 15,'초등학교 과학 5학년 1학기 교과서','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 16,'초등학교 과학 5학년 2학기 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 17,'초등학교 음악 3학년 교과서','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 18,'초등학교 음악 5학년 교과서','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 19,'어떤 교과서를 쓰더라도 언제나 우등생 사회 5-2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 20,'어떤 교과서를 쓰더라도 언제나 우등생 가을＊겨울 1-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 21,'어떤 교과서를 쓰더라도 언제나 우등생 과학 6-2','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 22,'어떤 교과서를 쓰더라도 언제나 우등생 국어 3-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 23,'어떤 교과서를 쓰더라도 언제나 우등생 수학 1-2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 24,'어떤 교과서를 쓰더라도 언제나 우등생 수학 5-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 25,'어떤 교과서를 쓰더라도 언제나 우등생 과학 6-2','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 26,'개념 꿀꺽 국어, 과학, 사회 3-1','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 27,'개념 꿀꺽 수학 6-2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 28,'개념 꿀꺽 수학 6-1','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 29,'문해력 독해가 힘이다 디지털, 비문학편 3단계 B','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 30,'문해력 독해가 힘이다 디지털, 비문학편 4단계 B','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 31,'문해력 독해가 힘이다 5-B 문장제 수학편','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 32,'문해력 독해가 힘이다 4-B 문장제 수학편','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 33,'수학 리더 응용, 심화 5-2','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 34,'수학 리더 응용, 심화 6-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 35,'똑똑한 하루 Phonics 3A','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 36,'똑똑한 하루 Phonics 2B','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 37,'똑똑한 하루 Grammar 3A','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 38,'수학 리더 연산 5A','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 39,'수업을 살리는 실과 레시피101','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 40,'A가시개미와 나무괴물','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 41,'예쁘군과 멋진걸','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 42,'수업을 살리는 체육 레시피','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 43,'수업을 살리는 음악 레시피','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 44,'A가시개미와 나무괴물','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 45,'LIVE 세계사 - 인도','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 46,'산과 염기 LIVE  과학','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 47,'초등학교 음악 6학년','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 48,'누구나 쉽고 재미있게 사고력 수학 노크 PA3','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 49,'중학교 국어 1-2','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 50,'중학교 국어 1-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 51,'중학교 국어 3-2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 52,'중학교 사회 2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 53,'중학교 역사 부도','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 54,'Middle School English 2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 55,'중학교 역사 2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 56,'중학교 사회 1','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 57,'Middle School English 3','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 58,'중학교 수학 3','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 59,'수학의 힘 개념편 3-2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 60,'시험비법 과학전략 중학 1-2 ','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 61,'체크체크 베이직 N제 수학 3-2','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 62,'체크체크 영어 2-B','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 63,'시작은 하루 영어 어휘 2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 64,'체크체크 베이직 N제 수학 2-1','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 65,'체크체크 베이직 수학 3-2','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 66,'체크체크 사회 2-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 67,'체크체크 역사 1','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 68,'체크체크 과학 2-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 69,'해법 열공 기출 문제집 수학 중간범위 1','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 70,'All 100 올백 기출문제집 중1 수학','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 71,'중학전략 사회 2','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 72,'영어전략 구문  중학 2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 73,'시험비법 수학전략 중학 3-2 ','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 74,'특목고 대비 일등 전략 중학 수학 3-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 75,'특목고 대비 일등 전략 중학 영어 문법','lecture_video03.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 76,'국가수준 학업성취도 평가 문제집 중3 국어','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 77,'국가수준 학업성취도 평가 문제집 중3 과학','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 78,'7일 끝 중간고사 기말고사 중학 과학 3-2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 79,'홍길동전 최고운전','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 80,'춘향전 운영전','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 81,'숙향전 최척전','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 82,'한번에 풀리는 물리학 esc','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 83,'한번에 풀리는 화학 esc','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 84,'한번에 풀리는 생명과학 esc','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 85,'한번에 풀리는 지구과학 esc','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 86,'MY VOCA 1800 Level 1','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 87,'MY VOCA 1800 Level 1','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 88,'쉽게 읽는 고전 소설 세트','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 89,'고등학교 국어','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 90,'고등학교 문학','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 91,'고등학교 한국사','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 92,'고등학교 사회 문화','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 93,'High School English','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 94,'고등학교 수학2','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 95,'고등학교 통합과학','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 96,'고등학교 교육학','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 97,'고등학교 생명과학1','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 98,'고등학교 기하','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 99,'고등 기하 셀파','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 100,'고등 기하 확률과 통계','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 101,'고등 수학(하) 개념 해결의 법칙','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 102,'개념 해결의 법칙 확률과 통계','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 103,'고등 셀파 윤리와 사상','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 104,'실전에 강한 수능전략 화법과 작문','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 105,'실전에 강한 수능전략 생활과 윤리','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 106,'시작은 하루 수능','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 107,'고등 셀파 통합과학','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 108,'실전에 강한 수능전략 미적분','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 109,'실전에 강한 수능전략 확률과 통계','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 110,'실전에 강한 수능전략 화법과 작문','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 111,'실전에 강한 수능전략 생활과 윤리','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 112,'시작은 하루 수능 수학2 기초','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 113,'시작은 하루 수능 한국사 기초','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 114,'처음 만나는 수능 구문 Basic  기본','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 115,'고단백 독서','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 116,'고단백 언어와 매체','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 117,'한 권에 끝내는 수능 필독서 수능 셀파 국어영역 문법 특강','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 118,'한자 1800','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 119,'자격증 한번에 따기 3급','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 120,'국가수준 학업 성취도 평가 문제집 3권','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 121,'국가수준 학업 성취도 평가 문제집 고2  국어','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 122,'국가수준 학업 성취도 평가 문제집 고2  영어','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 123,'국가수준 학업 성취도 평가 문제집 고2  수학','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 124,'돌잡이 한글 18종+디지털 북','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 125,'돌잡이 수학 18종+디지털 북','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 126,'빅키즈 수학 29종+디지털 북','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 127,'빅키즈 지식자람 25종+디지털 북','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 128,'돌잡이 영어 33종+ 디지털 북','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 129,'돌잡이 한글 18종+ 디지털 북','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 130,'탐험스티커 3종 세트 동물+탈것+영화','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 131,'코딩토이 마이빅 46종+전용 앱 2종','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 132,'MOYAMONG & Friends','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 133,'MOYAMONG & Friends','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 134,'MOYAMONG & Friends','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 135,'MOYAMONG & Friends','lecture_video01.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 136,'MOYAMONG & Friends','lecture_video02.mp4', DEFAULT);
INSERT INTO addinfo VALUES (DEFAULT, 137,'MOYAMONG & Friends','lecture_video03.mp4', default);
INSERT INTO addinfo VALUES (DEFAULT, 138,'MOYAMONG & Friends','lecture_video02.mp4', DEFAULT);
---------------------------------------------------------------------------------------------------

-- 입고 테이블 생성
create table receive(
                        re_no INT primary KEY AUTO_INCREMENT,								-- 입고 번호
                        pro_no int not null,                                -- 상품 번호
                        amount int default 1,	         					-- 입고 수량
                        re_price int default 1000,			    			-- 입고 가격
                        resdate timestamp default current_timestamp		    	-- 입고 일시
);

---------------------------------------------------------------------------------------------------

-- 출고 테이블 생성
create table serve(
                      se_no int primary KEY AUTO_INCREMENT,								-- 출고 번호
                      pro_no int not null, 		                        -- 상품 번호
                      se_price int default 1000,					    	-- 출고 가격
                      amount int default 1,				         		-- 출고 수량
                      resdate timestamp default current_timestamp		    	-- 출고 일시
);

SELECT * FROM serve;

---------------------------------------------------------------------------------------------------

-- 배송 테이블 생성
create table delivery(
                         del_no int primary KEY AUTO_INCREMENT,						-- 배송 번호
                         pay_no int not null, 						-- 결제 번호
                         custom_id varchar(20) not null,					-- 고객 아이디
                         del_addr varchar(300) not null, 				-- 배송지
                         cus_tel varchar(13) not null,					-- 고객 연락처
                         del_com varchar(100),							-- 배송 회사
                         del_tel varchar(13),							-- 배송 기사님 전화번호
                         del_state int default 0,					-- 배송 상태 -> (0 : 입고 중, 1 : 출하 중, 2 : 상차, 3 : 하차, 4 : 캠프 도착, 5 : 배송 중, 6 : 배송 도착)
                         del_date timestamp default current_timestamp,	-- 배송 출발일
                         res_date varchar(13),							-- 배송 도착일
                         del_code varchar(30)							-- 송장 코드
);

-------------------------------------------------------------------------------------------

-- 결제 테이블 생성
create table payment(
                        pay_no INT primary KEY AUTO_INCREMENT,			-- 결제 번호
                        cus_id varchar(20) not null,		-- 고객 아이디
                        cus_num varchar(100),				-- 고객 번호
                        pro_no int not null,			-- 상품 번호
                        amount int default 1,			-- 결제 수량
                        pay_method varchar(100),			-- 결제 수단
                        pay_com varchar(100),				-- 결제 회사
                        pay_price int default 1000,		-- 결제 금액
                        pay_account varchar(100) NOT NULL,	-- 결제 카드 번호
                        del_no INT NOT NULL,				-- 배송 번호(랜덤번호 추출)
                        pay_resdate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP -- 결제 일시 지정
);

-------------------------------------------------------------------------------------------

-- 카테고리 테이블
create table category(
                         cate_no varchar(4) primary key,
                         cate_name varchar(100) not null
);

-- 카테고리 등록
insert into category values('A', '초등교과서');
insert into category values('B', '초등참고서');
insert into category values('C', '초등문제집');
insert into category values('D', '초등기타');
insert into category values('E', '중등교과서');
insert into category values('F', '중등참고서');
insert into category values('G', '중등문제집');
insert into category values('H', '중등기타');
insert into category values('I', '고등교과서');
insert into category values('J', '고등참고서');
insert into category values('K', '고등문제집');
insert into category values('L', '고등기타');
insert into category values('M', '일반교과서');
insert into category values('N', '일반참고서');
insert into category values('O', '일반문제집');
insert into category values('P', '일반기타');
insert into category values('Q', '유아콘텐츠');
insert into category values('R', '유아놀이');
insert into category values('S', '유아기타');
insert into category values('T', '해외서적');
insert into category values('U', '해외콘텐츠');

-------------------------------------------------------------------------------------------

-- 카트 테이블 생성
create table cart(
                     cart_no serial primary key,				-- 카트 번호
                     cus_id varchar(20) not null,			-- 고객 아이디
                     pro_no integer not null,				-- 상품 번호
                     amount integer not null                 -- 상품 수량
);

-------------------------------------------------------------------------------------------

-- 후기 테이블 생성
CREATE TABLE review(
                       rev_no int PRIMARY KEY AUTO_INCREMENT, 			            			-- 리뷰 번호
                       mem_id VARCHAR(16) NOT NULL, 								-- 회원 아이디
                       pay_no INT NOT NULL, 										-- 결제 번호
                       pro varchar(200) NOT NULL, 									-- 상품명
                       star INT DEFAULT 5, 										-- 별점
                       content VARCHAR(1000), 										-- 리뷰 내용
                       regdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,		-- 리뷰 작성 일자
                       pro_no INT NOT NULL  										-- 상품 번호
);

-------------------------------------------------------------------------------------------

-- 재고 뷰 생성
create view inventory as (select pro_no, amount from receive EXCEPT select se_no, amount from serve);

select pro_no, amount from receive EXCEPT select se_no, amount from serve;

select * from product;

select * from payment;


-------------------------------------------------------------------------------------------

-- 상품 목록
select * from product order by pro_no;

-------------------------------------------------------------------------------------------

-- 신상품 목록
select * from product order by pro_no desc limit 5;

----------------------------------------------------------------------------------------

-- 베스트셀러 상품 목록
select * from product where pro_no in (select pro_no FROM payment group by pro_no order by sum(amount) DESC) LIMIT 5;

-------------------------------------------------------------------------------------------

-- 카테고리별 신상품 목록
select * FROM (product where cate=? order BY (pro_no) DESC) limit 3;

-------------------------------------------------------------------------------------------

-- 카테고리별 베스트셀러 상품 목록
select * from product where pcode in (select pro_no from payment group by pro_no order by sum(amount)) and cate=? limit 3;

-------------------------------------------------------------------------------------------

-- 상품 등록
insert into product values(default, ?, '', ?, ?, ?, ?, ?, ?, ?, default);

update product set pro_no = concat(cate_id, pro_no) where pro_no=1;

-------------------------------------------------------------------------------------------

-- 상품 제거
delete from product where pro_no=?;

-------------------------------------------------------------------------------------------

-- 상품 정보 변경
update product set pname=?, cate=?, pcomment=?, plist=?, price=?, imgsrc1=?, imgsrc2=?, imgsrc3=? where pro_no=?;

-------------------------------------------------------------------------------------------

-- 입고 조회
select * from receive;

-------------------------------------------------------------------------------------------

-- 입고 처리 패턴
insert into receive values (default, ?, ?, ?, default);

insert into receive(pro_no, amount, rprice) values (?, ?, ?);

-------------------------------------------------------------------------------------------

-- 상품, 결제, 출고, 배송, 카트 테이블 확인
select * from product;
select * from payment;
select * from serve;
select * from delivery;
select * from cart;

-------------------------------------------------------------------------------------------

-- 출고 처리 패턴
insert into payment values (default, ?, ?, ?, ?, ?, ?, ?, '');
insert into serve values(default, ?, ?, ?, default);
insert into delivery values (default, ?, ?, ?, ?, '','',default,default,'','');
delete from cart where cartno=?;

-------------------------------------------------------------------------------------------

-- 반품 처리 패턴(배송전이면 반품 가능)
delete from payment where sno=?;
insert into receive values (default, ?, ?, ?, default);
delete from serve where sno=?;
insert into cart values (default, ?, ?, ?);
delete from delivery where sno=?;

-------------------------------------------------------------------------------------------

-- 배송처리
update delivery set pcom=?, ptel=?, pstate=1, sdate=current_timestamp, rdate=?, bcode=? where dno=?;

-------------------------------------------------------------------------------------------

-- 배송 완료 처리
update delivery set pstate=2 where dno=?;


-- 전체 이익 통계 뷰 작성
create view profit as (select pro_no, sum(sprice*amount) as tot from serve group by pro_no EXCEPT select pro_no, sum(rprice*amount) as tot from receive group by pro_no);

select * from profit;
select * from addinfo;
select * from receive;
select * from delivery;
select * from payment;
select * from custom;
select * from inventory;