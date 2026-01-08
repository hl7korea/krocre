Profile: KRCore_Practitioner_MedicalDoctor
Parent: KRCore_Practitioner
Id: krcore-medical-doctor
Title: "KR Core Practitioner Profile for Medical Doctor"
Description: """KR Core Practitioner Profile for Medical Doctor는 KR Core Server와 KR Core Client가 진료정보를 교류할 때 진료의 정보를 표현하는 데 사용되며, 이 경우 **반드시(SHALL)** 본 Profile을 준수해야 한다.
본 Profile은 의료법에 따라 자격이 부여된 의사(Medical Doctor)를 표현하기 위해 [KR Core Practitioner Profile](StructureDefinition-krcore-practitioner.html)을
상속하여 정의하였으며, 본 Profile을 만족하는 FHIR 리소스 인스턴스는 자동적으로 KR Core Practitioner Profile을 만족한다.


※ 주의사항
+ KR Core Practitioner Profile은 **반드시(SHALL)** 의사 외 보건의료 서비스 관련자 정보를 표현하기 위한 목적으로만 한정하여 사용한다."""
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 진료의 정보 및 역할 정보** 클래스에서 정의한 진료의 정보 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core Practitioner Profile for Medical Doctor"
* name MS
* name ^alias = "KRCDI: 성명"
* name.text MS
* address ^short = "진료의 개인 주소"
* qualification 1.. MS
* qualification ^short = "진료의 면허 정보"
* qualification.identifier MS
* qualification.identifier ^slicing.discriminator.type = #value
* qualification.identifier ^slicing.discriminator.path = "system"
* qualification.identifier ^slicing.rules = #open
* qualification.identifier ^short = "진료의 면허 식별 정보"
* qualification.identifier contains MOHW 1..* MS
* qualification.identifier[MOHW] ^short = "보건복지부 진료의 면허 코드 식별 정보"
* qualification.identifier[MOHW] ^alias = "KRCDI: 진료의 ID"
* qualification.identifier[MOHW].system 1.. MS
* qualification.identifier[MOHW].system = "http://www.hl7korea.or.kr/Identifier/mohw-md-license-id" (exactly)
* qualification.identifier[MOHW].system ^short = "보건복지부 진료의 면허 코드 식별 체계"
* qualification.identifier[MOHW].value 1.. MS
* qualification.identifier[MOHW].value ^short = "보건복지부 진료의 면허 코드"
* qualification.code from KR_Core_Doctor_Qualification_Codes (preferred)
* qualification.code ^short = "면허 및 자격증 정보"
* qualification.code.coding.system 1..
* qualification.code.coding.code 1..