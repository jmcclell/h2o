            ##
            # Author: Autogenerated on 2013-12-05 22:49:50
            # gitHash: dbc23230f6666890a6cb7c4234e68e540e096e0c
            # SEED: 779905237530228736
            ##
            source('./findNSourceUtils.R')
            complexFilterTest_prostate_9_43 <- function(conn) {
                Log.info("A munge-task R unit test on data <prostate_9> testing the functional unit <['', '<=', '&', '<=', '&', '<=']> ")
                Log.info("Uploading prostate_9")
                hex <- h2o.uploadFile(conn, locate("../../smalldata/parse_folder_test/prostate_9.csv"), "rprostate_9.hex")
            Log.info("Performing compound task ( hex[,c(5)] <= 1.97872258214 ) & ( hex[,c(6)] <= 32.8571773789 ) & ( ( hex[,c(2)] <= 72.2154196079 ))  on dataset <prostate_9>")
                     filterHex <- hex[( hex[,c(5)] <= 1.97872258214 ) & ( hex[,c(6)] <= 32.8571773789 ) & ( ( hex[,c(2)] <= 72.2154196079 )) ,]
            Log.info("Performing compound task ( hex[,c(8)] <= 2.15886767934 ) & ( hex[,c(5)] <= 1.87642508312 ) & ( ( hex[,c(2)] <= 78.7927581852 ))  on dataset prostate_9, and also subsetting columns.")
                     filterHex <- hex[( hex[,c(8)] <= 2.15886767934 ) & ( hex[,c(5)] <= 1.87642508312 ) & ( ( hex[,c(2)] <= 78.7927581852 )) , c(1,8,2,5,6)]
                Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[( hex[,c(8)] <= 2.15886767934 ) & ( hex[,c(5)] <= 1.87642508312 ) & ( ( hex[,c(2)] <= 78.7927581852 )) , c(3,4,7)]
            testEnd()
            }
            doTest("compoundFilterTest_ on data prostate_9 unit= ['', '<=', '&', '<=', '&', '<=']", complexFilterTest_prostate_9_43)
