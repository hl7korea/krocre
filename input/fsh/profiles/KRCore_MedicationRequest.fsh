Profile: KRCore_MedicationRequest
Parent: MedicationRequest
Id: krcore-medicationrequest
Title: "KR Core MedicationRequest Profile"
Description: """KR Core MedicationRequest Profile은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 약품 처방 정보를 표현하는 데 사용되며, 이 경우 **가능한 한(SHOULD)** 본 Profile을 준수해야 한다.
약품 처방 정보를 표현할 때 본 Profile을 적용하지 않을 수 있는 경우는 특수한 상황에 한정된다. 이 경우 반드시 해당 진료정보교류 도메인 내에서 사전 합의가 이루어져야 한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^status = #active
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 약물 정보** 클래스에서 정의한 약품 처방 정보 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core MedicationRequest Profile"
* status MS
* status ^short = "처방 상태: active | on-hold | cancelled | completed | entered-in-error | stopped | draft | unknown"
* status ^alias[0] = "KRCDI: 처방 상태"
* status ^example.label = "Value (Preferred)"
* status ^example.valueCode = #completed
* intent MS
* intent ^short = "처방 의도: order | proposal | plan +"
* intent ^alias[0] = "KRCDI: 처방 의도"
* intent ^example.label = "Value (Preferred)"
* intent ^example.valueCode = #order
* medication[x] MS
* medication[x] ^short = "처방 약품 정보"
* medicationReference 0..1 MS
* medicationReference only Reference(KRCore_Medication)
* medicationReference ^sliceName = "medicationReference"
* medicationReference ^short = "약품 정보 참조"
* medicationReference ^alias[0] = "KRCDI: 약품 제품명, 약품 성분명"
* medicationCodeableConcept 0..1 MS
* medicationCodeableConcept only CodeableConcept
* medicationCodeableConcept from KR_Core_EDI_Medication_Codes (extensible)
* medicationCodeableConcept ^sliceName = "medicationCodeableConcept"
* medicationCodeableConcept ^short = "약품 제품 정보"
* medicationCodeableConcept ^alias[0] = "KRCDI: 약품 제품명"
* medicationCodeableConcept.extension contains KRCore_MedicationIngredient_Extension named krcore-medicationIngredient 1..* MS
* medicationCodeableConcept.extension[krcore-medicationIngredient] ^short = "약품 성분명"
* medicationCodeableConcept.extension[krcore-medicationIngredient] ^alias[0] = "KRCDI: 약품 성분명"
* medicationCodeableConcept.extension[krcore-medicationIngredient] ^alias[+] = "user content"
* medicationCodeableConcept.coding.system 1.. MS
* medicationCodeableConcept.coding.code 1.. MS
* medicationCodeableConcept.coding.display 1.. MS
* subject only Reference(KRCore_Patient)
* subject MS
* subject ^short = "처방 대상"
* authoredOn ^short = "처방 일시"
* dosageInstruction 1.. MS
* dosageInstruction ^short = "약물 투여 및 복용 지침"
* dosageInstruction.text MS
* dosageInstruction.text ^short = "용법"
* dosageInstruction.text ^alias[0] = "KRCDI: 용법"
* dosageInstruction.timing MS
* dosageInstruction.timing ^short = "약품 투여 및 복용 일정"
* dosageInstruction.timing.repeat MS
* dosageInstruction.timing.repeat ^short = "약품 투여 및 복용 반복 정보"
* dosageInstruction.timing.repeat ^alias[0] = "KRCDI: 복용 횟수"
* dosageInstruction.timing.repeat.frequency MS
* dosageInstruction.timing.repeat.frequency ^short = "주기 당 약품 투여 및 복용 횟수"
* dosageInstruction.timing.repeat.period MS
* dosageInstruction.timing.repeat.period ^short = "약품 투여 및 복용 주기 수치"
* dosageInstruction.timing.repeat.periodUnit MS
* dosageInstruction.timing.repeat.periodUnit from http://hl7.org/fhir/ValueSet/units-of-time|4.0.1 (required)
* dosageInstruction.timing.repeat.periodUnit ^short = "약품 투여 및 복용 주기 단위: s | min | h | d | wk | mo | a"
* dosageInstruction.doseAndRate 1.. MS
* dosageInstruction.doseAndRate ^short = "투여 및 복용량"
* dosageInstruction.doseAndRate.dose[x] 1.. MS
* dosageInstruction.doseAndRate.dose[x] ^short = "1회량, 1회량 단위"
* dosageInstruction.doseAndRate.dose[x] ^alias[0] = "KRCDI: 1회량, 1회량 단위"
* dosageInstruction.doseAndRate.doseQuantity 0..1 MS
* dosageInstruction.doseAndRate.doseQuantity only SimpleQuantity
* dosageInstruction.doseAndRate.doseQuantity from UCUMCodes (preferred)
* dosageInstruction.doseAndRate.doseQuantity ^sliceName = "doseQuantity"
* dosageInstruction.doseAndRate.doseQuantity ^short = "단위를 포함한 투여 및 복용량"
* dosageInstruction.doseAndRate.doseRange 0..1 MS
* dosageInstruction.doseAndRate.doseRange only Range
* dosageInstruction.doseAndRate.doseRange ^sliceName = "doseRange"
* dosageInstruction.doseAndRate.doseRange ^short = "범위로 지정된 투여 및 복용량"
* dosageInstruction.doseAndRate.doseRange.low from UCUMCodes (preferred)
* dosageInstruction.doseAndRate.doseRange.low ^short = "최소"
* dosageInstruction.doseAndRate.doseRange.high from UCUMCodes (preferred)
* dosageInstruction.doseAndRate.doseRange.high ^short = "최대"
* dispenseRequest MS
* dispenseRequest ^short = "처방 요청"
* dispenseRequest.quantity from UCUMCodes (preferred)
* dispenseRequest.quantity ^short = "단위를 포함한 처방 총량"
* dispenseRequest.quantity ^alias[0] = "KRCDI: 총량, 총량 단위"
* dispenseRequest.expectedSupplyDuration MS
* dispenseRequest.expectedSupplyDuration ^short = "처방 기간: s | min | h | d | wk | mo | a"
* dispenseRequest.expectedSupplyDuration ^alias[0] = "KRCDI: 처방 일수"
* dispenseRequest.expectedSupplyDuration.code from http://hl7.org/fhir/ValueSet/units-of-time|4.0.1 (required)
* dispenseRequest.expectedSupplyDuration.code ^short = "처방 기간 단위 코드"
* dispenseRequest.expectedSupplyDuration.code ^example.label = "Value (Preferred)"
* dispenseRequest.expectedSupplyDuration.code ^example.valueCode = #d
* dispenseRequest.expectedSupplyDuration.code ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* dispenseRequest.expectedSupplyDuration.code ^binding.extension.valueString = "UnitsOfTime"