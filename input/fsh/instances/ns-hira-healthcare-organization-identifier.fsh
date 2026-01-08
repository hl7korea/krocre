Instance: ns-hira-healthcare-organization-identifier
InstanceOf: NamingSystem
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url"
* extension[=].valueUri = "http://www.hl7korea.or.kr/fhir/krcore/NamingSystem/ns-hira-healthcare-organization-identifier"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version"
* extension[=].valueString = "1.0.2"
* name = "HIRA_Healthcare_Organization_Identifier"
* status = #active
* kind = #identifier
* date = "2023-06-30"
* publisher = "HL7 Korea"
* type = $v2-0203#PRN "Provider number"
* description = "건강보험심사평가원 요양기관 식별자 명명체계"
* jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* uniqueId[0].type = #uri
* uniqueId[=].value = "http://www.hl7korea.or.kr/Identifier/hira-krnpi"
* uniqueId[=].preferred = true
* uniqueId[=].comment = "건강보험심사평가원 요양기관 식별자를 정의하기 위해 HL7 Korea에서 부여한 식별자"
* uniqueId[+].type = #uri
* uniqueId[=].value = "https://hira.or.kr/knpi"
* uniqueId[=].preferred = false
* uniqueId[=].comment = "건강보험심사평가원 요양기관 식별자를 정의하기 위해 KR Core Draft버전에서 부여한 식별자"