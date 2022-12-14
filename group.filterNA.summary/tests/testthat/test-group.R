testthat::test_that("Testing group-filterNA-summary function", {
  tinytest::expect_equal(digest::digest(group.filterNA.summary(treedata, "curb")), digest::digest(treedata %>% dplyr::group_by("curb") %>% tidyr::drop_na("curb") %>%dplyr::summarise(Count = dplyr::n())))
  tinytest::expect_equal(digest::digest(group.filterNA.summary(treedata, "height_range_id")), digest::digest(treedata %>% dplyr::group_by("height_range_id") %>% tidyr::drop_na("height_range_id") %>%dplyr::summarise(Count = dplyr::n())))
  tinytest::expect_equal(digest::digest(group.filterNA.summary(treedata, "diameter")), digest::digest(treedata %>% dplyr::group_by("diameter") %>% tidyr::drop_na("diameter") %>%dplyr::summarise(Count = dplyr::n())))
  })

testthat::test_that("Testing group-filterNA-summary function", {
  tinytest::expect_error(group.filterNA.summary(treedata, 10))
  tinytest::expect_error(group.filterNA.summary(treedata, "Not a Column"))
})

testthat::test_that("Testing group-filterNA-summary function", {
  tinytest::expect_equal(digest::digest(group.filterNA.summary(treedata, "neighbourhood_name")), digest::digest(treedata %>% dplyr::group_by("neighbourhood_name") %>% tidyr::drop_na("neighbourhood_name") %>%dplyr::summarise(Count = dplyr::n())))
  tinytest::expect_equal(digest::digest(group.filterNA.summary(treedata, "cultivar_name")), digest::digest(treedata %>% dplyr::group_by("cultivar_name") %>% tidyr::drop_na("cultivar_name") %>%dplyr::summarise(Count = dplyr::n())))
})


#-The first test in the test-group.R document tests a number of numeric variables. The one called height_range_id is one that is considered continuous by r even though it only has values 1-10.
#-The second test has two intentional errors
#-The third test has two categorical variables, one that includes NA values, and one that does not.
