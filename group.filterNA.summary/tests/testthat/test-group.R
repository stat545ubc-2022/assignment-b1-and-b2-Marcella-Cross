test_that("Testing group-filterNA-summary function", {
  expect_equal(digest(group.filterNA.summary(van_tree_data, "curb")), digest(van_tree_data %>% group_by(curb) %>% drop_na("curb") %>%summarise(Count = n())))
  expect_equal(digest(group.filterNA.summary(van_tree_data, "neighbourhood_name")), digest(van_tree_data %>% group_by(neighbourhood_name) %>% drop_na("neighbourhood_name") %>%summarise(Count = n())))
  expect_error(group.filterNA.summary(van_tree_data, 10))
})

test_that("Testing group-filterNA-summary function", {
  expect_equal(digest(group.filterNA.summary(van_tree_data, "height_range_id")), digest(van_tree_data %>% group_by(height_range_id) %>% drop_na("height_range_id") %>%summarise(Count = n())))
  expect_equal(digest(group.filterNA.summary(van_tree_data, "cultivar_name")), digest(van_tree_data %>% group_by(cultivar_name) %>% drop_na("cultivar_name") %>%summarise(Count = n())))
  expect_equal(digest(group.filterNA.summary(van_tree_data, "diameter")), digest(van_tree_data %>% group_by(diameter) %>% drop_na("diameter") %>%summarise(Count = n())))
})
