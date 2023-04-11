## 상관분석
# 데이터 불러오기
data3=read.csv('gudata.csv',header=T,encoding='EUC-KR')
head(data3)
colnames(data3)=c('지역','디지털배움터수','체험존수','체험존수2','X50대이상인구',
                  '정보화점수','총교육수','키오스크교육수',
                  '신청인원수','정원수','이용률','전체인구','고령비율')
summary(data3)
str(data3)

# 필요 변수만 추출
data4 = data3[,c(3,2,5,6,7,11)]
colnames(data4)[3] = '고령인구'
data4

# 데이터 정규화(Normalization)
nor = function(x){
  result = (x - min(x)) / (max(x)-min(x))
  return(result)
}
Ndata = apply(X = data4[,c(-1)], MARGIN = 2, FUN = "nor")
View(Ndata)


# 데이터 표준화(Standardization)
nor_sd = function(x){
  result2 = (x - mean(x)) / sd(x)
  return(result2)
}
Sdata = apply(X = data4[,c(-1)], MARGIN = 2, FUN = "nor_sd")
View(Sdata)

# data4 : 원본 데이터, Ndata : 정규화 데이터, Sdata : 표준화 데이터

# 상관분석
cor(data4)
cor(Ndata)
cor(Sdata)

# 산점도 그래프 -> 결과가 나오는 정규화 데이터 사용 
corrplot.mixed(Ndata)

--------------------------------------------------------------------------------
## 회귀분석
# 표준화 데이터 불러오기 
data5=read.csv('gudata2.csv',header=T,encoding='EUC-KR')
data5
colnames(data5)=c('지역','디지털배움터수','체험존수','체험존수2','고령인구',
                  '정보화점수','총교육수','키오스크교육수',
                  '신청인원수','정원수','이용률','전체인구','고령비율')
View(data5)
data5$이용률2=data5$신청인원수/data5$정원수
data5[18,14]=0

cor(data5[,c(2:11,13,14)])

# 단계적 선택법을 통한 회귀 분석 실시 
reg11=lm(체험존수~디지털배움터수+정보화점수+키오스크교육수+신청인원수+정원수+이용률+이용률2+고령인구,data=data5)
summary(reg11)
summary(step(reg11,direction='both'))
#정보화점수,키오스크교육수,이용률 / 유의 : 이용률(평균)

reg12=lm(체험존수~디지털배움터수+정보화점수+키오스크교육수+신청인원수+정원수+이용률+이용률2+고령비율,data=data5)
summary(step(reg12,direction='both'))
#정원수, 이용률, 이용률2, 고령비율 / 유의 : 고령비율

# 입지선정지수를 위해 필요한 회귀계수 추출
lm(체험존수~디지털배움터수+정보화점수+총교육수+이용률+고령인구,data=data5)
# 디지털배움터수 : 0.3115, 정보화점수 : 21.3516, 총교육수 : -0.1526, 이용률 : -0.2612, 고령인구 : 0.2686
