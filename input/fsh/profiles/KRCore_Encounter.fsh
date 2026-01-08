Profile: KRCore_Encounter
Parent: Encounter
Id: krcore-encounter
Title: "KR Core Encounter Profile"
Description: """KR Core Encounter Profile은 KR Core Server와 KR Core Client가 진료정보를 교류할 때, 환자와 의사 간의 대면, 접촉, 만남, 혹은 의료 서비스 과정 전체에 대한 시간적·공간적 정보를 표현하는 데 사용되며, 이 경우 **가능한 한(SHOULD)** 본 Profile을 준수해야 한다.
진료 정보를 표현할 때 본 Profile을 적용하지 않을 수 있는 경우는 특수한 상황에 한정된다. 이 경우 반드시 해당 진료정보교류 도메인 내에서 사전 합의가 이루어져야 한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^status = #active
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 내원 정보** 클래스에서 정의한 항목들과 주요 추가 정보를 FHIR Encounter 리소스를 기반으로 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core Encounter Profile"
* extension contains KRCore_InsuranceTypes_Extension named krcore-insuranceTypes 0..1
* extension[krcore-insuranceTypes] ^alias[0] = "KRCDI: 건강보험유형"
* extension[krcore-insuranceTypes] ^alias[+] = "user content"
* status MS
* status ^short = "진료 상태: planned | arrived | triaged | in-progress | onleave | finished | cancelled +"
* status ^alias[0] = "KRCDI: 내원 상태"
* status ^example.label = "Value (Preferred)"
* status ^example.valueCode = #finished
* class MS
* class from $v3-ActEncounterCode (required)
* class ^short = "진료 구분: AMB | EMER | IMP +"
* class ^alias[0] = "KRCDI: 진료 구분"
* class ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* class ^binding.extension.valueString = "EncounterClass"
* class ^binding.description = "Classification of the encounter."
* class.system 1.. MS
* class.system ^short = "진료 구분 코드체계 식별자"
* class.code 1.. MS
* class.code ^short = "진료 구분 코드"
* subject only Reference(KRCore_Patient)
* subject MS
* subject ^short = "진료 대상 환자"
* participant ^short = "진료 참여 의료인"
* participant.individual only Reference(KRCore_Practitioner_MedicalDoctor or KRCore_Practitioner or KRCore_PractitionerRole_MedicalDoctor or KRCore_PractitionerRole or RelatedPerson)
* participant.individual ^short = "진료 참여 의료인 인적사항 또는 역할"
* period MS
* period ^short = "진료 기간"
* period ^alias[0] = "KRCDI: 내원 기간"
* period.start MS
* period.start ^short = "시작 일시"
* period.start ^alias[0] = "KRCDI: 시작 일자"
* period.end MS
* period.end ^short = "종료 일시"
* period.end ^alias[0] = "KRCDI: 종료 일자"
* serviceProvider only Reference(KRCore_HealthcareOrganization or KRCore_Organization)
* serviceProvider ^short = "진료 기관"