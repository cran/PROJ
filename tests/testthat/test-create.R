# wkt2 <- proj_create("+proj=longlat +datum=WGS84 +no_defs +type=crs")
# test_that("create works", {
#   testthat::skip_if(!ok_proj6())
#   #expect_true( grepl("^\\+proj=longlat", proj_create(wkt2, format = 1)))
#
#
# })
#
# test_that("failure is graceful", {
#    skip_if(ok_proj6())
#    #expect_true(is.na(proj_create(wkt2, format = 1L)))
#    }
# )
