
(defrule seclude0
(declare (salience 5000))
(id-root ?id seclude)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id secluded )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ekAMwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  seclude.clp  	seclude0   "  ?id "  ekAMwa )" crlf))
)

;"secluded","Adj","1.ekAMwa"
;I want to live in a secluded place.
;
(defrule seclude1
(declare (salience 4900))
(id-root ?id seclude)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAja_se_xUra_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seclude.clp 	seclude1   "  ?id "  samAja_se_xUra_raKa )" crlf))
)

;"seclude","V","1.samAja se xUra raKanA"
;Widows were secluded in ancient period.
;
;