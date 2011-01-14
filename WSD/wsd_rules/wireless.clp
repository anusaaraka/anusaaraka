
(defrule wireless0
(declare (salience 5000))
(id-root ?id wireless)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA_wAra_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wireless.clp 	wireless0   "  ?id "  binA_wAra_kA )" crlf))
)

;"wireless","N","1.binA_wAra_kA"
;Morse invented wireless communication.
;
(defrule wireless1
(declare (salience 4900))
(id-root ?id wireless)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bewAra_kA_wAra_Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wireless.clp 	wireless1   "  ?id "  bewAra_kA_wAra_Beja )" crlf))
)

;"wireless","VT","1.bewAra_kA_wAra_BejanA"
;Wireless the messages to the army front.
;
