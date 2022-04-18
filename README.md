# 리스트형 게시판 프로젝트
## 기획/설계
### 프로젝트 기간
2022.04.11 ~ 2022.04.18 (7일)
## 기타
### 개발환경 셋팅
#### 프로젝트 환경(2022.04.14) 
- WINDOWS10
- STS4
- MySQL 8.0.28
- Apache Tomcat 8.5
- JAVA 11  
#### 순서(2022.04.14) 
[1. STS 설치](#1.STS-설치)    
2. STS3 Tool 설치  
3. 이클립스 인코딩 설정 변경  
4. 프로젝트 생성 및 스프링 버전 변경   
5. 프로젝트 자바(JDK, 컴파일러) 버전 변경 
6. JDBC 연결 
7. 커넥션 풀(HikariCP) 설정  
8. DataSource 설정 (root-context.xml)
9. MyBatis 라이브러리 추가 및 SQLSessionFactory 설정
10. Servlet 버전 변경
11. 필수 패키지 추가 및 설정
12. 아파치 톰캣 연동
##### 1.STS 설치
STS 홈페이지에 들어가 stsTool 다운 받고 Help -> Eclipse Maketplace 들어가서 stsTool3을 다운 받는다.  
![sts](https://user-images.githubusercontent.com/94879395/163827039-5798b33c-90fe-4e42-aba9-e8676660e318.PNG)  
##### 3.이클립스 인코딩 설정 변경
Windows -> Preferences -> General -> Workpace에서 UTF-8로 바꿔준다.  
![sts](https://user-images.githubusercontent.com/94879395/163827029-1b8e126e-ddf8-4772-a66d-1f23b321bdf6.PNG)   
##### 4.프로젝트 생성 및 스프링 버전 변경
Spring Legacy Project를 생성하고 pox.xml에서 스프링 버전을 바꿔준다.  
[Spring Legacy와 Spring Boot 비교](https://kimdonghyungsoo.tistory.com/5)  
![sts](https://user-images.githubusercontent.com/94879395/163827031-742cf9df-ae49-4ab0-a4b8-30b3f3837438.PNG)   
##### 5.프로젝트 자바(JDK, 컴파일러) 버전 변경
프로젝트폴더 우클릭 -> Preferences -> Project Facets 들어가서 맞는 버전으로 설정해준다.  
![sts](https://user-images.githubusercontent.com/94879395/163827034-42607c9a-a2a3-4522-9793-a5802c0fe334.PNG)   
##### 6.JDBC 연결
MySQL 8.0.28(22.04.18기준) 다운 받고 아이디 비번 설정 해주고 pom.xml에 MySQL 설정 해준다.  
![sts](https://user-images.githubusercontent.com/94879395/163827035-ce85408a-e755-49a9-8595-224953e81dc5.PNG)  
##### 7. 커넥션 풀(HikariCP) 설정 
JAVA 8, 9, 10, 11을 사용하는 경우 HikariCP 4.0.2 이상 버전을 사용해줘야 한다.  
[커넥션 풀 이란?](https://programmer93.tistory.com/74)  
![sts](https://user-images.githubusercontent.com/94879395/163827043-c19863e5-391b-4a39-8534-c3c11ff7541d.PNG)  
##### 8.DataSource 설정 (root-context.xml)
![sts](https://user-images.githubusercontent.com/94879395/163827023-392e6439-f6d5-4ab2-8ec5-5f0a53250a9b.PNG)  
##### 9. MyBatis 라이브러리 추가 및 SQLSessionFactory 설정
[MyBatis 란?](https://hororolol.tistory.com/507)  
![sts](https://user-images.githubusercontent.com/94879395/163827024-d1fc76c8-585d-4cfc-9ed4-2d1b40450a4b.PNG) 
![sts](https://user-images.githubusercontent.com/94879395/163827037-5a7e1e10-3c89-4001-bc2f-8df3bcbb165c.PNG) 
#### 10. Servlet 버전 변경
Java 설정 등을 이용하기 위해서 servlet 3.0 이상 버전으로 변경해줍니다. [pom.xml]에 있는 기존의 servlet 2.5 버전은 주석 처리 혹은 삭제한 후 servlet 3.1 버전을 추가 및 저장합니다.  
![sts](https://user-images.githubusercontent.com/94879395/163827025-fc1b9ec5-e63a-4727-9649-e665d86d9c5a.PNG) 
#### 11. 필수 패키지 추가 및 설정
스프링에서 각 패키지를 인식 할 수 있도록 [root-context.xml] 파일 설정을 변경해주어야 합니다.  
 [root-context.xml] 파일을 연 후 하단의 [namespaces]를 클릭 해당 창을 엽니다. "context", "mybatis-spring"을 체크하여  
![sts](https://user-images.githubusercontent.com/94879395/163827047-f32922fc-6efe-4a65-93fe-3730798b8311.PNG)  
저장 후 다시 하단의 [Source] 탭을 누른 후 아래의 코드를 추가합니다. 
![sts](https://user-images.githubusercontent.com/94879395/163827051-a34b897e-47fa-425f-9715-7315a135f2c8.PNG)  
##### Mapper XML 저장 경로 생성
![sts](https://user-images.githubusercontent.com/94879395/163827053-8708d2a5-7727-4fac-83e2-b9801a50dc85.PNG) 

#### 12. 아파치 톰캣 연동
[아파치 톰캣 연동](https://mindolsj-dev.tistory.com/entry/Spring-%EC%8A%A4%ED%94%84%EB%A7%81-%EA%B0%9C%EB%B0%9CTomCat%EC%84%A4%EC%B9%98-%EC%8A%A4%ED%94%84%EB%A7%81-%ED%94%84%EB%A1%9C%EC%A0%9D%ED%8A%B8-%EC%97%B0%EB%8F%99)  

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

### 오류 및 해결 방법
#### 개발환경 셋팅

