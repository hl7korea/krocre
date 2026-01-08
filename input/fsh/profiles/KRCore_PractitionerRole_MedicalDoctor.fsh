Profile: KRCore_PractitionerRole_MedicalDoctor
Parent: KRCore_PractitionerRole
Id: krcore-medical-doctor-role
Title: "KR Core PractitionerRole Profile for Medical Doctor"
Description: """KR Core PractitionerRole Profile for Medical Doctor는 KR Core Server와 KR Core Client가 진료정보를 교류할 때 진료의의 역할 정보를 표현하는 데 사용되며, 이 경우 **반드시(SHALL)** 본 Profile을 준수해야 한다.
본 Profile은 의료법에 따라 자격이 부여된 의사(Medical Doctor)의 역할을 표현하기 위해 [KR Core PractitionerRole Profile](StructureDefinition-krcore-practitioner-role.html)을
상속하여 정의하였으며, 본 Profile을 만족하는 FHIR 리소스 인스턴스는 자동적으로 KR Core PractitionerRole Profile을 만족한다.


※ 주의사항
+ KR Core PractitionerRole Profile은 **반드시(SHALL)** 의사 외 보건의료 서비스 관련자의 역할 정보를 표현하기 위한 목적으로만 한정하여 사용한다."""
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 진료의 정보 및 역할 정보** 클래스에서 정의한 진료의의 역할 정보 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core PractitionerRole Profile for Medical Doctor"
* practitioner only Reference(KRCore_Practitioner_MedicalDoctor)
* practitioner ^short = "진료의 인적사항"
* organization only Reference(KRCore_HealthcareOrganization)
* organization ^short = "진료의 소속 기관"
* code from PractitionerRole (extensible)
* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "$this"
* code ^slicing.rules = #open
* code ^short = "진료의 역할"
* code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension.valueString = "PractitionerRole"
* code ^binding.description = "The role a person plays representing an organization."
* code contains MDRole 1..1
* code[MDRole] = $practitioner-role#doctor
* specialty 1.. MS
* specialty from KR_Core_Medical_Department_Codes (required)
* specialty ^short = "진료과"
* specialty ^alias = "KRCDI: 진료과"
* specialty.coding 1.. MS
* specialty.coding.system MS
* specialty.coding.code MS