readLines("social_media_screentime_mental_health_2026.csv", n = 3)
datos <- read.table("social_media_screentime_mental_health_2026.csv",
                   na.strings = c("", "NA", "N/A", "NaN", "no data", "sin dato", "-99"),                     
                   header = TRUE, sep = ",", dec = ".")

if (!is.null(datos)) { dim(datos); str(datos) }

summary(datos)

head(datos)

table(datos$participant_id)
table(datos$age)
table(datos$gender)
table(datos$occupation)
table(datos$region)
table(datos$most_used_platform)
table(datos$platforms_used_count)
table(datos$daily_screen_hours)
table(datos$daily_notifications)
table(datos$night_time_use)
table(datos$minutes_to_first_check_after_waking)
table(datos$primary_purpose)
table(datos$avg_sleep_hours)
table(datos$anxiety_score_0to27)
table(datos$low_mood_score_0to27)
table(datos$life_satisfaction_1to10)
table(datos$loneliness_1to10)
table(datos$self_esteem_1to10)
table(datos$fomo_1to10)
table(datos$social_comparison_1to10)
table(datos$physical_activity_days_per_week)
table(datos$uses_screen_time_limits)
table(datos$attempted_digital_detox)
table(datos$seeks_mental_health_support)
table(datos$wellbeing_band)

sum(duplicated(datos)) 

colSums(is.na(datos))
sum(!complete.cases(datos))

