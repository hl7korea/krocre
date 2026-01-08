Extension: KRCore_InsuranceTypes_Extension
Id: krcore-insuranceTypes
Title: "KR Core Insurance Types Extension"
Description: """KR Core Insurance Types Extension은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 환자의 건강보험유형 정보를 표현하는데 사용되며, 이 경우 **반드시(SHALL)** 본 Extension을 적용한다.

※ 침고사항
+ 환자의 건강보험유형은 진료 시점에 종속되므로, FHIR Patient 리소스 인스턴스가 아닌 FHIR Encounter 리소스 인스턴스에 본 Extension을 사용한다."""
Context: Encounter
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 환자 정보** 클래스에서 정의한 *건강보험유형* 항목을 표현하기 위해 정의한 Extension."
* . ^short = "KR Core Insurance Types Extension"
* . ^definition = "KR Core Insurance Types Extension은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 환자의 건강보험유형 정보를 표현하는데 사용되며, 이 경우 **반드시(SHALL)** 본 Extension을 적용한다.\n\n※ 침고사항\n+ 환자의 건강보험유형은 진료 시점에 종속되므로, FHIR Patient 리소스 인스턴스가 아닌 FHIR Encounter 리소스 인스턴스에 본 Extension을 사용한다."
* value[x] only CodeableConcept
* value[x] from KR_Core_Insurance_Types_Codes (required)
* value[x] ^short = "환자 건강보험 유형"
* value[x].coding 1.. MS
* value[x].coding.system 1.. MS
* value[x].coding.code 1.. MS