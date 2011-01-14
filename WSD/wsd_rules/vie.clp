
(defrule vie0
(declare (salience 5000))
(id-root ?id vie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id vying )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sparXA_karawe_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  vie.clp  	vie0   "  ?id "  sparXA_karawe_hue )" crlf))
)

;"vying","V","1.sparXA_karawe_hue"
;Businessmen vying for their customer's attention 
;
(defrule vie1
(declare (salience 4900))
(id-root ?id vie)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sparXA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vie.clp 	vie1   "  ?id "  sparXA_kara )" crlf))
)

;"vie","VT","1.sparXA_karanA"
;They vied with one another to win the competition
;
;
