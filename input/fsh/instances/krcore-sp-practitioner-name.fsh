Instance: krcore-sp-practitioner-name
InstanceOf: SearchParameter
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* extension[=].valueCode = #SHALL
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/note"
* extension[=].valueAnnotation.text = "KR Core Client는 **반드시(SHALL)** 한글 문자열 검색을 지원해야 한다. KR Core Server는 **반드시(SHALL)** 한글 문자열 검색을 지원해야 한다."
* url = "http://www.hl7korea.or.kr/fhir/krcore/SearchParameter/krcore-sp-practitioner-name"
* version = "2.0.0"
* name = "KRCoreSearchParameterPractitionerName"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Practitioner-name"
* status = #active
* experimental = false
* date = "2025-08-29T13:39:02+09:00"
* publisher = "HL7 Korea"
* description = "의료인의 성명을 구성하는 성, 이름 등의 요소 중 일치하는 문자열"
* jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* code = #name
* base = #Practitioner
* type = #string
* expression = "Practitioner.name"
* multipleOr = true
* multipleOr.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleOr.extension.valueCode = #MAY
* multipleAnd = true
* multipleAnd.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleAnd.extension.valueCode = #MAY