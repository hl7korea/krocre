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
| [_id](SearchParameter-krcore-sp-practitioner-id.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 본 리소스 인스턴스의 논리적 ID | Practitioner.id | SHOULD |
| [identifier](SearchParameter-krcore-sp-practitioner-identifier.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 의료인 식별자 | Practitioner.identifier \| Practitioner.qualification.identifier | SHALL |
| [name](SearchParameter-krcore-sp-practitioner-name.html) | [string](http://hl7.org/fhir/r4/search.html#string) | 의료인의 성명을 구성하는 성, 이름 등의 요소 중 일치하는 문자열 | Practitioner.name | SHALL |