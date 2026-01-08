Profile: KRCore_AllergyIntolerance
Parent: AllergyIntolerance
Id: krcore-allergyintolerance
Title: "KR Core AllergyIntolerance Profile"
Description: """KR Core AllergyIntolerance Profile은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 알레르기 및 불내성 정보를 표현하는 데 사용되며, 이 경우 **가능한 한(SHOULD)** 본 Profile을 준수해야 한다.
알레르기 및 불내성 정보를 표현할 때 본 Profile을 적용하지 않을 수 있는 경우는 특수한 상황에 한정된다. 이 경우 반드시 해당 진료정보교류 도메인 내에서 사전 합의가 이루어져야 한다."""
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^status = #active
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 알레르기 불내성** 클래스에서 정의한 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile."
* . ^short = "KR Core AllergyIntolerance Profile"
* clinicalStatus ^short = "알레르기 및 불내성 상태: active | inactive | resolved"
* category ^short = "알레르기 및 불내성 원인 구분: food | medication | environment | biologic"
* category ^alias[0] = "KRCDI: 원인 구분"
* category ^alias[+] = "Type"
* category ^alias[+] = "Reaction Type"
* category ^alias[+] = "Class"
* code 1.. MS
* code from KR_Core_ATC_Codes (preferred)
* code ^short = "알레르기 및 불내성의 원인 물질 및 증상"
* code ^comment = "기존 AllergyIntolerance.code는 알레르기 및 불내성 원인물질과 증상 등을 표현하는 데 사용할 수 있으나, KR Core에서는 사용 용도를 명확하게 하기 위하여 원인물질만을 표현하도록 사용 범위를 좁힘. 알레르기 및 불내성 증상은 AllergyIntolerance.reaction.manifestation으로 표현."
* code.coding.system 1.. MS
* code.coding.code 1.. MS
* code.text ^short = "알레르기 및 불내성의 원인 물질 및 증상 서술"
* code.text ^alias[0] = "KRCDI: 원인 물질"
* patient only Reference(KRCore_Patient)
* patient MS
* patient ^short = "알레르기 및 불내성 대상 환자"
* onsetDateTime 0..1
* onsetDateTime only dateTime
* onsetDateTime ^sliceName = "onsetDateTime"
* onsetDateTime ^short = "알레르기 및 불내성 발생일"
* onsetDateTime ^alias[0] = "KRCDI: 발생일"
* reaction ^short = "알레르기 및 불내성 반응"
* reaction.manifestation ^short = "알레르기 및 불내성 반응 증상"
* reaction.manifestation.text ^short = "알레르기 및 불내성 반응 증상 서술"
* reaction.manifestation.text ^alias[0] = "KRCDI: 증상"