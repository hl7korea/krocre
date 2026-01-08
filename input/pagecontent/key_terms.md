본 페이지에서는 KR Core Implementation Guide에서 사용한 주요 용어와 표현들에 대해 간략한 설명을 제공한다. 각 용어는 FHIR R4 기본 사양에서 사용한 용어를 번역하여 사용하였거나, KR Core Implementation Guide에서 직접 정의하여서 사용하였다. 번역하여 사용한 용어의 경우, 괄호 안에 원본 용어를 함께 표기한다.

*※ 참고:* 본 페이지는 FHIR와 관련된 주요 개념을 KR Core Implementation Guide 내에서 일관된 용어로 표현하고, 해당 용어를 FHIR R4 기본 사양에서 확인할 수 있도록 돕기 위한 목적으로 작성되었다. 각 용어에 대한 정확하고 상세한 정의는 FHIR R4 기본 사양에서 확인해야 한다.

<br />

| 용어 | 원문 | 정의 |
|------|------|------|
| 상세 규격 | Implementation Guide, IG | FHIR 표준을 기반으로 특정 목적이나 지역, 시스템에 맞게 FHIR 리소스를 정의하고 사용하는 방법을 문서화한 지침서. FHIR를 실제 시스템에서 일관되게 구현하기 위한 구체적인 사용 설명서 역할을 한다. |
| FHIR 리소스 | FHIR Resource | FHIR에서 정보를 표현하는 기본 단위로, 각 FHIR 리소스는 의료 정보 시스템에서 사용되는 특정 개념이나 데이터를 구조화한 것을 의미한다. 대표적인 예로 Patient, Observation 등이 있다. |
| FHIR 리소스 인스턴스 | FHIR Resource Instance | FHIR 리소스 구조를 실제 데이터로 채운 구체적인 예시. '리소스 인스턴스' 또는 단순히 '리소스'로 표현하기도 한다. (*※참고*: '리소스'와 '리소스 인스턴스'는 엄밀하게는 구분되어야 하나, 관습적으로 이를 혼용해서 사용하므로 문맥에 맞게 해석해야 한다.) |
| 요소 | element | Patient.name, Observation.code와 같이 FHIR 리소스나 자료형을 구성하는 가장 기본적인 구조 단위를 의미한다. 필드(field)나 속성(attribute) 등 다른 단어로 표현하기도 하지만, KR Core Implementation Guide 내에서는 '요소'로 통일하여 사용한다. |
| 자료형 | Data Type | 리소스 안에서 개별 요소의 값을 어떻게 표현할지를 정의하는 표현 방식의 유형들. |
| 기본 자료형 | Primitive Type | string, integer, date와 같이 하나의 요소로 표현 가능한 단순한 자료형. |
| 복합 자료형 | Complex Type | CodeableConcept, Reference, Quantity와 같이 여러 요소로 구성된 구조화된 자료형. |
| 코드화된 자료형 | Coded Data Type | 표준화된 코드체계를 사용하여 값을 표현하는 자료형을 의미. code, Coding, CodeableConcept 자료형이 이에 해당한다. |
| 선택형 요소 | Choice Element | 하나의 요소가 여러 가지 자료형 중 하나로 표현될 수 있도록 정의된 특수한 구조. 해당 유형의 요소는 서로 다른 타입 중 하나만 선택하여 값을 입력한다. |
| FHIR 프로파일 | FHIR Profile | 기존에 정의된 FHIR 리소스 또는 FHIR 프로파일을 특정 목적이나 요구사항에 맞게 제약하거나 구조를 보완하여 정의한 것으로, 리소스 프로파일(Resource Profile) 또는 간단히 프로파일(Profile)이라고도 한다. |
| KR Core 프로파일 |  | KR Core Implementation Guide에서 정의한 FHIR 프로파일. |
| 확장 | Extension | 기존 FHIR 리소스에 없는 정보를 추가할 수 있게 해주는 공식적인 방법으로, 추가 정보를 리소스 인스턴스에 포함시킬 수 있다. 예를 들면, KR Core Implementation Guide에서는 한국형 주소체계를 표현하기 위해 [KR Core Road Name Address 확장](StructureDefinition-krcore-roadNameAddress.html)을 정의하여 사용한다. |
| KR Core 확장 | KR Core Extension | KR Core Implementation Guide에서 정의한 확장. |
| 변경 요약표 | Differential Table | FHIR 프로파일에서 어떤 부분이 기반 구조에서 변경되었는지를 나타내기 위해 제공하는 요약표. |
| 전체 구조표 | Snapshot Table | FHIR 프로파일의 모든 요소를 기반 구조와 함께 완전히 확정된 형태로 나열한 표. |
| 허용 개수 | Cardinality, Card. | FHIR 리소스 인스턴스 내에서 하나의 요소가 몇 번 등장할 수 있는지를 정의하는 규칙. 해당 요소가 필수인지, 몇 개까지 허용되는지를 표현한다. |
| 의무 요소 | Must Support Element | 최소 허용 개수가 1회 이상인 요소. 허용 개수를 1..n으로 정의한다. |
| 선택적 요소 | Optional Element | 최소 허용 개수가 0회이고, 최대 허용 개수가 1회 이상인 요소. 허용 개수를 0..n으로 정의한다. |
| 금지 요소 | Prohibited Element | 프로파일에서 사용할 수 없도록 금지한 요소. 허용 개수를 0..0으로 정의한다. |
| KR Core Server |  | KR Core Implementation Guide의 요구사항을 총족하며, 다른 시스템 또는 모듈의 요청에 따라 FHIR 리소스 인스턴스를 응답하는 시스템을 의미한다. |
| KR Core Client |  | KR Core Implementation Guide의 요구사항을 총족하며, FHIR 리소스 인스턴스를 다른 시스템이나 모듈에 요청하는 시스템을 의미한다. |
| 코드체계 | CodeSystem | 코드 전체 목록을 정의한 것. |
| 코드집합 | ValueSet | 코드체계에서 특정 용도나 목적에 맞는 코드만 골라서 묶은 것. |
| 코드화된 개념 | Concept | 특정 코드체계 안에 정의된 하나의 코드로 정의한 개념. |
| 바인딩 | Binding | 어떤 필드에 사용할 수 있는 코드집합을 연결하는 것을 의미하고, 코드화된 자료형 요소에만 사용한다. |
| 바인딩 강도 | Binding Strength | 코드집합이 바인딩된 요소에 값을 채울 때, 해당 코드집합에 정의된 코드 사용에 대한 강제력의 정도를 의미한다. example, preferred, extensible, required가 있다. |
| 분할항목 | Slice | 같은 요소가 반복될 수 있을 때, 그 중 일부를 구분하고 다르게 제약하거나 의미를 부여하기 위해 분할하여 정의한 요소. |
| 검색 인자 | Search Parameter | FHIR 리소스를 검색할 때 URL 쿼리 형태로 지정하는 기준값 또는 조건 필드. (*※참고*: KR Core STU1에서는 검색 매개변수로 번역하여 사용하였으나, 표현의 정확성과 간결성을 높이고자 번역을 변경하였음.) |







<style>
	table {
		border-collapse: collapse;
		text-align: left;
		line-height: 1.5;
		border-top: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
	}
	table thead th {
		font-weight: bold;
		vertical-align: top;
		padding: 10px;
		margin: 20px 10px;
		border-bottom: 1.5px solid #ccc;
        background-color: #eaf4fb;
	}
	table td {
		padding: 10px;
		margin: 20px 10px;
		vertical-align: top;
		border-bottom: 1px solid #ccc;
	}

	/* 👇 추가된 부분 */
	table td:nth-of-type(1) {
		white-space: nowrap;
        overflow: visible;
        word-break: normal;
        overflow-wrap: normal;
        font-weight: bold;
	},
	table td:nth-of-type(2) {
		white-space: nowrap;
        overflow: visible;
        word-break: normal;
        overflow-wrap: normal;
	},
	table th:nth-of-type(1) {
		white-space: nowrap;
        overflow: visible;
        word-break: normal;
        overflow-wrap: normal;
	},
	table th:nth-of-type(2) {
		white-space: nowrap;
        overflow: visible;
        word-break: normal;
        overflow-wrap: normal;
	}
</style>