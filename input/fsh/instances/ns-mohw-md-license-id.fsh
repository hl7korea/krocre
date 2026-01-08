Instance: ns-mohw-md-license-id
InstanceOf: NamingSystem
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.url"
* extension[=].valueUri = "http://www.hl7korea.or.kr/fhir/krcore/NamingSystem/ns-mohw-md-license-id"
* extension[+].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-NamingSystem.version"
* extension[=].valueString = "1.0.2"
* name = "MOHW_MD_License_Id"
* status = #active
* kind = #identifier
* date = "2023-06-30"
* publisher = "HL7 Korea"
* type = $v2-0203#PRN "Provider number"
* description = "보건복지부 진료의 면허 식별자 명명체계"
* jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* uniqueId[0].type = #uri
* uniqueId[=].value = "http://www.hl7korea.or.kr/Identifier/mohw-md-license-id"
* uniqueId[=].preferred = true
* uniqueId[=].comment = "보건복지부 진료의 면허 식별자를 정의하기 위해 HL7 Korea에서 부여한 식별자"
* uniqueId[+].type = #uri
* uniqueId[=].value = "https://mohw.go.kr/CodeSystem/practitioner-license-type"
* uniqueId[=].preferred = false
* uniqueId[=].comment = "보건복지부 의료인 면허 식별자를 정의하기 위해 KR Core Draft버전에서 부여한 식별자"