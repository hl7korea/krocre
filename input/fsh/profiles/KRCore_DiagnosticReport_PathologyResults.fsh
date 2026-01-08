Profile: KRCore_DiagnosticReport_PathologyResults
Parent: DiagnosticReport
Id: krcore-diagnosticreport-pathology-results
Title: "KR Core DiagnosticReport Profile for Pathology Results"
Description: """KR Core DiagnosticReport Profile for Pathology Results는 KR Core Server와 KR Core Client가 진료정보를 교류할 때 병리검사 정보를 표현하는 데 사용되며, 이 경우 **가능한 한(SHOULD)** 본 Profile을 준수해야 한다.
병리검사 정보를 표현할 때 본 Profile을 적용하지 않을 수 있는 경우는 특수한 상황에 한정된다. 이 경우 반드시 해당 진료정보교류 도메인 내에서 사전 합의가 이루어져야 한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^status = #active
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 병리검사** 클래스에서 정의한 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core DiagnosticReport Profile for Pathology Results"
* extension contains KRCore_TestRequestDateTime_Extension named krcore-testRequestDateTime 1..1 MS
* extension[krcore-testRequestDateTime] ^short = "병리검사 의뢰일"
* extension[krcore-testRequestDateTime] ^alias[0] = "KRCDI: 병리검사 의뢰일"
* extension[krcore-testRequestDateTime] ^alias[+] = "user content"
* status MS
* status ^short = "병리검사 보고서 상태: registered | partial | preliminary | final +"
* status ^alias[0] = "KRCDI: 병리검사 상태"
* status ^example.label = "Value (Preferred)"
* status ^example.valueCode = #final
* category from DiagnosticServiceSectionCodes (extensible)
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^short = "진단보고서 범주"
* category ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* category ^binding.extension.valueString = "DiagnosticServiceSection"
* category ^binding.description = "Codes for diagnostic service sections."
* category contains Pathology 1..1
* category[Pathology] = $v2-0074#PAT
* code MS
* code from KR_Core_Pathology_Codes (extensible)
* code ^short = "병리검사 보고서 항목 정보"
* code ^alias[0] = "KRCDI: 병리검사명"
* code.coding.system 1.. MS
* code.coding.code 1.. MS
* subject only Reference(KRCore_Patient)
* subject MS
* subject ^short = "병리검사 대상 환자"
* issued ^short = "병리검사 결과 보고서 발행 일시"
* performer only Reference(KRCore_Practitioner or KRCore_PractitionerRole or KRCore_Organization or CareTeam)
* performer ^short = "병리검사 결과 보고 책임자"
* specimen only Reference(KRCore_Specimen)
* specimen ^short = "검체 정보 참조"
* result MS
* result ^short = "병리검사 결과 정보 참조"
* result ^alias[0] = "KRCDI: 병리검사 결과"
* result ^alias[+] = "Atomic Value"
* result ^alias[+] = "Result"
* result ^alias[+] = "Atomic result"
* result ^alias[+] = "Data"
* result ^alias[+] = "Test"
* result ^alias[+] = "Analyte"
* result ^alias[+] = "Battery"
* result ^alias[+] = "Organizer"
* conclusion ^short = "병리검사 결과 판독 소견"
* conclusionCode ^short = "코드화된 병리검사 결과 판독 소견"