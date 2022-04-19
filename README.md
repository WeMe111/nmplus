# 리스트형 게시판 프로젝트
## 기획/설계
### 프로젝트 기간
2022.04.11 ~ 2022.04.18 (7일)
## 진행순서
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

## 오류 및 해결 방법(※오타를 주의 하자!!)
### 개발환경 셋팅
#### 환경 변수 오류
개인 컴퓨터로 JDK11을 설치하고 환경변수를 실수없이 설정했는데, 적용이 안됬다. 이유는 간단했다.  
Java가 이중설정이 되어 있었다.  
![환경변수 오류](https://user-images.githubusercontent.com/94879395/163906036-e4b6a0ab-554b-4536-8ddd-440f72dfb233.PNG)  
Path에 Java가 있는지 확인 해보자 있으면 JAVA_HOME 빼고 삭제 해준다.  
![환경변수 오류](https://user-images.githubusercontent.com/94879395/163906140-a27ae552-f4fd-4c6b-81ab-a638bf57eb86.PNG)  
#### Spring Legacy Project 생성 오류
이런 오류가 뜨는 이유는 여러이유가 있다.   
![프로젝트생성오류](https://user-images.githubusercontent.com/94879395/163904168-0866960a-8ca2-4198-9cab-858a58ea0647.PNG)  
1.JDK버전이 너무 낮거나 높은 경우 이다. 
처음 1.8을 사용했지만 오류가 나서 11로 변경 해줬다. 환경변수에 들어가서 변경해주자.  
2.JVM을 찾지 못하여 발생하는 이유이다.  
SpringToolSuite4.ini 텍스트 파일로 열어서 그림 처럼 경로를 지정해주면 프로젝트가 잘 생성된다.  
-vm  
C:\Program Files\Java\jdk-11.0.12\bin\javaw.exe   
![프로젝트생성오류](https://user-images.githubusercontent.com/94879395/163904174-2eddaa25-83de-4477-a35a-bc0b80668a2f.PNG)  
#### root-context.xml파일에 Namepaces탭이 없음
이유는 2가지이다.
1.spring tools 3 add-on for spring을 설치를 안해서 이다.  
스프링 마켓 플레이스에 들어가서 spring tools 3 add-on for spring 업데이트 및 인스톨을 해주자.  
![namespaces오류](https://user-images.githubusercontent.com/94879395/163904182-ceb5af16-a4c8-4cb2-9061-3b2a53d36c08.PNG)  
2.설정에서 Namespaces탭을 열어준다.  
사진처럼 설정해주면 밑에 하단에 Namespaces탭이 나타난다.  
![namespaces오류](https://user-images.githubusercontent.com/94879395/163904178-b65a2d9d-1515-4436-88aa-866f4795f342.PNG)  
![namespaces오류](https://user-images.githubusercontent.com/94879395/163904180-fdb76004-2583-4452-808a-cf33e50885ff.PNG)  
![namespaces오류](https://user-images.githubusercontent.com/94879395/163904176-b0d2e602-5d67-47b9-a941-8fc7cbc154bb.PNG)  
#### controller가 동작하지 않는 오류
[ANnotation 정리](https://velog.io/@gillog/Spring-Annotation-%EC%A0%95%EB%A6%AC)  
이유는 여러가지 이다.  
1.class 최상단에 @Controller 어노테이션을 넣었는가?  
![어노테이션 오류](https://user-images.githubusercontent.com/94879395/163904173-37ac5b2c-ca74-4a09-870e-f5bd73e5f872.PNG)  
2.mapping 중복 있는지 확인한다.  
@getMappring("/get")을 두번 넣어서 동작하지 않았다. 잘 확인하자!!  
![어노테이션 오류](https://user-images.githubusercontent.com/94879395/163904185-253502e7-8c79-40b6-a1e9-a8f8cc4addf9.PNG)  
#### @GetMapping, @PostMapping import 에러 
pom.xml에서 빨간줄에 버전을 업데이트 시켜주고 프로젝트에서 우클릭 > maven > update project클릭하고 임포트하면 잘된것이다.  
![임포트오류](https://user-images.githubusercontent.com/94879395/163904183-f3a4e26b-8dda-4708-ba1f-c252fa8515a5.PNG)   
## 기타
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
### Spring VS SpringBoot 차이 비교
[Spring VS SpringBoot 차이 비교](https://sas-study.tistory.com/274)  
### REST API 란?
[REST API 란](https://meetup.toast.com/posts/92)  
### 데브옵스(DevOps)란?
[DevOps란?](https://www.netapp.com/ko/devops-solutions/what-is-devops/)  
