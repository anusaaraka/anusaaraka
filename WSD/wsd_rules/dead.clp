
(defrule dead0
(declare (salience 5000))
(id-root ?id dead)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dead.clp 	dead0   "  ?id "  mqwa )" crlf))
)

;"dead","Adj","1.mqwa"
;The nerve is dead
;Mars is a dead planet
;Crater Lake is in the crater of a dead volcano of the Cascade Range
;--"2.saXA_huA"
;A dead shot
;--"3.niSceRta"
;Dead silence
;Passersby were dead to our plea for help
;His gums were dead from the novocain
;Dead capital
;Dead air
;A dead telephone line
;--"4.nirjIva"
;Latin is a dead language
;A dead tennis ball
;A dead law
;A dead issue
;A dead battery
;The party being dead we left early
;This is a dead town; nothing ever happens here
;
(defrule dead1
(declare (salience 4900))
(id-root ?id dead)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mqwaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dead.clp 	dead1   "  ?id "  mqwaka )" crlf))
)

;"dead","N","1.mqwaka"
;They buried the dead
;--"2.jisa_samaya_sunasAna_ho"
;The dead of winter
;
;LEVEL 
;Headword : dead 
;
;Examples --
;
;"dead","Adj","1.mqwa"
;This nerve is dead
;yaha SirA mqwa hE.
;Mars is a dead planet
;maMgala eka mqwa graha hE.
;Crater Lake is in the crater of a dead volcano of the Cascade Range
;kretara wAla kAsaKeda reMja ke eka SAnwa jvAlAmuKI ke kretara meM hE.
;
;--"2.saXA_huA"  <---jo sIXA ho <---teDZA-meDZA hone kI halacala na ho<---mqwa
;He shot a dead shot.
;usane eka saXA huA SOYta mArA.
;
;--"3.niSceRta"   <---niRkriya <--niScala <--mqwa
;Passersby were dead to our plea for help
;Ane-jAne vAle loga sahAyawA kI hamArI mAzga ke prawi niSceRta We
;
;--"4.niswabXa"    <---jo niswabXa ho yAni <--niScala <--jisameM koI halacala na ho yAni<---mqwa
;There was a dead silence in the room.
;kamare meM niswabXa sannAtA CAyA WA.
;A dead telephone line
;niswabXa telIPona lAina.
;
;--"5.bejAna/nirjIva"    <---mqwa
;A dead tennis ball
;bejAna bOYla  
;A dead law
;bejAna kAnUna
;A dead issue
;bejAna viRaya
;A dead battery
;bejAna bEtarI
;The party being dead we left early
;pArtI bejAna hone ke kAraNa hama jalxI hI vahAz se ravAnA ho gaye.
;This is a dead town; nothing ever happens here
;yaha eka bejAna Sahara hE; yahAz kaBI kuCa nahIM howA.
;
;--"6.niRpravAha"   <---niScala <--acala <--mqwa
;Gold is a dead capital
;sonA niRpravAha Xana hE
;
;"dead","N","1.mqwaka"
;They burried their dead
;ve mqwakoM ko xaPanAwe We.
;--"2.niswabXawA"
;The dead of winter
;sarxiyoM kI niswabXawA
;
;
;sUwra : mqwa`[>niScala]
