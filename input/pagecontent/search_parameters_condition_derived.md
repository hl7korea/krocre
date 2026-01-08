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
| [category](SearchParameter-krcore-sp-condition-category.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 진단 및 주호소 범주 | Condition.category | MAY |
| [clinical-status](SearchParameter-krcore-sp-condition-clinical-status.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 진단 및 주호소 임상적 상태: active \\| recurrence \\| relapse \\| inactive \\| remission \\| resolved | Condition.clinicalStatus | MAY |
| [code](SearchParameter-krcore-sp-condition-code.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 진단 및 주호소 상태를 식별하는 코드 | Condition.code | SHALL |
| [encounter](SearchParameter-krcore-sp-condition-encounter.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 진단 및 주호소 상태가 속한 수진 | Condition.encounter | MAY |
| [onset-date](SearchParameter-krcore-sp-condition-onset-date.html) | [datetime](http://hl7.org/fhir/r4/search.html#datetime) | 진단 및 주호소 발생일자 | Condition.onset.ofType(dateTime) \| Condition.onset.ofType(Period) | MAY |
| [patient](SearchParameter-krcore-sp-condition-patient.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 진단 및 주호소 상태의 대상 | Condition.subject.where(resolve() is Patient) | SHALL |
| [recorded-date](SearchParameter-krcore-sp-condition-recorded-date.html) | [datetime](http://hl7.org/fhir/r4/search.html#datetime) | 진단 및 주호소 최초 기록일자 또는 진단일자 | Condition.recordedDate | MAY |