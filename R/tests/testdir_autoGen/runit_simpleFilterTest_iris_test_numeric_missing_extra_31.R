            ##
            # Author: Autogenerated on 2013-12-05 22:49:50
            # gitHash: dbc23230f6666890a6cb7c4234e68e540e096e0c
            # SEED: 779905237530228736
            ##
            source('./findNSourceUtils.R')
            simpleFilterTest_iris_test_numeric_missing_extra_31 <- function(conn) {
                Log.info("A munge-task R unit test on data <iris_test_numeric_missing_extra> testing the functional unit <!=> ")
                Log.info("Uploading iris_test_numeric_missing_extra")
                hex <- h2o.uploadFile(conn, locate("../../smalldata/test/classifier/iris_test_numeric_missing_extra.csv"), "riris_test_numeric_missing_extra.hex")
            testEnd()
            }
            doTest("simpleFilterTest_ on data iris_test_numeric_missing_extra unit= !=", simpleFilterTest_iris_test_numeric_missing_extra_31)
