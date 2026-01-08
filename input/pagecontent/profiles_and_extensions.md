### Profiles


KR Core Implementation Guide에서 정의한 KR Core 프로파일들의 목록은 다음과 같다.



#### AllergyIntolerance

* [KR Core AllergyIntolerance Profile](StructureDefinition-krcore-allergyintolerance.html) - **KR CDI V2 알레르기 불내성** 클래스에서 정의한 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.

#### Condition

* [KR Core Condition Profile for Chief Complaint](StructureDefinition-krcore-condition-chief-complaint.html) - **KR CDI V2 진단 및 주호소 정보** 클래스에서 정의한 주호소 정보 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.
* [KR Core Condition Profile for Encounter Diagnosis](StructureDefinition-krcore-condition-encounter-diagnosis.html) - **KR CDI V2 진단 및 주호소 정보** 클래스에서 정의한 진단 정보 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.

#### DiagnosticReport

* [KR Core DiagnosticReport Profile for Diagnostic Imaging](StructureDefinition-krcore-diagnosticreport-diagnostic-imaging.html) - **KR CDI V2 진단영상검사** 클래스에서 정의한 진단 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.
* [KR Core DiagnosticReport Profile for Functional Tests](StructureDefinition-krcore-diagnosticreport-function-tests.html) - **KR CDI V2 기능검사** 클래스에서 정의한 진단 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.
* [KR Core DiagnosticReport Profile for Laboratory Results](StructureDefinition-krcore-diagnosticreport-laboratory-results.html) - **KR CDI V2 진단검사** 클래스에서 정의한 진단 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.
* [KR Core DiagnosticReport Profile for Pathology Results](StructureDefinition-krcore-diagnosticreport-pathology-results.html) - **KR CDI V2 병리검사** 클래스에서 정의한 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.

#### Encounter

* [KR Core Encounter Profile](StructureDefinition-krcore-encounter.html) - **KR CDI V2 내원 정보** 클래스에서 정의한 항목들과 주요 추가 정보를 FHIR Encounter 리소스를 기반으로 구조화하기 위해 정의한 Profile.

#### ImagingStudy

* [KR Core ImagingStudy Profile](StructureDefinition-krcore-imagingstudy.html) - **KR CDI V2 진단영상검사** 클래스에서 정의한 영상검사 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.

#### Immunization

* [KR Core Immunization Profile](StructureDefinition-krcore-immunization.html) - **KR CDI V2 예방접종 내역** 클래스에서 정의한 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.

#### Medication

* [KR Core Medication Profile](StructureDefinition-krcore-medication.html) - **KR CDI V2 약물 정보** 클래스에서 정의한 약품 정보 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.

#### MedicationRequest

* [KR Core MedicationRequest Profile](StructureDefinition-krcore-medicationrequest.html) - **KR CDI V2 약물 정보** 클래스에서 정의한 약품 처방 정보 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.

#### Observation

* [KR Core Observation Profile for Functional Test](StructureDefinition-krcore-observation-function-test.html) - **KR CDI V2 기능검사** 클래스에서 정의한 검사 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.
* [KR Core Observation Profile for Laboratory Result](StructureDefinition-krcore-observation-laboratory-result.html) - **KR CDI V2 진단검사** 클래스에서 정의한 검사 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.
* [KR Core Observation Profile for Vital Signs](StructureDefinition-krcore-vitalsigns.html) - 환자를 대상으로하는 활력 징후 및 신체 계측 정보를 구조화하기 위해 정의한 범용 Profile.
   * [KR Core Observation Profile for Vital Signs: Blood Pressure](StructureDefinition-krcore-bloodpressure.html) - **KR CDI V2 활력 징후 및 신체 계측 정보** 클래스에서 정의한 `수축기 혈압`, `이완기 혈압` 항목과 주요 추가 정보를 구조화하기 위해 정의한 Profile.
   * [KR Core Observation Profile for Vital Signs: Body Height](StructureDefinition-krcore-bodyheight.html) - **KR CDI V2 활력 징후 및 신체 계측 정보** 클래스에서 정의한 `키` 항목과 주요 추가 정보를 구조화하기 위해 정의한 Profile.
   * [KR Core Observation Profile for Vital Signs: Body Temperature](StructureDefinition-krcore-bodytemperature.html) - **KR CDI V2 활력 징후 및 신체 계측 정보** 클래스에서 정의한 `체온` 항목과 주요 추가 정보를 구조화하기 위해 정의한 Profile.
   * [KR Core Observation Profile for Vital Signs: Body Weight](StructureDefinition-krcore-bodyweight.html) - **KR CDI V2 활력 징후 및 신체 계측 정보** 클래스에서 정의한 `몸무게` 항목과 주요 추가 정보를 구조화하기 위해 정의한 Profile.
   * [KR Core Observation Profile for Vital Signs: Heart Rate](StructureDefinition-krcore-heartrate.html) - **KR CDI V2 활력 징후 및 신체 계측 정보** 클래스에서 정의한 `맥박수` 항목과 주요 추가 정보를 구조화하기 위해 정의한 Profile.
   * [KR Core Observation Profile for Vital Signs: Pulse Oximetry](StructureDefinition-krcore-pulseoximetry.html) - **KR CDI V2 활력 징후 및 신체 계측 정보** 클래스에서 정의한 `산소포화도` 항목과 주요 추가 정보를 구조화하기 위해 정의한 Profile.
   * [KR Core Observation Profile for Vital Signs: Respiratory Rate](StructureDefinition-krcore-respiratoryrate.html) - **KR CDI V2 활력 징후 및 신체 계측 정보** 클래스에서 정의한 `호흡수` 항목과 주요 추가 정보를 구조화하기 위해 정의한 Profile.

#### Organization

* [KR Core Organization Profile](StructureDefinition-krcore-organization.html) - 보건의료 서비스 제공 과정에 직접 또는 간접적으로 관여하는 사람의 정보를 구조화하기 위해 정의한 범용 Profile.
   * [KR Core Healthcare Organization Profile](StructureDefinition-krcore-healthcare-organization.html) - **KR CDI V2 의료기관 정보** 클래스에서 정의한 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.

#### Patient

* [KR Core Patient Profile](StructureDefinition-krcore-patient.html) - **KR CDI V2 환자 정보 클래스**에서 정의한 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.

#### Practitioner

* [KR Core Practitioner Profile](StructureDefinition-krcore-practitioner.html) - 보건의료 서비스 제공 과정에 직접 또는 간접적으로 관여하는 사람의 정보를 FHIR Practitioner 리소스를 기반으로 구조화하기 위해 정의한 범용 Profile.
   * [KR Core Practitioner Profile for Medical Doctor](StructureDefinition-krcore-medical-doctor.html) - **KR CDI V2 진료의 정보 및 역할 정보** 클래스에서 정의한 진료의 정보 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.

#### PractitionerRole

* [KR Core PractitionerRole Profile](StructureDefinition-krcore-practitioner-role.html) - 보건의료 서비스 제공 과정에 직접 또는 간접적으로 관여하는 사람의 역할 정보를 구조화하기 위해 정의한 범용 Profile.
   * [KR Core PractitionerRole Profile for Medical Doctor](StructureDefinition-krcore-medical-doctor-role.html) - **KR CDI V2 진료의 정보 및 역할 정보** 클래스에서 정의한 진료의의 역할 정보 관련 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.

#### Procedure

* [KR Core Procedure Profile](StructureDefinition-krcore-procedure.html) - **KR CDI V2 수술 및 처치 정보** 클래스에서 정의한 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.

#### Specimen

* [KR Core Specimen Profile](StructureDefinition-krcore-specimen.html) - **KR CDI V2 검체** 클래스에서 정의한 항목들과 주요 추가 정보를 구조화하기 위해 정의한 Profile.



<br />
### Extensions
KR Core Implementation Guide에서 정의한 KR Core 확장들의 목록은 다음과 같다.


* [KR Core Insurance Types Extension](StructureDefinition-krcore-insuranceTypes.html) - **KR CDI V2 환자 정보** 클래스에서 정의한 *건강보험유형* 항목을 표현하기 위해 정의한 Extension.
* [KR Core Medication Ingredient Extension](StructureDefinition-krcore-medicationIngredient.html) - **KR CDI V2 약물 정보** 클래스에서 정의한 *약품 성분명* 항목을 표현하기 위해 정의한 Extension.
* [KR Core Road Name Address Extension](StructureDefinition-krcore-roadNameAddress.html) - 한국의 도로명 주소 정보를 구조화하기 위해 정의한 범용 Extension.
* [KR Core Test Request DateTime Extension](StructureDefinition-krcore-testRequestDateTime.html) - **KR CDI V2 병리검사** 클래스에서 정의한 *병리검사 의뢰일* 항목과 **KR CDI V2 기능검사** 클래스에서 정의한 *기능검사 일자* 항목을 표현하기 위해 정의한 Extension.
