다음의 ActorDefinition들은 KR Core Implementation Guide에서 보건의료데이터 교류에 참여하는 시스템의 역할을 정의한다. 


* [KR Core Client Actor](ActorDefinition-krcore-actordefinition-client.html)
<br />KR Core Server는 보건의료데이터 생성(create), 수정(update), 읽기(read), 검색(search) 요청을 시작하는 역할을 한다. 이 역할이 지원해야 하는 기능은 [KR Core Client CapabilityStatement](CapabilityStatement-krcore-capabilitystatement-client.html)에 정의되어 있다.

* [KR Core Server Actor](ActorDefinition-krcore-actordefinition-server.html)
<br />KR Core Server는 보건의료데이터 생성(create), 수정(update), 읽기(read), 검색(search) 요청에 대한 응답을 제공하는 역할을 한다. 이 역할이 지원해야 하는 기능은 [KR Core Server CapabilityStatement](CapabilityStatement-krcore-capabilitystatement-server.html)에 정의되어 있다.