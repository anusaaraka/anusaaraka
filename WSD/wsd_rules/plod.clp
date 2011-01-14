
(defrule plod0
(declare (salience 5000))
(id-root ?id plod)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id plodding )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pariSramI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plod.clp  	plod0   "  ?id "  pariSramI )" crlf))
)

;"plodding","Adj","1.pariSramI"
;Labourers are the example of plodding those who work in factories.
;
(defrule plod1
(declare (salience 4900))
(id-root ?id plod)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariSrama_se_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plod.clp 	plod1   "  ?id "  pariSrama_se_cala )" crlf))
)

;"plod","V","1.pariSrama se calanA"
;Farmers have to plod in fields while passing through it.
;
;