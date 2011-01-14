
(defrule myriad0
(declare (salience 5000))
(id-root ?id myriad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_sA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  myriad.clp 	myriad0   "  ?id "  bahuwa_sA )" crlf))
)

;"myriad","Adj","1.bahuwa_sA"
;I could see myriads of stars in the clear sky.
;
(defrule myriad1
(declare (salience 4900))
(id-root ?id myriad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anaginawa_saMKyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  myriad.clp 	myriad1   "  ?id "  anaginawa_saMKyA )" crlf))
)

;"myriad","N","1.anaginawa_saMKyA/xasa_sahaswra"
;He faced a myriad of details
;
