Instance: krcore-sp-observation-value-date
InstanceOf: SearchParameter
Usage: #definition
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* extension[=].valueCode = #MAY
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/note"
* extension[=].valueAnnotation.text = "KR Core Client는 **반드시(SHALL)** *second* + *time offset* 수준의 정확도를 가지는 값을 제공해야 한다. KR Core Server는 **반드시(SHALL)** *second* + *time offset* 수준의 정확도를 가지는 값을 지원해야 한다."
* url = "http://www.hl7korea.or.kr/fhir/krcore/SearchParameter/krcore-sp-observation-value-date"
* version = "2.0.0"
* name = "KRCoreSearchParameterObservationValueDate"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Observation-value-date"
* status = #active
* experimental = false
* date = "2025-08-29T13:39:02+09:00"
* publisher = "HL7 Korea"
* description = "dateTime 또는 Period 자료형으로 표현된 측정값"
* jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* code = #value-date
* base = #Observation
* type = #date
* expression = "Observation.value.ofType(dateTime) | Observation.value.ofType(Period)"
* multipleOr = true
* multipleOr.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleOr.extension.valueCode = #MAY
* multipleAnd = true
* multipleAnd.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* multipleAnd.extension.valueCode = #MAY
* comparator[0] = #eq
* comparator[+] = #ne
* comparator[+] = #gt
* comparator[+] = #ge
* comparator[+] = #lt
* comparator[+] = #le
* comparator[+] = #sa
* comparator[+] = #eb
* comparator[+] = #ap
* comparator[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* comparator[=].extension.valueCode = #MAY
* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* comparator[=].extension.valueCode = #MAY
* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* comparator[=].extension.valueCode = #MAY
* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* comparator[=].extension.valueCode = #MAY
* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* comparator[=].extension.valueCode = #MAY
* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* comparator[=].extension.valueCode = #MAY
* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* comparator[=].extension.valueCode = #MAY
* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* comparator[=].extension.valueCode = #MAY
* comparator[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* comparator[=].extension.valueCode = #MAY