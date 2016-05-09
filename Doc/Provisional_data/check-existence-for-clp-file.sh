### Added by Roja(04-03-12)
### Program to check the existence of clp file in WSD.
### If a clp file exists in WSD then
### 	check for existing in provisional
###		if does not exists then its copied to provisional directory.
### Else
###	doesn't exists message displays

cd $HOME_anu_test/WSD/wsd_rules/

if  [ -e  $1.clp ] ; then 
  if [ -e $HOME_anu_provisional_wsd_rules/$1.clp ] ; then    
 	echo "$1.clp already exists in your $HOME_anu_provisional_wsd_rules folder"
  else
	echo "$1.clp already exists in Anusaaraka thus copying in $HOME_anu_provisional_wsd_rules folder"	
        sed -e 's/?\*wsd_dir\*/?\*prov_dir\*/g' $1.clp > $HOME_anu_provisional_wsd_rules/$1.clp 
  fi
else
  if [ -e $HOME_anu_provisional_wsd_rules/$1.clp ] ; then    
 	echo "$1.clp already exists in your $HOME_anu_provisional_wsd_rules folder"
  else
  	echo "$1.clp does not exists"
  fi
fi
