본 페이지는 KR Core Implementation Guide 기반의 시스템을 구현하고 활용하기 위해 *의무 요소(Mandatory Element)*와 8필수 지원 요소(Must Support Element)*, 그리고 *처리 지침(Obligation)*을 해석하고 적용하여 시스템에서 지원하기 위한 방법을 설명한다.

<br />
본 페이지의 작성 목적은 다음과 같다.
+ KR Core Profile별 설명 페이지들의 `Differential Table` 또는 `Snapshot Table`에서 요소별 구현 요구사항을 해석하는 방법을 설명.
+ KR Core Profile들을 구성하는 *요소(element)*를 시스템 유형별로 어떻게 지원해야 하는지를 명확히 정의하여 구현자의 혼란을 최소화.

<br />
테스트와 분석 시 편의성을 제공하기 위한 목적으로 KR Core Implementation Guide에 포함된 모든 Profile들의 정보를 CSV 파일과 Excel 파일로 제공한다. 해당 파일들은 아래에서 내려받을 수 있다.
+ [CSVs](csvs.zip)
+ [Excels](excels.zip)

<br />
### 의무 요소(Mandatory Element)

<br />
어떤 요소의 최소 허용 개수가 1회 이상일 때, 즉 최소 1회 이상 사용 되어야 할 때 이를 의무 요소 라고 하며, 의무 요소는 FHIR 리소스 인스턴스에서 반드시 나타나야 한다. 의무 요소의 예는 `Observation.status`가 있으며, *Figure: Observation.status*에서 확인할 수 있다.
<br />
<div>
  <figure class="figure">
  <figcaption class="figure-caption"><strong>Figure: Observation.status</strong></figcaption>
    <img src="./must_support/mandatory01.png" class="figure-img img-responsive img-rounded center-block" alt="의무요소 + 코드화된 자료형">
  </figure>
  <p></p>
</div>
<br />
드물게 의무 요소의 값이 존재하지 않고 데이터 부재 사유([Data Absent Reason](element_support_and_responsibilities.html#데이터-부재-사유data-absernt-reason))에 대한 사유가 제공될 수 있다.

<br />
### 필수 지원 요소(Must Support Element)

<br />
필수 지원(Must Support)에 대한 정의는 기본 FHIR 명세에 포함되어 있지 않으며, 필수 지원 요소를 사용한 FHIR Profile에서 명확하게 정의할 것을 명시하고 있다([참고](http://hl7.org/fhir/r4/profiling.html#mustsupport)).<br />
이에 따라, KR Core Profile들에서 필수 지원으로 지정된 요소들은 **반드시(SHALL)** 다음과 같이 해석하도록 정의한다.
+ KR Core Implementation Guide 에서는 KR CDI에서 지원여부를 R(Required) 또는 R2(Required if exist)로 지정한 요소에 한해 필수 지원 요소로 표기한다.
  + KR CDI의 ‘필수여부’는 R(Required, 필수), R2(Required if exists, 조건부 필수), O(Optional, 선택)로 구분되며 의미는 다음과 같다.
    + R(Required, 필수): 필수적으로 입력
    + R2(Required if exists, 조건부 필수): 해당 데이터가 있다면 필수적으로 입력
    + O(Optional, 선택): 선택적으로 입력
+ KR Core STU2 Sequence부터는 추가로 [KR Core Patient](StructureDefinition-krcore-patient.html)(환자 정보)를 참조하는 요소도 필수 지원 요소로 표기한다.
+ KR Core Profile 들에서 특정 요소를 필수 지원 요소로 표기하는 것은, 의무 요소를 지정한 주체가 KR CDI 임을 명시하거나 환자 정보와 관련된 요소임을 명시하기 위한 방법이다.

<br />
필수 지원으로 지정된 요소들은 `Differential Table` 또는 `Snapshot Table`에서 다음과 같이 표시된다.
+ 필수 지원으로 지정되었으나 처리 지침이 할당되지 않은 요소들은 <span style="background-color:red; color:white;">S</span>로 표시.
  + KR Core Implementation Guide에서는 일반적으로 이와 같은 형태로 사용된다.
  + 이 경우, KR Core Server 또는 KR Core Client는 필수 지원 요소들을 **반드시(SHALL)** 모두 구현하고 처리할 수 있어야 한다.
+ 필수 지원으로 지정되었으며 처리 지침이 할당된 요소들은  <span style="background-color:red; color:white;">SO</span>로 표시.
  + KR Core Implementation Guide에서는 [KR Core Patient Profile](StructureDefinition-krcore-patient.html)에만 시범적으로 [처리 지침](element_support_and_responsibilities.html#처리-지침obligation)을 할당하였으므로, KR Core Patient Profile에서만 이와 같은 형태로 사용된다.
  + 이 경우, KR Core Server 또는 KR Core Client는 **반드시(SHALL)** 해당 요소에 할당된 처리 지침을 따라야 한다.
  
<br />
KR Core Implementation Guide에서 의무 요소와 필수 지원 요소를 지정하는 규칙은 *Table: 의무 요소 및 필수 지원 요소 지정 규칙*에서 확인할 수 있다.
<br /><br />
**Table: 의무 요소 및 필수 지원 요소 지정 규칙**

{% include must_support_table.xhtml %}

<br />
### 처리 지침(Obligation)

<br />
처리 지침은 서버나 클라이언트와 같은 주체(actor)들이 FHIR IG 내 특정 요소들을 어떻게 구현하고 다루어야 하는지를 명확하게 규정하기 위한 *확장(extension)*이다. [*ObligationCodesVS*](https://hl7.org/fhir/extensions/ValueSet-obligation.html)은 이러한 지침을 표현할 때 사용할 수 있는 *코드집합*으로, 이 코드집합에 속한 코드를 사용하여 각 요소에 처리 지침을 할당한다. KR Core에서는 설명의 편의를 위해 ObligationCodesVS에 포함된 코드를 *처리 지침 코드*로 통칭한다.

<br />
KR Core Implementation Guide가 처리 지침을 사용하는 목적과 이유는 다음과 같다.
+ HL7 International에서 권장하는 방식으로 요소별 구현 요구사항을 정의하여 국내·외 국가수준 IG들과 일관성을 확보.
+ [필수 지원 요소](element_support_and_responsibilities.html#필수-지원-요소must-support-element)에 대한 해석상의 모호함을 줄이고, 시스템 유형별 처리 방침을 명확하게 제공.
+ 처리 지침 코드 중 KR Core Implementation Guide에서 사용한 코드를 선별하고, 해당 코드의 의미를 KR Core Implementation Guide의 맥락에 맞춰 명확하게 해석하도록 지원.
+ 경계가 모호한 처리 지침 코드를 배제하여 각 코드간 의미를 명료하게 구분.
+ KR Core Implementation Guide 기반의 시스템을 구현하는데 발생할 수 있는 혼란을 최소화.
+ KR Core Profile들의 요소별 구현 요구사항을 KR Core Server, KR Core Client에 따라 구분하여 정의.
+ KR Core Implementation Guide 구현 적합성 검증 및 테스트를 위한 기준 제공.
+ KR Core를 [International Patient Summary](https://hl7.org/fhir/uv/ips/) 또는 한국형 Patient Summary와 점진적으로 연계하기 위해, 시범적으로 *처리 지침 코드*를 도입하고 이에 대한 이해도를 제고.

<br />
처리 지침이 할당된 요소들은  `Differential Table` 또는 `Snapshot Table`에서 다음과 같이 표시된다.
+ 필수 지원으로 지정되었으며 처리 지침이 할당된 요소들은 <span style="background-color:red; color:white;">SO</span>로 표시.
+ 필수 지원으로 지정되지 않았으나 처리 지침이 할당된 요소들은 <span style="background-color:red; color:white;">O</span>로 표시.

<br />
KR Core Implementation Guide에서는 [KR Core Patient Profile](StructureDefinition-krcore-patient.html)에만 시범적으로 처리 지침을 할당하였다.

<br />
#### 처리 지침 코드 해석

<br />
본 절에서는 처리 지침을 해석하기 위해 KR Core Implementation Guide에 사용된 처리 지침 코드를 분류하고 그 의미를 설명한다.

<br />
KR Core Implementation Guide에 사용된 처리 지침 코드는 *리소스 생산자(Resource Producer)*용 코드와 *리소스 소비자(Resource Consumer)*용 코드로 분류할 수 있다.

<br />
리소스 생산자의 역할 및 기능은 다음과 같다.
+ FHIR 리소스를 생산(produce)하는 것은 FHIR 리소스 인스턴스의 내용을 새로 생성하거나 수정하여, FHIR 리소스 인스턴스로서의 구조와 값을 구성(assemble)하는 것을 의미한다.
+ 따라서 리소스 생산자는 FHIR 리소스 인스턴스의 속성 값을 결정하고, 필요한 데이터를 채워 넣어 FHIR 리소스 인스턴스를 완성하는 시스템을 의미한다.
+ 리소스 생산자는 서버, 클라이언트, 송신자, 수신자, 또는 미들웨어 장치일 수 있으며, 생성한 FHIR 리소스 인스턴스를 저장하거나 다른 시스템으로 전달할 수 있다.
+ 리소스의 생산은 단순한 데이터 전달이 아니라, 필수 요소를 포함하여 FHIR 리소스 인스턴스를 유효한 상태로 만들고, 필요한 경우 시스템에 반영하거나 외부와 교환하는 것을 포함한다.
+ 리소스 생산자는 FHIR 리소스 인스턴스를 저장할 수도 있지만, 반드시 저장해야 하는 것은 아니며, 일시적으로 FHIR 리소스 인스턴스를 생성하여 다른 시스템으로 전달만 하는 경우도 포함된다.
+ KR Core Server는 **반드시(SHALL)** 읽기(read), 검색(search) 요청을 지원해야하고, 요청에 대한 응답으로 리소스 인스턴스를 구성하여 반환하므로, 항상 리소스 생산자에 해당한다.
+ KR Core Client는 **선택적(MAY)**으로 생성(create), 수정(update) 요청을 지원하여 리소스 인스턴스를 작성할 수 있으므로, 상황에 따라 리소스 생산자에 해당한다.
 
<br />
리소스 소비자의 역할 및 기능은 다음과 같다.
+ FHIR 리소스를 소비(consume)하는 것은 FHIR 리소스 인스턴스를 수신하여 처리 또는 활용하거나, 해석하여 동작하는 것을 의미한다.
+ 따라서 리소스 소비자는 FHIR 리소스 인스턴스를 수신하여 처리하거나 해석하여 동작하는 시스템을 의미한다.
+ 리소스 소비자는 FHIR 리소스 인스턴스를 사람에게 표시하거나, 재사용을 위해 다른 형식으로 변환하거나, 의사결정 지원과 같은 애플리케이션 로직을 구동한다.
+ 리소스 소비자는 FHIR 리소스 인스턴스를 저장할 수도 있으나, 반드시 저장해야 하는 것은 아니다.
+ KR Core Sever는 **반드시(SHALL)** 읽기(read), 검색(search) 요청을 지원해야하고, 요청에 대한 응답으로 저장된 FHIR 리소스 인스턴스를 해석하고 처리 결과를 반환하므로 항상 리소스 소비자에 해당한다.
+ KR Core Client는 **반드시(SHALL)** 읽기(read), 검색(search) 기능을 지원해야하고, 요청에 대한 결과로 KR Core Server로부터 수신한 FHIR 리소스 인스턴스를 사용자에게 표시하거나 내부 로직에 활용하므로 항상 리소스 소비자에 해당한다.

<br />
KR Core Implementation Guide에서 각 요소에 직접 할당하여 사용한 처리 지침 코드와 그 해석은 *Table 2*에서 확인할 수 있다.

{% include used_obligation_codes_table.xhtml %}

<br />
KR Core Implementation Guide에서 직접 처리 지침 코드를 할당하지 않은 FHIR R4 기본 요소들에도 각 요소의 최소 허용 개수, 자료형에 따라 **가능한 한(SHOULD)** *Table 2*와 동일한 처리 지침을 적용한다.

<br />
#### 처리 지침 코드 예시

<br />
본 절에서는 KR Core Implementation Guide에서 각 요소의 최소 허용 개수, 자료형에 따라 할당한 처리 지침의 예와 해석 방법을 설명한다. KR Core Implementation Guide에서는 [KR Core Patient Profile](StructureDefinition-krcore-patient.html)에만 시범적으로 처리 지침을 할당하였으나, 다른 Profile에도 아래의 유형에 따라 요소들을 처리하기를 권장한다.

<br />
##### 의무 요소 + 일반 자료형 유형

<br />
본 절에서는 KR Core Implementation Guide에서 최소 허용 개수가 1회 이상인 의무 요소이자, 코드화된 자료형 외 일반 자료형의 처리 지침을 설명한다.
의무 요소이면서, 일반 자료형인 요소 중 처리 지침이 할당된 예는 *KR Core Patient Profile*의 `Patient.birthDate`가 있으며, *Figure: Patient.birthDate 처리 지침*에서 확인할 수 있다.
<br />
<div>
  <figure class="figure">
  <figcaption class="figure-caption"><strong>Figure: Patient.birthDate 처리 지침</strong></figcaption>
    <img src="./must_support/obligation.patient.birthdate.png" class="figure-img img-responsive img-rounded center-block" alt="의무 요소 + 일반 자료형">
  </figure>
  <p></p>
</div>
<br />
이러한 경우, KR Core Server와 KR Core Client는 다음과 같은 지침에 따라 해당 요소를 처리한다.
+ KR Core Server
  + **SHALL**:<span style="color:#428BCA">populate</span> - 생성(create), 수정(update), 읽기(read), 검색(search) 요청을 처리할 때, 해당 요소를 **반드시(SHALL)** 채워야 한다.
+ KR Core Client
  + **SHOULD**:<span style="color:#428BCA">populate</span> - 생성(create) 및 수정(update) 기능을 구현하지 않은 KR Core Client는 이 처리 지침 코드를 무시할 수 있다. 그러나 생성(create) 또는 수정(update) 기능을 구현하고 요청을 시작하는 경우, 해당 요소는 **반드시(SHALL)** 채워야 한다.
  + **SHALL**:<span style="color:#428BCA">no-error</span> - 읽기(read), 검색(search) 요청에 대한 응답을 처리할 때, 해당 요소를 **반드시(SHALL)** 오류 없이 처리해야 한다.

<br />
##### 선택적 요소 + 일반 자료형 

<br />
본 절에서는 KR Core Implementation Guide에서 최소 허용 개수가 0회인 선택형 요소이자, 코드화된 자료형 외 일반 자료형의 처리 지침을 설명한다.
선택적 요소이면서, 일반 자료형인 요소 중 처리 지침이 할당된 예는 *KR Core Patient Profile*의 `Patient.address`가 있으며, *Figure: Patient.address 처리 지침*에서 확인할 수 있다.
<br />
<div>
  <figure class="figure">
  <figcaption class="figure-caption"><strong>Figure: Patient.address 처리 지침</strong></figcaption>
    <img src="./must_support/obligation.patient.address.png" class="figure-img img-responsive img-rounded center-block" alt="선택적 요소 + 일반 자료형">
  </figure>
  <p></p>
</div>
<br />
이러한 경우, KR Core Server와 KR Core Client는 다음과 같은 지침에 따라 해당 요소를 처리한다.
+ KR Core Server
  + **SHALL**:<span style="color:#428BCA">able-to-populate</span> - 생성(create), 수정(update), 읽기(read), 검색(search) 요청을 처리할 때, 해당 요소를 **반드시(SHALL)** 채울 수 있어야 한다.
+ KR Core Client
  + **SHOULD**:<span style="color:#428BCA">able-to-populate</span> - 생성(create) 및 수정(update) 기능을 구현하지 않은 KR Core Client는 이 처리 지침 코드를 무시할 수 있다. 그러나 생성(create) 또는 수정(update) 기능을 구현하고 요청을 시작하는 경우, 해당 요소는 **반드시(SHALL)** 채울 수 있어야 한다.
  + **SHALL**:<span style="color:#428BCA">no-error</span> - 읽기(read), 검색(search) 요청에 대한 응답을 처리할 때, 해당 요소를 **반드시(SHALL)** 오류 없이 처리해야 한다.

<br />
##### 의무 요소 + 코드화된 자료형 유형

<br />
본 절에서는 KR Core Implementation Guide에서 최소 허용 개수가 1회 이상인 의무 요소이자, 코드화된 자료형의 처리 지침을 설명한다.
의무 요소이면서, 코드화된 자료형인 요소 중 처리 지침이 할당된 예는 *KR Core Patient Profile*의 `Patient.gender`가 있으며, *Figure: Patient.gender 처리 지침*에서 확인할 수 있다.
<br />
<div>
  <figure class="figure">
  <figcaption class="figure-caption"><strong>Figure: Patient.gender 처리 지침</strong></figcaption>
    <img src="./must_support/obligation.patient.gender.png" class="figure-img img-responsive img-rounded center-block" alt="의무 요소 + 코드화된 자료형">
  </figure>
  <p></p>
</div>
<br />
이러한 경우, KR Core Server와 KR Core Client는 다음과 같은 지침에 따라 해당 요소를 처리한다.
+ KR Core Server
  + **SHALL**:<span style="color:#428BCA">populate</span> - 생성(create), 수정(update), 읽기(read), 검색(search) 요청을 처리할 때, 해당 요소를 **반드시(SHALL)** 채운다.
  + **SHALL**:<span style="color:#428BCA">reject-invalid</span> - 생성(create), 수정(update), 읽기(read), 검색(search) 요청을 처리할 때, 해당 요소에 사용된 용어를 **반드시(SHALL)** 검증하고, 부적합한 용어가 사용된 경우 해당 리소스 인스턴스 처리를 거부해야 한다.
+ KR Core Client
  + **SHOULD**:<span style="color:#428BCA">populate</span> - 생성(create) 및 수정(update) 기능을 구현하지 않은 KR Core Client는 이 처리 지침 코드를 무시할 수 있다. 그러나 생성(create) 또는 수정(update) 기능을 구현하고 요청을 시작하는 경우, 해당 요소는 **반드시(SHALL)** 채운다.
  + **SHALL**:<span style="color:#428BCA">no-error</span> - 읽기(read), 검색(search) 요청에 대한 응답을 처리할 때, 해당 요소를 **반드시(SHALL)** 오류 없이 처리해야 한다.

<br />
##### 선택적 요소 + 코드화된 자료형 유형

<br />
본 절에서는 KR Core Implementation Guide에서 최소 허용 개수가 0회인 선택형 요소이자, 코드화된 자료형의 처리 지침을 설명한다.
선택적 요소이면서, 코드화된 자료형인 요소 중 처리 지침이 할당된 예는 현재 KR Core Implementation Guide에는 존재하지 않는다.
<br />
<br />
이러한 경우, KR Core Server와 KR Core Client는 다음과 같은 지침에 따라 해당 요소를 처리한다.
+ KR Core Server
  + **SHALL**:<span style="color:#428BCA">able-to-populate</span> - 생성(create), 수정(update), 읽기(read), 검색(search) 요청을 처리할 때, 해당 요소를 **반드시(SHALL)** 채울 수 있어야 한다.
  + **SHALL**:<span style="color:#428BCA">reject-invalid</span> - 생성(create), 수정(update), 읽기(read), 검색(search) 요청을 처리할 때, 해당 요소에 사용된 용어를 **반드시(SHALL)** 검증하고, 부적합한 용어가 사용된 경우 해당 리소스 인스턴스 처리를 거부해야 한다.
+ KR Core Client
  + **SHOULD**:<span style="color:#428BCA">able-to-populate</span> - 생성(create) 및 수정(update) 기능을 구현하지 않은 KR Core Client는 이 처리 지침 코드를 무시할 수 있다. 그러나 생성(create) 또는 수정(update) 기능을 구현하고 요청을 시작하는 경우, 해당 요소는 **반드시(SHALL)** 채울 수 있어야 한다.
  + **SHALL**:<span style="color:#428BCA">no-error</span> - 읽기(read), 검색(search) 요청에 대한 응답을 처리할 때, 해당 요소를 **반드시(SHALL)** 오류 없이 처리해야 한다.

<br />
### 데이터 부재 사유(Data Absernt Reason)

<br />
데이터 생산자가 어떤 요소의 값을 채우는 상황에서, 유효한 값이 존재하지 않거나, 데이터 공유가 금지 되었거나, 기타 오류가 발생하여 값을 채울 수 없는 경우가 있다. 이러한 상황이 발생한 경우, 데이터 생산자는 해당 요소의 자료형에 따라 서로 다른 방법으로 데이터 부재 사유를 표현하여야 한다.

<br />
*※ 참고*
+ 리소스 생산자는 **반드시(SHALL)** 모든 요소에 유효한 값을 채우기 위해 노력해야 하고, 모든 방안이 부적합할 때만 해당 요소를 데이터 부재 사유로 채우는 것이 허락된다.
+ 리소스 생산자는 선택적 요소를 유효한 값으로 채우지 못하는 경우 해당 요소를 FHIR 리소스 인스턴스에서 생략하는 것으로 대응할 수 있으나, 해당 선택적 요소를 유효한 값으로 채우지 못하는 이유를 자세하게 표현해야 할 필요가 있는 경우에는 데이터 부재 사유 표현 방법을 **선택적(MAY)**으로 적용할 수 있다.
+ 시스템 검증 주체는 적합성 검증 과정 과정에서 **반드시(SHALL)** 리소스 생산자가 모든 의무 요소에 유효한 값을 채울 수 있음을 확인해야 한다.

<br />
#### 코드화된 자료형

<br />
`code`, `Coding`, `CodeableConcept`와 같은 코드화된 자료형의 요소는 해당 요소에 코드집합이 바인딩 된 강도와 요소의 자료형에 따라 다음과 같은 데이터 부재 사유 표현법을 따른다.
+ `example`, `preferred`, `extensible`
  + `Coding`, `CodeableConcept`
    + 해당 요소에 바인딩 된 코드집합에 `unknown` 등 데이터 부재 사유를 표시할 수 있는 코드가 포함되어 있는 경우, 해당 코드들 중 적절한 코드를 선택하여 사용한다.
    + 해당 요소에 바인딩 된 코드집합에 `unknown` 등 데이터 부재 사유를 표시할 수 있는 코드가 포함되어 있지 않은 경우, [data-absent-reason](https://hl7.org/fhir/R4/valueset-data-absent-reason.html)코드집합에서 적절한 코드를 선택하여 사용한다.
    + `Coding` 자료형의 요소에 한해, 다음과 같은 방법을 적용하는 것이 허용된다.
      + 해당 요소의 하위 요소인 `system`과 `code`가 의무 요소로 지정되지 않았고, 해당 요소에 적합한 코드는 존재하지 않지만 적합한 텍스트가 존재하는 경우, 해당 요소의 하위 요소 중 `system`과 `code`는 생략하고 `display`에 그 텍스트를 표기한다.
    + `CodeableConcept` 자료형의 요소에 한해, 다음과 같은 방법을 적용하는 것이 허용된다.
      + 해당 요소의 하위 요소인 `Coding`이 의무 요소로 지정되지 않았고, 해당 요소에 적합한 코드는 존재하지 않지만 적합한 텍스트가 존재하는 경우, 해당 요소의 하위 요소 중 `Coding`은 생략하고 `text`에 그 텍스트를 표기한다.
  + `code`
    + FHIR R4 기본 사양 및 KR Core Implementation Guide에서는 `code` 자료형의 요소에 항상 코드집합을 `required`로 바인딩 하기 때문에, 해당 상황에 대한 데이터 부재 사유 표현 방법이나 예시를 제공하지 않는다. 
+ `required`
  + 해당 요소에 바인딩 된 코드집합에 `unknown` 등 데이터 부재 사유를 표시할 수 있는 코드가 포함되어 있는 경우, 해당 코드들 중 적절한 코드를 선택하여 사용한다.
  + 해당 요소에 바인딩 된 코드집합에 `unknown` 등 데이터 부재 사유를 표시할 수 있는 코드가 포함되어 있지 않은 경우, **반드시(SHALL)** 해당 코드 중 하나를 선택해서 사용해야 한다. 그렇지 않은 경우, 해당 리소스 인스턴스는 KR Core Implementation Guide에 적합하지 않은 것으로 간주하고, KR Core Server는 이것을 거부해야 한다.

<br />
*사례: xml로 표현된 'DiagnosticReport.code' 요소의 데이터 부재 사유 코드*는 [KR Core DiagnosticReport Profile for Diagnostic Imaging](StructureDefinition-krcore-diagnosticreport-diagnostic-imaging.html)을 준수하는 DiagnosticReport.code 요소에 데이터 부재 사유 코드를 사용한 예를 보인다. 이러한 상황은 code 요소로 표현할 적합한 텍스트나 코드화된 데이터가 모두 없는 경우에 발생할 수 있다. 
<br />
<br />
**사례: xml로 표현된 'DiagnosticReport.code' 요소의 데이터 부재 사유 코드**

```xml
<DiagnosticReport xmlns="http://hl7.org/fhir">
	<!-- 전략 -->
	<code>
		<coding>
			<system value="http://terminology.hl7.org/CodeSystem/data-absent-reason"/>
			<code value="unknown"/>
			<display value="unknown"/>
		</coding>
	</code>
	<!-- 후략 -->
</DiagnosticReport>
```

<br />
<br />
*사례: json으로 표현된 'Medication.ingredient.itemCodeableConcept' 요소의 데이터 부재 사유 코드*는 [KR Core Medication Profile](StructureDefinition-krcore-medication.html)을 준수하는 Medication.ingredient.itemCodeableConcept 요소에 데이터 부재 사유 코드를 사용한 예를 보인다. 이러한 상황은 약품성분명 정보를 알 수 없거나, 이를 표현할 적합한 코드화된 데이터 정보가 없는 경우에 발생할 수 있다. 전체 예시는 [간단한 약품 정보 예제 (약품성분명을 모르는 경우)](Medication-krcore-medication-example-03.html)에서 찾아볼 수 있으며, 다른 예로 [약품 처방 정보 예제 (약품성분명을 모르는 경우) - medicationCodeableConcept 사용](MedicationRequest-krcore-medicationrequest-example-04.html)을 참조할 수 있다.
<br />
<br />
**사례: json으로 표현된 'Medication.ingredient.itemCodeableConcept' 요소의 데이터 부재 사유 코드**

```json
{
  "resourceType" : "Medication",
  //전략
  "ingredient" : [
    {
      "itemCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
            "code" : "unknown",
            "display" : "Unknown"
          }
        ],
        "text" : "알 수 없음"
      }
    }
  ]
  //후략
}
```

<br />
#### 그 외 자료형

<br />
코드화된 자료형을 제외한 모든 자료형의 요소는 FHIR R4 기본사양에서 지정한 [데이터 부재 사유 확장](https://hl7.org/fhir/R4/extension-data-absent-reason.html)을 사용하여 해당 요소에 값을 채울 수 없음을 알리고 그 사유를 표현할 수 있다. 데이터 부재 사유 확장은, [data-absent-reason](https://hl7.org/fhir/R4/valueset-data-absent-reason.html) 코드집합에서 적절한 코드를 선택하여 사용한다.

+ 기본 자료형 요소

<br />
*사례: json으로 표현된 'Patient.gender' 요소의 데이터 부재 사유 확장*은 [KR Core Patient Profile](StructureDefinition-krcore-patient.html)를 준수하는 Patient.gender 요소에 데이터 부재 사유 확장을 사용한 예를 보인다. 이 사례는 `temp-unknown` 코드를 사용하여, 일시적인 사유로 인해 현재는 적절한 값을 채울 수 없지만 추후 업데이트를 통해 값을 보완할 예정임을 나타낸다. 이러한 상황은 환자의 신원이 아직 확정되지 않았거나, 생년월일 데이터의 정합성 검증이 완료되지 않은 경우 등에 발생할 수 있다. 
<br />
<br />
**사례: json으로 표현된 'Patient.gender' 요소의 데이터 부재 사유 확장**

```json
{
  "resourceType" : "Patient",
  //전략
  "_birthDate" : {
    "extension" : [
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
        "valueCode" : "temp-unknown"
      }
    ]
  }
  //후략
}
```

<br />
<br />
*사례: xml로 표현된 'patient.name' 요소의 데이터 부재 사유 확장*은 [KR Core Patient Profile](StructureDefinition-krcore-patient.html)를 준수하는 Patient.gender 요소에 데이터 부재 사유 확장을 사용한 예를 보인다. 이 사례는 `masked` 코드를 사용하여, 데이터 공유가 금지되었기 때문에 해당 값을 입력할 수 없었음을 나타낸다. 이러한 상황은 환자의 요청이나 의료기관의 개인정보 보호 정책 등에 따라 발생할 수 있다.
<br />
<br />
**사례: xml로 표현된 'patient.name' 요소의 데이터 부재 사유 확장**

```xml
<Patient xmlns="http://hl7.org/fhir">
	<!-- 전략 -->
	<name>
    <text>
      <extension url="http://hl7.org/fhir/StructureDefinition/data-absent-reason">
        <valueCode value="masked"/>
      </extension>
    </text>
  </name>
  <!-- 후략 -->
</Patient>
```

<br />
<br />

<br />

<br />

<br />