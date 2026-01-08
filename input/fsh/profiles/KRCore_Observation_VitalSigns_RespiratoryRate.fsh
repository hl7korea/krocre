Profile: KRCore_Observation_VitalSigns_RespiratoryRate
Parent: KRCore_Observation_VitalSigns
Id: krcore-respiratoryrate
Title: "KR Core Observation Profile for Vital Signs: Respiratory Rate"
Description: """본 Profile은 환자를 대상으로 측정한 호흡수를 표현하기 위해 [KR Core Observation Profile for Vital Signs](StructureDefinition-krcore-vitalsigns.html)를
상속하여 정의하였으며, 본 Profile을 만족하는 FHIR 리소스 인스턴스는 자동적으로 KR Core Observation Profile for Vital Signs를 만족한다.


※ 주의사항
+ KR Core Observation Profile for Vital Signs는 **반드시(SHALL)** 수축기 혈압 및 이완기 혈압, 키, 체온, 몸무게, 맥박수, 산소포화도, 호흡수 외 활력징후 및 신체 계측 정보를 표현하기 위한 목적으로만 한정하여 사용한다."""
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 활력 징후 및 신체 계측 정보** 클래스에서 정의한 `호흡수` 항목과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* obeys krcore-obs-01
* . ^short = "KR Core Observation Profile for Vital Signs: Respiratory Rate"
* code MS
* code.coding[LOINC] ^short = "호흡수 측정"
* code.coding[LOINC] ^alias = "호흡수"
* code.coding[LOINC].system MS
* code.coding[LOINC].code = #9279-1 (exactly)
* code.coding[LOINC].code MS
* code.coding[LOINC].display ^example.label = "Value (Preferred)"
* code.coding[LOINC].display ^example.valueString = "Respiratory rate"
* value[x] only Quantity
* value[x] MS
* value[x] ^short = "호흡수 측정 결과"
* value[x].value 1..
* value[x].value ^short = "측정값"
* value[x].unit ^example.label = "Value (Preferred)"
* value[x].unit ^example.valueString = "/min"
* value[x].system 1..
* value[x].system = "http://unitsofmeasure.org" (exactly)
* value[x].code 1..
* value[x].code = #/min (exactly)