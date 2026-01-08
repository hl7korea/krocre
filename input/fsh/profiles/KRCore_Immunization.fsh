Profile: KRCore_Immunization
Parent: Immunization
Id: krcore-immunization
Title: "KR Core Immunization Profile"
Description: """KR Core Immunization Profile은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 예방접종 내역 정보를 표현하는 데 사용되며, 이 경우 **가능한 한(SHOULD)** 본 Profile을 준수해야 한다.
예방접종 내역 정보를 표현할 때 본 Profile을 적용하지 않을 수 있는 경우는 특수한 상황에 한정된다. 이 경우 반드시 해당 진료정보교류 도메인 내에서 사전 합의가 이루어져야 한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^status = #active
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 예방접종 내역** 클래스에서 정의한 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core Immunization Profile"
* status MS
* status ^short = "예방접종 상태: completed | entered-in-error | not-done"
* status ^alias = "KRCDI: 예방접종 상태"
* status ^example.label = "Value (Preferred)"
* status ^example.valueCode = #completed
* vaccineCode MS
* vaccineCode ^short = "예방접종 식별 코드"
* vaccineCode.coding ^slicing.discriminator.type = #value
* vaccineCode.coding ^slicing.discriminator.path = "$this"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding contains
    VcntType 1..* MS and
    KDCode 0..*
* vaccineCode.coding[VcntType] from KR_Core_Vaccination_Type_Codes (required)
* vaccineCode.coding[VcntType] ^short = "예방접종명"
* vaccineCode.coding[VcntType] ^alias = "KRCDI: 예방접종명"
* vaccineCode.coding[VcntType].system 1.. MS
* vaccineCode.coding[VcntType].code 1.. MS
* vaccineCode.coding[KDCode] from KR_Core_Korea_Drug_Codes (required)
* vaccineCode.coding[KDCode] ^short = "예방접종 약품명"
* vaccineCode.coding[KDCode] ^alias = "KRCDI: 예방접종 약품명"
* vaccineCode.coding[KDCode].system 1..
* vaccineCode.coding[KDCode].code 1..
* patient only Reference(KRCore_Patient)
* patient MS
* patient ^short = "예방접종 대상 환자"
* occurrence[x] only dateTime
* occurrence[x] MS
* occurrence[x] ^short = "예방접종 일시"
* occurrence[x] ^alias = "KRCDI: 예방접종 일자"
* protocolApplied ^short = "예방접종 프로토콜"
* protocolApplied.doseNumberPositiveInt 0..1
* protocolApplied.doseNumberPositiveInt only positiveInt
* protocolApplied.doseNumberPositiveInt ^sliceName = "doseNumberPositiveInt"
* protocolApplied.doseNumberPositiveInt ^short = "예방접종 차수"
* protocolApplied.doseNumberPositiveInt ^alias = "KRCDI: 예방접종 차수"