dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("results")
dir.create("plots")
data <- read.csv("raw_data/patient_info.csv")
View(data)
str(data)
data$patient_id <- as.character(data$patient_id)    # ID: نص
data$age        <- as.numeric(data$age)             # Age: رقمي
data$gender     <- as.factor(data$gender)           # Gender: عامل
data$diagnosis  <- as.factor(data$diagnosis)        # Diagnosis: عامل
data$bmi        <- as.numeric(data$bmi)             # BMI: رقمي
data$smoker     <- as.factor(data$smoker)           # Smoker: عامل
data$smoking_binary <- ifelse(data$smoker == "Yes", 1, 0)
data$smoking_binary <- as.factor(data$smoking_binary)
write.csv(data, "clean_data/patient_info_clean.csv", row.names = FALSE)

