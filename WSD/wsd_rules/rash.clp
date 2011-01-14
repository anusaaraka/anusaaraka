
(defrule rash0
(declare (salience 5000))
(id-root ?id rash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awiSIGra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rash.clp 	rash0   "  ?id "  awiSIGra )" crlf))
)

;"rash","Adj","1.awiSIGra"
;She shouldn't make rash promises.
;
(defrule rash1
(declare (salience 4900))
(id-root ?id rash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PunsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rash.clp 	rash1   "  ?id "  PunsI )" crlf))
)

;"rash","N","1.PunsI"
;Too much oily food brought her out in red itchy rashes.
;--"2.Akasmika_hadZawAloM_kA_silasilA"
;The recent rash of strikes in the railways caused great inconvienence.  
;
