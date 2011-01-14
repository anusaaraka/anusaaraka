
(defrule blacken0
(declare (salience 5000))
(id-root ?id blacken)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id blacking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id syAhIr))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  blacken.clp  	blacken0   "  ?id "  syAhIr )" crlf))
)

;"blacking","N","1.syAhIr{camadZA_Axi_camakAne_kI_syAhI}"
(defrule blacken1
(declare (salience 4900))
(id-root ?id blacken)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blacken.clp 	blacken1   "  ?id "  kAlA_kara )" crlf))
)

