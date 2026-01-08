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
| [category](SearchParameter-krcore-sp-diagnosticreport-category.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 진단보고서 범주 | DiagnosticReport.category | SHOULD |
| [code](SearchParameter-krcore-sp-diagnosticreport-code.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 진단보고서 항목을 식별하는 코드 | DiagnosticReport.code | SHALL |
| [issued](SearchParameter-krcore-sp-diagnosticreport-issued.html) | [datetime](http://hl7.org/fhir/r4/search.html#datetime) | 진단 보고 일시 | DiagnosticReport.issued | MAY |
| [patient](SearchParameter-krcore-sp-diagnosticreport-patient.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 진단보고서 대상 환자 | DiagnosticReport.subject.where(resolve() is Patient) | SHALL |
| [performer](SearchParameter-krcore-sp-diagnosticreport-performer.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 진단 책임자 | DiagnosticReport.performer | MAY |
| [result](SearchParameter-krcore-sp-diagnosticreport-result.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 진단보고를 위한 검사 결과 | DiagnosticReport.result | SHOULD |
| [specimen](SearchParameter-krcore-sp-diagnosticreport-specimen.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 본 진단보고에 사용된 검체 | DiagnosticReport.specimen | MAY |
| [status](SearchParameter-krcore-sp-diagnosticreport-status.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 진단보고서 상태 | DiagnosticReport.status | MAY |