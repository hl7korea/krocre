### KR Core Profiles 참조(reference)

<br />
KR Core Profiles와 KR Core 검색(search)은 논리적(logical) FHIR ID를 사용한다. 따라서 KR Core Profile을 준수하는 리소스에 대한 참조([reference](http://hl7.org/fhir/R4/references.html))는 identifier(`Reference.identifier`)가 아닌 논리적 id(`Reference.reference`)를 반드시 사용해야 한다.

<br />
**Figure 1: 리소스 참조**
<p align="center"><img style="border: 1px solid gray; border-radius: 5px;" src="./general_guidance/reference01.png"></p>

<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
**Figure 2: 리소스의 논리적 id 예**
<p align="center"><img width="1100" style="border: 1px solid gray; border-radius: 5px;" src="./general_guidance/logicalid.png"></p>

<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
KR Core Implementation Guide의 많은 리소스들은 다른 KR Core 리소스를 참조한다. 예를 들어, KR Core Encounter Profile은 KR Core Patient Profile을 준수하는 리소스를 참조한다. 기본 FHIR 리소스를 참조하거나 KR Core Profiles에 공식적으로 정의되지 않은 경우, 해당 리소스 유형에 대해 적합한 KR Core Profile이 존재한다면 KR Core Profile을 참조해야 한다. 예를 들어, `Condition.asserter`는 KR Core Implementation Guide에서 추가한 제약조건이 없더라도 참조되는 Practitioner 리소스는 **가능한 한(SHOULD)** KR Core Practitioner Profile for Medical Doctor를 준수하는 리소스여야 한다. 예외 사항으로, KR Core 리소스에 의해 참조되는 Patient 리소스는 **반드시(SHALL)** KR Core Patient Profile을 준수해야 한다. [Different Table](http://hl7.org/fhir/R4/profiling.html#snapshot)에서 "필수 지원(Must Support)"으로 표시된 KR Core 리소스는 [필수 지원](must_support.html) 규칙을 따른다. 그 외의 경우, FHIR 기본 명세에서 허용하는 다른 리소스도 참조할 수 있다. 예를 들어, `DiagnosticReport.media.link`는 Media 리소스를 참조하는 것을 허용한다.

<br />
### 포함된 리소스(Contained Resources)

<br />
KR Core Server가 조회에 응답할 때, KR Core Server는 반환할 데이터를 표현하기 위해 임의로 포함된([contrained](http://hl7.org/fhir/R4/references.html#contained)) 리소스들을 사용해서는 안된다. 포함된 리소스는 그러한 소스 데이터가 FHIR 트랜잭션 안에 존재하는 경우에만 사용 가능하다. 예를 들면, MedicationRequest 리소스 내에 Medication 리소스를 포함할 수 있다. 그러나 포함된 리소스는 한 번 식별 정보가 손실되면 다시 복구하기가 매우 어렵기 때문에, 포함될 리소스의 내용이 충분히 식별 가능하다면 **가능한 한(SHOULD)** 사용을 자제해야 한다.

<br />
**포함된 리소스 예 (XML):**

```xml:xml
<MedicationRequest xmlns="http://hl7.org/fhir">
	<contained>
		<Medication>
			<id value="m1"/>
			<code>
				<text value="penicillin"/>
			</code>
		</Medication>
	</contained>
	<!-- other attributes -->
	<medicationReference>
		<reference value="#m1"/>
	</medicationReference>
	<!-- other attributes -->
</MedicationRequest>
```

<br />
**포함된 리소스 예 (JSON):**
	
```json:json
{
	"resourceType": "MedicationRequest",
	"contained": [
		{
			"resourceType": "Medication",
			"id": "m1",
			"code": 
			{
				"text": "penicillin"
			}
		}
	],
	"medicationReference": {
		"reference": "#m1"
	}
}
```

<br />
KR Core Profiles 안에서 포함된 리소스를 참조하는 경우, 포함된 리소스에 대한 적합한 KR Core Profile이 존재한다면 해당 리소스는 **가능한 한(SHOULD)** KR Core Profile을 준수해야 한다. 포함된 리소스가 Patient 리소스인 경우, 해당 리소스는 **반드시(SHALL)** KR Core Patient Profile을 준수해야 한다. 포함된 리소스에 대한 일반적인 사용 사례에 대한 추가 지침은 기본 FHIR 규격을 참고한다.

<br />
### Quantity 자료형에서 UCUM 코드 사용

<br />
[KR Core Observation Profile for Vital Signs](StructureDefinition-krcore-vitalsigns.html)과 [KR Core MedicationRequest Profile](StructureDefinition-krcore-medicationrequest.html) 등은 `Quantity` 자료형에 [UCUM](http://unitsofmeasure.org/) Code System을 사용(binding)한다. 모든 UCUM 코드를 정의한 [FHIR UCUM Codes value set](http://hl7.org/fhir/R4/valueset-ucum-units.html)은 FHIR 명세에 있다. 본 지침은 실제 사용 현장에서 발생할 가능성이 있는 UCUM 단위 누락 또는 모든 단위 누락 상황에서 어떻게 Quantity 자료형을 표현하는지 설명한다.

<br />
**UCUM 코드와 텍스트 형태의 단위가 제공되는 경우:**

```xml:xml
<valueQuantity>
	<value value="109"/>
	<unit value="mmHg"/>
	<system value="http://unitsofmeasure.org"/>
	<code value="mm[Hg]"/>
</valueQuantity>
```

<br />
**텍스트 형태의 단위만 제공되는 경우:**

```xml:xml
<valueQuantity>
	<value value="109"/>
	<unit value="mmHg"/>
</valueQuantity>
```

<br />
**단위가 없는 경우:**

```xml:xml
<valueQuantity>
	<value value="109"/>
</valueQuantity>
```

<br />
### 입력 오류(Entered in Error) 정보 표현

<br />
환자기록에 오류로 입력된 임상 정보는 KR Core Client가 최종 사용자에게 수정된 정보를 보여줄 수 있도록 KR Core Server가 지원해야 한다.

<br />
**KR Core Server 권장 사항**

  + KR Core Server는 리소스를 삭제해서는 안 된다.
  + KR Core Server는 리소스의 status(상태)를 입력 오류(`entered-in-error`) 또는 비활성(`inactive`) 상태로 업데이트해야 한다.
  + KR Core Server는 이러한 리소스들을 KR Core Client가 검색할 수 있도록 허용해야 한다.
  + KR Core Server가 입력 오류(`entered-in-error`)로 업데이트한 경우:
	- *환자용* 애플리케이션인 경우, KR Core Server는 KR Core Client에 리소스 인스턴스를 제공할 때, id와 status를 남기고 나머지 내용은 제거해야 한다. 이것은 일반적으로 KR Core Profile 또는 FHIR R4 기본사양에 포함된 리소스 정의를 준수하지 않는다.
	- *의료진용* 애플리케이션인 경우, KR Core Server는 KR Core Client에 리소스 인스턴스를 제공할 때, status가 변경된 이유와 같은 환자용 애플리케이션에서는 보이지 않는 내용이나 추가적인 정보를 포함할 수 있다.


<br />
### 삭제된(Deleted) 정보 표현

<br />
KR Core Server는 기록을 삭제하면 안된다. 시스템이 기록 삭제를 지원하는 경우 FHIR 명세의 [삭제 안전 검사(Deletion Safety Checks)](http://hl7.org/fhir/R4/safety.html)를 참조해야 한다.

<br />
### 서술(Narrative) 

<br />
모든 KR Core Profile에 따라 작성된 리소스 인스턴스는 사용자를 위한 리소스의 요약과 같은, 인간의 언어로 표현된 서술을 포함할 수 있다. 상세한 지침은 FHIR 명세의 [서술 문서(Narrative documentation)](http://hl7.org/fhir/R4/narrative.html)를 참고한다.


<br />
### 읽기/불러오기 구문(Read/Fetch Syntax)

<br />
리소스 읽기/불러오기 구문은 다음과 같이 정의한다:

`GET [base]/[Resource-type]/[id] {parameters}`

  + GET은 리소스를 불러오기 위해 사용되는 HTTP 메서드이다.
  + \[\] 안의 내용은 KR Core Client가 지원해야 하는 의무 항목이며 다음과 같은 항목으로 대체된다.
    - base: 서비스 기본 URL (e.g. [https://smart.argo.run/v/r4/fhir](https://smart.argo.run/v/r4/fhir))
	- Resource-Type: 리소스 유형의 이름 (e.g. "Patient")
	- id: 리소스의 논리적(logical) id (e.g. "8590")
  + \{\} 안의 내용은 KR Core Client에서 지원할 수 있는 선택 항목이며 다음과 같은 항목으로 대체된다.
    - parameteres: 특정 상호작용에 대해 정의된 URL 매개변수 (e.g. "?_format=xml")

<br />
더 자세한 내용은 [FHIR RESTful API](http://hl7.org/fhir/R4/http.html)를 참고한다.

<br />
### 검색 구문(Search Syntax)

<br />
[FHIR RESTful 검색(Search) API 요구사항](general_requirements.html#fhir-restful-%EA%B2%80%EC%83%89search-api-%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD)은 RESTful을 지원하는 서버와 클라이언트에 대한 규칙을 정의한다.

KR Core Implementation Guide의 모든 검색 상호작용은 아래의 구문과 함께 GET 명령어를 사용한다:

`GET [base]/[Resource-type]?[parameter1]{:m1|m2|...}={c1|c2|...}[value1{,value2,...}]{&[parameter2]{:m1|m2|...}={c1|c2|...}[value1{,value2,...}]&...}`

  + GET은 리소스를 불러오기 위해 사용되는 HTTP 메서드이다.
  + \[\] 안의 내용은 클라이언트가 지원해야 하는 의무 항목이고, \{\} 안의 내용은 클라이언트에서 지원할 수 있는 선택 항목으로 다음과 같은 항목으로 대체된다.
    - base: 서비스 기본 URL (e.g. [https://smart.argo.run/v/r4/fhir](https://smart.argo.run/v/r4/fhir))
	- Resource-Type: 리소스 유형의 이름 (e.g. "Patient")
	- parameter: 특정 상호작용에 대해 정의된 검색 인자 (e.g. "?patient=Patient/8590")
    - value: 특정 검색을 위한 검색 인자 값
	  + `token` 유형의 검색 인자를 사용하여 검색하는 경우, `{system}|[code]` 구문에서 system 값은 클라이언트에서 지원할 수 있는 선택 항목이다.
	    - [token으로 검색하기](http://hl7.org/fhir/R4/search.html#token)
	  + `reference` 유형의 검색 인자를 사용하여 검색하는 경우, `Type|id` 구문에서 Type 값은 클라이언트에서 지원할 수 있는 선택 항목이다.
	  	- [reference으로 검색하기](http://hl7.org/fhir/R4/search.html#reference)
	  + `date` 유형의 검색 인자를 사용하여 검색하는 경우, `date={gt|lt|ge|le}[date]` 구문에서 비교 연산자(comparator) 접두사인 "gt", "lt", "ge" 및 "le"는 선택 항목임을 의미한다. 비교 접두사를 사용하지 않는 date 유형 검색은 "eq" 비교 연산자를 사용한 검색과 동일하다.
	  + `{:m1|m2|...}`: 지원하는 검색 인자 한정 연산자(modifier)의 목록. 자세한 내용은 [한정 연산자](http://hl7.org/fhir/r4/search.html#modifiers)를 참고한다.
	  + `{c1|c2|...}`: 지원하는 검색 인자 비교 연산자(comparator)의 목록.
	  + `{,value2,...}`: 선택 사항인 다중 "OR" 검색 값.
	  + `{&[parameter2]{:m1|m2|...}={c1|c2|...}[value1{,value2,...}]&...}`: 선택 사항인 다중 "AND" 검색 값.

<br />
가장 간단한 방식은 검색이 다음과 같이 RESTful framework의 GET 메소드를 수행하여 실행되는 것이다:

`GET [base]/[Resource-type]?name=value&...`

이 RESTful 검색의 경우, 검색 인자는 URL에 표현된(encoding) name=\[value\] 쌍이며, 검색 인자의 이름은 각 리소스 별로 정의한다. 예를 들어, Observation 리소스는 Observation 리소스 인스턴스를 LOINC나 SNOMED CT 등 어떤 코드체계의 코드로 검색하기 위해, 검색 인자로 "code"를 정의하고 있다. 더 자세한 내용은 [FHIR RESTful API](http://hl7.org/fhir/R4/http.html)를 참고한다.

<br />
### 구획 기반 검색(Compartment Based Search)

<br />
KR Core Implementation Guide는  [구획](http://hl7.org/fhir/R4/compartmentdefinition.html) 기반 검색을 지원하지 않는다.

<br />
### 플랫폼 간 검색

<br />
KR Core Server는 외부에 있는 서버의 URL을 검색하는 기능이 요구되지 않는다.

<br />
### 검색 결과 개수의 제한

<br />
KR Core Server는 반환되는 검색 결과의 수를 관리하기 위해 일련의 반환할 수 있다. 검색 결과 집합에는 KR Core Client가 추가 페이지 요청에 사용하는 URL이 포함되며, 간단한 RESTful 검색의 경우 페이지 링크는 반환된 `Bundle` 리소스에 포함된다. 자세한 내용은 FHIR 사양에서 [반환 리소스 관리하기(Managing Returned Resources )](http://hl7.org/fhir/R4/search.html#return)를 참조한다.

<br /><br /><br />