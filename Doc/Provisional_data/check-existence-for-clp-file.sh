### Added by Roja(04-03-12)
### Program to check the existence of clp file in WSD.
### If a clp file exists then its copied to provisional directory.

cd $HOME_anu_test/WSD/wsd_rules/

if  [ -e  $1.clp ] ; then 
 	echo "$1.clp already exists"
        sed -e 's/?\*wsd_dir\*/?\*prov_dir\*/g' $1.clp > $HOME_anu_provisional_wsd_rules/$1.clp 
 else
  	echo "$1.clp does not exists"
fi
