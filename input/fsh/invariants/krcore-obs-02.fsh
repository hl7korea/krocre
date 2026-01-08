Invariant: krcore-obs-02
Description: "component.value 또는 component.dataAbsentReason 중 하나는 제공할 것."
* severity = #warning
* expression = "component.value.exists() or component.dataAbsentReason.exists()"
* requirements = "KR Core 권장사항"