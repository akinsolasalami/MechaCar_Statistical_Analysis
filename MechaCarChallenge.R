library(dplyr)

# Deliverable 1

df <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

?lm()

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD, data=df)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
             ground_clearance + AWD, data=df))

# Deliverable 2

susp_df <- read.csv(file='Suspension_Coil.csv',check.names=F,
                    stringsAsFactors = F)

total_summary <- susp_df %>% summarize(Mean=mean(PSI),Median=median(PSI), 
                                       Variance=var(PSI), SD=sd(PSI), 
                                       .groups = 'keep')

lot_summary <- susp_df %>% group_by(Manufacturing_Lot) %>% 
  summarize(Mean=mean(PSI),Median=median(PSI), 
            Variance=var(PSI), SD=sd(PSI), .groups = 'keep')


# Deliverable 3

?t.test()

t.test(susp_df$PSI, mu=1500)

lot_1 <- filter(susp_df, Manufacturing_Lot == "Lot1")

lot_2 <- filter(susp_df, Manufacturing_Lot == "Lot2")

lot_3 <- filter(susp_df, Manufacturing_Lot == "Lot3")

t.test(lot_1$PSI, mu=1500)

t.test(lot_2$PSI, mu=1500)

t.test(lot_3$PSI, mu=1500)


# Akinsola Salami
