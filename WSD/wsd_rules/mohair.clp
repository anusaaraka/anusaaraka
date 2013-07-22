
(defrule mohair0
(declare (salience 5000))
(id-root ?id mohair)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMgorA_Una_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mohair.clp 	mohair0   "  ?id "  aMgorA_Una_kA )" crlf))
)

;"mohair","Adj","1.aMgorA_Una_kA{aMgorA_jAwi_kI_bakarI_ke_lambe_reSamI_bAla}"
;I had a beautiful mohair coat.
;
(defrule mohair1
(declare (salience 4900))
(id-root ?id mohair)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMgorA_Una))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mohair.clp 	mohair1   "  ?id "  aMgorA_Una )" crlf))
)

;"mohair","N","1.aMgorA_Una{aMgorA_jAwi_kI_bakarI_ke_lambe_reSamI_bAla}"
;I prefer mohair to ordinary wool for knitting.
;
