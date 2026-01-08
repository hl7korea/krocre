Instance: krcore-sp-medicationrequest-medication
InstanceOf: SearchParameter
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* extension[=].valueCode = #SHOULD
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/note"
* extension[=].valueAnnotation.text = "KR Core Client는 적어도 `id` 값 검색을 **반드시(SHALL)** 지원해야 하며, **선택적(MAY)**으로 `Type`/`id` 값 검색을 지원할 수 있다. KR Core Server는 **반드시(SHALL)** `id`, `Type`/`id` 값 검색을 모두 지원해야 한다."
* url = "http://www.hl7korea.or.kr/fhir/krcore/SearchParameter/krcore-sp-medicationrequest-medication"
* version = "2.0.0"
* name = "KRCoreSearchParameterMedicationRequestMedication"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/medications-medication"
* status = #active
* experimental = false
* date = "2025-08-29T13:39:02+09:00"
* publisher = "HL7 Korea"
* description = "처방한 약물"
* jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* code = #medication
* base = #MedicationRequest
* type = #reference
* expression = "MedicationRequest.medication.ofType(Reference)"
* multipleOr = true
* multipleOr.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleOr.extension.valueCode = #MAY
* multipleAnd = true
* multipleAnd.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleAnd.extension.valueCode = #MAY