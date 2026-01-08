CodeSystem: KR_Core_Vaccination_Types
Id: krcore-vcnt-types
Title: "KR Core Vaccination Types"
Description: "KR Core 예방접종 유형 코드체계"
* ^version = "1.0.2"
* ^status = #active
* ^experimental = false
* ^date = "2023-06-30"
* ^publisher = "HL7 Korea"
* ^jurisdiction = urn:iso:std:iso:3166#KR "Korea, Republic of"
* ^purpose = "질병관리청 예방접종 유형을 HL7 FHIR 및 KR Core에서 활용하기 쉽도록 코드를 부여"
* ^caseSensitive = false
* ^content = #complete
* ^count = 46
* ^property.code = #class
* ^property.description = "필수예방접종 | 국가예방접종 | 기타예방접종"
* ^property.type = #code
* #00 "디프테리아"
* #00 ^property.code = #class
* #00 ^property.valueCode = #필수예방접종
* #01 "폴리오"
* #01 ^property.code = #class
* #01 ^property.valueCode = #필수예방접종
* #02 "백일해"
* #02 ^property.code = #class
* #02 ^property.valueCode = #필수예방접종
* #03 "홍역"
* #03 ^property.code = #class
* #03 ^property.valueCode = #필수예방접종
* #04 "파상풍"
* #04 ^property.code = #class
* #04 ^property.valueCode = #필수예방접종
* #05 "결핵"
* #05 ^property.code = #class
* #05 ^property.valueCode = #필수예방접종
* #06 "B형간염"
* #06 ^property.code = #class
* #06 ^property.valueCode = #필수예방접종
* #07 "유행성이하선염"
* #07 ^property.code = #class
* #07 ^property.valueCode = #필수예방접종
* #08 "풍진"
* #08 ^property.code = #class
* #08 ^property.valueCode = #필수예방접종
* #09 "수두"
* #09 ^property.code = #class
* #09 ^property.valueCode = #필수예방접종
* #10 "일본뇌염"
* #10 ^property.code = #class
* #10 ^property.valueCode = #필수예방접종
* #11 "b형 헤모필루스 인플루엔자"
* #11 ^property.code = #class
* #11 ^property.valueCode = #필수예방접종
* #12 "폐렴구균"
* #12 ^property.code = #class
* #12 ^property.valueCode = #필수예방접종
* #13 "인플루엔자"
* #13 ^property.code = #class
* #13 ^property.valueCode = #필수예방접종
* #14 "A형간염"
* #14 ^property.code = #class
* #14 ^property.valueCode = #필수예방접종
* #15 "사람유두종바이러스"
* #15 ^property.code = #class
* #15 ^property.valueCode = #필수예방접종
* #16 "장티푸스"
* #16 ^property.code = #class
* #16 ^property.valueCode = #필수예방접종
* #17 "신증후군출혈"
* #17 ^property.code = #class
* #17 ^property.valueCode = #필수예방접종
* #18 "B형간염(HepB)"
* #18 ^property.code = #class
* #18 ^property.valueCode = #국가예방접종
* #19 "결핵(BCG, 피내접종)"
* #19 ^property.code = #class
* #19 ^property.valueCode = #국가예방접종
* #20 "디프테리아/파상풍/백일해 (DTaP)"
* #20 ^property.code = #class
* #20 ^property.valueCode = #국가예방접종
* #21 "디프테리아/파상풍/백일해/폴리오 (DTaP-IPV)"
* #21 ^property.code = #class
* #21 ^property.valueCode = #국가예방접종
* #22 "디프테리아/파상풍/백일해/폴리오/b형 헤모필루스 인플루엔자(DTaP-IPV/Hib)"
* #22 ^property.code = #class
* #22 ^property.valueCode = #국가예방접종
* #23 "파상풍/디프테리아(Td)"
* #23 ^property.code = #class
* #23 ^property.valueCode = #국가예방접종
* #24 "파상풍/디프테리아/백일해 (Tdap)"
* #24 ^property.code = #class
* #24 ^property.valueCode = #국가예방접종
* #25 "폴리오 (IPV)"
* #25 ^property.code = #class
* #25 ^property.valueCode = #국가예방접종
* #26 "b형 헤모필루스 인플루엔자 (Hib)"
* #26 ^property.code = #class
* #26 ^property.valueCode = #국가예방접종
* #27 "폐렴구균(PCV, PPSV)"
* #27 ^property.code = #class
* #27 ^property.valueCode = #국가예방접종
* #28 "로타바이러스(RV) 감염증"
* #28 ^property.code = #class
* #28 ^property.valueCode = #국가예방접종
* #29 "홍역/유행성이하선염/풍진 (MMR)"
* #29 ^property.code = #class
* #29 ^property.valueCode = #국가예방접종
* #30 "수두 (VAR)"
* #30 ^property.code = #class
* #30 ^property.valueCode = #국가예방접종
* #31 "A형간염(HepA, 소아용)"
* #31 ^property.code = #class
* #31 ^property.valueCode = #국가예방접종
* #32 "일본뇌염 (IJEV, 불활성화 백신)"
* #32 ^property.code = #class
* #32 ^property.valueCode = #국가예방접종
* #33 "일본뇌염 (LJEV, 약독화 생백신)"
* #33 ^property.code = #class
* #33 ^property.valueCode = #국가예방접종
* #34 "사람유두종바이러스 감염증(HPV2, HP4)"
* #34 ^property.code = #class
* #34 ^property.valueCode = #국가예방접종
* #35 "인플루엔자 (IIV)"
* #35 ^property.code = #class
* #35 ^property.valueCode = #국가예방접종
* #36 "장티푸스 (ViCPS, 고위험군 대상, 주사용)"
* #36 ^property.code = #class
* #36 ^property.valueCode = #국가예방접종
* #37 "신증후군출혈열 (HFRS, 고위험군 대상)"
* #37 ^property.code = #class
* #37 ^property.valueCode = #국가예방접종
* #38 "결핵 (BCG, 경피접종)"
* #38 ^property.code = #class
* #38 ^property.valueCode = #기타예방접종
* #39 "일본뇌염(LJEV, 키메라 바이러스 생백신)"
* #39 ^property.code = #class
* #39 ^property.valueCode = #기타예방접종
* #40 "사람유두종바이러스 감염증(HPV9)"
* #40 ^property.code = #class
* #40 ^property.valueCode = #기타예방접종
* #41 "디프테리아/파상풍/백일해/폴리오/B형간염/b형 헤모필루스 인플루엔자(DTaP-IPV-HepB-Hib)"
* #41 ^property.code = #class
* #41 ^property.valueCode = #기타예방접종
* #42 "수막구균(MCV4)"
* #42 ^property.code = #class
* #42 ^property.valueCode = #기타예방접종
* #43 "대상포진(HZV)"
* #43 ^property.code = #class
* #43 ^property.valueCode = #기타예방접종
* #44 "A형간염(HepA, 성인용)"
* #44 ^property.code = #class
* #44 ^property.valueCode = #기타예방접종
* #45 "장티푸스 (Ty21a, 경구용)"
* #45 ^property.code = #class
* #45 ^property.valueCode = #기타예방접종