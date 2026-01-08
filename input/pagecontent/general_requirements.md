본 페이지에서는 KR Core Implementation Guide에 사용된 공통적인 주요 요구사항을 설명한다.

### KR Core 적합성 준수

<br />
KR Core에 적합한 시스템 또는 KR Core를 준수하는 시스템이란, HL7 Korea에서 출판한 KR Core Implementation Guide에서 정의한 데이터 구조(Profiles) 및 동작(Interactions) 규칙을 준수하는 시스템을 의미한다. KR Core를 준수하는 시스템은 그 역할과 기능에 따라 KR Core Server, KR Core Client로 지칭한다.

이 가이드에서 사용된 적합성 관련 표현인 **반드시(SHALL)**, **가능한 한(SHOULD)**, **선택적(MAY)**은 [FHIR 적합성 규칙(Conformance Rules)](http://hl7.org/fhir/R4/conformance-rules.html#conflang)에 정의되어 있으며, 다음과 같이 해석한다.

+ 요구사항의 강제력 표현과 그 의미
  + **반드시(SHALL)**: 어떤 요구사항이 반드시 지켜야 하는 규칙임을 의미한다.
  + **가능한 한(SHOULD)**: 어떤 요구사항이 지켜지는 것이 바람직하며 일반적으로 따라야 할 권장 사항이지만, 합당한 사유가 있으면 예외로 지키지 않아도 되는 규칙임을 의미한다.
  + **선택적(MAY)**: 어떤 요구사항이 선택사항이며, 해당 요구사항이 지켜지지 않더라도 시스템이 정상적으로 작동해야 하는 규칙임을 의미한다.

*참고*
+ KR Core Implementation Guide에서는 해당 단어가 요구사항의 강제력을 표현하기 위해 사용된 경우와 일반적인 의미로 사용된 경우를 구분하기 위해, 요구사항의 강제력을 의미하는 경우에만 굵게 강조한 텍스트로 표시한다.
+ KR Core Implementation Guide에서는 표현의 단순화를 위해 **SHALL NOT**, **SHOULD NOT**은 사용하지 않는다.

KR Core Implementation Guide에서 사용하는 주요 용어들은 *Guidance* 탭의 [Key Terms](key_terms.html) 페이지를 참고한다.

본 문서를 읽기 전, 다음 페이지들을 참고하기를 권장한다.
+ [FHIR 자료형(Data Types)](http://hl7.org/fhir/R4/datatypes.html)
+ [FHIR 리소스 양식(Resource formats)](http://hl7.org/fhir/R4/resource.html)
+ [FHIR RESTful API](http://hl7.org/fhir/R4/http.html)
+ [FHIR 검색(Search)](http://hl7.org/fhir/R4/search.html)
+ [FHIR 용어 요구사항(Terminology requirements)](http://hl7.org/fhir/R4/terminologies.html)

<br />
### KR Core 적합성 준수를 위한 산출물 일람


<br />
#### KR Core CapabilityStatements

<br />
[Profiles and Extensions](profiles_and_extensions.html) 페이지는 본 KR Core Implementation Guide를 위해 정의한 KR Core Profiles를 나열하고있다. KR Core Profiles의 [StructureDefinition](http://hl7.org/fhir/R4/structuredefinition.html)은 Profile을 사용하기 위해 **반드시(SHALL)** 있어야 하는 최소한의 요소(element)와 확장(extension), 용어들(vocabularies) 그리고 용어 값 집합(value set)을 정의하고 있다.

각 Profile의 요소는 *의무 요소(Mandatory Element)*와 *필수 지원 요소(Must Support Element)*로 구성된다. *의무 요소*는 최소 사용 횟수가 1인 요소를 의미한다. 기본 FHIR 명세에서는 *필수 지원*으로 표시된 요소의 의미를 명확하게 정의하도록 요구하고 있다([참고](http://hl7.org/fhir/R4/profiling.html#mustsupport)). [Element Support and Responsibilities](element_support_and_responsibilities.html) 페이지에는 *의무* 또는 *필수 지원*에 해당하는 요소들을 KR Core Server와 KR Core Client 어떻게 해석하여야 하는지, 각 요소별 *처리 지침(Obligation)*을 어떻게 적용해야 하는지에 대한 규칙을 정의한다.

<br />
### 코드화된 자료형(Coded Data Type) 적합성 준수 규칙

<br />
본 절에서는 코드화된 개념(Concept)을 표현하는데 사용되는 코드화된 자료형 중 `code`, `Coding`, `CodeableConcept`에 대해서, 코드집합(ValueSet) 바인딩 강도(Binding Strength)와 사용 유형별 적합성 준수 규칙을 설명한다. 이 규칙들은 [Binding Strength](https://hl7.org/fhir/R4/terminologies.html#strength)와 [Terminology Binding Examples](https://hl7.org/fhir/R4/terminologies-binding-examples.html)을 준수하는 것을 전제조건으로 한다. 

본 절에서 사용하는 정의는 다음과 같다.
+ 알려진 코드체계(CodeSystem) - 진료정보교류 도메인 내에서 사용하기로 합의된 특정 버전의 코드체계. LOINC, SNOMED CT, HIRA EDI, WHO ATC 등이 있다.
+ 알려지지 않은 코드체계 - 진료정보교류에 참여하는 특정 기관 또는 시스템 내에서 사용하는 코드체계. 특정 병원 내에서 정의하여 지역적으로 사용하는 코드체계가 이에 해당한다.
+ 유효한 코드 - 특정 버전의 코드체계 안에 명시적으로 정의되어 있는 코드.
+ 유효하지 않은 코드 - 특정 버전의 코드체계 안에 정의되어 있지 않는 코드.
+ 바인딩 된 코드화된 개념 - 바인딩 된 코드집합에 속한 코드화된 개념.
+ 바인딩 되지 않은 코드화된 개념 - 바인딩 된 코드집합에 속하지 않은 코드화된 개념.
+ 유효한 코드화된 개념 - 알려진 코드체계와 유효한 코드로 구성된 코드화된 개념. 바인딩 된 코드집합에 속하지 않더라도 유효한 코드화된 개념일 수 있음.

<br />
#### `code` 자료형

<br />
`code` 자료형은 바인딩 강도를 일반적으로 `required`로 고정하고, 바인딩된 코드집합에 포함된 코드체계 중 하나를 암묵적으로 선택하여 유효한 코드만 사용한다. `code`의 바인딩 강도와 유형에 따른 적합성 준수 규칙은  *Table: `code` 적합성 준수 규칙*에서 확인할 수 있다. 서버 기대 동작이 `반드시(SHALL)`로 표기된 항목들은, 모든 KR Core Server가 준수해야 하는 동작 방식이다.
<br /><br />
**Table: `code` 적합성 준수 규칙**

{% include code_validation_table.xhtml %}

<br />
#### `Coding` 자료형

<br />
`Coding` 자료형은 하나의 코드화된 개념을 사용할 수 있다. `Coding`의 바인딩 강도와 유형에 따른 적합성 준수 규칙은  *Table: `Coding` 적합성 준수 규칙*에서 확인할 수 있다. 서버 기대 동작이 `반드시(SHALL)`로 표기된 항목들은, 모든 KR Core Server가 준수해야 하는 동작 방식이다. 서버 기대 동작이 `가능한 한(SHOULD)` 또는 `선택적으로(MAY)`로 표기된 항목들은, 진료정보교류 도메인 내에서 합의에 따라 동작 방식을 수정하고 결정할 수 있다. 진료정보교류 도메인 내에서 상황별 서버 기대 동작을 수정하는 것에 합의하지 않은 경우, KR Core Server는 `반드시(SHALL)` *Table: `Coding` 적합성 준수 규칙*의 상황별 서버 기대 동작대로 작동해야 한다.
<br /><br />
**Table: `Coding` 적합성 준수 규칙**

{% include coding_validation_table.xhtml %}

<br />
#### `CodeableConcept` 자료형

<br />
`CodeableConcept` 자료형은 하나 이상의 `Coding`을 포함할 수 있다. `CodeableConcept`의 바인딩 강도와 사용한 `Coding`의 개수와 유형에 따른 적합성 준수 규칙은  *Table: `CodeableConcept` 적합성 준수 규칙*에서 확인할 수 있다. 서버 기대 동작이 `반드시(SHALL)`로 표기된 항목들은, 모든 KR Core Server가 준수해야 하는 동작 방식이다. 서버 기대 동작이 `가능한 한(SHOULD)` 또는 `선택적으로(MAY)`로 표기된 항목들은, 진료정보교류 도메인 내에서 합의에 따라 동작 방식을 수정하고 결정할 수 있다. 진료정보교류 도메인 내에서 상황별 서버 기대 동작을 수정하는 것에 합의하지 않은 경우, KR Core Server는 `반드시(SHALL)` *Table: `CodeableConcept` 적합성 준수 규칙*의 상황별 서버 기대 동작대로 작동해야 한다.
<br /><br />
**Table: `CodeableConcept` 적합성 준수 규칙**

{% include cc_validation_table.xhtml %}

<br />
### FHIR RESTful 검색(Search) API 요구사항

<br />
[FHIR RESTful Search API](http://hl7.org/fhir/R4/http.html#search)는 검색을 지원하는 서버는 **반드시(SHALL)** http POST 기반의 검색을 지원할 것은 요구한다. 이에 더하여, KR Core Implementation Guide에서 지원되는 모든 검색 상호작용에 대해, 서버는 **반드시(SHALL)** GET 기반의 검색도 지원해야 한다.

 + `token` 유형의 검색 매개변수를 사용해 검색하는 경우([참고](http://hl7.org/fhir/R4/search.html#token)):
   - 클라이언트는 적어도 `code` 값을 **반드시(SHALL)** 제공해야 하며, **선택적(MAY)**으로 `system`과 `code` 값을 모두 제공할 수 있다.
   - 서버는 **반드시(SHALL)** `system`과 `code` 값을 모두 지원해야 한다.
 + `reference` 유형의 검색 매개변수를 사용해 검색하는 경우([참고](http://hl7.org/fhir/R4/search.html#reference)):
   - 클라이언트는 적어도 `id` 값을 **반드시(SHALL)** 제공해야 하며, **선택적(MAY)**으로 `Type`과 `id` 값을 모두 제공할 수 있다.
   - 서버는 **반드시(SHALL)** `Type`과 `id` 값을 모두 지원해야 한다.
 + `date` 유형의 검색 매개변수를 사용해 검색하는 경우([참고](http://hl7.org/fhir/R4/search.html#date)):
   - 클라이언트는 `date` 자료형의 요소에 대해 **반드시(SHALL)** *day* 수준의 정확도를 가지는 값을 제공해야 하며, `dateTime` 자료형의 요소에 대해 *second* + *time offset* 수준의 정확도를 가지는 값을 제공해야 한다.
   - 서버는 `date` 자료형의 요소에 대해 **반드시(SHALL)** *day* 수준의 정확도를 가지는 값을 지원해야 하며, `dateTime` 자료형의 요소에 대해 *second* + *time offset* 수준의 정확도를 가지는 값을 지원해야 한다.

<br />
아래의 표는 날짜 정확도를 요약한다:

{% include general_requirements_table.xhtml %}

<br /><br /><br />