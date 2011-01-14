
(defrule worst0
(declare (salience 5000))
(id-root ?id worst)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id worsted )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id awi_uwwama_UnI_XAgA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  worst.clp  	worst0   "  ?id "  awi_uwwama_UnI_XAgA )" crlf))
)

;"worsted","N","1.awi_uwwama_UnI_XAgA"
;Lucy has a blue worsted skirt.
;
(defrule worst1
(declare (salience 4900))
(id-root ?id worst)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saba_se_burA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worst.clp 	worst1   "  ?id "  saba_se_burA )" crlf))
)

;"worst","N","1.saba_se_burA"
;The train accident was a worst disaster.
;
(defrule worst2
(declare (salience 4800))
(id-root ?id worst)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worst.clp 	worst2   "  ?id "  jIwa )" crlf))
)

;"worst","VT","1.jIwanA"
;Shershah worsted all his enemies.
;
