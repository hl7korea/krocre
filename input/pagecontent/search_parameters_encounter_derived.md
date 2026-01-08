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
| [class](SearchParameter-krcore-sp-encounter-class.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 진료 구분 | Encounter.class | MAY |
| [date](SearchParameter-krcore-sp-encounter-date.html) | [datetime](http://hl7.org/fhir/r4/search.html#datetime) | 내원 기간 내 날짜 | Encounter.period | MAY |
| [participant](SearchParameter-krcore-sp-encounter-participant.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 내원 참여 의료인 | Encounter.participant.individual | MAY |
| [patient](SearchParameter-krcore-sp-encounter-patient.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 내원 환자 | Encounter.subject.where(resolve() is Patient) | SHALL |
| [service-provider](SearchParameter-krcore-sp-encounter-service-provider.html) | [reference](http://hl7.org/fhir/r4/search.html#reference) | 내원 기관 | Encounter.serviceProvider | MAY |
| [status](SearchParameter-krcore-sp-encounter-status.html) | [token](http://hl7.org/fhir/r4/search.html#token) | 내원 상태: planned \\| arrived \\| triaged \\| in-progress \\| onleave \\| finished \\| cancelled \\+ | Encounter.status | MAY |