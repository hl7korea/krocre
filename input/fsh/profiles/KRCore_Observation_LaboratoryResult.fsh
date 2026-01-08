Profile: KRCore_Observation_LaboratoryResult
Parent: Observation
Id: krcore-observation-laboratory-result
Title: "KR Core Observation Profile for Laboratory Result"
Description: """KR Core Observation Profile for Laboratory Result는 KR Core Server와 KR Core Client가 진료정보를 교류할 때 진단검사 중 검사 관련 정보를 표현하는 데 사용되며, 이 경우 **가능한 한(SHOULD)** 본 Profile을 준수해야 한다.
진단검사 중 검사 관련 정보를 표현할 때 본 Profile을 적용하지 않을 수 있는 경우는 특수한 상황에 한정된다. 이 경우 반드시 해당 진료정보교류 도메인 내에서 사전 합의가 이루어져야 한다.


※ 참고<br />
본 Profile은 KR CDI V2 병리검사 정보를 직접적으로 다루고 있지는 않지만, FHIR Observation 리소스를 사용해 병리검사 세부 결과를 표현할 경우, Observation.category 값을 일반적으로 `laboratory`로 설정한다.
이에 따라 본 Profile은 병리검사 세부 결과 표현 시 구조적 참고 자료로 활용할 수 있다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 진단검사** 클래스에서 정의한 검사 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core Observation Profile for Laboratory Result"
* status ^short = "진단검사 측정 상태: registered | preliminary | final | amended +"
* category from $observation-category_1 (required)
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^short = "관찰 및 측정 범주"
* category ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* category ^binding.extension.valueString = "ObservationCategory"
* category ^binding.description = "Codes for high level observation categories."
* category contains Laboratory 1..1
* category[Laboratory] = $observation-category#laboratory
* code MS
* code from KR_Core_Laboratory_Codes (extensible)
* code ^short = "진단검사 측정 항목 정보"
* code ^alias = "KRCDI: 진단검사명"
* code.coding.system 1.. MS
* code.coding.code 1.. MS
* subject only Reference(KRCore_Patient)
* subject MS
* subject ^short = "진단검사 대상 환자"
* effective[x] ^short = "진단검사 일시"
* issued 1.. MS
* issued ^short = "진단검사 보고일시"
* issued ^alias = "KRCDI: 진단검사 보고일시"
* performer only Reference(KRCore_Practitioner or KRCore_PractitionerRole or KRCore_Organization or CareTeam or KRCore_Patient or RelatedPerson)
* performer ^short = "검사 책임자"
* value[x] MS
* value[x] ^short = "진단검사 측정 결과"
* value[x] ^alias = "KRCDI: 진단검사 결과"
* specimen only Reference(KRCore_Specimen)
* specimen ^short = "검체 정보 참조"
* specimen ^alias = "KRCDI: 검체 종류"
* referenceRange MS
* referenceRange ^short = "진단검사 측정 결과 참고 구간"
* referenceRange ^alias = "KRCDI: 참고 구간"
* component MS
* component ^short = "세부 진단검사 측정 정보"
* component.code MS
* component.code from KR_Core_Laboratory_Codes (extensible)
* component.code ^short = "세부 진단검사 측정 항목명"
* component.code ^alias = "KRCDI: 진단검사명"
* component.code.coding.system 1.. MS
* component.code.coding.code 1.. MS
* component.value[x] MS
* component.value[x] ^short = "세부 진단검사 측정 결과"
* component.value[x] ^alias = "KRCDI: 진단검사 결과"
* component.referenceRange MS
* component.referenceRange ^short = "세부 진단검사 측정 결과 참고 구간"
* component.referenceRange ^alias = "KRCDI: 참고 구간"