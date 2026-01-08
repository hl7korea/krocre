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
	table th:nth-of-type(3) {
		width: 1500px;
	}
</style>

| Name | Type | Description | Expression | Expectations |
|----|----|----|----|----|
| [modality](SearchParameter-krcore-sp-imagingstudy-modality.html) | [token](http://hl7.org/fhir/r4/search.html#token) | DICOM 촬영 장비 | ImagingStudy.series.modality | MAY |
| [patient](SearchParameter-krcore-sp-imagingstudy-patient.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 진단영상 대상 환자 | ImagingStudy.subject.where(resolve() is Patient) | SHALL |
| [series](SearchParameter-krcore-sp-imagingstudy-series.html) | [token](http://hl7.org/fhir/r4/search.html#token) | DICOM Series UID | ImagingStudy.series.uid | MAY |
| [started](SearchParameter-krcore-sp-imagingstudy-started.html) | [datetime](http://hl7.org/fhir/r4/search.html#datetime) | 진단영상 촬영 시작 날짜 | ImagingStudy.started | MAY |
| [status](SearchParameter-krcore-sp-imagingstudy-status.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 진단영상 상태 | ImagingStudy.status | MAY |