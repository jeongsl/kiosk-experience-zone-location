# selection-of-kiosk-experience-zone-location
2021 데이턴십 해커톤 4회 서울 8조 : 서울시 디지털 취약계층을 위한 키오스크 체험존 입지 선정

## 분석 목적
키오스크 체험존을 최적의 입지에 배치하여 디지털 취약계층인 고령층의 정보격차를 해소하고 디지털 기기의 접근성 및 활용능력을 향상시키기 위함


## 분석 데이터
|출처|데이터 명|데이터 정의|
|------|---|---|
|스마트 서울맵|[키오스크 체험존](https://map.seoul.go.kr/smgis2/short/6Na3o)|서울시 키오스크 체험존 주소|
|국토정보플랫폼|[격자별/연령별 인구](https://map.ngii.go.kr/ms/map/NlipMap.do)|강북구, 노원구, 도봉구, 동대문구, 은평구 격자별 50대 이상 인구|
|KOSIS 국가통계포털|[행정구역(읍면동)별/5세별 주민등록인구](https://kosis.kr/statHtml/statHtml.do?orgId=101&tblId=DT_1B04005N&conn_path=I2)|서울시 50세 이상 인구|
|서울 열린데이터 광장|[통계지역경계(집계구,행정구역)](https://data.seoul.go.kr/dataVisual/seoul/seoulLivingPopulation.do)|서울시 구별, 동별 경계|
|서울 열린데이터 광장|[서울시 경로당 정보](http://data.seoul.go.kr/dataList/OA-15052/S/1/datasetView.do)|서울시 경로당 이름, 주소, 위치|
|서울 열린데이터 광장|[서울시 공공도서관 현황정보](http://data.seoul.go.kr/dataList/OA-15480/S/1/datasetView.do)|서울시 공공도서관 이름, 주소, 위치|
|서울 열린데이터 광장|[서울시 사회복지시설(노인의료복지시설) 목록](http://data.seoul.go.kr/dataList/OA-20413/S/1/datasetView.do)|서울시 노인의료복지시설 이름, 주소|
|서울 열린데이터 광장|[서울시 사회복지시설(노인여가복지시설) 목록](http://data.seoul.go.kr/dataList/OA-20412/S/1/datasetView.do)|서울시 노인여가복지시설 이름, 주소|
|서울 열린데이터 광장|[서울시 건강증진센터(표준 데이터)](http://data.seoul.go.kr/dataList/OA-20438/S/1/datasetView.do)|서울시 건강증진센터 이름, 주소, 위치|
|서울 열린데이터 광장|서울시 공공체육시설 현황(2019)|서울시 공공체육시설 이름, 주소, 위치|
|서울 열린데이터 광장|서울시 주민자치센터 정보|서울시 주민자치센터 이름, 주소|
|디지털배움터|[디지털배움터](https://www.xn--2z1bw8k1pjz5ccumkb.kr/edc/crse/place.do?sch_area_cd=101&sch_signgu_cd=&sch_oper_sttus_se_cd=&sch_edc_plc_se_cd=&sch_edc_place_nm=)|서울시 디지털배움터 이름, 주소, 이용정원, 교육과정|
|NIA 한국지능정보사회지능원|[2020 디지털정보격차 실태조사](https://www.nia.or.kr/site/nia_kor/ex/bbs/View.do?cbIdx=81623&bcIdx=23112&parentSeq=23112)|성별, 연령별 디지털정보화 수준|
