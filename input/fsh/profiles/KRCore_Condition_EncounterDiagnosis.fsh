Profile: KRCore_Condition_EncounterDiagnosis
Parent: Condition
Id: krcore-condition-encounter-diagnosis
Title: "KR Core Condition Profile for Encounter Diagnosis"
Description: """KR Core Condition Profile for Encounter Diagnosis는 KR Core Server와 KR Core Client가 진료정보를 교류할 때 진단 정보를 표현하는 데 사용되며, 이 경우 **가능한 한(SHOULD)** 본 Profile을 준수해야 한다.
진단 정보를 표현할 때 본 Profile을 적용하지 않을 수 있는 경우는 특수한 상황에 한정된다. 이 경우 반드시 해당 진료정보교류 도메인 내에서 사전 합의가 이루어져야 한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^status = #active
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 진단 및 주호소 정보** 클래스에서 정의한 진단 정보 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core Condition Profile for Encounter Diagnosis"
* clinicalStatus MS
* clinicalStatus ^short = "진단 임상적 상태: active | recurrence | relapse | inactive | remission | resolved"
* clinicalStatus ^alias = "KRCDI: 진단 임상적 상태"
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^short = "진단 범주"
* category contains EnctrDiag 1..1
* category[EnctrDiag] = KR_Core_Condition_Category_Types#진단
* category[EnctrDiag] from KR_Core_Condition_Category_Codes (extensible)
* code 1.. MS
* code from KR_Core_KCD8_Codes (required)
* code ^short = "진단명"
* code ^alias = "KRCDI: 진단명"
* code.coding 1.. MS
* code.coding.system 1.. MS
* code.coding.code 1.. MS
* subject only Reference(KRCore_Patient)
* subject MS
* subject ^short = "진단 대상 환자"
* encounter only Reference(KRCore_Encounter)
* encounter ^short = "진단 관련 내원 정보"
* recordedDate 1.. MS
* recordedDate ^short = "진단 일시 및 최초 기록 일시"
* recordedDate ^alias = "KRCDI: 진단 일자"