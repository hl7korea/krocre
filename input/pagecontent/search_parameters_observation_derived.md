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
| [category](SearchParameter-krcore-sp-observation-category.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 관찰 및 측정 범주 | Observation.category | SHOULD |
| [code](SearchParameter-krcore-sp-observation-code.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 관찰 및 측정의 유형 | Observation.code | MAY |
| [code-value-concept](SearchParameter-krcore-sp-observation-code-value-concept.html) | [composite](http://hl7.org/fhir/r4/search.html#composite) | 관찰 및 측정의 유형과 CodeableConcept 자료형으로 표현된 측정값 쌍 | On Observation:<br />&nbsp;code: code<br />&nbsp;value-concept: value.ofType(CodeableConcept) | MAY |
| [code-value-date](SearchParameter-krcore-sp-observation-code-value-date.html) | [composite](http://hl7.org/fhir/r4/search.html#composite) | 관찰 및 측정의 유형과 date/time 자료형으로 표현된 측정값 쌍 | On Observation:<br />&nbsp;code: code<br />&nbsp;value-date: value.ofType(DateTime) \| value.ofType(Period) | MAY |
| [code-value-quantity](SearchParameter-krcore-sp-observation-code-value-quantity.html) | [composite](http://hl7.org/fhir/r4/search.html#composite) | 관찰 및 측정의 유형과 quantity 자료형으로 표현된 측정값 쌍 | On Observation:<br />&nbsp;code: code<br />&nbsp;value-quantity: value.ofType(Quantity) | MAY |
| [code-value-string](SearchParameter-krcore-sp-observation-code-value-string.html) | [composite](http://hl7.org/fhir/r4/search.html#composite) | 관찰 및 측정의 유형과 string 자료형으로 표현된 측정값 쌍 | On Observation:<br />&nbsp;code: code<br />&nbsp;value-string: value.ofType(string) | MAY |
| [component-code](SearchParameter-krcore-sp-observation-component-code.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 세부 관찰 및 측정의 유형 | Observation.component.code | MAY |
| [component-code-value-concept](SearchParameter-krcore-sp-observation-component-code-value-concept.html) | [composite](http://hl7.org/fhir/r4/search.html#composite) | 세부 관찰 및 측정의 유형과 CodeableConcept 자료형으로 표현된 세부 관찰 및 측정값 쌍 | On Observation.component:<br />&nbsp;component-code: code<br />&nbsp;component-value-concept: value.ofType(CodeableConcept) | MAY |
| [component-code-value-quantity](SearchParameter-krcore-sp-observation-component-code-value-quantity.html) | [composite](http://hl7.org/fhir/r4/search.html#composite) | 세부 관찰 및 측정의 유형과 Quantity 자료형으로 표현된 세부 관찰 및 측정값 쌍 | On Observation.component:<br />&nbsp;component-code: code<br />&nbsp;component-value-quantity: value.ofType(Quantity) | MAY |
| [component-data-absent-reason](SearchParameter-krcore-sp-observation-component-data-absent-reason.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 세부 관찰 및 측정 결과(Observation.component.value[x]) 부재 사유 | Observation.component.dataAbsentReason | MAY |
| [component-value-concept](SearchParameter-krcore-sp-observation-component-value-concept.html) | [token](http://hl7.org/fhir/r4/search.html#token) | CodeableConcept 자료형으로 표현된 세부 관찰 및 측정값 | Observation.component.value.ofType(CodeableConcept) | MAY |
| [component-value-quantity](SearchParameter-krcore-sp-observation-component-value-quantity.html) | [quantity](http://hl7.org/fhir/r4/search.html#quantity) | Quantity 또는 SampledData 자료형으로 표현된 세부 관찰 및 측정값 | Observation.component.value.ofType(Quantity) \| Observation.component.value.ofType(SampledData) | MAY |
| [data-absent-reason](SearchParameter-krcore-sp-observation-data-absent-reason.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 관찰 및 측정 결과(Observation.value[x]) 부재 사유 | Observation.dataAbsentReason | MAY |
| [date](SearchParameter-krcore-sp-observation-date.html) | [datetime](http://hl7.org/fhir/r4/search.html#datetime) | 관찰 및 측정 일시 | Observation.effective | MAY |
| [patient](SearchParameter-krcore-sp-observation-patient.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 관찰 및 측정 대상 환자 | Observation.subject.where(resolve() is Patient) | SHALL |
| [performer](SearchParameter-krcore-sp-observation-performer.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 관찰 및 측정 책임자 | Observation.performer | SHOULD |
| [specimen](SearchParameter-krcore-sp-observation-specimen.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 본 관찰 및 측정에 사용된 검체 | Observation.specimen | MAY |
| [status](SearchParameter-krcore-sp-observation-status.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 관찰 및 측정 진행 상태 | Observation.status | MAY |
| [value-concept](SearchParameter-krcore-sp-observation-value-concept.html) | [token](http://hl7.org/fhir/r4/search.html#token) | CodeableConcept 자료형으로 표현된 측정값 | Observation.value.ofType(CodeableConcept) | MAY |
| [value-date](SearchParameter-krcore-sp-observation-value-date.html) | [datetime](http://hl7.org/fhir/r4/search.html#datetime) | dateTime 또는 Period 자료형으로 표현된 측정값 | Observation.value.ofType(dateTime) \| Observation.value.ofType(Period) | MAY |
| [value-quantity](SearchParameter-krcore-sp-observation-value-quantity.html) | [quantity](http://hl7.org/fhir/r4/search.html#quantity) | Quantity 또는 SampledData 자료형으로 표현된 측정값 | Observation.value.ofType(Quantity) \| Observation.value.ofType(SampledData) | MAY |
| [value-string](SearchParameter-krcore-sp-observation-value-string.html) | [string](http://hl7.org/fhir/r4/search.html#string) | string 자료형 또는 CodeableConcept 자료형 내 text로 표현된 측정값 | Observation.value.ofType(string) \| Observation.value.ofType(CodeableConcept).text | MAY |