Instance: krcore-sp-organization-name
InstanceOf: SearchParameter
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* extension[=].valueCode = #SHOULD
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/note"
* extension[=].valueAnnotation.text = "KR Core Client는 **반드시(SHALL)** 한글 문자열 검색을 지원해야 한다. KR Core Server는 **반드시(SHALL)** 한글 문자열 검색을 지원해야 한다."
* url = "http://www.hl7korea.or.kr/fhir/krcore/SearchParameter/krcore-sp-organization-name"
* version = "2.0.0"
* name = "KRCoreSearchParameterOrganizationName"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Organization-name"
* status = #active
* experimental = false
* date = "2025-08-29T13:39:02+09:00"
* publisher = "HL7 Korea"
* description = "기관 명칭"
* jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* code = #name
* base = #Organization
* type = #string
* expression = "Organization.name | Organization.alias"
* multipleOr = true
* multipleOr.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleOr.extension.valueCode = #MAY
* multipleAnd = true
* multipleAnd.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleAnd.extension.valueCode = #MAY