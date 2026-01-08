Profile: KRCore_Observation_VitalSigns
Parent: Observation
Id: krcore-vitalsigns
Title: "KR Core Observation Profile for Vital Signs"
Description: """KR Core Observation Profile for Vital Signs는 KR Core Server와 KR Core Client의 진료정보를 교류할 때 
환자를 대상으로하는 다양한 활력징후 및 신체 계측 정보를 일관되게 표현하는데 사용되며, 이 경우 **반드시(SHALL)** 본 Profile을 준수해야 한다.
단, 아래의 목록에 해당하는 활력징후 및 신체 계측 정보는 본 Profile을 상속하여 정의한 세부 Profile들을 **반드시(SHALL)** 적용해야 한다.
아래의 세부 Profile들을 만족하는 FHIR 리소스 인스턴스는 자동적으로 본 Profile을 만족한다.

+ 활력징후 및 신체 계측 정보별 세부 Profile 목록
  + 수축기 혈압 및 이완기 혈압 - [KR Core Observation Profile for Vital Signs: Blood Pressure](StructureDefinition-krcore-bloodpressure.html)
  + 키 - [KR Core Observation Profile for Vital Signs: Body Height](StructureDefinition-krcore-bodyheight.html)
  + 체온 - [KR Core Observation Profile for Vital Signs: Body Temperature](StructureDefinition-krcore-bodytemperature.html)
  + 몸무게 - [KR Core Observation Profile for Vital Signs: Body Weight](StructureDefinition-krcore-bodyweight.html)
  + 맥박수 - [KR Core Observation Profile for Vital Signs: Heart Rate](StructureDefinition-krcore-heartrate.html)
  + 산소포화도 - [KR Core Observation Profile for Vital Signs: Pulse Oximetry](StructureDefinition-krcore-pulseoximeter.html)
  + 호흡수 - [KR Core Observation Profile for Vital Signs: Respiratory Rate](StructureDefinition-krcore-respiratoryrate.html)


※ 주의사항
+ KR Core Observation Profile for Vital Signs는 **반드시(SHALL)** 수축기 혈압 및 이완기 혈압, 키, 체온, 몸무게, 맥박수, 산소포화도, 호흡수 외 활력징후 및 신체 계측 정보를 표현하기 위한 목적으로만 한정하여 사용한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "환자를 대상으로하는 활력 징후 및 신체 계측 정보를 구조화하기 위해 정의한 범용 Profile."
* . ^short = "KR Core Observation Profile for Vital Signs"
* status ^short = "측정 상태: registered | preliminary | final | amended +"
* category from $observation-category_1 (required)
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^short = "관찰 및 측정 범주"
* category ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* category ^binding.extension.valueString = "ObservationCategory"
* category ^binding.description = "Codes for high level observation categories."
* category contains VitalSigns 1..1
* category[VitalSigns] = $observation-category#vital-signs
* code ^short = "활력징후 및 신체 계측 항목 정보"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains LOINC 0..*
* code.coding[LOINC] from LOINCCodes (required)
* code.coding[LOINC] ^short = "LOINC 코드 정보"
* code.coding[LOINC] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-minValueSet"
* code.coding[LOINC] ^binding.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ValueSet/krcore-vital-signs-codes"
* code.coding[LOINC].system 1..
* code.coding[LOINC].system = "http://loinc.org" (exactly)
* code.coding[LOINC].system ^short = "LOINC 코드체계"
* code.coding[LOINC].code 1..
* code.coding[LOINC].code ^short = "LOINC 코드"
* subject only Reference(KRCore_Patient)
* subject MS
* subject ^short = "활력징후 및 신체 계측 대상 환자"
* effective[x] ^short = "활력징후 및 신체 계측 일시"
* performer only Reference(KRCore_Practitioner or KRCore_PractitionerRole or KRCore_Organization or CareTeam or KRCore_Patient or RelatedPerson)
* performer ^short = "활력징후 및 신체 계측 책임자"
* value[x] ^short = "활력징후 및 신체 계측 결과"
* dataAbsentReason ^short = "활력징후 및 신체 계측 결과 부재 사유"
* device ^short = "활력징후 및 신체 계측 장비 정보"
* component.code ^short = "세부 활력징후 및 신체 계측 정보"
* component.code.coding ^slicing.discriminator.type = #value
* component.code.coding ^slicing.discriminator.path = "$this"
* component.code.coding ^slicing.rules = #open
* component.code.coding contains LOINC 0..*
* component.code.coding[LOINC] from LOINCCodes (required)
* component.code.coding[LOINC] ^short = "LOINC 코드 정보"
* component.code.coding[LOINC] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-minValueSet"
* component.code.coding[LOINC] ^binding.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ValueSet/krcore-vital-signs-codes"
* component.code.coding[LOINC].system 1..
* component.code.coding[LOINC].system = "http://loinc.org" (exactly)
* component.code.coding[LOINC].system ^short = "LOINC 코드체계"
* component.code.coding[LOINC].code 1..
* component.code.coding[LOINC].code ^short = "LOINC 코드"
* component.value[x] ^short = "세부 활력징후 및 신체 계측 결과"
* component.dataAbsentReason ^short = "세부 활력징후 및 신체 계측 결과 부재 사유"