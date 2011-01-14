
(defrule nestle0
(declare (salience 5000))
(id-root ?id nestle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id nestling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pakRI_kA_navajAwa_baccA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  nestle.clp  	nestle0   "  ?id "  pakRI_kA_navajAwa_baccA )" crlf))
)

;"nestling","N","1.pakRI kA navajAwa baccA"
;The nestling was very cute.
;
(defrule nestle1
(declare (salience 4900))
(id-root ?id nestle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id satakara_ArAma_se_lete_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nestle.clp 	nestle1   "  ?id "  satakara_ArAma_se_lete_raha )" crlf))
)

;"nestle","VI","1.satakara_ArAma_se_lete_rahanA"
;The lady nesteled in the sofa.
;
;