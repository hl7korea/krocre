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
| [ingredient-code](SearchParameter-krcore-sp-medicationrequest-ingredient-code.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 약품성분명 | MedicationRequest.medication.ofType(CodeableConcept).extension('http://www.hl7korea.or.kr/fhir/krcore/StructureDefinition/krcore-medicationIngredient').value.ofType(CodeableConcept) | SHOULD |