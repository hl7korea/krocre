Instance: krcore-sp-observation-component-code-value-concept
InstanceOf: SearchParameter
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* extension[=].valueCode = #MAY
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/note"
* extension[=].valueAnnotation.text = "KR Core Client는 **반드시(SHALL)** 모든 구성 요소의 검색 값을 동시에 제공할 수 있어야 한다. KR Core Server는 **반드시(SHALL)** 모든 구성 요소의 검색 값을 동시에 지원해야 한다."
* url = "http://www.hl7korea.or.kr/fhir/krcore/SearchParameter/krcore-sp-observation-component-code-value-concept"
* version = "2.0.0"
* name = "KRCoreSearchParameterObservationComponentCodeValueConcept"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Observation-component-code-value-concept"
* status = #active
* experimental = false
* date = "2025-08-29T13:39:02+09:00"
* publisher = "HL7 Korea"
* description = "세부 관찰 및 측정의 유형과 CodeableConcept 자료형으로 표현된 세부 관찰 및 측정값 쌍"
* jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* code = #component-code-value-concept
* base = #Observation
* type = #composite
* expression = "Observation.component"
* multipleOr = true
* multipleOr.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleOr.extension.valueCode = #MAY
* multipleAnd = true
* multipleAnd.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleAnd.extension.valueCode = #MAY
* component[0].definition = "http://www.hl7korea.or.kr/fhir/krcore/SearchParameter/krcore-sp-observation-component-code"
* component[=].expression = "code"
* component[+].definition = "http://www.hl7korea.or.kr/fhir/krcore/SearchParameter/krcore-sp-observation-component-value-concept"
* component[=].expression = "value.ofType(CodeableConcept)"