            ##
            # Author: Autogenerated on 2013-11-29 01:20:08
            # gitHash: 10810480518d43dd720690e729d2f3b9a0f8eba7
            # SEED: 7977475956795433203
            ##
            source('./findNSourceUtils.R')
            Log.info("======================== Begin Test ===========================")
            simpleFilterTest_zero_dot_zero_one_20 <- function(conn) {
                Log.info("A munge-task R unit test on data <zero_dot_zero_one> testing the functional unit <<=> ")
                Log.info("Uploading zero_dot_zero_one")
                hex <- h2o.uploadFile(conn, locate("../../smalldata/zero_dot_zero_one.csv"), "rzero_dot_zero_one.hex")
            Log.info("End of test")
            PASSS <<- TRUE
            }
            PASSS <- FALSE
            conn = new("H2OClient", ip=myIP, port=myPort)
            tryCatch(test_that("simpleFilterTest_ on data zero_dot_zero_one", simpleFilterTest_zero_dot_zero_one_20(conn)), warning = function(w) WARN(w), error = function(e) FAIL(e))
            if (!PASSS) FAIL("Did not reach the end of test. Check Rsandbox/errors.log for warnings and errors.")
            PASS()
