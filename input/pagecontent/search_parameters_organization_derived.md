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
| [address](SearchParameter-krcore-sp-organization-address.html) | [string](http://hl7.org/fhir/r4/search.html#string) | 한국 도로명 주소를 포함한 기관 주소 검색 | Organization.address \| Organization.address.text \| Organization.address.extension('http://www.hl7korea.or.kr/fhir/krcore/StructureDefinition/krcore-roadNameAddress').extension.value | MAY |
| [identifier](SearchParameter-krcore-sp-organization-identifier.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 기관 식별자 | Organization.identifier | SHALL |
| [name](SearchParameter-krcore-sp-organization-name.html) | [string](http://hl7.org/fhir/r4/search.html#string) | 기관 명칭 | Organization.name \| Organization.alias | SHOULD |
| [type](SearchParameter-krcore-sp-organization-type.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 기관 유형 | Organization.type | MAY |