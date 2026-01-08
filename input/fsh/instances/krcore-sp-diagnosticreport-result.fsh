Instance: krcore-sp-diagnosticreport-result
InstanceOf: SearchParameter
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* extension[=].valueCode = #SHOULD
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/note"
* extension[=].valueAnnotation.text = "KR Core Client는 적어도 `id` 값 검색을 **반드시(SHALL)** 지원해야 하며, **선택적(MAY)**으로 `Type`/`id` 값 검색을 지원할 수 있다. KR Core Server는 **반드시(SHALL)** `id`, `Type`/`id` 값 검색을 모두 지원해야 한다."
* url = "http://www.hl7korea.or.kr/fhir/krcore/SearchParameter/krcore-sp-diagnosticreport-result"
* version = "2.0.0"
* name = "KRCoreSearchParameterDiagnosticReportResult"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/DiagnosticReport-result"
* status = #active
* experimental = false
* date = "2025-08-29T13:39:02+09:00"
* publisher = "HL7 Korea"
* description = "진단보고를 위한 검사 결과"
* jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* code = #result
* base = #DiagnosticReport
* type = #reference
* expression = "DiagnosticReport.result"
* target = #Observation
* multipleOr = true
* multipleOr.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleOr.extension.valueCode = #MAY
* multipleAnd = true
* multipleAnd.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleAnd.extension.valueCode = #MAY