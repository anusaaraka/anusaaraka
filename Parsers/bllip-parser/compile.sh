 cd $HOME_anu_test/Parsers/bllip-parser/bllip-parser
 echo "compiling bllip parser"
 readline=`uname -m`
 if [ "$readline" ==  "i686" ] ; then
        export GCCFLAGS="-march=pentium4 -mfpmath=sse -msse2 -mmmx"
 if [ "$readline" ==  "x86_64" ]; then
        export GCCFLAGS="-march=opteron -m64 -I /home/mj/C++/boost"
 fi
 fi
 make
