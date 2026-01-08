Profile: KRCore_PractitionerRole
Parent: PractitionerRole
Id: krcore-practitioner-role
Title: "KR Core PractitionerRole Profile"
Description: """KR Core PractitionerRole Profile은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 보건의료 환경에서 실질적으로 진료 과정에 참여하는
다양한 인력의 역할을 일관되게 표현하는데 사용되며, 이 경우 **반드시(SHALL)** 본 Profile을 준수해야 한다.
임상 행위, 진료 흐름, 환자 정보 처리, 의료 데이터 관리에 공식적으로 참여하는 모든 인력의 역할을 표현하는데 이 Profile을 적용할 수 있다.
단, 의료법에 따라 자격이 부여된 의사(Medical Doctor)의 역할을 표현하기 위해서는 본 Profile을 상속하여 정의한
[KR Core PractitionerRole Profile for Medical Doctor](StructureDefinition-krcore-medical-doctor-role.html)를
**반드시(SHALL)** 적용해야 한다. KR Core PractitionerRole Profile for Medical Doctor를 만족하는 FHIR 리소스 인스턴스는 자동적으로 본 Profile을 만족한다.


※ 주의사항
+ KR Core PractitionerRole Profile은 **반드시(SHALL)** 의사 외 보건의료 서비스 관련자의 역할 정보를 표현하기 위한 목적으로만 한정하여 사용한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^status = #active
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "보건의료 서비스 제공 과정에 직접 또는 간접적으로 관여하는 사람의 역할 정보를 구조화하기 위해 정의한 범용 Profile."
* . ^short = "KR Core PractitionerRole Profile"
* identifier ^short = "보건의료 종사자 역할 ID"
* identifier.system 1..
* identifier.value 1..
* practitioner only Reference(KRCore_Practitioner)
* practitioner ^short = "보건의료 종사자 인적사항"
* organization only Reference(KRCore_Organization)
* organization ^short = "보건의료 종사자 소속 기관"
* code ^short = "보건의료 종사자 역할"
* code.coding.system 1..
* code.coding.code 1..
* specialty ^short = "보건의료 종사자 전문분야"
* specialty.coding.system 1..
* specialty.coding.code 1..