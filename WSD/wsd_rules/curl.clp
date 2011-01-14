;"curling","N","1.eka_prakAra_kA_barPa_kA_Kela"
;Culing is played in Scotland
;
;
(defrule curl0
(declare (salience 5000))
(id-root ?id curl)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 modZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " curl.clp	curl0  "  ?id "  " ?id1 "  modZa  )" crlf))
)

;The baby curled up on the bed && went to sleep.
;baccA biswara pe GUma kara so gayA
(defrule curl1
(declare (salience 4900))
(id-root ?id curl)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id curling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id eka_prakAra_kA_barPa_kA_Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  curl.clp  	curl1   "  ?id "  eka_prakAra_kA_barPa_kA_Kela )" crlf))
)

(defrule curl2
(declare (salience 4800))
(id-root ?id curl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  curl.clp 	curl2   "  ?id "  lata )" crlf))
)

;"curl","N","1.lata"
;The girl looks pretty with a curl
;
(defrule curl3
(declare (salience 4700))
(id-root ?id curl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GuzGarAlA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  curl.clp 	curl3   "  ?id "  GuzGarAlA_banA )" crlf))
)

;"curl","VT","1.GuzGarAlA_banAnA"
;She curled her hair with rollers
;
;LEVEL 
;
;
;Headword : curl
;
;Examples --
;
;"curl","N","1.GuzGarAle bAla"
;Curls falling over her forehead. 
;GUzGara usake mAWe para gira rahe hEM. <--GUzGaravAle<--kuMdalAkAra
;
;"2.CallA"
;A curl of smoke rising from his cigarette. 
;usakI sigareta se Xuez kA eka valaya Upara jA rahA hE.
;-kuMdala-kuMdalAkAra Akqwi banAnA
;
;"curl","Vt","1.GuzGarAlA banAnA"
;My friend curled her hair with rollers.
;merI xoswa ne apane bAla rolaras se GuzGarAle banA liye. <--kuMdalAkAra banAnA
;
;"2.kuMdalAkAra honA"
;His pet lay curled in the corner.
;usakA peta kone meM kuMdalAkAra ho kara letA hE
;
;"curly","Adj","1.GuzGarAlA"
;She is famous as a curly headed girl
;vaha GuzGarAle sira vAlI ladZakI ke nAma se prasixXa hE
;
;
;nota:-- 'curl'Sabxa ke liye saMjFA,kriyA,Ora viSeRaNa ke samaswa vAkyoM ko  
;       xeKane ke paScAw yaha niRkarRa nikAla sakawe hEM ki isako xo mUla 
;       arWoM 'GuzgarAlA'Ora kuMdalAkAra se jodZa sakawe hEM
;               awaH 'curl'Sabxa ke liye sUwra nimna prakAra liKa sakawe hEM   
;             
;              sUwra :GuzGarAlA[<kuMdalAkAra]  
;
;
;
; 
;
