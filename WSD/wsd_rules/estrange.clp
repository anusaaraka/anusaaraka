
(defrule estrange0
(declare (salience 5000))
(id-root ?id estrange)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id estranged )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id alaga_raha_rahe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  estrange.clp  	estrange0   "  ?id "  alaga_raha_rahe )" crlf))
)

;"estranged","Adj","1.alaga_raha_rahe{pawi_yA_pawni}"
;She made no attempt to reconciliate with her estranged husband. 
;
(defrule estrange1
(declare (salience 4900))
(id-root ?id estrange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  estrange.clp 	estrange1   "  ?id "  alaga_kara_xe )" crlf))
)

;"estrange","V","1.alaga_kara_xenA/xUra_raKanA"
;He was stranged from his second wife.
;
