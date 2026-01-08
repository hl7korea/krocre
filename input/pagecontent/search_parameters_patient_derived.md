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
| [_id](SearchParameter-krcore-sp-patient-id.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 본 리소스 인스턴스의 논리적 ID | Patient.id | SHALL |
| [address](SearchParameter-krcore-sp-patient-address.html) | [string](http://hl7.org/fhir/r4/search.html#string) | 한국 도로명 주소를 포함한 환자 주소 검색 | Patient.address \| Patient.address.text \| Patient.address.extension('http://www.hl7korea.or.kr/fhir/krcore/StructureDefinition/krcore-roadNameAddress').extension.value | MAY |
| [birthdate](SearchParameter-krcore-sp-patient-birthdate.html) | [date](http://hl7.org/fhir/r4/search.html#date) | 환자의 생일 | Patient.birthDate | SHOULD |
| [gender](SearchParameter-krcore-sp-patient-gender.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 환자의 성별 | Patient.gender | SHOULD |
| [identifier](SearchParameter-krcore-sp-patient-identifier.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 환자의 식별자 | Patient.identifier | SHALL |
| [name](SearchParameter-krcore-sp-patient-name.html) | [string](http://hl7.org/fhir/r4/search.html#string) | 환자의 성명을 구성하는 성, 이름 등의 요소 중 일치하는 문자열 | Patient.name | SHALL |
| [telecom](SearchParameter-krcore-sp-patient-telecom.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 환자의 연락처 | Patient.telecom | SHOULD |