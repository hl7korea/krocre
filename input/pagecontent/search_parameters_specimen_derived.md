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
| [bodysite](SearchParameter-krcore-sp-specimen-bodysite.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 검체 채취 부위 | Specimen.collection.bodySite | MAY |
| [identifier](SearchParameter-krcore-sp-specimen-identifier.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 검체의 검사실 외부 식별자 | Specimen.identifier | MAY |
| [patient](SearchParameter-krcore-sp-specimen-patient.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 검체 채취 대상 환자 | Specimen.subject.where(resolve() is Patient) | SHALL |
| [type](SearchParameter-krcore-sp-specimen-type.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 검체 유형 | Specimen.type | SHOULD |