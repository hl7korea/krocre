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
| [authoredon](SearchParameter-krcore-sp-medicationrequest-authoredon.html) | [datetime](http://hl7.org/fhir/r4/search.html#datetime) | 약물 처방 일시 | MedicationRequest.authoredOn | MAY |
| [code](SearchParameter-krcore-sp-medicationrequest-code.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 처방한 약물 | (MedicationRequest.medication as CodeableConcept) | SHOULD |
| [intent](SearchParameter-krcore-sp-medicationrequest-intent.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 약물 처방 의도 | MedicationRequest.intent | SHOULD |
| [medication](SearchParameter-krcore-sp-medicationrequest-medication.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 처방한 약물 | MedicationRequest.medication.ofType(Reference) | SHOULD |
| [patient](SearchParameter-krcore-sp-medicationrequest-patient.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 약물 처방 대상 | MedicationRequest.subject.where(resolve() is Patient) | SHALL |
| [status](SearchParameter-krcore-sp-medicationrequest-status.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 약물 처방 진행 상태 | MedicationRequest.status | MAY |