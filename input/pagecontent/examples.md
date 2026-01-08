<style>
	table {
		border-collapse: collapse;
		text-align: left;
		line-height: 1.5;
		border-top: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
	}
	table thead th {
		font-weight: bold;
		vertical-align: top;
		padding: 10px;
		margin: 20px 10px;
		border-bottom: 1.5px solid #ccc
	}
	table td {
		padding: 10px;
		margin: 20px 10px;
		vertical-align: top;
		border-bottom: 1px solid #ccc;
	}
</style>

KR Core Implementation Guide에서 정의한 KR Core 프로파일들을 적용한 FHIR 리소스 인스턴스 예제 목록은 다음과 같다.

<br/>
*※ 주의 - 이 예제들은 실제 의료현장에서 사용된 정보들을 토대로 작성되지 않았으며, FHIR 리소스를 구성하는 각 요소들의 사용 방법을 보이기 위한 목적으로 계획된 임의의 정보들을 사용하였다. 따라서 아래 예제들은 각 요소들의 사용 방법을 참조하는 용도로만 사용하고, 문맥이나 컨텐츠는 실제 의료현장의 데이터에 따라 다르게 적용해야 한다.*



### AllergyIntolerance

| 프로파일 | 예제 | 설명 |
|------|------|------|
| [KR Core AllergyIntolerance Profile](StructureDefinition-krcore-allergyintolerance.html) | [krcore-allergyintolerance-example-01](AllergyIntolerance-krcore-allergyintolerance-example-01.html) | 의약품에 대한 알레르기 정보 예제 |
| [KR Core AllergyIntolerance Profile](StructureDefinition-krcore-allergyintolerance.html) | [krcore-allergyintolerance-example-02](AllergyIntolerance-krcore-allergyintolerance-example-02.html) | 의약품에 대한 알레르기 정보 예제 - 상세 |
| [KR Core AllergyIntolerance Profile](StructureDefinition-krcore-allergyintolerance.html) | [krcore-allergyintolerance-example-03](AllergyIntolerance-krcore-allergyintolerance-example-03.html) | 식품에 대한 알레르기 정보 예제 |

### Condition

| 프로파일 | 예제 | 설명 |
|------|------|------|
| [KR Core Condition Profile for Chief Complaint](StructureDefinition-krcore-condition-chief-complaint.html) | [krcore-condition-chief-complaint-example-01](Condition-krcore-condition-chief-complaint-example-01.html) | 주호소 정보 예제 - 하복부 통증 |
| [KR Core Condition Profile for Chief Complaint](StructureDefinition-krcore-condition-chief-complaint.html) | [krcore-condition-chief-complaint-example-02](Condition-krcore-condition-chief-complaint-example-02.html) | 주호소 정보 예제 - 장염 |
| [KR Core Condition Profile for Encounter Diagnosis](StructureDefinition-krcore-condition-encounter-diagnosis.html) | [krcore-condition-encounter-diagnosis-example-01](Condition-krcore-condition-encounter-diagnosis-example-01.html) | 진단 정보 예제 - 요관의 결석 |
| [KR Core Condition Profile for Encounter Diagnosis](StructureDefinition-krcore-condition-encounter-diagnosis.html) | [krcore-condition-encounter-diagnosis-example-02](Condition-krcore-condition-encounter-diagnosis-example-02.html) | 진단 정보 예제 - 장염 |

### DiagnosticReport

| 프로파일 | 예제 | 설명 |
|------|------|------|
| [KR Core DiagnosticReport Profile for Diagnostic Imaging](StructureDefinition-krcore-diagnosticreport-diagnostic-imaging.html) | [krcore-diagnosticreport-diagnostic-imaging-example-01](DiagnosticReport-krcore-diagnosticreport-diagnostic-imaging-example-01.html) | 진단영상검사-초음파검사 정보 예제 |
| [KR Core DiagnosticReport Profile for Diagnostic Imaging](StructureDefinition-krcore-diagnosticreport-diagnostic-imaging.html) | [krcore-diagnosticreport-diagnostic-imaging-example-02](DiagnosticReport-krcore-diagnosticreport-diagnostic-imaging-example-02.html) | 진단영상검사-핵의학검사 정보 예제 |
| [KR Core DiagnosticReport Profile for Functional Tests](StructureDefinition-krcore-diagnosticreport-function-tests.html) | [krcore-diagnosticreport-function-test-example-01](DiagnosticReport-krcore-diagnosticreport-function-test-example-01.html) | 기능검사 정보 예제 |
| [KR Core DiagnosticReport Profile for Laboratory Results](StructureDefinition-krcore-diagnosticreport-laboratory-results.html) | [krcore-diagnosticreport-laboratory-results-example-01](DiagnosticReport-krcore-diagnosticreport-laboratory-results-example-01.html) | 진단검사 정보 예제 |
| [KR Core DiagnosticReport Profile for Laboratory Results](StructureDefinition-krcore-diagnosticreport-laboratory-results.html) | [krcore-diagnosticreport-laboratory-results-example-02](DiagnosticReport-krcore-diagnosticreport-laboratory-results-example-02.html) | 진단검사-핵의학검사 정보 예제 |
| [KR Core DiagnosticReport Profile for Pathology Results](StructureDefinition-krcore-diagnosticreport-pathology-results.html) | [krcore-diagnosticreport-pathology-results-example-01](DiagnosticReport-krcore-diagnosticreport-pathology-results-example-01.html) | 병리검사 정보 예제 |

### Encounter

| 프로파일 | 예제 | 설명 |
|------|------|------|
| [KR Core Encounter Profile](StructureDefinition-krcore-encounter.html) | [krcore-encounter-example-01](Encounter-krcore-encounter-example-01.html) | 진료 정보 예제 - 외래 |
| [KR Core Encounter Profile](StructureDefinition-krcore-encounter.html) | [krcore-encounter-example-02](Encounter-krcore-encounter-example-02.html) | 진료 정보 예제 - 내원 |

### ImagingStudy

| 프로파일 | 예제 | 설명 |
|------|------|------|
| [KR Core ImagingStudy Profile](StructureDefinition-krcore-imagingstudy.html) | [krcore-imagingstudy-example-01](ImagingStudy-krcore-imagingstudy-example-01.html) | 진단영상검사 초음파 영상 정보 예제 |
| [KR Core ImagingStudy Profile](StructureDefinition-krcore-imagingstudy.html) | [krcore-imagingstudy-example-02](ImagingStudy-krcore-imagingstudy-example-02.html) | 진단영상검사 핵의학검사 영상 정보 예제 |

### Immunization

| 프로파일 | 예제 | 설명 |
|------|------|------|
| [KR Core Immunization Profile](StructureDefinition-krcore-immunization.html) | [krcore-immunization-example-01](Immunization-krcore-immunization-example-01.html) | 인플루엔자 예방 접종 정보 예제 |
| [KR Core Immunization Profile](StructureDefinition-krcore-immunization.html) | [krcore-immunization-example-02](Immunization-krcore-immunization-example-02.html) | B형간염 예방 접종 정보 예제 |

### Medication

| 프로파일 | 예제 | 설명 |
|------|------|------|
| [KR Core Medication Profile](StructureDefinition-krcore-medication.html) | [krcore-medication-example-01](Medication-krcore-medication-example-01.html) | 간단한 약품 정보 예제 |
| [KR Core Medication Profile](StructureDefinition-krcore-medication.html) | [krcore-medication-example-02](Medication-krcore-medication-example-02.html) | 다양한 성분 정보를 포함한 약품 정보 예제 |
| [KR Core Medication Profile](StructureDefinition-krcore-medication.html) | [krcore-medication-example-03](Medication-krcore-medication-example-03.html) | 간단한 약품 정보 예제 (약품성분명을 모르는 경우) |

### MedicationRequest

| 프로파일 | 예제 | 설명 |
|------|------|------|
| [KR Core MedicationRequest Profile](StructureDefinition-krcore-medicationrequest.html) | [krcore-medicationrequest-example-01](MedicationRequest-krcore-medicationrequest-example-01.html) | 약품 처방 정보 예제 - medicationReference 사용 |
| [KR Core MedicationRequest Profile](StructureDefinition-krcore-medicationrequest.html) | [krcore-medicationrequest-example-02](MedicationRequest-krcore-medicationrequest-example-02.html) | 약품 처방 정보 예제 - medicationCodeableConcept 사용 |
| [KR Core MedicationRequest Profile](StructureDefinition-krcore-medicationrequest.html) | [krcore-medicationrequest-example-03](MedicationRequest-krcore-medicationrequest-example-03.html) | 다양한 성분 정보를 포함한 약품 처방 정보 예제 - medicationCodeableConcept 사용 |
| [KR Core MedicationRequest Profile](StructureDefinition-krcore-medicationrequest.html) | [krcore-medicationrequest-example-04](MedicationRequest-krcore-medicationrequest-example-04.html) | 약품 처방 정보 예제 (약품성분명을 모르는 경우) - medicationCodeableConcept 사용 |

### Observation

| 프로파일 | 예제 | 설명 |
|------|------|------|
| [KR Core Observation Profile for Functional Test](StructureDefinition-krcore-observation-function-test.html) | [krcore-observation-function-test-example-01](Observation-krcore-observation-function-test-example-01.html) | 기능검사 결과 정보 예제 |
| [KR Core Observation Profile for Laboratory Result](StructureDefinition-krcore-observation-laboratory-result.html) | [krcore-observation-laboratory-result-example-01](Observation-krcore-observation-laboratory-result-example-01.html) | CBC 검사 결과 정보 예제 |
| [KR Core Observation Profile for Laboratory Result](StructureDefinition-krcore-observation-laboratory-result.html) | [krcore-observation-laboratory-result-example-02](Observation-krcore-observation-laboratory-result-example-02.html) | 유방암 검사 결과 정보 예제 |
| [KR Core Observation Profile for Laboratory Result](StructureDefinition-krcore-observation-laboratory-result.html) | [krcore-observation-laboratory-result-example-03](Observation-krcore-observation-laboratory-result-example-03.html) | 혈청 검사 결과 정보 예제 |
| [KR Core Observation Profile for Vital Signs](StructureDefinition-krcore-vitalsigns.html) | [krcore-observation-vs-headcircumference-example-01](Observation-krcore-observation-vs-headcircumference-example-01.html) | 머리둘레 측정 결과 예제 |
| [KR Core Observation Profile for Vital Signs: Blood Pressure](StructureDefinition-krcore-bloodpressure.html) | [krcore-observation-vs-bloodpressure-example-01](Observation-krcore-observation-vs-bloodpressure-example-01.html) | 혈압측정 결과 예제 |
| [KR Core Observation Profile for Vital Signs: Blood Pressure](StructureDefinition-krcore-bloodpressure.html) | [krcore-observation-vs-bloodpressure-example-02](Observation-krcore-observation-vs-bloodpressure-example-02.html) | 혈압측정 결과 예제 - 평균동맥압 포함 |
| [KR Core Observation Profile for Vital Signs: Body Height](StructureDefinition-krcore-bodyheight.html) | [krcore-bodyheight-example-01](Observation-krcore-bodyheight-example-01.html) | 신장 측정 결과 예제 |
| [KR Core Observation Profile for Vital Signs: Body Temperature](StructureDefinition-krcore-bodytemperature.html) | [krcore-bodytemperature-example-01](Observation-krcore-bodytemperature-example-01.html) | 체온 측정 결과 예제 |
| [KR Core Observation Profile for Vital Signs: Body Weight](StructureDefinition-krcore-bodyweight.html) | [krcore-bodyweight-example-01](Observation-krcore-bodyweight-example-01.html) | 체중 측정 결과 예제 |
| [KR Core Observation Profile for Vital Signs: Heart Rate](StructureDefinition-krcore-heartrate.html) | [krcore-heartrate-example-01](Observation-krcore-heartrate-example-01.html) | 맥박수 측정 결과 예제 |
| [KR Core Observation Profile for Vital Signs: Pulse Oximetry](StructureDefinition-krcore-pulseoximetry.html) | [krcore-pulseoximetry-example-01](Observation-krcore-pulseoximetry-example-01.html) | 맥박산소포화도 측정 결과 예제 |
| [KR Core Observation Profile for Vital Signs: Respiratory Rate](StructureDefinition-krcore-respiratoryrate.html) | [krcore-respiratoryrate-example-01](Observation-krcore-respiratoryrate-example-01.html) | 호흡수 측정 결과 예제 |

### Organization

| 프로파일 | 예제 | 설명 |
|------|------|------|
| [KR Core Healthcare Organization Profile](StructureDefinition-krcore-healthcare-organization.html) | [krcore-healthcare-organization-example-01](Organization-krcore-healthcare-organization-example-01.html) | 상급종합병원 정보 예제 |
| [KR Core Organization Profile](StructureDefinition-krcore-organization.html) | [krcore-organization-example-01](Organization-krcore-organization-example-01.html) | 비요양기관 예제 |
| [KR Core Organization Profile](StructureDefinition-krcore-organization.html) | [krcore-organization-example-02](Organization-krcore-organization-example-02.html) | 병원내 부서 예제 |

### Patient

| 프로파일 | 예제 | 설명 |
|------|------|------|
| [KR Core Patient Profile](StructureDefinition-krcore-patient.html) | [krcore-patient-example-01](Patient-krcore-patient-example-01.html) | 환자 정보 예제 01 |
| [KR Core Patient Profile](StructureDefinition-krcore-patient.html) | [krcore-patient-example-02](Patient-krcore-patient-example-02.html) | 환자 정보 예제 02 |
| [KR Core Patient Profile](StructureDefinition-krcore-patient.html) | [krcore-patient-example-03](Patient-krcore-patient-example-03.html) | 환자 정보 예제 - 개인정보보호 |
| [KR Core Patient Profile](StructureDefinition-krcore-patient.html) | [krcore-patient-example-04](Patient-krcore-patient-example-04.html) | 환자 정보 예제 - 신원미확인 |

### Practitioner

| 프로파일 | 예제 | 설명 |
|------|------|------|
| [KR Core Practitioner Profile](StructureDefinition-krcore-practitioner.html) | [krcore-nurse-example-01](Practitioner-krcore-nurse-example-01.html) | 간호사 정보 예제 |
| [KR Core Practitioner Profile](StructureDefinition-krcore-practitioner.html) | [krcore-paramedic-example-01](Practitioner-krcore-paramedic-example-01.html) | 응급구조사 정보 예제 |
| [KR Core Practitioner Profile for Medical Doctor](StructureDefinition-krcore-medical-doctor.html) | [krcore-medicaldoctor-example-01](Practitioner-krcore-medicaldoctor-example-01.html) | 진료의 정보 예제 01 |
| [KR Core Practitioner Profile for Medical Doctor](StructureDefinition-krcore-medical-doctor.html) | [krcore-medicaldoctor-example-02](Practitioner-krcore-medicaldoctor-example-02.html) | 진료의 정보 예제 02 - 개인정보보호 |

### PractitionerRole

| 프로파일 | 예제 | 설명 |
|------|------|------|
| [KR Core PractitionerRole Profile](StructureDefinition-krcore-practitioner-role.html) | [krcore-nurserole-example-01](PractitionerRole-krcore-nurserole-example-01.html) | 간호사 역할 정보 예제 |
| [KR Core PractitionerRole Profile](StructureDefinition-krcore-practitioner-role.html) | [krcore-paramedicrole-example-01](PractitionerRole-krcore-paramedicrole-example-01.html) | 응급구조사 역할 정보 예제 |
| [KR Core PractitionerRole Profile for Medical Doctor](StructureDefinition-krcore-medical-doctor-role.html) | [krcore-medicaldoctorrole-example-01](PractitionerRole-krcore-medicaldoctorrole-example-01.html) | 진료의 역할 정보 예제 01 |
| [KR Core PractitionerRole Profile for Medical Doctor](StructureDefinition-krcore-medical-doctor-role.html) | [krcore-medicaldoctorrole-example-02](PractitionerRole-krcore-medicaldoctorrole-example-02.html) | 진료의 역할 정보 예제 02 |

### Procedure

| 프로파일 | 예제 | 설명 |
|------|------|------|
| [KR Core Procedure Profile](StructureDefinition-krcore-procedure.html) | [krcore-procedure-example-01](Procedure-krcore-procedure-example-01.html) | 체외충격파쇄석술(비수술) 예제 |
| [KR Core Procedure Profile](StructureDefinition-krcore-procedure.html) | [krcore-procedure-example-02](Procedure-krcore-procedure-example-02.html) | 제왕 절개 수술 |
| [KR Core Procedure Profile](StructureDefinition-krcore-procedure.html) | [krcore-procedure-example-03](Procedure-krcore-procedure-example-03.html) | 제왕 절개 수술의 일부로 수행된 마취 |

### Specimen

| 프로파일 | 예제 | 설명 |
|------|------|------|
| [KR Core Specimen Profile](StructureDefinition-krcore-specimen.html) | [krcore-specimen-example-01](Specimen-krcore-specimen-example-01.html) | 검체 - 혈청 정보 예제 |
| [KR Core Specimen Profile](StructureDefinition-krcore-specimen.html) | [krcore-specimen-example-02](Specimen-krcore-specimen-example-02.html) | 검체 - 모세혈관 혈액 정보 예제 |
