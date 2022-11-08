test_that("Testing group-filterNA-summary function", {
  expect_equal(digest(group.filterNA.summary(treedata, "curb")), digest(treedata %>% group_by(curb) %>% drop_na("curb") %>%summarise(Count = n())))
  expect_equal(digest(group.filterNA.summary(treedata, "neighbourhood_name")), digest(treedata %>% group_by(neighbourhood_name) %>% drop_na("neighbourhood_name") %>%summarise(Count = n())))
  expect_error(group.filterNA.summary(treedata, 10))
})

test_that("Testing group-filterNA-summary function", {
  expect_equal(digest(group.filterNA.summary(treedata, "height_range_id")), digest(treedata %>% group_by(height_range_id) %>% drop_na("height_range_id") %>%summarise(Count = n())))
  expect_equal(digest(group.filterNA.summary(treedata, "cultivar_name")), digest(treedata %>% group_by(cultivar_name) %>% drop_na("cultivar_name") %>%summarise(Count = n())))
  expect_equal(digest(group.filterNA.summary(treedata, "diameter")), digest(treedata %>% group_by(diameter) %>% drop_na("diameter") %>%summarise(Count = n())))
})
