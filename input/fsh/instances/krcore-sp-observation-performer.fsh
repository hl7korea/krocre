Instance: krcore-sp-observation-performer
InstanceOf: SearchParameter
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* extension[=].valueCode = #SHOULD
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/note"
* extension[=].valueAnnotation.text = "KR Core Client는 적어도 `id` 값 검색을 **반드시(SHALL)** 지원해야 하며, **선택적(MAY)**으로 `Type`/`id` 값 검색을 지원할 수 있다. KR Core Server는 **반드시(SHALL)** `id`, `Type`/`id` 값 검색을 모두 지원해야 한다."
* url = "http://www.hl7korea.or.kr/fhir/krcore/SearchParameter/krcore-sp-observation-performer"
* version = "2.0.0"
* name = "KRCoreSearchParameterObservationPerformer"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Observation-performer"
* status = #active
* experimental = false
* date = "2025-08-29T13:39:02+09:00"
* publisher = "HL7 Korea"
* description = "관찰 및 측정 책임자"
* jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* code = #performer
* base = #Observation
* type = #reference
* expression = "Observation.performer"
* target[0] = #Practitioner
* target[+] = #Organization
* target[+] = #CareTeam
* target[+] = #Patient
* target[+] = #PractitionerRole
* target[+] = #RelatedPerson
* multipleOr = true
* multipleOr.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleOr.extension.valueCode = #MAY
* multipleAnd = true
* multipleAnd.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleAnd.extension.valueCode = #MAY