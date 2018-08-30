library(tidyverse)

#-----------------------------------------------
# aes 위치에 따른 statistics
#-----------------------------------------------

# 모든 레이어에 color aesthethics가 상속 
ggplot(mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  theme(legend.position = "none")

# point layer에만 color aesthetics 적용
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point(aes(color = class)) +
  geom_smooth(method = "lm", se = FALSE) +
  theme(legend.position = "none")

# 간혹 레이어를 구별하고 싶다면 aes에 예외적으로 이름을 줄 수 있음  
ggplot(mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(method = "loess", se = FALSE, aes(color = "loess")) +
  geom_smooth(method = "lm", se = FALSE, aes(color = "lm")) +
  labs("method")
