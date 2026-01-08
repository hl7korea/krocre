Profile: KRCore_Organization
Parent: Organization
Id: krcore-organization
Title: "KR Core Organization Profile"
Description: """KR Core Organization Profile은 KR Core Server와 KR Core Client의 진료정보 교류 과정에 참여하는
다양한 기관 및 부서를 일관되게 표현하는데 사용되며, 이 경우 **반드시(SHALL)** 본 Profile을 준수해야 한다.
임상 행위, 진료 흐름, 환자 정보 처리, 의료 데이터 관리에 공식적으로 참여하는 모든 조직 단위를 표현하는데 이 Profile을 적용할 수 있다.
단, 병원, 보건소, 약국 등 건강보험심사평가원에서 요양기관으로 분류한 기관을 표현하기 위해서는 본 Profile을 상속하여 정의한
[KR Core Healthcare Organization Profile](StructureDefinition-krcore-healthcare-organization.html)을
**반드시(SHALL)** 적용해야 한다. KR Core Healthcare Organization Profile을 만족하는 FHIR 리소스 인스턴스는 자동적으로 본 Profile을 만족한다.


※ 주의사항
+ KR Core Organization Profile은 **반드시(SHALL)** 의사 외 보건의료 서비스 관련자 정보를 표현하기 위한 목적으로만 한정하여 사용한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^status = #active
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "보건의료 서비스 제공 과정에 직접 또는 간접적으로 관여하는 사람의 정보를 구조화하기 위해 정의한 범용 Profile."
* . ^short = "KR Core Organization Profile"
* identifier ^short = "기관 ID"
* identifier.system 1..
* identifier.value 1..
* type from OrganizationType (preferred)
* type ^short = "기관 유형"
* type.coding.system 1..
* type.coding.code 1..
* name 1..
* name ^short = "기관명"
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^short = "기관 연락처"
* telecom contains
    Phone 0..* and
    Fax 0..*
* telecom[Phone] ^short = "전화번호"
* telecom[Phone].system 1..
* telecom[Phone].system = #phone (exactly)
* telecom[Phone].system ^short = "연락처 유형: phone"
* telecom[Phone].value 1..
* telecom[Phone].value ^short = "상세 연락처"
* telecom[Fax] ^short = "팩스번호"
* telecom[Fax].system 1..
* telecom[Fax].system = #fax (exactly)
* telecom[Fax].system ^short = "연락처 유형: fax"
* telecom[Fax].value 1..
* telecom[Fax].value ^short = "상세 연락처"
* address ^short = "주소"
* address.extension contains KRCore_RoadNameAddress_Extension named roadNameAddress 0..1
* address.extension[roadNameAddress] ^short = "한국의 도로명 주소"
* address.extension[roadNameAddress] ^definition = "도로명 주소 정보를 표현하는 확장"
* address.text ^short = "전체 주소"
* address.postalCode ^short = "우편번호"
* address.postalCode ^definition = "우편번호"