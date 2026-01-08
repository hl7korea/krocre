Extension: KRCore_TestRequestDateTime_Extension
Id: krcore-testRequestDateTime
Title: "KR Core Test Request DateTime Extension"
Description: """KR Core Test Request DateTime Extension은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 검사의뢰일 정보를 표현하는데 사용되며, 이 경우 아래의 조건에 따라 본 Extension을 적용한다.

※ 사용조건
+ [KR Core DiagnosticReport Profile for Functional Tests](StructureDefinition-krcore-diagnosticreport-function-tests.html)를 적용한 리소스 인스턴스는 **반드시(SHALL)** 본 Extension을 사용해서 기능검사 일자를 표현한다.
+ [KR Core DiagnosticReport Profile for Pathology Results](StructureDefinition-krcore-diagnosticreport-pathology-results.html)를 적용한 리소스 인스턴스는 **반드시(SHALL)** 본 Extension을 사용해서 병리검사 의뢰일을 표현한다.
+ 그 외 FHIR Diagnostic 리소스 인스턴스 내에 검사의뢰일 또는 검사일 정보를 표현하는 경우, **가능한 한(SHOULD)** 본 Extension을 사용한다."""
Context: DiagnosticReport
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension.valueCode = #trial-use
* ^extension.valueCode.extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-conformance-derivedFrom"
* ^extension.valueCode.extension.valueCanonical = "http://www.hl7korea.or.kr/fhir/krcore/ImplementationGuide/hl7.fhir.kr.core"
* ^version = "2.0.0"
* ^date = "2025-08-29T13:39:02+09:00"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "**KR CDI V2 병리검사** 클래스에서 정의한 *병리검사 의뢰일* 항목과 **KR CDI V2 기능검사** 클래스에서 정의한 *기능검사 일자* 항목을 표현하기 위해 정의한 Extension."
* . ^short = "KR Core Test Request DateTime Extension"
* . ^definition = "KR Core Test Request DateTime Extension은 KR Core Server와 KR Core Client가 진료정보를 교류할 때 검사의뢰일 정보를 표현하는데 사용되며, 이 경우 아래의 조건에 따라 본 Extension을 적용한다.\n\n※ 사용조건\n+ [KR Core DiagnosticReport Profile for Functional Tests](StructureDefinition-krcore-diagnosticreport-function-tests.html)를 적용한 리소스 인스턴스는 **반드시(SHALL)** 본 Extension을 사용해서 기능검사 일자를 표현한다.\n+ [KR Core DiagnosticReport Profile for Pathology Results](StructureDefinition-krcore-diagnosticreport-pathology-results.html)를 적용한 리소스 인스턴스는 **반드시(SHALL)** 본 Extension을 사용해서 병리검사 의뢰일을 표현한다.\n+ 그 외 FHIR Diagnostic 리소스 인스턴스 내에 검사의뢰일 또는 검사일 정보를 표현하는 경우, **가능한 한(SHOULD)** 본 Extension을 사용한다."
* value[x] 1.. MS
* value[x] only dateTime