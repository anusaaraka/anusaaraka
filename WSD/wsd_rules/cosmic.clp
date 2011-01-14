
(defrule cosmic0
(declare (salience 5000))
(id-root ?id cosmic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id brahamANda_saMbaMXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cosmic.clp 	cosmic0   "  ?id "  brahamANda_saMbaMXI )" crlf))
)

(defrule cosmic1
(declare (salience 4900))
(id-root ?id cosmic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lOkika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cosmic.clp 	cosmic1   "  ?id "  lOkika )" crlf))
)

;"cosmic","Adj","1.lOkika"
;There is a cosmic power acting in the universe.
;--"2.bahuwa_badZA_evaM_mahawvapUrNa"
;The supercyclone in Orissa was a disaster of cosmic proportion.
;
;
