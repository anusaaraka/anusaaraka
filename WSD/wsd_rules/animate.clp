
(defrule animate0
(declare (salience 5000))
(id-root ?id animate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id animated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id joSapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  animate.clp  	animate0   "  ?id "  joSapUrNa )" crlf))
)

;"animated","Adj","1.joSapUrNa"
;Freedom fighters used to have animated discussions.
;
(defrule animate1
(declare (salience 4900))
(id-root ?id animate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIvana_saMcAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  animate.clp 	animate1   "  ?id "  jIvana_saMcAra_kara )" crlf))
)

;"animate","VT","1.jIvana saMcAra karanA/prANa dAlanA"
;Few words of consolation animated the widow's life. 
;
;
