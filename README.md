## 📍Chunjae Project 02
천재교육 풀스택 JAVA 과정 2기 2차 팀 프로젝트 _ 스토어 페이지
<br><br>

## 🖥️ 프로젝트 소개
"CORNBOOK" 라는 스토어 기반 구매 플랫폼입니다."
<br><br>

### 📌 주요기능
* **회원기능** (로그인, 로그아웃, 회원가입)
* **상품판매** (상품 목록, 상품 상세페이지, 홍보 동영상 기능, 상품 입고 기능)
* **상품구매** (상품 결제, 상품 환불, 장바구니 기능 )
* **마이페이지** (개인정보수정,배송정보조회, 상품 리뷰(댓글), 상품 구매 목록)
* **관리자페이지** (상품관리, 배송정보조회 입출고 관리, 회원관리)
* **공지사항** (게시판 글 목록, 글 상세보기, 글 등록, 글 수정, 글 삭제, 댓글)
* **FAQ** ( 글 목록, 글 상세보기, 글 등록, 글 수정, 글 삭제)

## 🕰️ 개발 기간
* 23.08.22일 - 23.09.04일
<br><br>

### 🧑‍🤝‍🧑 맴버구성

**팀장 : 박진권**
* 로고 제작
* usecaseDiagram 작성
* 메인페이지 디자인
* FAQ 기능 구현
* 공지사항, FAQ 게시판 제작

<br><br>
**팀원 : 김보경**
* 요구사항정의서 작성
* 상품 카테고리 리스트 기능
* 상품 상세페이지 구현
  * 상품 상세페이지 동영상 재생 기능 구현
  * 상품 상세페이지 리뷰 리스트 기능 구현
  * 리뷰 작성 기능 구현

<br><br>
**팀원 : 김현경**
* WBS 작성
* 결제 기능 구현
* 리뷰 삭제/수정 기능 구현
* 상품 입고 기능 구현
* 마이페이지 구현
  * 회원정보 수정 기능
  * 내가 쓴 리뷰 관리 기능

<br><br>
**팀원 : 신예은**
* 화면설계서 작성
* 환불/취소 기능
* 관리지페이지 기능 구현
  * 손익 통계 페이지 구현
  * 회원 관리 기능 구현
* 상품 관리 기능 구현
  * 상품 추가/삭제/수정 기능 구현
  * 파일 업로드 기능 구현
  * 배송 기능 구현  

<br><br>
**팀원 : 오태훈**
* 데이터베이스 설계
* 로그인 기능 구현
* 회원가입 기능 구현
* 메인페이지 사이드바 구현
* 카카오톡 1:1 상담 기능 구현
* 장바구니 


### ⚙️ 개발 환경
#### ✅FRONTEND : <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white"><img src="https://img.shields.io/badge/css-0769AD?style=for-the-badge&logo=jquery&logoColor=white"><img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white"><img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=7952B3">

#### ✅BACKEND : <img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white"><img src="https://img.shields.io/badge/intellijidea-000000?style=for-the-badge&logo=intellijidea&logoColor=white">

#### ✅DATABASE : <img src="https://img.shields.io/badge/mariaDB-003545?style=for-the-badge&logo=mariaDB&logoColor=white"><img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">

#### ✅Server : <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">
<br><br>
<hr>
<br><br>

# ⚒프로젝트 설계

### 📂개념적 설계 (USECASE DIAGRAM)
<p align="center"><img alt="usecasediagram1" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/64f9a972-2bd5-4028-af7d-3def8bebea04"></p>
<p align="center"><img alt="usecasediagram2" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/7fb84efe-430b-44b6-9299-dad7cf67f01e"></p>
<p align="center"><img alt="usecasediagram3" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/54222eeb-de87-444a-b53c-0ace70ee0409"></p>
<p align="center"><img alt="usecasediagram4" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/f854a92c-b424-404a-aa05-cd930ff67aa1"></p>
<p align="center"><img alt="usecasediagram5" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/e2e285aa-bf16-43e1-81a4-de9550a59160"></p>
<p align="center"><img alt="usecasediagram6" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/923a2394-f624-497c-9dcd-a2b9f574f3ab"></p>
<p align="center"><img alt="usecasediagram7" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/b298d125-8490-4db2-a483-5ba1673973d7"></p>
<p align="center"><img alt="usecasediagram8" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/7f9ea650-6c6f-4435-8c7d-562a1ec14c8f"></p>
<p align="center"><img alt="usecasediagram9" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/42844584-2e3d-423c-beb1-8535c1dd87c8"></p>
<p align="center"><img alt="usecasediagram10" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/a76ff07b-8f51-427b-8e2a-18e3b01f8da8"></p>
<p align="center"><img alt="usecasediagram11" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/738dfb57-fedf-42e4-88cd-558ad01eac16">
</p>

<br><br>

### 📂DATABASE - 테이블 ERD
<p align="center"><img alt="database_erd" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/41913eeb-fe10-4951-bfda-a0a3bb521c08"></p>
<br><br>

### 📂DATABASE - 테이블 구현
#### MEMBER
![initial](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/0c7cf4a4-5949-4db3-b110-81b11cbfbacc)
#### PRODUCT
![initial](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/41c637b1-e9cd-4d4f-a267-6182165dd8be)
#### CATEGORY
![initial](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/7ae3762c-6d1a-4731-83ef-2e7b1ca9b43a)
#### CART
![initial](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/0a5354d9-0d5c-41e7-8b78-6edae17e8423)
#### DELIVERY
![initial](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/3d1d823b-b877-48bf-b1f3-b6b4ec540651)
#### PAYMENT
![initial](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/7c95e5b4-cfb3-4581-a4f8-700cf8fc0c1c)
#### SERVE
![initial](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/9b8dad23-60d0-45ce-b7d9-133a91dc5c68)
#### RECEIVE
![initial](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/0ac86a4f-5064-40d0-b917-10cc09bb906d)
#### REVIEW
![initial](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/e5229d9b-a216-404c-84c3-56292e10c009)
#### NOTICE
![initial](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/531f3e0c-e558-4e05-95e9-772144745d37)
#### FAQ
![initial](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/7fb5ca43-1395-4217-b347-646344377c03)
#### BOARD
![initial](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/470af99f-fc74-4d85-8f0b-cabd3f8ed2a0)
#### ADD INFO
![initial](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/23ce9e50-4caf-443a-8fce-06ea75b7bf42)
#### FILETEST
![initial](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/56682f89-faf3-473f-824b-8561596f3b02)
#### FILETEST2
![initial](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/5a593e54-e3c6-4a7c-acca-f31b98679bfd)

### 📂CLASS DIAGRAM
![classdiagram](https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/95fd77b4-96fb-4381-9694-a26aebd7d519)
<br><br>

### 📂시퀀스 다이어그램 (Sequence Diagram)

#### 회원
<p align="center"><img alt="시퀀스다이아그램1" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/fdf92b69-7f3c-4487-b791-4b2f62395b8a"></p>

#### 공지사항
<p align="center"><img alt="시퀀스다이아그램2" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/f2250e75-5009-4840-b70e-3be913b7d501"></p>

#### FAQ
<p align="center"><img alt="시퀀스다이아그램3" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/5165fd25-911f-482c-b7d9-3066aab374b0"></p>

#### 장바구니
<p align="center"><img alt="시퀀스다이아그램4" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/0298422d-f296-4b14-a003-daa4b7bfa331"></p>

#### 상품
<p align="center"><img alt="시퀀스다이아그램5" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/ea85de63-4a21-4dba-8537-5a23c22a31e0"></p>

#### 결제
<p align="center"><img alt="시퀀스다이아그램6" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/eb220af3-59c1-43a5-9692-d18b0702f9ef"></p>

#### 입고
<p align="center"><img alt="시퀀스다이아그램7" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/d03ac3b6-0556-4bef-8575-59eb904365cc"></p>

#### 리뷰
<p align="center"><img alt="시퀀스다이아그램8" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/94f59868-d322-4dac-85f3-54628f4f08cf"></p>


# 📎기능 구현
## 메인 페이지
- 사이드바
- 카카오톡 1:1 상담 기능
<p align="center"><img alt="메인페이지" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/c1e37e3a-be97-4a12-a750-0599e7975e4e"></p>

 
## 🗂 회원 기능
### 1. 로그인
#### (1) 일반 로그인
- DB값 검증
- ID찾기, PW찾기
- 로그인 시 쿠키(Cookie) 및 세션(Session) 생성
  <p align="center"><img alt="로그인 화면" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/34374adb-efc7-4326-b3c3-306d744f0064"></p>
 
#### (2)회원가입
- 주소 API 연동
- ID 중복 체크
- 비밀번호 유효성 검사
  
<p align="center"><img alt="회원가입 화면" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/f5075b17-1287-4f98-9be3-4df2330b7cf8"></p>

   
### 2.마이 페이지
- 주소 API 연동
- 회원정보 변경
- 구매한 상품 목록
- 내가 쓴 리뷰 관리
- 배송 조회 기능: 구매 확정 후 리뷰 등록
<p align="center"><img alt="나의 정보 수정" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/86284942-9f4a-48ad-a136-2f000f9a683c"></p>
  
<p align="center"><img alt="배송 조회" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/6a8cc848-e193-47a1-81e6-17ac18c528b5"></p>
   
<p align="center"><img alt="구매확정" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/e1d0cfe7-4c1d-4a5f-8f0b-ab87b0fcf4ed"></p>
     
<p align="center"><img alt="나의 리뷰관리" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/8c4e1ed0-d13a-49fa-bb0d-5fa24c227993"></p>
  
       
## 고객 지원
#### 공지사항
- CURD
  - 관리자: 글쓰기, 수정, 삭제
  - 회원: 읽기
  <p align="center"><img alt="공지사항 글 목록" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/a49fd606-45f2-4fae-90b0-1c19fc50642c"></p>
   
  <p align="center"><img alt="공지사항 글 쓰기, 수정" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/2b72daa6-c552-4fba-8491-d35ee599ddda"></p>
       
 <p align="center"><img alt="공지사항 글 상세보기" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/03ed96d0-b867-4898-b1df-67b327ab9d82"></p>
        
          
#### FAQ
- 토글 형식의 FAQ 기능
<p align="center"><img alt="FAQ" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/45577714-fe6a-4138-93a5-a39d2df38f3a"></p>
          <sub><b> PIC11 : FAQ </sub></b>
           
## 상품
#### (1)상품리스트
- 유아/초/중/고 카테고리별 리스트 출력 기능
<p align="center"><img alt="유아상품 리스트" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/7bcfc1d0-3f53-4b9a-a45e-f24a2110431f"></p>
           
<p align="center"><img alt="초등상품 리스트" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/1e80a638-ca3a-438a-a82d-9a4b456b9913"></p>
            
<p align="center"><img alt="중등상품 리스트" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/fcbd9ebc-49fa-4bd2-a8e8-45ff2f0eea92"></p>
           
<p align="center"><img alt="고등상품 리스트" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/fc11b92a-3517-4f81-8ad5-89b4c960b255"></p>
             
               
#### (2)상품 상세페이지
- 장바구니 추가 기능
- 관리자 입고 기능
- 상품 비디오 재생 기능
- 상품 후기리스트 기능
<p align="center"><img alt="상품 상세페이지" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/51fc71c0-40da-40a6-9244-eb8a061d7837"></p>
               
<p align="center"><img alt="상품 비디오" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/e23a0a9f-ff76-4f89-b43f-ae15bfb76b56"></p>
                
<p align="center"><img alt="상품 리뷰 리스트" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/a4638f51-fbd9-4911-b273-0d2d3d53bcf4"></p>
                
                  
## 관리자 기능
#### 관리자 페이지
- 대시보드 형식의 관리자 페이지
- 상품 관리 기능: 상품 등록, 수정, 삭제
- 배송정보 관리: 결제완료 주문 배송상태 변경
- 회원관리 기능: 회원정보 수정/강퇴
<p align="center"><img alt="관리자 페이지" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/13466fd1-dc2c-4eab-b91a-e6c698de7e7f"></p>
                
<p align="center"><img alt="상품 관리" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/0a8b5fdb-634c-4c61-8e6a-1c25c8f515ec"></p>
                  
<p align="center"><img alt="배송정보" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/287cbe7f-2c63-4e8d-aedc-ccafe473154f"></p>
                   
<p align="center"><img alt="회원관리" src="https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/139138265/bf6fedfd-e21f-48aa-ae25-f1068ed1d95c"></p>


## 🎬 콘북 시연영상

https://github.com/ChunjaeFullStackJavaMaker/Chunjae_Team_Proj02/assets/138674233/faf5cf33-df97-4f60-8262-b77b872fdf8d


