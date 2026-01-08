Profile: KRCore_Medication
Parent: Medication
Id: krcore-medication
Title: "KR Core Medication Profile"
Description: """KR Core Medication Profile은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 약품 자체의 정보를 표현하는 데 사용되며, 이 경우 **가능한 한(SHOULD)** 본 Profile을 준수해야 한다.
약품 정보를 표현할 때 본 Profile을 적용하지 않을 수 있는 경우는 특수한 상황에 한정된다. 이 경우 반드시 해당 진료정보교류 도메인 내에서 사전 합의가 이루어져야 한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^status = #active
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 약물 정보** 클래스에서 정의한 약품 정보 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core Medication Profile"
* code 1.. MS
* code from KR_Core_EDI_Medication_Codes (extensible)
* code ^short = "약품 코드"
* code ^alias = "KRCDI: 약품 제품명"
* code.coding.system 1.. MS
* code.coding.code 1.. MS
* code.coding.display 1.. MS
* ingredient 1.. MS
* ingredient ^short = "약품 성분 코드"
* ingredient ^alias = "KRCDI: 약품 성분명"
* ingredient.itemCodeableConcept 0..1 MS
* ingredient.itemCodeableConcept only CodeableConcept
* ingredient.itemCodeableConcept from KR_Core_ATC_Codes (preferred)
* ingredient.itemCodeableConcept ^sliceName = "itemCodeableConcept"
* ingredient.itemCodeableConcept.coding.system 1.. MS
* ingredient.itemCodeableConcept.coding.code 1.. MS