# 리스트형 게시판 프로젝트
## 기획/설계
### 프로젝트 기간
2022.04.11 ~ 2022.04.19 (8일)
### 설계 
1. 게시판  
- 번호, 제목, 작성자, 작성일, 수정일 구현  
- 제목 + 내용 + 작성자 검색 기능 구현  
- 페이징 구현  

2.글등록  
- 제목, 작성자, 내용이 없으면 경고 문구 구현  
- 취소 버튼 클릭 시 이전페이지로 이동  

3.글 조회  
- 게시판 번호, 제목, 내용, 작정자, 등록일, 수정일 데이터 불러오기 
- 목록 페이지 클릭 시 목록 페이지로 이동  
- 수정 버튼 클릭 시 수정페이지로 이동  

4.수정페이지  
- 게시판 번호, 제목, 내용, 작정자, 등록일, 수정일 데이터 불러오기  
- 삭제 버튼 클릭 시 게시물 삭제  
- 제목, 내용 빼고 다른 입려폼 읽기만 가능  

## 진행순서
### 개발환경 셋팅
#### 프로젝트 환경(2022.04.14) 
- WINDOWS10
- STS3
- MySQL 8.0.28
- Apache Tomcat 8.5
- JAVA 11  
#### 순서(2022.04.14)  
[1. STS 설치](#1.STS-설치)    
2. STS3 Tool 설치    
[3. 이클립스 인코딩 설정 변경](3.이클립스-인코딩-설정-변경)    
[4. 프로젝트 생성 및 스프링 버전 변경](4.프로젝트-생성-및-스프링-버전-변경)   
[5. 프로젝트 자바(JDK, 컴파일러) 버전 변경](5.프로젝트-자바(JDK,-컴파일러)-버전-변경)  
[6. JDBC 연결](6.JDBC-연결)  
[7. 커넥션 풀(HikariCP) 설정](7.-커넥션-풀(HikariCP)-설정)   
[8. DataSource 설정 (root-context.xml)](8.DataSource-설정-(root-context.xml))   
[9. MyBatis 라이브러리 추가 및 SQLSessionFactory 설정](9.-MyBatis-라이브러리-추가-및-SQLSessionFactory-설정)  
[10. Servlet 버전 변경](10.-Servlet-버전-변경)  
[11. 필수 패키지 추가 및 설정](11.-필수-패키지-추가-및-설정)   
[12. 아파치 톰캣 연동](12.-아파치톰-캣-연동)  
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
### GitHub코멘트 작성법(커밋 습관을 길들이자!!)
헤더는 필수이며, 범위(scope), 본문(body), 바닥글(footer)은 선택사항입니다.  
![깃허브코멘트](https://user-images.githubusercontent.com/94879395/163908564-0ea52a94-cbe8-4323-a43a-3746f1f67687.PNG)  
<type>은 해당 커밋의 성격을 나타내며 아래 중 하나여야 합니다    
![깃허브코멘트2](https://user-images.githubusercontent.com/94879395/163908587-43a504a1-4320-4bb0-a8ff-011977c6c746.PNG)  
<body>는 본문으로 헤더로 표현할 수 없는 상세한 내용을 적습니다.  
헤더로 표현이 가능하다면 생략 가능합니다.  

<footer>는 바닥글로 어떤 이슈에서 왔는지 같은 참조 정보들을 추가하는 용도로 사용합니다  
예를 들어 특정 이슈를 참조하려면 close #1233 과 같이 추가하면 됩니다.  
close는 이슈를 참조하면서 main브랜치로 푸시될 때 이슈를 닫게 됩니다.  
 
[여러 커밋 메시지 예시들](https://github.com/angular/angular/commits/master)  
 
### 에러 및 예외상황 읽기  
[에러 및 예외상황 읽기](https://uxandprogramming.tistory.com/5)  
[Java - 스택 트레이스(Stack Trace) 읽기](https://jaehoney.tistory.com/51)  
 
## 후기
환경변수를 너무 쉽게 본거같다.   
처음 환경변수를 할때에는 강사님 따라 해서 쉽게 설정했지만, 새로운 컴퓨터에서 처음부터 셋팅하는게 쉽지 않았다.  
그리고 일주일 넘게 프로젝트를 해보면서 오타 하나가 몇시간을 잡아 먹는지 알게 되었고 로그보는 법을 익혀야겠다고 생각했다.  
css, Javascript 자주 사용을 하지 않아서 감이 안잡혔다. 코딩을 게을리 하면 안되겠다고 생각했고 수습기간 3개월 동안에 계획을 짜서 미니프로젝트를 만들고 꼭 문서화하는 습관을 길들여야겠다.  
gitHub 제대로?사용해봤다. 처음에 이클립스와 깃을 연동하고 사용을 했다. 깃 공부한다고 이것 저것 누르다 프로젝트 파일이 다 삭제되었다...  
지금도 많이 다룰줄 모르지만 문서화 하면서 조금씩 익혀야겠다.  
일주일간 프로젝트를 하면 학원에서 6개월간에 뭘 배웠는지.. 자괴감이 많이 들었다.  
 
 
 
 
