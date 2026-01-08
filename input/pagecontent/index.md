### 소개

KR Core는 국내 보건의료데이터 교류의 상호운용성과 데이터의 질을 보장하기 위한 한국형 FHIR IG(상세규격)로, [HL7 FHIR R4](https://hl7.org/fhir/R4/)를 기반으로 하여 국내 보건의료데이터 교류에 사용하는 FHIR 리소스 및 FHIR RESTful API에 대한 최소한의 제약조건을 정의한다.
KR Core는 KR CDI(한국형 핵심교류데이터)의 요구사항에 따라 국내 보건의료데이터 교류 시스템이 갖추어야 할 공통 요구사항을 정의함으로써, 시스템간 상호운용성을 확보하고 데이터를 유의미하게 활용할 수 있는 토대를 마련한다.
이를 통해 국내 보건의료데이터 교류를 촉진하고 특정 사용 사례에 대한 추가 제약조건 개발을 용이하게 한다.

<br />
### 배경

세계 각 국가들은 국가차원의 FHIR IG를 개발하여 자국의 의료정보교류 상호운용성 확보와 더불어 의료데이터의 질을 높이기 위해 노력하고 있다. 이러한 FHIR IG의 대표적인 예로는 US Core(미국), AU Base(호주), UK Core(영국), CH Core(스위스) 등이 있고, 이 외에도 캐나다, 이탈리아, 인도 등 많은 나라들이 국가수준의 FHIR IG를 개발 중이다.

KR Core는 대한민국에서 보건의료정보의 교환을 위한 기본 FHIR IG(상세규격)로, 보건복지부 고시인 [보건의료데이터 용어 및 전송 표준](https://www.law.go.kr/LSW/admRulLsInfoP.do?admRulId=62344&efYd=0)의 한국 핵심교류데이터(KR CDI)를 근간으로 개발되었으며 그 목적은 다음과 같다.

* 국내 보건의료 환경에 맞는 FHIR IG를 개발하여 국내 보건의료데이터 교류 생태계 기반을 마련
* 국내 의료정보교류 상호운용성 확보와 의료데이터 질 향상
* 특정 사용 사례에 대한 기반 정보모델 제공
* SMART on FHIR, Blue Button 2.0 등과 같은 다양한 헬스케어 서비스 개발의 활성화

<br />
### 문서의 내용 및 안내

KR Core는 한국에서 사용하는 FHIR 리소스 및 FHIR RESTful API 등을 정의하고 이에 대한 상세한 설명을 문서화하여 제공한다.

KR Core를 구성하는 문서의 목록과 각 문서의 내용은 다음과 같다.

* [IG Home](./index.html): 본 페이지. KR Core에 대한 소개 및 개발 배경 등에 관한 정보 제공.
* Conformance: KR Core 적합성을 준수하기 위한 규칙들을 제공.
  * [KR CDI](./kr_cdi.html): 한국 핵심교류데이터(KR CDI)에 대한 설명과 KR CDI 분류(Class)에 대응되는 KR Core Profile 정의 테이블을 제공.
  * [General Requirements](./general_requirements.html): KR Core를 따르는 모든 시스템과 Profile에 대한 공통적인 요구사항을 설명.
  * [Element Support and Responsibilities](./element_support_and_responsibilities.html): KR Core 기반 시스템 구현과 활용을 위해, 의무 요소와 필수 지원 요소, 그리고 구현 지침을 해석하고 적용하여 시스템에서 지원하기 위한 방법을 설명.
* Guidance: 사용 사례 별로 KR Core Profile과 기능에 대한 사용 지침을 제공.
  * [Key Terms](./key_terms.html): KR Core Implementation Guide에서 사용한 주요 용어와 표현들에 대해 간략한 설명을 제공.
  * [General Guidance](./general_guidance.html): KR Core Profile과 기능을 사용하는 모든 시스템에 대한 공통 지침과 요구사항을 정의.
* FHIR Artifacts: KR Core에서 정의한 모든 FHIR 리소스에 대한 상세한 설명 및 정의를 제공.
  * [Profiles and Extensions](./profiles_and_extensions.html): KR Core에서 정의한 Profile 및 확장 목록을 제공함. 각 Profile 페이지는 의무 요소 및 필수 지원 요소, 사용 가능한 검색 인자 목록 등을 제공.
  * [Search Parameters](./search_parameters.html): KR Core에서 제공하는 검색 인자 목록을 제공. 각 검색 인자는 검색 유형 및 검색 대상이 되는 리소스와 요소, 구현 기대치 등을 정의함.
  * [Terminology](./terminology.html): KR Core에서 활용하고 있는 NamingSystem, CodeSystem 및 ValueSet 리소스 목록 제공.
  * [Actor Definitions](./actor_definitions.html): KR Core Implementation Guide에서 보건의료데이터 교류에 참여하는 시스템의 역할을 정의.
  * [Capability Statements](./capability_statements.html): KR Core Implementation Guide를 준수하기 위해 각 유형의 시스템이 갖추어야 할 구체적인 기능(capabilities)을 정의.
* [Examples](./examples.html): KR Core를 적용한 시스템에서 생성 및 활용하는 FHIR Resource 예제를 제공. 각 FHIR Resource 예제는 하나 이상의 KR Core Profile을 준수함.
* [Downloads](./downloads.html): 다운로드 가능한 산출물에 대한 링크를 제공.
* [Change Log](./change_log.html): KR Core 버전 별 수정 사항을 제공.
* [History](http://www.hl7korea.or.kr/fhir/krcore/history.html): KR Core 버전 별 설명과 링크를 제공.

<br />
### KR Core Actors
다음의 ActorDefinition들은 KR Core Implementation Guide에서 보건의료데이터 교류에 참여하는 시스템의 역할을 정의한다. 


* [KR Core Client Actor](ActorDefinition-krcore-actordefinition-client.html)
<br />KR Core Server는 보건의료데이터 생성(create), 수정(update), 읽기(read), 검색(search) 요청을 시작하는 역할을 한다. 이 역할이 지원해야 하는 기능은 [KR Core Client CapabilityStatement](CapabilityStatement-krcore-capabilitystatement-client.html)에 정의되어 있다.

* [KR Core Server Actor](ActorDefinition-krcore-actordefinition-server.html)
<br />KR Core Server는 보건의료데이터 생성(create), 수정(update), 읽기(read), 검색(search) 요청에 대한 응답을 제공하는 역할을 한다. 이 역할이 지원해야 하는 기능은 [KR Core Server CapabilityStatement](CapabilityStatement-krcore-capabilitystatement-server.html)에 정의되어 있다.

<br />
### KR Core CapabilityStatements
다음의 CapabilityStatement들은 KR Core Implementation Guide를 준수하기 위해 각 유형의 시스템이 갖추어야 할 구체적인 기능(capabilities)을 정의한다. KR Core Implementation Guide 적합성을 준수하는 시스템은 아래에 나열된 하나 이상의 CapabilityStatement를 준수하고 있음을 명시적으로 밝혀야한다.

+ [KR Core Client CapabilityStatement](CapabilityStatement-krcore-capabilitystatement-client.html)
<br />이 CapabilityStatement는 보건의료데이터 생성(create), 수정(update), 읽기(read), 검색(search) 요청을 시작하는 역할을 담당하는 **KR Core Client**에 대한 기본 규칙을 설명한다. KR Core Client가 지원해야 하는 KR Core Profile, RESTful API, 검색 인자(Search Parameter)의 전체 목록은 이 CapabilityStatement에 정의되어 있다.

+ [KR Core Server CapabilityStatement](CapabilityStatement-krcore-capabilitystatement-server.html)
<br />이 CapabilityStatement는 보건의료데이터 생성(create), 수정(update), 읽기(read), 검색(search) 요청에 응답하는 역할을 담당하는 **KR Core Server**에 대한 기본 규칙을 설명한다. KR Core Server가 지원해야 하는 하는 KR Core Profile, RESTful API, 검색 인자(Search Parameter)의 전체 목록은 이 CapabilityStatement에 정의되어 있다.