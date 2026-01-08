Instance: krcore-sp-organization-address
InstanceOf: SearchParameter
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* extension[=].valueCode = #MAY
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/note"
* extension[=].valueAnnotation.text = "KR Core Client는 **반드시(SHALL)** 한글 문자열 검색을 지원해야 한다. KR Core Server는 **반드시(SHALL)** 한글 문자열 검색을 지원해야 한다."
* url = "http://www.hl7korea.or.kr/fhir/krcore/SearchParameter/krcore-sp-organization-address"
* version = "2.0.0"
* name = "KRCoreSearchParameterOrganizationAddress"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Organization-address"
* status = #active
* experimental = false
* date = "2025-08-29T13:39:02+09:00"
* publisher = "HL7 Korea"
* description = "한국 도로명 주소를 포함한 기관 주소 검색"
* jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* code = #address
* base = #Organization
* type = #string
* expression = "Organization.address | Organization.address.text | Organization.address.extension('http://www.hl7korea.or.kr/fhir/krcore/StructureDefinition/krcore-roadNameAddress').extension.value"
* multipleOr = true
* multipleOr.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleOr.extension.valueCode = #MAY
* multipleAnd = true
* multipleAnd.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleAnd.extension.valueCode = #MAY