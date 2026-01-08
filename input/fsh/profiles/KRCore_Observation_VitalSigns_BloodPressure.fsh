Profile: KRCore_Observation_VitalSigns_BloodPressure
Parent: KRCore_Observation_VitalSigns
Id: krcore-bloodpressure
Title: "KR Core Observation Profile for Vital Signs: Blood Pressure"
Description: """본 Profile은 환자를 대상으로 측정한 수축기 혈압 및 이완기 혈압을 표현하기 위해 [KR Core Observation Profile for Vital Signs](StructureDefinition-krcore-vitalsigns.html)를
상속하여 정의하였으며, 본 Profile을 만족하는 FHIR 리소스 인스턴스는 자동적으로 KR Core Observation Profile for Vital Signs를 만족한다.


※ 주의사항
+ KR Core Observation Profile for Vital Signs는 **반드시(SHALL)** 수축기 혈압 및 이완기 혈압, 키, 체온, 몸무게, 맥박수, 산소포화도, 호흡수 외 활력징후 및 신체 계측 정보를 표현하기 위한 목적으로만 한정하여 사용한다."""
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 활력 징후 및 신체 계측 정보** 클래스에서 정의한 `수축기 혈압`, `이완기 혈압` 항목과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* obeys krcore-obs-02
* . ^short = "KR Core Observation Profile for Vital Signs: Blood Pressure"
* code MS
* code.coding[LOINC] ^short = "혈압 측정"
* code.coding[LOINC].system MS
* code.coding[LOINC].code = #85354-9 (exactly)
* code.coding[LOINC].code MS
* code.coding[LOINC].display ^example.label = "Value (Preferred)"
* code.coding[LOINC].display ^example.valueString = "Blood pressure panel with all children optional"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.coding.code"
* component ^slicing.rules = #open
* component contains
    Systolic 0..1 MS and
    Diastolic 0..1 MS
* component[Systolic] ^short = "수축기 혈압 측정 정보"
* component[Systolic] ^alias = "KRCDI: 수축기 혈압"
* component[Systolic].code.coding[LOINC] ^short = "수축기 혈압 측정"
* component[Systolic].code.coding[LOINC].system MS
* component[Systolic].code.coding[LOINC].code = #8480-6 (exactly)
* component[Systolic].code.coding[LOINC].code MS
* component[Systolic].code.coding[LOINC].display ^example.label = "Value (Preferred)"
* component[Systolic].code.coding[LOINC].display ^example.valueString = "Systolic blood pressure"
* component[Systolic].value[x] only Quantity
* component[Systolic].value[x] MS
* component[Systolic].value[x] ^short = "수축기 혈압 측정 결과"
* component[Systolic].value[x].value 1..
* component[Systolic].value[x].value ^short = "측정값"
* component[Systolic].value[x].unit ^example.label = "Value (Preferred)"
* component[Systolic].value[x].unit ^example.valueString = "mmHg"
* component[Systolic].value[x].system 1..
* component[Systolic].value[x].system = "http://unitsofmeasure.org" (exactly)
* component[Systolic].value[x].code 1..
* component[Systolic].value[x].code = #mm[Hg] (exactly)
* component[Diastolic] ^short = "이완기 혈압 측정 정보"
* component[Diastolic] ^alias = "KRCDI: 이완기 혈압"
* component[Diastolic].code.coding[LOINC] ^short = "이완기 혈압 측정"
* component[Diastolic].code.coding[LOINC].system MS
* component[Diastolic].code.coding[LOINC].code = #8462-4 (exactly)
* component[Diastolic].code.coding[LOINC].code MS
* component[Diastolic].code.coding[LOINC].display ^example.label = "Value (Preferred)"
* component[Diastolic].code.coding[LOINC].display ^example.valueString = "Diastolic blood pressure"
* component[Diastolic].value[x] only Quantity
* component[Diastolic].value[x] MS
* component[Diastolic].value[x] ^short = "이완기 혈압 측정 결과"
* component[Diastolic].value[x].value 1..
* component[Diastolic].value[x].value ^short = "측정값"
* component[Diastolic].value[x].unit ^example.label = "Value (Preferred)"
* component[Diastolic].value[x].unit ^example.valueString = "mmHg"
* component[Diastolic].value[x].system 1..
* component[Diastolic].value[x].system = "http://unitsofmeasure.org" (exactly)
* component[Diastolic].value[x].code 1..
* component[Diastolic].value[x].code = #mm[Hg] (exactly)