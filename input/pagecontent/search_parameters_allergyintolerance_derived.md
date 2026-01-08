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
| [category](SearchParameter-krcore-sp-allergyintolerance-category.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 알레르기 및 불내성 원인구분 | AllergyIntolerance.category | MAY |
| [clinical-status](SearchParameter-krcore-sp-allergyintolerance-clinical-status.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 알레르기 및 불내성 상태: active \\| inactive \\| resolved | AllergyIntolerance.clinicalStatus | MAY |
| [code](SearchParameter-krcore-sp-allergyintolerance-code.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 원인물질 등 알레르기 및 불내성 반응 코드 | AllergyIntolerance.code \| AllergyIntolerance.reaction.substance | SHOULD |
| [manifestation](SearchParameter-krcore-sp-allergyintolerance-manifestation.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 알레르기 및 불내성 증상 | AllergyIntolerance.reaction.manifestation | MAY |
| [onset](SearchParameter-krcore-sp-allergyintolerance-onset.html) | [datetime](http://hl7.org/fhir/r4/search.html#datetime) | 알레르기 및 불내성 발생일 또는 개별 증상 발생일 | AllergyIntolerance.onset.ofType(dateTime) \| AllergyIntolerance.reaction.onset | MAY |
| [patient](SearchParameter-krcore-sp-allergyintolerance-patient.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 알레르기 및 불내성 정보의 대상 환자 | AllergyIntolerance.patient | SHALL |