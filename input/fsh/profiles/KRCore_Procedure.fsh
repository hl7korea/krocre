Profile: KRCore_Procedure
Parent: Procedure
Id: krcore-procedure
Title: "KR Core Procedure Profile"
Description: """KR Core Procedure Profile은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 수술, 처치 그리고 마취 정보를 표현하는 데 사용되며, 이 경우 **가능한 한(SHOULD)** 본 Profile을 준수해야 한다.
진료 행위 정보 표현할 때 본 Profile을 적용하지 않을 수 있는 경우는 특수한 상황에 한정된다. 이 경우 반드시 해당 진료정보교류 도메인 내에서 사전 합의가 이루어져야 한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^status = #active
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 수술 및 처치 정보** 클래스에서 정의한 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core Procedure Profile"
* partOf only Reference(KRCore_Procedure or Observation)
* partOf ^short = "본 수술 및 처치가 포함된 상위 의료행위"
* status MS
* status ^short = "수술 및 처치 상태: preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown"
* status ^alias = "KRCDI: 수술 및 처치 상태"
* status ^example.label = "Value (Preferred)"
* status ^example.valueCode = #completed
* category from KR_Core_Procedure_Category_Codes (extensible)
* category ^short = "수술 및 처치 범주"
* category.coding.system 1..
* category.coding.code 1..
* code 1.. MS
* code from KR_Core_Procedure_Codes (extensible)
* code ^short = "수술명 및 처치명"
* code ^alias = "KRCDI: 수술명 및 처치명, 마취 방법"
* code.coding.system 1.. MS
* code.coding.code 1.. MS
* subject only Reference(KRCore_Patient)
* subject ^short = "수술 및 처치 대상 환자"
* performed[x] 1.. MS
* performed[x] only dateTime or Period or string or Age or Range
* performed[x] ^short = "수술 및 처치 일자"
* performed[x] ^alias = "KRCDI: 수술 및 처치 일자"
* performed[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* performed[x] ^type.extension.valueBoolean = true