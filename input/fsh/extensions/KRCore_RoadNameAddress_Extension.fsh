Extension: KRCore_RoadNameAddress_Extension
Id: krcore-roadNameAddress
Title: "KR Core Road Name Address Extension"
Description: "KR Core Road Name Address Extension은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 한국의 도로명 주소 정보를 표현하는데 사용되며, 이 경우 **가능한 한(SHOULD)** 본 Extension을 적용한다."
Context: Address
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "한국의 도로명 주소 정보를 구조화하기 위해 정의한 범용 Extension."
* . ^short = "KR Core Road Name Address Extension"
* . ^definition = "KR Core Road Name Address Extension은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 한국의 도로명 주소 정보를 표현하는데 사용되며, 이 경우 **가능한 한(SHOULD)** 본 Extension을 적용한다."
* extension contains
    district 1..1 and
    roadName 1..1 and
    detailedAddress 1..1 and
    complements 0..1
* extension[district] ^short = "행정구역"
* extension[district].value[x] 1..
* extension[district].value[x] only string
* extension[roadName] ^short = "도로명"
* extension[roadName].value[x] 1..
* extension[roadName].value[x] only string
* extension[detailedAddress] ^short = "상세주소"
* extension[detailedAddress].value[x] 1..
* extension[detailedAddress].value[x] only string
* extension[complements] ^short = "참고항목"
* extension[complements].value[x] 1..
* extension[complements].value[x] only string