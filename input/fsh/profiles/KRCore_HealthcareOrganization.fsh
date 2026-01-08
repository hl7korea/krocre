Profile: KRCore_HealthcareOrganization
Parent: KRCore_Organization
Id: krcore-healthcare-organization
Title: "KR Core Healthcare Organization Profile"
Description: """KR Core Healthcare Organization Profile은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 의료기관 정보를 표현하는 데 사용되며, 이 경우 **반드시(SHALL)** 본 Profile을 준수해야 한다.
본 Profile은 병원, 보건소, 약국 등 건강보험심사평가원에서 요양기관으로 분류한 기관을 표현하기 위해 [KR Core Organization Profile](StructureDefinition-krcore-organization.html)을
상속하여 정의하였으며, 본 Profile을 만족하는 FHIR 리소스 인스턴스는 자동적으로 KR Core Organization Profile을 만족한다.


※ 주의사항
+ KR Core Organization Profile은 **반드시(SHALL)** 의사 외 보건의료 서비스 관련자 정보를 표현하기 위한 목적으로만 한정하여 사용한다."""
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 의료기관 정보** 클래스에서 정의한 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core Healthcare Organization Profile"
* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^short = "의료기관 ID"
* identifier ^alias = "KRCDI: 의료기관 ID"
* identifier contains HIRA 1..* MS
* identifier[HIRA] ^short = "건강보험심사평가원 요양기관 식별 정보"
* identifier[HIRA].system = "http://www.hl7korea.or.kr/Identifier/hira-krnpi" (exactly)
* identifier[HIRA].system MS
* identifier[HIRA].system ^short = "건강보험심사평가원 요양기관 식별 체계"
* identifier[HIRA].value MS
* identifier[HIRA].value ^short = "건강보험심사평가원 요양기관 식별자"
* identifier[HIRA].value ^definition = "요양기관의 OID"
* type MS
* type from KR_Core_Organization_Type_Codes (required)
* type ^short = "의료기관 유형"
* type ^alias = "KRCDI: 의료기관 유형"
* type.coding 1.. MS
* type.coding.system MS
* type.coding.code MS
* name MS
* name ^short = "의료기관명"
* name ^alias = "KRCDI: 의료기관명"
* telecom ^short = "의료기관 연락처"
* telecom[Phone] ^alias = "KRCDI: 전화번호"
* telecom[Fax] ^alias = "KRCDI: 팩스번호"
* address ^alias = "KRCDI: 주소"