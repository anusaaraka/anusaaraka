
(defrule forward0
(declare (salience 5000))
(id-root ?id forward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id agalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forward.clp 	forward0   "  ?id "  agalA )" crlf))
)

;"forward","Adj","1.agalA"
;The forward seats in the bus are reserved for ladies.
;
(defrule forward1
(declare (salience 4900))
(id-root ?id forward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forward.clp 	forward1   "  ?id "  Age_kI_ora )" crlf))
)

;"forward","Adv","1.Age_kI_ora"
;Come forward!
;
(defrule forward2
(declare (salience 4800))
(id-root ?id forward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forward.clp 	forward2   "  ?id "  baDZA )" crlf))
)

;"forward","V","1.baDZAnA"
;The case was forwarded to the Supreme Court.
;
;LEVEL 
;Headword : forward
;
;Examples --
;"forward","adv","1.Age kI ora"
;She ran forward to welcome her parents.
;vaha apane mAwA piwA kA svAgawa karane ke lie Age BAgI. 
;
;"forward","adj","1.agalA"
;The forward part of the plane is for first-class passengers.
;jahAja kA agalA BAga praWama-SreNI ke yAwriyoM ke lie hE. 
;He is very forward for his age.
;vaha apanI umra se Age hE.
;--"2.pragawiSIla"-yAni Age baDZanA-Age 
;His forward opinions are beneficial to everybody. 
;usake pragawiSIla mawa saBI ke lie lABaxAyaka hEM
;--"3.DITa/beaxaba"
;He is too forward in his manner.
;vaha apane vyavAhara se kuCa beaxaba hE. <--logo kA lihAjZa nahIM karawA hE <--vyavahAra kI uciwa sImA se Age hE.  
;--"4.agewI"-Ane vAlI Pasala-Age kI 
;This year farmers are expecting forward crops in abundance.
;isa varRa kisAna loga agewI Pasala kI ASA pracura mAwrA meM kara rahe hEM
;--"5.uwAvalA"
;Ravi is very forward in his behavior with the clients.
;ravi klAyaMtsa ke sAWa apane vyavahAra meM kuCa jZyAxA hI uwAvalA hE.
;
;"forward","V","1.agrasAriwa karanA"-Age baDZAnA  
;Please could you forward my application to the V.C.
;merA Avexana kqpayA Apa vI0sI0 waka Age baDZA xegeM 
;--"2.Age baDZAnA/BejanA"-Age baDZAnA
;I have today forwarded you a copy of new catalogue.
;mEMne Aja wumhe nayI wAlikA kI eka prawi Age BejI hE.
;
;"look forward","iMwajZAra karanA"
;I am looking forward to seeing you next week. 
;mEM agale sapwAha wumase mulAkAwa kI prawIkRA meM hUz.
;
;nota:--uparokwa aMkiwa 'forward'Sabxa ke viSeRaNa,kriyA Axi ke samaswa vAkyoM para yaxi
;      XyAna xeM,wo aXikAMSa arWoM ko hama 'Age`' se nikAla sakawe hEM
;          evaM isakA sUwra nimna prakAra xe sakawe hEM
;
;   sUwra : Age`^wawpara
