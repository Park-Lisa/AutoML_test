#이상치 제거
상향값 ← mean + sd*1.5
하향값 ← mean -sd*1.5
result ← df %>%filter(charge > upper | charse < lower)%>%summarise(sum = sum(charge) ) 

#팩터화
Logistic_val <- factor(Logistic_val, levels = c(0, 1), labels = c('No', 'Yes'))
size← factor( size, ordered=T, levels=c(”s”,”m”,”l”)

#문자열
str_detect(user1,"wlk")
user1[str_detect(user1,"wlk")]
str_sub(string,1,3)



#join
inner_join(X, Y, by=”Department”)


#dplyr
nov_dec <- filter(flights, month %in% c(11, 12))
df %>% arrange( year, desc(month), day)  * #특정 기준 열에 따라 순서 바꾸는것
select(flights, -(year:day))
select(starwars, starts_with('s')|ends_with('r'))    #starwars 데이터셋에서 이름이 's'로 시작하거나 r로 끝나는 컬럼만 조회하기
select(starwars, contains('s'))     :    starwars #데이터셋에서 이름에 's'를 포함하는 컬럼만 조회하기

tb %>% select(hp:qsec)
tb[, which(colnames(tb)=='hp'):which(colnames(tb)=='qsec')]

# 방금 생성한 열을 참조할 수 있습니다.
mutate(flights_sml,
       gain = dep_delay - arr_delay,
       hours = air_time / 60,
       gain_per_hour = gain / hours
)

# 날짜로 그룹화된 데이터프레임에 정확히 같은 코드를 적용하면 날짜별 평균 지연시간이 나옵니다.
by_day <- group_by(flights, year, month, day)
summarise(by_day, delay = mean(dep_delay, na.rm = TRUE))

df %>%
  group_by(dest) %>%
  summarise(carriers = n_distinct(carrier))

#변수 몇개 붙여서 날짜 형식으로 변환해줌
df%>% mutate(dates = make_datetime(year, month, day, hour,minute ))

#스케일링
model_prepro ← preProcess(df_train[ , -10], method=c(”range”))     #methods=c(”mean”, ”scale”)
scaled_df_train ← predict(model_prepro, df_train )
scaled_df_valid ← predict(model_prepro, df_valid )

#변수선택
step_model ← step(full_model, direction=”both”)

#랜덤포레스트
- randomforest - predict( )
- rf ← randomForest(~., data=df, probabiity=T)
- predict(forest_m, newdata = new_data, type = 'class'   / type=’response’, probability=T/ type=”prob”, probability=T)

  - varImpPlot(rf)
  - 결과 비교: caret의 `confusionMatrix(Logistic_val, val_M$Survived)`



