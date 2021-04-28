
d_exp <- read.csv("data/expired_dataextra.csv") %>% 
  select(-X)

d_icu <- read.csv("data/icu_dataextra.csv") %>% 
  select(-X)



n <- nrow(d_exp)
set.seed(123)

train_indices <- sample.int(n, size = 0.75 * n)

exp_train <- d_exp[train_indices, ]
exp_test <- d_exp[-train_indices, ]

exp_train_x <- exp_train %>% 
  select(-death)
exp_train_y <- exp_train %>% 
  pull(death)
exp_test_x <- exp_test %>% 
  select(-death)
exp_test_x <- exp_test %>% 
  pull(death)


