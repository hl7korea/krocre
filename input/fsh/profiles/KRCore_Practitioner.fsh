Profile: KRCore_Practitioner
Parent: Practitioner
Id: krcore-practitioner
Title: "KR Core Practitioner Profile"
Description: """KR Core Practitioner Profile은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 보건의료 환경에서 실질적으로 진료 과정에 참여하는
다양한 인력을 일관되게 표현하는데 사용되며, 이 경우 **반드시(SHALL)** 본 Profile을 준수해야 한다.
임상 행위, 진료 흐름, 환자 정보 처리, 의료 데이터 관리에 공식적으로 참여하는 모든 인력을 표현하는데 이 Profile을 적용할 수 있다.
단, 의료법에 따라 자격이 부여된 의사(Medical Doctor)를 표현하기 위해서는 본 Profile을 상속하여 정의한
[KR Core Practitioner Profile for Medical Doctor](StructureDefinition-krcore-medical-doctor.html)를
**반드시(SHALL)** 적용해야 한다. KR Core Practitioner Profile for Medical Doctor를 만족하는 FHIR 리소스 인스턴스는 자동적으로 본 Profile을 만족한다.


※ 주의사항
+ KR Core Practitioner Profile은 **반드시(SHALL)** 의사 외 보건의료 서비스 관련자 정보를 표현하기 위한 목적으로만 한정하여 사용한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^status = #active
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "보건의료 서비스 제공 과정에 직접 또는 간접적으로 관여하는 사람의 정보를 FHIR Practitioner 리소스를 기반으로 구조화하기 위해 정의한 범용 Profile."
* . ^short = "KR Core Practitioner Profile"
* identifier ^short = "보건의료 종사자 ID"
* name 1..
* name ^short = "성명"
* name.text 1..
* name.text ^short = "전체 성명"
* telecom ^short = "보건의료 종사자 개인 연락처"
* address ^short = "보건의료 종사자 개인 주소"
* address.extension contains KRCore_RoadNameAddress_Extension named krcore-roadNameAddress 0..1
* address.text ^short = "주소 텍스트"
* address.postalCode ^short = "우편번호"
* qualification ^short = "보건의료 종사자 자격증 정보"
* qualification.identifier ^short = "보건의료 종사자 자격증 식별 정보"
* qualification.code ^short = "보건의료 종사자 자격증 종류 정보"