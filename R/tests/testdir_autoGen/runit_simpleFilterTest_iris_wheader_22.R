            ##
            # Author: Autogenerated on 2013-12-05 22:49:50
            # gitHash: dbc23230f6666890a6cb7c4234e68e540e096e0c
            # SEED: 779905237530228736
            ##
            source('./findNSourceUtils.R')
            simpleFilterTest_iris_wheader_22 <- function(conn) {
                Log.info("A munge-task R unit test on data <iris_wheader> testing the functional unit <>=> ")
                Log.info("Uploading iris_wheader")
                hex <- h2o.uploadFile(conn, locate("../../smalldata/iris/iris_wheader.csv"), "riris_wheader.hex")
                Log.info("Filtering out rows by >= from dataset iris_wheader and column \"petal_wid\" using value 0.437939077933")
                     filterHex <- hex[hex[,c("petal_wid")] >= 0.437939077933,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"petal_wid" >= 0.437939077933,]
                Log.info("Filtering out rows by >= from dataset iris_wheader and column \"sepal_wid\" using value 3.16361556771")
                     filterHex <- hex[hex[,c("sepal_wid")] >= 3.16361556771,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"sepal_wid" >= 3.16361556771,]
                Log.info("Filtering out rows by >= from dataset iris_wheader and column \"sepal_len\" using value 5.22254025245")
                     filterHex <- hex[hex[,c("sepal_len")] >= 5.22254025245,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"sepal_len" >= 5.22254025245,]
                Log.info("Filtering out rows by >= from dataset iris_wheader and column \"sepal_wid\" using value 3.6803233041")
                     filterHex <- hex[hex[,c("sepal_wid")] >= 3.6803233041,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"sepal_wid" >= 3.6803233041,]
                Log.info("Filtering out rows by >= from dataset iris_wheader and column \"sepal_len\" using value 5.63618303176")
                     filterHex <- hex[hex[,c("sepal_len")] >= 5.63618303176,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"sepal_len" >= 5.63618303176,]
                Log.info("Filtering out rows by >= from dataset iris_wheader and column \"sepal_len\" using value 4.54820745286")
                     filterHex <- hex[hex[,c("sepal_len")] >= 4.54820745286,]
                    Log.info("Perform filtering with the '$' sign also")
                    filterHex <- hex[hex$"sepal_len" >= 4.54820745286,]
                    Log.info("Filtering out rows by >= from dataset iris_wheader and column \"sepal_len\" using value 7.73621968688, and also subsetting columns.")
                     filterHex <- hex[hex[,c("sepal_len")] >= 7.73621968688, c("sepal_len")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("sepal_len")] >= 7.73621968688, c("petal_wid","sepal_wid","class","petal_len","sepal_len")]
                    Log.info("Filtering out rows by >= from dataset iris_wheader and column \"sepal_len\" using value 4.94125840183, and also subsetting columns.")
                     filterHex <- hex[hex[,c("sepal_len")] >= 4.94125840183, c("sepal_len")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("sepal_len")] >= 4.94125840183, c("petal_wid","sepal_wid","class","petal_len","sepal_len")]
                    Log.info("Filtering out rows by >= from dataset iris_wheader and column \"sepal_wid\" using value 4.27090330019, and also subsetting columns.")
                     filterHex <- hex[hex[,c("sepal_wid")] >= 4.27090330019, c("sepal_wid")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("sepal_wid")] >= 4.27090330019, c("petal_wid","sepal_wid","class","petal_len","sepal_len")]
                    Log.info("Filtering out rows by >= from dataset iris_wheader and column \"petal_len\" using value 3.4906979752, and also subsetting columns.")
                     filterHex <- hex[hex[,c("petal_len")] >= 3.4906979752, c("petal_len")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("petal_len")] >= 3.4906979752, c("petal_wid","sepal_wid","class","petal_len","sepal_len")]
                    Log.info("Filtering out rows by >= from dataset iris_wheader and column \"sepal_len\" using value 6.08933368439, and also subsetting columns.")
                     filterHex <- hex[hex[,c("sepal_len")] >= 6.08933368439, c("sepal_len")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("sepal_len")] >= 6.08933368439, c("petal_wid","sepal_wid","class","petal_len","sepal_len")]
                    Log.info("Filtering out rows by >= from dataset iris_wheader and column \"petal_len\" using value 3.42183800564, and also subsetting columns.")
                     filterHex <- hex[hex[,c("petal_len")] >= 3.42183800564, c("petal_len")]
                    Log.info("Now do the same filter & subset, but select complement of columns.")
                     filterHex <- hex[hex[,c("petal_len")] >= 3.42183800564, c("petal_wid","sepal_wid","class","petal_len","sepal_len")]
            testEnd()
            }
            doTest("simpleFilterTest_ on data iris_wheader unit= >=", simpleFilterTest_iris_wheader_22)
