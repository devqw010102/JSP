## 액션 태그

#### 액션 태그의 형식 : XML 형식인 <jsp:액션태그 ... /> 을 사용



#### 액션 태그의 종류
| 액션 태그 | 설명 |
| -------- | ----- |
| forward | 다른 페이지로의 이동과 같은 페이지 흐름을 제어 |
| include | 외부 페이지의 내용을 포함하거나 페이지를 모듈화 |
| useBean | JSP 페이지에 자바빈즈를 설정 |
| setProperty | 자바빈즈의 프로퍼티 값 설정 |
| getProperty | 자바빈즈의 프로퍼티 값 가져옴 |
| param | forward, include, plugin 태그에 인자를 추가 |
| plugin | 웹 브라우저에 자바 애플릿 실행, 플러그인에 대한 OBJECT 또는 EMBED 태그를 만드는 브라우저별 코드 생성 |
| element | 동적 XML 요소 설정 |
| attribute | 동적으로 정의된 XML 요소의 속성 설정|
| body | 동적으로 정의된 XML 요소의 몸체 설정|
| text | JSP 페이지 및 문서에서 템플릿 텍스트 작성 |

##### 화면, 서버 이동
<pre>
  화면 --> 화면 : a

  화면 --> 서버 : form, a

  서버 --> 화면 : forward Action tag

  서버 --> 서버 : redirect
  
</pre>
