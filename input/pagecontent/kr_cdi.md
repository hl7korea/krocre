한국 핵심교류데이터(KR CDI, Korea Core Data for Interoperability)는 의료기관, 공공기관, 민간, 환자 등이 국내에서 의료데이터 교류 시 필요로 하는 최소한의 정보 집합을 포괄적으로 정의한 것으로, 분류(Class), 항목(Element), 항목값(Value set)으로 구성되어 있다.

* 분류(Class): 환자정보, 수술 및 처치정보, 약물정보 등 공통 주제 또는 항목의 집합을 말한다.
* 항목(Element): 성명, 수술명 및 처치명, 약품제품명 등 데이터 교류를 위해 정의한 최소 단위를 말한다.
* 항목값(Value set): 다양하게 사용하는 용어를 동일한 의미로 교류할 수 있도록 일원화한 특정 값, 용어 및 해당 코드의 목록을 말한다.

<br />
KR CDI의 활용 방법은 다음과 같다.

* ‘분류(Class)’는 전체를 활용하거나, 활용사례별로 일부 분류(Class)만을 선택하여 활용할 수 있다. 단, 환자정보는 필수 분류(Class) 이므로 반드시 포함해야 한다.
* ‘항목(Element)’은 필수여부에 따라 다음과 같이 활용한다.
   * ‘필수여부’는 R(Required, 필수), R2(Required if exists, 조건부 필수), O(Optional, 선택)로 구분되며 의미는 다음과 같다.
      * R(Required, 필수): 필수적으로 입력
	  * R2(Required if exists, 조건부 필수): 해당 데이터가 있다면 필수적으로 입력
	  * O(Optional, 선택): 선택적으로 입력
* ‘항목값(Value set)’은 항목별 용어세트 및 필수여부에 따라 다음과 같이 활용한다.
   * ‘용어세트’는 항목에 값을 입력할 때 상호운용성 확보가 가능한 참조 용어체계이다.
   * ‘필수여부’는 필수, 선택으로 구분되며 의미는 다음과 같다.
      * 필수: 필수적으로 명시한 용어분류체계 사용
	  * 선택: 명시한 용어체계를 사용을 권장하지만, Free text 등 다른 용어 사용
* 한국 핵심교류데이터(KR CDI)에 대한 자세한 설명은 [보건의료정보표준관리시스템](http://www.hins.or.kr)을 참고한다.


<br /><br />
아래의 표는 KR CDI 버전과 KR Core Implementation Guide 버전의 관계를 정의한다.
<br />

| KR CDI 버전 | KR Core IG 버전 |
|------|------|
| [KR CDI V1](https://www.law.go.kr/LSW/flDownload.do?flSeq=133244595&flNm=%5B%EB%B3%84%ED%91%9C+1%5D+%ED%95%9C%EA%B5%AD+%ED%95%B5%EC%8B%AC%EA%B5%90%EB%A5%98%EB%8D%B0%EC%9D%B4%ED%84%B0%28%EC%A0%9C3%EC%A1%B0%EC%A0%9C1%ED%95%AD%EC%A0%9C1%ED%98%B8+%EA%B4%80%EB%A0%A8%29&bylClsCd=200201) | [KR Core IG 1.0.2](https://www.hl7korea.or.kr/fhir/krcore/STU1.0.2/index.html) |
| [KR CDI V2](https://www.law.go.kr/flDownload.do?flSeq=146403793&flNm=%5B%EB%B3%84%ED%91%9C+1%5D+%ED%95%9C%EA%B5%AD+%ED%95%B5%EC%8B%AC%EA%B5%90%EB%A5%98%EB%8D%B0%EC%9D%B4%ED%84%B0%28%EC%A0%9C3%EC%A1%B0%EC%A0%9C1%ED%95%AD%EC%A0%9C1%ED%98%B8+%EA%B4%80%EB%A0%A8%29&bylClsCd=200201) | [KR Core IG 2.0.0](https://www.hl7korea.or.kr/fhir/krcore/STU2.0.0/index.html) |

<br /><br />
아래의 표들은 KR CDI의 분류(Class)와 KR Core Profile 간의 관계를 정의한다.
<br />

| 기본정보 | |
|------|------|
| • 환자 정보 | [KR Core Patient Profile](StructureDefinition-krcore-patient.html) <br /> [KR Core Encounter Profile](StructureDefinition-krcore-encounter.html) |
| • 진료의 정보 및 역할 정보 | [KR Core Practitioner Profile for Medical Doctor](StructureDefinition-krcore-medical-doctor.html) <br /> [KR Core PractitionerRole Profile for Medical Doctor](StructureDefinition-krcore-medical-doctor-role.html) |
| • 의료기관 정보 | [KR Core Healthcare Organization Profile](StructureDefinition-krcore-healthcare-organization.html) |
| • 내원 정보 | [KR Core Encounter Profile](StructureDefinition-krcore-encounter.html) |

<br />

| 진료정보 |  |
|------|------|
| • 진단 및 주호소 정보 | [KR Core Condition Profile for Chief Complaint](StructureDefinition-krcore-condition-chief-complaint.html) <br /> [KR Core Condition Profile for Encounter Diagnosis](StructureDefinition-krcore-condition-encounter-diagnosis.html) |
| • 수술 및 처치 정보 | [KR Core Procedure Profile](StructureDefinition-krcore-procedure.html) |
| • 약물 정보 | [KR Core Medication Profile](StructureDefinition-krcore-medication.html) <br /> [KR Core MedicationRequest Profile](StructureDefinition-krcore-medicationrequest.html) |

<br />

| 검사정보 |  |
|------|------|
| • 진단검사 | [KR Core DiagnosticReport Profile for Laboratory Results](StructureDefinition-krcore-diagnosticreport-laboratory-results.html) <br /> [KR Core Observation Profile for Laboratory Result](StructureDefinition-krcore-observation-laboratory-result.html) <br /> [KR Core Specimen Profile](StructureDefinition-krcore-specimen.html) |
| • 병리검사 | [KR Core DiagnosticReport Profile for Pathology Results](StructureDefinition-krcore-diagnosticreport-pathology-results.html) <br />  |
| • 진단영상검사 | [KR Core DiagnosticReport Profile for Diagnostic Imaging](StructureDefinition-krcore-diagnosticreport-diagnostic-imaging.html) <br /> [KR Core ImagingStudy Profile](StructureDefinition-krcore-imagingstudy.html) |
| • 기능검사 | [KR Core DiagnosticReport Profile for Functional Tests](StructureDefinition-krcore-diagnosticreport-function-tests.html) <br /> [KR Core Observation Profile for Functional Test](StructureDefinition-krcore-observation-function-test.html) |

<br />

| 건강정보 |  |
|------|------|
| • 활력징후 및 신체 계측 정보 | [KR Core Observation Profile for Vital Signs](StructureDefinition-krcore-vitalsigns.html) <br /> [KR Core Observation Profile for Vital Signs: Blood Pressure](StructureDefinition-krcore-bloodpressure.html) <br /> [KR Core Observation Profile for Vital Signs: Body Height](StructureDefinition-krcore-bodyheight.html) <br /> [KR Core Observation Profile for Vital Signs: Body Temperature](StructureDefinition-krcore-bodytemperature.html) <br /> [KR Core Observation Profile for Vital Signs: Body Weight](StructureDefinition-krcore-bodyweight.html) <br /> [KR Core Observation Profile for Vital Signs: Heart Rate](StructureDefinition-krcore-heartrate.html) <br /> [KR Core Observation Profile for Vital Signs: Pulse Oximetry](StructureDefinition-krcore-pulseoximetry.html) <br /> [KR Core Observation Profile for Vital Signs: Respiratory Rate](StructureDefinition-krcore-respiratoryrate.html) |
| • 알레르기 불내성 | [KR Core AllergyIntolerance Profile](StructureDefinition-krcore-allergyintolerance.html) |
| • 예방접종 내역 | [KR Core Immunization Profile](StructureDefinition-krcore-immunization.html) |



<style>
	table {
		border-collapse: collapse;
		text-align: left;
		line-height: 1.5;
		border-top: 1px solid #ccc;
		border-bottom: 1px solid #ccc;
		font-size: 30px;
	}
	table thead th {
		font-weight: bold;
		vertical-align: top;
		padding: 10px;
		margin: 20px 10px;
		border-bottom: 1.5px solid #ccc;
        background-color: #eaf4fb;
	}
	table td {
		padding: 10px;
		margin: 20px 10px;
		vertical-align: top;
		border-bottom: 1px solid #ccc;
	}

	/* 👇 추가된 부분 */
	table td:nth-of-type(1) {
		white-space: nowrap;
        overflow: visible;
        word-break: normal;
        overflow-wrap: normal;
        /* font-weight: bold; */
	},
	table td:nth-of-type(2) {
		white-space: nowrap;
        overflow: visible;
        word-break: normal;
        overflow-wrap: normal;
	},
	table th:nth-of-type(1) {
		white-space: nowrap;
        overflow: visible;
        word-break: normal;
        overflow-wrap: normal;
	},
	table th:nth-of-type(2) {
		white-space: nowrap;
        overflow: visible;
        word-break: normal;
        overflow-wrap: normal;
	}
</style>