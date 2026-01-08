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
| [request-date](SearchParameter-krcore-sp-diagnosticreport-request-date.html) | [datetime](http://hl7.org/fhir/r4/search.html#datetime) | 진단을 위한 검사 의뢰일 | DiagnosticReport.extension('http://www.hl7korea.or.kr/fhir/krcore/StructureDefinition/krcore-testRequestDateTime').value.ofType(dateTime) | MAY |
| [study](SearchParameter-krcore-sp-diagnosticreport-study.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 진단보고를 위한 진단영상 | DiagnosticReport.imagingStudy | MAY |