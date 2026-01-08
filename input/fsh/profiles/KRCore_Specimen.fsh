Profile: KRCore_Specimen
Parent: Specimen
Id: krcore-specimen
Title: "KR Core Specimen Profile"
Description: """KR Core Specimen Profile은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 검체 정보를 표현하는 데 사용되며, 이 경우 **가능한 한(SHOULD)** 본 Profile을 준수해야 한다.
검체 정보 표현할 때 본 Profile을 적용하지 않을 수 있는 경우는 특수한 상황에 한정된다. 이 경우 반드시 해당 진료정보교류 도메인 내에서 사전 합의가 이루어져야 한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^status = #active
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 검체** 클래스에서 정의한 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core Specimen Profile"
* identifier ^short = "검사실 외부에서 부여된 검체 ID"
* identifier.system 1..
* identifier.value 1..
* type from KR_Core_SNOMED_CT_Codes (extensible)
* type ^short = "검체 종류"
* type ^alias = "KRCDI: 검체 종류"
* type.coding.system 1..
* type.coding.code 1..
* subject 1..
* subject only Reference(KRCore_Patient or Group or Device or Substance or Location)
* subject ^short = "검체 출처"
* collection ^short = "검체 채취 정보"
* collection.bodySite ^short = "채취 부위"
* collection.bodySite.coding.system 1..
* collection.bodySite.coding.code 1..