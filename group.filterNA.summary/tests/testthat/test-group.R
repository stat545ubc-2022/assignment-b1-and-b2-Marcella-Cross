testthat::test_that("Testing group-filterNA-summary function", {
  tinytest::expect_equal(digest::digest(group.filterNA.summary(treedata, "curb")), digest::digest(treedata %>% dplyr::group_by("curb") %>% tidyr::drop_na("curb") %>%dplyr::summarise(Count = n())))
  tinytest::expect_equal(digest::digest(group.filterNA.summary(treedata, "neighbourhood_name")), digest::digest(treedata %>% dplyr::group_by("neighbourhood_name") %>% tidyr::drop_na("neighbourhood_name") %>%dplyr::summarise(Count = n())))
  tinytest::expect_error(group.filterNA.summary(treedata, 10))
})

testthat::test_that("Testing group-filterNA-summary function", {
  tinytest::expect_equal(digest::digest(group.filterNA.summary(treedata, "height_range_id")), digest::digest(treedata %>% dplyr::group_by("height_range_id") %>% tidyr::drop_na("height_range_id") %>%dplyr::summarise(Count = n())))
  tinytest::expect_equal(digest::digest(group.filterNA.summary(treedata, "cultivar_name")), digest::digest(treedata %>% dplyr::group_by("cultivar_name") %>% tidyr::drop_na("cultivar_name") %>%dplyr::summarise(Count = n())))
  tinytest::expect_equal(digest::digest(group.filterNA.summary(treedata, "diameter")), digest::digest(treedata %>% dplyr::group_by("diameter") %>% tidyr::drop_na("diameter") %>%dplyr::summarise(Count = n())))
})
