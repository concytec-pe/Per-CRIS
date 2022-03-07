#!/usr/bin/env bash

echo '================================================================================'
echo '*  Compiling the CERIF-Model-Tools                                             *'
echo '================================================================================'
( cd ../CERIF-TG-Tools/CERIF-Model-Tools/ && mvn package )

echo
echo '================================================================================'
echo '*  Running the CERIF-Model-Tools                                               *'
echo '================================================================================'
java -jar ../CERIF-TG-Tools/CERIF-Model-Tools/target/cerif-model-tools-*.jar -d conf/perucris-cerif-profile.xml -o schemas/perucris-cerif-profile.xsd


echo
echo '================================================================================'
echo '*  Validating files                        *'
echo '================================================================================'

# run the maven script
mvn -B clean package || \
exit 2