#!/bin/sh
# first decrypt files
chdir externals/whatsapp-crypt12
javac -classpath "lib/whatsapp_spongycastle.jar:." crypt12.java
cd ../..
java -cp "externals/whatsapp-crypt12/lib/whatsapp_spongycastle.jar:externals/whatsapp-crypt12" crypt12

# then extract messages
cd externals/whapa
cp ../../wa.db .
cp ../../msgstore.db .
python2 whapa.py -m -r EN -a
cd ../..
test -d reports || mkdir reports
mv externals/whapa/reports/* reports
