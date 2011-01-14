
(defrule sanction0
(declare (salience 5000))
(id-root ?id sanction)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMjZUrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sanction.clp 	sanction0   "  ?id "  maMjZUrI )" crlf))
)

;"sanction","N","1.maMjZUrI"
;Without my sanction he signed the letter for admission.
;--"2.xaNdaviXAna"
;This is the need for effective sanctions against computer hacking.
;
(defrule sanction1
(declare (salience 4900))
(id-root ?id sanction)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMjZUra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sanction.clp 	sanction1   "  ?id "  maMjZUra_kara )" crlf))
)

;"sanction","V","1.maMjZUra_karanA"
;They won't sanction a further cut in intrest rates.
;
;LEVEL 
;Headword : sanction
;
;Examples --
;
;""sanction","N","1.maMjZUrI"
;The project has the Chairman's sanction.
;projEkta ke liye aXyakRa kI maMjUrI hE
;
;--"2.xaNdaviXAna"
;The international community imposed sanctions on the warring
;countries.
;anwarrARtrIya samuxAya ne yuxXarawa xeSoM ke liye xaNdaviXAna jArI kiye hEM.
;
;Many of the European nations supported the sanctions against Iraq.
;bahuwa se yUropIya rARtra irAka para lagAe gaye xaNdaviXAna ke pakRa meM We.
;
;
;'sanction' Sabxa meM bIjArWa 'AXikArika niyanwraNa' kA hE jo SabxakoSoM meM nahIM milawA.
;
; 		AXikArika niyanwraNa
;      			|
;		----------------
;		|              |
;      sahI kAma   | 	       | galawa kAma
;      (sakArAwmaka)|             | (nakarAwmaka)
;              maMjUrI            xaNda
;    
;
;isIliye pahale vAkya meM jahAz 'aXyakRa'{aXikArI} ko yaha viSvAsa hE ki kAma TIka hE, usakI 'maMjUrI' kA sakArAwmaka arWa hE Ora 'yuxXarawa' xeSoM se jaba anwarrARtrIya SAnwi BaMga howI hE wo vahAz nakArAwmaka arWa 'xaNda' A jAwA hE.
;
;isa xiSA meM aMgrejZI meM prayoga ke swara para BI ina xono arWoM meM Bexa xiKawA hE.
;'nakArAwmaka' prayoga meM 'sanction' hameSA bahuvacana meM AwA hE - sanctions
;isake alAvA 'nakArAwmaka' arWa 'sanctions' ke sAWa 'impose' ke prayoga se milawA hE.
;'sanctions against' BI 'nakArAwmaka' arWa xewA hE.    
;jabaki 'sakArAwmaka' ke sAWa prAyaH 'give' kA prayoga howA hE.
;
;
;sUwra : niyanwraNa[>maMjUrI/xaNda]
;
;(isa sUwra ke bIjArWa Ora viBinna proyogoM ke liye vicAra Kilgariff (1998) 
;ke Computers && the Humanities 31(2), pp91-113 meM prakASiwa,
;leKa 'I don't believe in word senses'
;meM uxXqwa Kjellmer, 1993 ke 'Zeitschrift fur Anglistik und Amerikanistik,
;41(2):115-123 me prakASiwa leKa 'Multiple meaning && interpretation: the  
;case of sanction' ke leKa se liye hEM.)
