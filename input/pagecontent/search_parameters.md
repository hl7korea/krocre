**NOTE**: 아래의 Search Parameter 목록은 클라이언트 또는 서버에 대한 검색 요구사항 목록이 아님. CapabilityStatement는 KR Core Server에 대한 검색 기능 기대치를 정의함. 본 문단에서는 CapabilityStatement 내에서 사용되는 Search Parameter들에 대한 정의가 나열되어 있음.  


### KR Core Implementation Guide에서 정의한(defined) Search Parameter 목록

<br />
#### DiagnosticReport

{% include search_parameters_diagnosticreport_defined.md %}

<br />
#### Encounter

{% include search_parameters_encounter_defined.md %}

<br />
#### Immunization

{% include search_parameters_immunization_defined.md %}

<br />
#### MedicationRequest

{% include search_parameters_medicationrequest_defined.md %}

<br />
#### Observation

{% include search_parameters_observation_defined.md %}

<br />
#### Organization

{% include search_parameters_organization_defined.md %}

<br />
#### Practitioner

{% include search_parameters_practitioner_defined.md %}



<br /><br />
### 기본 FHIR Specification에서 파생된(derived) Search Parameter 목록

본 절의 KR Core Search Parameter 목록은 기본 FHIR 사양에서 파생되었으며, 아래 요소에 대한 구현 기대치를 정의함:

* [multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)
* [multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)
* [comparator](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.comparator)
* [modifier](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.modifier)
* [chain](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.chain)

  
<br />
#### AllergyIntolerance

{% include search_parameters_allergyintolerance_derived.md %}

<br />
#### Condition

{% include search_parameters_condition_derived.md %}

<br />
#### DiagnosticReport

{% include search_parameters_diagnosticreport_derived.md %}

<br />
#### Encounter

{% include search_parameters_encounter_derived.md %}

<br />
#### ImagingStudy

{% include search_parameters_imagingstudy_derived.md %}

<br />
#### Immunization

{% include search_parameters_immunization_derived.md %}

<br />
#### Medication

{% include search_parameters_medication_derived.md %}

<br />
#### MedicationRequest

{% include search_parameters_medicationrequest_derived.md %}

<br />
#### Observation

{% include search_parameters_observation_derived.md %}

<br />
#### Organization

{% include search_parameters_organization_derived.md %}

<br />
#### Patient

{% include search_parameters_patient_derived.md %}

<br />
#### Practitioner

{% include search_parameters_practitioner_derived.md %}

<br />
#### PractitionerRole

{% include search_parameters_practitionerrole_derived.md %}

<br />
#### Procedure

{% include search_parameters_procedure_derived.md %}

<br />
#### Specimen

{% include search_parameters_specimen_derived.md %}


