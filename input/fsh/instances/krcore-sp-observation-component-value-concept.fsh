Instance: krcore-sp-observation-component-value-concept
InstanceOf: SearchParameter
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* extension[=].valueCode = #MAY
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/note"
* extension[=].valueAnnotation.text = "KR Core Client는 적어도 `code` 값 검색을 **반드시(SHALL)** 지원해야 하며, **선택적(MAY)**으로 `system`\\|`code`, \\|`code`, `system`\\| 값 검색을 지원할 수 있다. 또한, **반드시(SHALL)** 한글로 구성된 `code` 값 검색을 지원해야 한다. KR Core Server는 **반드시(SHALL)** `code`, `system`\\|`code`, \\|`code`, `system`\\| 값 검색을 모두 지원해야 한다. 또한, **반드시(SHALL)** 한글로 구성된 `code` 값 검색을 지원해야 한다."
* url = "http://www.hl7korea.or.kr/fhir/krcore/SearchParameter/krcore-sp-observation-component-value-concept"
* version = "2.0.0"
* name = "KRCoreSearchParameterObservationComponentValueConcept"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Observation-component-value-concept"
* status = #active
* experimental = false
* date = "2025-08-29T13:39:02+09:00"
* publisher = "HL7 Korea"
* description = "CodeableConcept 자료형으로 표현된 세부 관찰 및 측정값"
* jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* code = #component-value-concept
* base = #Observation
* type = #token
* expression = "Observation.component.value.ofType(CodeableConcept)"
* multipleOr = true
* multipleOr.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleOr.extension.valueCode = #MAY
* multipleAnd = true
* multipleAnd.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleAnd.extension.valueCode = #MAY