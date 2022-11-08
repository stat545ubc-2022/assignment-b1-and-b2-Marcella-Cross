test_that("Testing group-filterNA-summary function", {
  expect_equal(digest(group.filterNA.summary(vancouver_trees, "curb")), digest(vancouver_trees %>% group_by(curb) %>% drop_na("curb") %>%summarise(Count = n())))
  expect_equal(digest(group.filterNA.summary(vancouver_trees, "neighbourhood_name")), digest(vancouver_trees %>% group_by(neighbourhood_name) %>% drop_na("neighbourhood_name") %>%summarise(Count = n())))
  expect_error(group.filterNA.summary(vancouver_trees, 10))
})

test_that("Testing group-filterNA-summary function", {
  expect_equal(digest(group.filterNA.summary(vancouver_trees, "height_range_id")), digest(vancouver_trees %>% group_by(height_range_id) %>% drop_na("height_range_id") %>%summarise(Count = n())))
  expect_equal(digest(group.filterNA.summary(vancouver_trees, "cultivar_name")), digest(vancouver_trees %>% group_by(cultivar_name) %>% drop_na("cultivar_name") %>%summarise(Count = n())))
  expect_equal(digest(group.filterNA.summary(vancouver_trees, "diameter")), digest(vancouver_trees %>% group_by(diameter) %>% drop_na("diameter") %>%summarise(Count = n())))
})
