Profile: KRCore_ImagingStudy
Parent: ImagingStudy
Id: krcore-imagingstudy
Title: "KR Core ImagingStudy Profile"
Description: """KR Core ImagingStudy Profile은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 진단영상검사 중 영상검사 관련 정보를 표현하는 데 사용되며, 이 경우 **가능한 한(SHOULD)** 본 Profile을 준수해야 한다.
진단영상검사 중 영상검사 관련 정보를 표현할 때 본 Profile을 적용하지 않을 수 있는 경우는 특수한 상황에 한정된다. 이 경우 반드시 해당 진료정보교류 도메인 내에서 사전 합의가 이루어져야 한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^status = #active
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 진단영상검사** 클래스에서 정의한 영상검사 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core ImagingStudy Profile"
* status ^short = "진단영상 상태: \tregistered | available | cancelled | entered-in-error | unknown"
* status ^alias = "KRCDI: 진단영상 상태"
* subject only Reference(KRCore_Patient)
* subject MS
* subject ^short = "진단영상 대상"
* started ^short = "진단영상 촬영 시작 날짜"
* series ^short = "DICOM Series 정보"
* series ^alias = "KRCDI: 진단영상"
* series.uid ^short = "DICOM Series UID"
* series.modality ^short = "DICOM 촬영 장비"