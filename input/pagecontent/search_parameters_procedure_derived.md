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
| [category](SearchParameter-krcore-sp-procedure-category.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 수술 및 처치 범주 | Procedure.category | MAY |
| [code](SearchParameter-krcore-sp-procedure-code.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 수술 및 처치 식별 코드 | Procedure.code | SHOULD |
| [date](SearchParameter-krcore-sp-procedure-date.html) | [datetime](http://hl7.org/fhir/r4/search.html#datetime) | 수술 및 처치 수행 일시 | Procedure.performed | SHOULD |
| [patient](SearchParameter-krcore-sp-procedure-patient.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 수술 및 처치 대상 환자 | Procedure.subject.where(resolve() is Patient) | SHALL |
| [status](SearchParameter-krcore-sp-procedure-status.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 수술 및 처치 상태:	preparation \\| in-progress \\| not-done \\| on-hold \\| stopped \\| completed \\| entered-in-error \\| unknown | Procedure.status | MAY |