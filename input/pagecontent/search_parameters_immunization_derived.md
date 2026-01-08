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
| [date](SearchParameter-krcore-sp-immunization-date.html) | [datetime](http://hl7.org/fhir/r4/search.html#datetime) | 예방 접종 일시 | Immunization.occurrence | SHOULD |
| [patient](SearchParameter-krcore-sp-immunization-patient.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 예방 접종 대상 | Immunization.patient | SHALL |
| [status](SearchParameter-krcore-sp-immunization-status.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 예방 접종 상태 | Immunization.status | MAY |
| [vaccine-code](SearchParameter-krcore-sp-immunization-vaccine-code.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 예방접종 식별 코드 | Immunization.vaccineCode | SHALL |