Profile: KRCore_Observation_FunctionalTest
Parent: Observation
Id: krcore-observation-function-test
Title: "KR Core Observation Profile for Functional Test"
Description: """KR Core Observation Profile for Functional Test는 KR Core Server와 KR Core Client가 진료정보를 교류할 때 기능검사 중 검사 관련 정보를 표현하는 데 사용되며, 이 경우 **가능한 한(SHOULD)** 본 Profile을 준수해야 한다.
기능검사 중 검사 관련 정보를 표현할 때 본 Profile을 적용하지 않을 수 있는 경우는 특수한 상황에 한정된다. 이 경우 반드시 해당 진료정보교류 도메인 내에서 사전 합의가 이루어져야 한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 기능검사** 클래스에서 정의한 검사 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core Observation Profile for Functional Test"
* status MS
* status ^short = "기능검사 상태: registered | preliminary | final | amended +"
* status ^alias = "KRCDI: 기능검사 상태"
* category from $observation-category_1 (required)
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^short = "관찰 및 측정 범주"
* category ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* category ^binding.extension.valueString = "ObservationCategory"
* category ^binding.description = "Codes for high level observation categories."
* category contains Exam 1..1
* category[Exam] = $observation-category#exam
* code MS
* code from KR_Core_EDI_Procedure_Codes (extensible)
* code ^short = "기능검사 측정 항목 정보"
* code ^alias = "KRCDI: 기능검사명"
* code.coding.system 1.. MS
* code.coding.code 1.. MS
* subject only Reference(KRCore_Patient)
* subject MS
* subject ^short = "기능검사 대상 환자"
* effective[x] 1.. MS
* effective[x] only dateTime or Period or Timing or instant
* effective[x] ^short = "기능검사 측정 일시"
* effective[x] ^alias = "KRCDI: 기능검사 일자"
* effective[x] ^type.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-type-must-support"
* effective[x] ^type.extension.valueBoolean = true
* performer only Reference(KRCore_Practitioner or KRCore_PractitionerRole or KRCore_Organization or CareTeam or KRCore_Patient or RelatedPerson)
* performer ^short = "검사 책임자"
* value[x] MS
* value[x] ^short = "기능검사 측정 결과"
* value[x] ^alias = "KRCDI: 기능검사 결과"