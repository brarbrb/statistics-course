data <- read.csv("C:\\Users\\Cyber_User\\Documents\\GitHub\\statistics-course\\homework\\Data_hw1.csv", header = TRUE) # nolint

names(data)
head(data)
earnings <- data$earnings

# Q1
intervals <- seq(0, 57, 0.5)
windows(width = 8, height = 5) 
hist(earnings, breaks = intervals, xlab = "Earnings", col = "pink", main="Histogram of Earnings") # nolint
# התפלגות עם זנב שמאלי, עם רוב הערכים נמצאים בטווח בין 0-20
# מעניינת הקפיצה, כמעט ואין אנשים בדאטאסט עם משכורת 30+ אלף
# כלומר רוב האנשים מרוויחים מעט עם בודדים שמרוויחים הרבה
# מן הסתם הממוצע יהיה טיפה יותר מוטה כלפי מעלה בהשוואה לחציון

# cute colors: skyblue, lightgreen, pink

# Q2
mean(earnings)
median(earnings)

quantiles_earnings <- quantile(earnings)
Q1 <- quantiles_earnings[2] # Q1
Q3 <- quantiles_earnings[4] # Q3
Q1
Q3

var(earnings)
sd(earnings)

# Q3
IQR <- quantiles_earnings[4] - quantiles_earnings[2] # nolint

# The fences (Upper and Lower)
LF <- Q1 - 1.5 * IQR
UF <- Q3 + 1.5 * IQR
LF
UF

# The wiskers
# the plan is to filter the earnings column and then finnd a new "min" and "max" inside this new column # nolint
earnings_filtered <- earnings[earnings >= LF & earnings <= UF]
length(earnings)
length(earnings_filtered)       # sanity check

LW <- min(earnings_filtered)
UW <- max(earnings_filtered)
sprintf("%.4f", LW)     # otherwise it looked 1e-04 (10 in -4)
UW

boxplot(data$earnings, main = "Boxplot of Earnings", horizontal = TRUE )$stat

# (בהחלט קיימות תצפיות חריגות (תופעה צפויה כאשר יש זנב שמאלי או ימני
# מלבד זה שניתן לראות זאת על גבי הגרף ניתן לוודא את זה כי לאחר הסינון נשארנו עם פחות רשומות  # nolint
# LF שלילי - ערך לא הגיוני עבור משמעות של העמודה
# הגעתי לשורה אחרונה בהנחיות אחרי שכבר סיימתי לחשב אז השארתי למקרה וצריך גם