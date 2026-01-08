Profile: KRCore_Patient
Parent: Patient
Id: krcore-patient
Title: "KR Core Patient Profile"
Description: "KR Core Patient Profile은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 환자 정보를 표현하는 데 사용되며, 이 경우 **반드시(SHALL)** 본 Profile을 준수해야 한다."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #trial-use
* ^extension[=].valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension[=].valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 환자 정보 클래스**에서 정의한 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core Patient Profile"
* identifier 1.. MS
* identifier ^extension[0].extension[0].url = "code"
* identifier ^extension[=].extension[=].valueCode = #SHALL:populate
* identifier ^extension[=].extension[+].url = "actor"
* identifier ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* identifier ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier ^extension[+].extension[0].url = "code"
* identifier ^extension[=].extension[=].valueCode = #SHOULD:populate
* identifier ^extension[=].extension[+].url = "code"
* identifier ^extension[=].extension[=].valueCode = #SHALL:no-error
* identifier ^extension[=].extension[+].url = "actor"
* identifier ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* identifier ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier ^short = "환자 ID"
* identifier ^alias = "KRCDI: 환자 ID"
* identifier.system 1.. MS
* identifier.system ^extension[0].extension[0].url = "code"
* identifier.system ^extension[=].extension[=].valueCode = #SHALL:populate
* identifier.system ^extension[=].extension[+].url = "actor"
* identifier.system ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* identifier.system ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier.system ^extension[+].extension[0].url = "code"
* identifier.system ^extension[=].extension[=].valueCode = #SHOULD:populate
* identifier.system ^extension[=].extension[+].url = "code"
* identifier.system ^extension[=].extension[=].valueCode = #SHALL:no-error
* identifier.system ^extension[=].extension[+].url = "actor"
* identifier.system ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* identifier.system ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier.system ^short = "식별체계 식별자"
* identifier.value 1.. MS
* identifier.value ^extension[0].extension[0].url = "code"
* identifier.value ^extension[=].extension[=].valueCode = #SHALL:populate
* identifier.value ^extension[=].extension[+].url = "actor"
* identifier.value ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* identifier.value ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier.value ^extension[+].extension[0].url = "code"
* identifier.value ^extension[=].extension[=].valueCode = #SHOULD:populate
* identifier.value ^extension[=].extension[+].url = "code"
* identifier.value ^extension[=].extension[=].valueCode = #SHALL:no-error
* identifier.value ^extension[=].extension[+].url = "actor"
* identifier.value ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* identifier.value ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* identifier.value ^short = "식별자"
* name 1.. MS
* name ^extension[0].extension[0].url = "code"
* name ^extension[=].extension[=].valueCode = #SHALL:populate
* name ^extension[=].extension[+].url = "actor"
* name ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* name ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name ^extension[+].extension[0].url = "code"
* name ^extension[=].extension[=].valueCode = #SHOULD:populate
* name ^extension[=].extension[+].url = "code"
* name ^extension[=].extension[=].valueCode = #SHALL:no-error
* name ^extension[=].extension[+].url = "actor"
* name ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* name ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name ^short = "성명"
* name ^alias = "KRCDI: 성명"
* name.text 1.. MS
* name.text ^extension[0].extension[0].url = "code"
* name.text ^extension[=].extension[=].valueCode = #SHALL:populate
* name.text ^extension[=].extension[+].url = "actor"
* name.text ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* name.text ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name.text ^extension[+].extension[0].url = "code"
* name.text ^extension[=].extension[=].valueCode = #SHOULD:populate
* name.text ^extension[=].extension[+].url = "code"
* name.text ^extension[=].extension[=].valueCode = #SHALL:no-error
* name.text ^extension[=].extension[+].url = "actor"
* name.text ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* name.text ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* name.text ^short = "전체 성명"
* telecom ^extension[0].extension[0].url = "code"
* telecom ^extension[=].extension[=].valueCode = #SHALL:able-to-populate
* telecom ^extension[=].extension[+].url = "actor"
* telecom ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* telecom ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom ^extension[+].extension[0].url = "code"
* telecom ^extension[=].extension[=].valueCode = #SHOULD:able-to-populate
* telecom ^extension[=].extension[+].url = "code"
* telecom ^extension[=].extension[=].valueCode = #SHALL:no-error
* telecom ^extension[=].extension[+].url = "actor"
* telecom ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* telecom ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^short = "연락처"
* telecom contains
    Phone 0..* and
    E-mail 0..*
* telecom[Phone] ^short = "전화번호"
* telecom[Phone] ^alias = "KRCDI: 전화번호"
* telecom[Phone].system 1..
* telecom[Phone].system = #phone (exactly)
* telecom[Phone].system ^extension[0].extension[0].url = "code"
* telecom[Phone].system ^extension[=].extension[=].valueCode = #SHALL:populate
* telecom[Phone].system ^extension[=].extension[+].url = "actor"
* telecom[Phone].system ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* telecom[Phone].system ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom[Phone].system ^extension[+].extension[0].url = "code"
* telecom[Phone].system ^extension[=].extension[=].valueCode = #SHOULD:populate
* telecom[Phone].system ^extension[=].extension[+].url = "code"
* telecom[Phone].system ^extension[=].extension[=].valueCode = #SHALL:no-error
* telecom[Phone].system ^extension[=].extension[+].url = "actor"
* telecom[Phone].system ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* telecom[Phone].system ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom[Phone].system ^short = "연락처 유형: phone"
* telecom[Phone].value 1..
* telecom[Phone].value ^extension[0].extension[0].url = "code"
* telecom[Phone].value ^extension[=].extension[=].valueCode = #SHALL:populate
* telecom[Phone].value ^extension[=].extension[+].url = "actor"
* telecom[Phone].value ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* telecom[Phone].value ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom[Phone].value ^extension[+].extension[0].url = "code"
* telecom[Phone].value ^extension[=].extension[=].valueCode = #SHOULD:populate
* telecom[Phone].value ^extension[=].extension[+].url = "code"
* telecom[Phone].value ^extension[=].extension[=].valueCode = #SHALL:no-error
* telecom[Phone].value ^extension[=].extension[+].url = "actor"
* telecom[Phone].value ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* telecom[Phone].value ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom[Phone].value ^short = "상세 연락처"
* telecom[E-mail] ^short = "전자메일"
* telecom[E-mail] ^alias = "KRCDI: 전자메일"
* telecom[E-mail].system 1..
* telecom[E-mail].system = #email (exactly)
* telecom[E-mail].system ^extension[0].extension[0].url = "code"
* telecom[E-mail].system ^extension[=].extension[=].valueCode = #SHALL:populate
* telecom[E-mail].system ^extension[=].extension[+].url = "actor"
* telecom[E-mail].system ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* telecom[E-mail].system ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom[E-mail].system ^extension[+].extension[0].url = "code"
* telecom[E-mail].system ^extension[=].extension[=].valueCode = #SHOULD:populate
* telecom[E-mail].system ^extension[=].extension[+].url = "code"
* telecom[E-mail].system ^extension[=].extension[=].valueCode = #SHALL:no-error
* telecom[E-mail].system ^extension[=].extension[+].url = "actor"
* telecom[E-mail].system ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* telecom[E-mail].system ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom[E-mail].system ^short = "연락처 유형: email"
* telecom[E-mail].value 1..
* telecom[E-mail].value ^extension[0].extension[0].url = "code"
* telecom[E-mail].value ^extension[=].extension[=].valueCode = #SHALL:populate
* telecom[E-mail].value ^extension[=].extension[+].url = "actor"
* telecom[E-mail].value ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* telecom[E-mail].value ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom[E-mail].value ^extension[+].extension[0].url = "code"
* telecom[E-mail].value ^extension[=].extension[=].valueCode = #SHOULD:populate
* telecom[E-mail].value ^extension[=].extension[+].url = "code"
* telecom[E-mail].value ^extension[=].extension[=].valueCode = #SHALL:no-error
* telecom[E-mail].value ^extension[=].extension[+].url = "actor"
* telecom[E-mail].value ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* telecom[E-mail].value ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* telecom[E-mail].value ^short = "상세 연락처"
* gender 1.. MS
* gender ^extension[0].extension[0].url = "code"
* gender ^extension[=].extension[=].valueCode = #SHALL:populate
* gender ^extension[=].extension[+].url = "code"
* gender ^extension[=].extension[=].valueCode = #SHALL:reject-invalid
* gender ^extension[=].extension[+].url = "actor"
* gender ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* gender ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* gender ^extension[+].extension[0].url = "code"
* gender ^extension[=].extension[=].valueCode = #SHOULD:populate
* gender ^extension[=].extension[+].url = "code"
* gender ^extension[=].extension[=].valueCode = #SHALL:no-error
* gender ^extension[=].extension[+].url = "actor"
* gender ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* gender ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* gender ^short = "성별: male | female | other | unknown"
* gender ^alias = "KRCDI: 성별"
* birthDate 1.. MS
* birthDate ^extension[0].extension[0].url = "code"
* birthDate ^extension[=].extension[=].valueCode = #SHALL:populate
* birthDate ^extension[=].extension[+].url = "actor"
* birthDate ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* birthDate ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* birthDate ^extension[+].extension[0].url = "code"
* birthDate ^extension[=].extension[=].valueCode = #SHOULD:populate
* birthDate ^extension[=].extension[+].url = "code"
* birthDate ^extension[=].extension[=].valueCode = #SHALL:no-error
* birthDate ^extension[=].extension[+].url = "actor"
* birthDate ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* birthDate ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* birthDate ^short = "생년월일"
* birthDate ^alias = "KRCDI: 생년월일"
* address ^extension[0].extension[0].url = "code"
* address ^extension[=].extension[=].valueCode = #SHALL:able-to-populate
* address ^extension[=].extension[+].url = "actor"
* address ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* address ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* address ^extension[+].extension[0].url = "code"
* address ^extension[=].extension[=].valueCode = #SHOULD:able-to-populate
* address ^extension[=].extension[+].url = "code"
* address ^extension[=].extension[=].valueCode = #SHALL:no-error
* address ^extension[=].extension[+].url = "actor"
* address ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* address ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* address ^short = "환자 주소"
* address ^alias = "KRCDI: 주소"
* address.extension contains KRCore_RoadNameAddress_Extension named krcore-roadNameAddress 0..1
* address.extension[krcore-roadNameAddress] ^extension[0].extension[0].url = "code"
* address.extension[krcore-roadNameAddress] ^extension[=].extension[=].valueCode = #SHALL:able-to-populate
* address.extension[krcore-roadNameAddress] ^extension[=].extension[+].url = "actor"
* address.extension[krcore-roadNameAddress] ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* address.extension[krcore-roadNameAddress] ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* address.extension[krcore-roadNameAddress] ^extension[+].extension[0].url = "code"
* address.extension[krcore-roadNameAddress] ^extension[=].extension[=].valueCode = #SHOULD:able-to-populate
* address.extension[krcore-roadNameAddress] ^extension[=].extension[+].url = "code"
* address.extension[krcore-roadNameAddress] ^extension[=].extension[=].valueCode = #SHALL:no-error
* address.extension[krcore-roadNameAddress] ^extension[=].extension[+].url = "actor"
* address.extension[krcore-roadNameAddress] ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* address.extension[krcore-roadNameAddress] ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* address.text ^extension[0].extension[0].url = "code"
* address.text ^extension[=].extension[=].valueCode = #SHALL:able-to-populate
* address.text ^extension[=].extension[+].url = "actor"
* address.text ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* address.text ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* address.text ^extension[+].extension[0].url = "code"
* address.text ^extension[=].extension[=].valueCode = #SHOULD:able-to-populate
* address.text ^extension[=].extension[+].url = "code"
* address.text ^extension[=].extension[=].valueCode = #SHALL:no-error
* address.text ^extension[=].extension[+].url = "actor"
* address.text ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* address.text ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* address.text ^short = "주소 텍스트"
* address.postalCode ^extension[0].extension[0].url = "code"
* address.postalCode ^extension[=].extension[=].valueCode = #SHALL:able-to-populate
* address.postalCode ^extension[=].extension[+].url = "actor"
* address.postalCode ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* address.postalCode ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* address.postalCode ^extension[+].extension[0].url = "code"
* address.postalCode ^extension[=].extension[=].valueCode = #SHOULD:able-to-populate
* address.postalCode ^extension[=].extension[+].url = "code"
* address.postalCode ^extension[=].extension[=].valueCode = #SHALL:no-error
* address.postalCode ^extension[=].extension[+].url = "actor"
* address.postalCode ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* address.postalCode ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* address.postalCode ^short = "우편번호"
* contact ^extension[0].extension[0].url = "code"
* contact ^extension[=].extension[=].valueCode = #SHALL:able-to-populate
* contact ^extension[=].extension[+].url = "actor"
* contact ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* contact ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* contact ^extension[+].extension[0].url = "code"
* contact ^extension[=].extension[=].valueCode = #SHOULD:able-to-populate
* contact ^extension[=].extension[+].url = "code"
* contact ^extension[=].extension[=].valueCode = #SHALL:no-error
* contact ^extension[=].extension[+].url = "actor"
* contact ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* contact ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* contact ^short = "환자의 연락처(예: 보호자, 배우자, 친구)"
* contact.address ^short = "연락 담당자의 주소"
* contact.address.extension contains KRCore_RoadNameAddress_Extension named krcore-roadNameAddress 0..1
* contact.address.extension[krcore-roadNameAddress] ^extension[0].extension[0].url = "code"
* contact.address.extension[krcore-roadNameAddress] ^extension[=].extension[=].valueCode = #SHALL:able-to-populate
* contact.address.extension[krcore-roadNameAddress] ^extension[=].extension[+].url = "actor"
* contact.address.extension[krcore-roadNameAddress] ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* contact.address.extension[krcore-roadNameAddress] ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* contact.address.extension[krcore-roadNameAddress] ^extension[+].extension[0].url = "code"
* contact.address.extension[krcore-roadNameAddress] ^extension[=].extension[=].valueCode = #SHOULD:able-to-populate
* contact.address.extension[krcore-roadNameAddress] ^extension[=].extension[+].url = "code"
* contact.address.extension[krcore-roadNameAddress] ^extension[=].extension[=].valueCode = #SHALL:no-error
* contact.address.extension[krcore-roadNameAddress] ^extension[=].extension[+].url = "actor"
* contact.address.extension[krcore-roadNameAddress] ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* contact.address.extension[krcore-roadNameAddress] ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* contact.address.text ^extension[0].extension[0].url = "code"
* contact.address.text ^extension[=].extension[=].valueCode = #SHALL:able-to-populate
* contact.address.text ^extension[=].extension[+].url = "actor"
* contact.address.text ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* contact.address.text ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* contact.address.text ^extension[+].extension[0].url = "code"
* contact.address.text ^extension[=].extension[=].valueCode = #SHOULD:able-to-populate
* contact.address.text ^extension[=].extension[+].url = "code"
* contact.address.text ^extension[=].extension[=].valueCode = #SHALL:no-error
* contact.address.text ^extension[=].extension[+].url = "actor"
* contact.address.text ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* contact.address.text ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* contact.address.text ^short = "주소 텍스트"
* contact.address.postalCode ^extension[0].extension[0].url = "code"
* contact.address.postalCode ^extension[=].extension[=].valueCode = #SHALL:able-to-populate
* contact.address.postalCode ^extension[=].extension[+].url = "actor"
* contact.address.postalCode ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-server"
* contact.address.postalCode ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* contact.address.postalCode ^extension[+].extension[0].url = "code"
* contact.address.postalCode ^extension[=].extension[=].valueCode = #SHOULD:able-to-populate
* contact.address.postalCode ^extension[=].extension[+].url = "code"
* contact.address.postalCode ^extension[=].extension[=].valueCode = #SHALL:no-error
* contact.address.postalCode ^extension[=].extension[+].url = "actor"
* contact.address.postalCode ^extension[=].extension[=].valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ActorDefinition/krcore-actordefinition-client"
* contact.address.postalCode ^extension[=].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* contact.address.postalCode ^short = "우편번호"