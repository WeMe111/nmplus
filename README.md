# 리스트형 게시판 프로젝트
## 기획/설계
### 프로젝트 기간
2022.04.11 ~ 2022.04.18 (7일)
### 개발환경
**OS**: Windows10  
**DataBase**: MySQL  
**Service System**: Apache Tomcat(8.5)  
**Framwork**: Spring3  
**언어**: JAVA(JDK1.8), JSP, HTML, CSS, Javascript  
**Tool**: eclipse, MySQL  
**Eclipse Plugin**: Emmet  
### 데이터베이스 테이블 구조
1. board 게시판에 필요한 정보 수록  

|제목|내용|설명|설명|
|------|---|---|---|
|테스트1|테스트2|테스트3|테스트4|
|테스트1|테스트2|테스트3|테스트4|
|테스트1|테스트2|테스트3|테스트4|

## 로드맵

## 기타
### 개발환경 셋팅
-
### 스프링과 데이터베이스 준비
-
### 스프링과 데이터베이스 연동
-
### 게시물 목록 페이지 구현
-
### 게시물 작성 구현
-
### 게시물 조회 구현
-
### 게시물 수정 구현
-
### 게시물 삭제 구현
-

### BootStrap(2022.04.14)  
#### BootStrap 이란?  
부트스트랩(Bootstrap)은 웹사이트를 쉽게 만들 수 있게 도와주는 HTML, CSS, JS 프레임워크이다. 하나의 CSS로 휴대폰, 태블릿, 데스크탑까지 다양한 기기에서 작동한다. 다양한 기능을 제공하여 사용자가 쉽게 웹사이트를 제작, 유지, 보수할 수 있도록 도와준다.
#### 적용방법 및 리뷰  
1. 연습 삼아 오픈 소스로 공개된 이 템플릿을 선택했다.   
![부트스트랩1](https://user-images.githubusercontent.com/94879395/163342043-c48af0c1-05ae-45ce-8e08-4ef758ec1f18.PNG)
2. index.jsp파일을 views에 넣어 주고 사진에 보이는 5개의 폴더를 resources 파일에 넣어주고 돌려봤지만 변화가 없었다.  
![부트스트랩1](https://user-images.githubusercontent.com/94879395/163344320-aa881499-f5ab-4844-b059-8bb83693faba.PNG)  
3.이유는 경로를 변경을 안해서 이런 상황이 나왔다.  
![부트스트랩1](https://user-images.githubusercontent.com/94879395/163344748-28737987-88a0-43bc-a9f8-862dde692637.PNG)  
![부트스트랩1](https://user-images.githubusercontent.com/94879395/163344752-c5eead64-8d8d-4d38-a4ef-738d51ba189a.PNG)  
4. 빨간줄 부분을 수정해줬더니 잘 실행이 되었다.  
![부트스트랩1](https://user-images.githubusercontent.com/94879395/163342043-c48af0c1-05ae-45ce-8e08-4ef758ec1f18.PNG)  
5. 게시판을 꾸미기 위해 부트스트랩 사이트에 문서를 확인했다.  
![부트스트랩1](https://user-images.githubusercontent.com/94879395/163536664-fb30777c-284c-4693-9711-41aaaf8e23db.PNG
)  
6. 정말 다양한 메뉴들이 있었고 다양하게 꾸며봤다.  
![부트스트랩1](https://user-images.githubusercontent.com/94879395/163536674-60ae25de-ad4a-447b-a01e-7314702fa562.PNG)  
7. 또 부트스트랩위에 내 css코드를 입력했지만 작동하는 코드가 있고 작동하지 않는 코드 그리고 내 생각과 다르게 작동 코드가 있었다.  하지만 정말 편한 프레이워크였다. 부트스트랩을 더 공부해야 할거같다.  
![부트스트랩1](https://user-images.githubusercontent.com/94879395/163536679-8d98a4d8-357d-4a8d-b77b-c407e8b782da.PNG)  
