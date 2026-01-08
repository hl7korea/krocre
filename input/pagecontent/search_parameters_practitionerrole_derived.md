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
| [organization](SearchParameter-krcore-sp-practitionerrole-organization.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 의료인 소속 기관 | PractitionerRole.organization | MAY |
| [practitioner](SearchParameter-krcore-sp-practitionerrole-practitioner.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 의료인 인적사항 | PractitionerRole.practitioner | SHALL |
| [role](SearchParameter-krcore-sp-practitionerrole-role.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 의료인 역할 | PractitionerRole.code | SHOULD |
| [specialty](SearchParameter-krcore-sp-practitionerrole-specialty.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 의료인 진료과목 코드 | PractitionerRole.specialty | SHOULD |