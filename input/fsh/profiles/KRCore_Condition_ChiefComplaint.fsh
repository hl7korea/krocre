Profile: KRCore_Condition_ChiefComplaint
Parent: Condition
Id: krcore-condition-chief-complaint
Title: "KR Core Condition Profile for Chief Complaint"
Description: """KR Core Condition Profile for Chief Complaint는 KR Core Server와 KR Core Client가 진료정보를 교류할 때 주호소 정보를 표현하는 데 사용되며, 이 경우 **가능한 한(SHOULD)** 본 Profile을 준수해야 한다.
주호소 정보를 표현할 때 본 Profile을 적용하지 않을 수 있는 경우는 특수한 상황에 한정된다. 이 경우 반드시 해당 진료정보교류 도메인 내에서 사전 합의가 이루어져야 한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^status = #active
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 진단 및 주호소 정보** 클래스에서 정의한 주호소 정보 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core Condition Profile for Chief Complaint"
* clinicalStatus ^short = "주호소 임상적 상태: active | recurrence | relapse | inactive | remission | resolved"
* clinicalStatus ^alias = "KRCDI: 주호소 임상적 상태"
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^short = "주호소 범주"
* category contains CC 1..1
* category[CC] = KR_Core_Condition_Category_Types#주호소
* category[CC] from KR_Core_Condition_Category_Codes (extensible)
* code 1..
* code from http://hl7.org/fhir/ValueSet/condition-code|4.0.1 (example)
* code ^short = "주호소명"
* code ^alias = "KRCDI: 주호소명"
* code.coding.system 1..
* code.coding.code 1..
* subject only Reference(KRCore_Patient)
* subject MS
* subject ^short = "주호소 대상 환자"
* encounter only Reference(KRCore_Encounter)
* encounter ^short = "주호소 관련 진료 정보"
* onset[x] ^short = "주호소 발생 일시 또는 연령"
* onset[x] ^alias = "KRCDI: 주호소 발생 일자"