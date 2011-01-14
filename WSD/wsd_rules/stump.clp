
(defrule stump0
(declare (salience 5000))
(id-root ?id stump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TUzTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stump.clp 	stump0   "  ?id "  TUzTa )" crlf))
)

;"stump","N","1.TUzTa"
;Here is the stump of a pencil. 
;--"2.stampa{kriketa}"
;Sachin's ball hit the stump.
;
(defrule stump1
(declare (salience 4900))
(id-root ?id stump)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTinAI_meM_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stump.clp 	stump1   "  ?id "  kaTinAI_meM_dAla )" crlf))
)

(defrule stump2
(declare (salience 4800))
(id-root ?id stump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTinAI_meM_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stump.clp 	stump2   "  ?id "  kaTinAI_meM_padZa )" crlf))
)

;"stump","V","1.kaTinAI_meM_padZanA[dAlanA]"
;The lecture stumped everybody.
;--"2.BARaNa_xewe_calanA"
;They stumped the whole district within a week.
;--"3.Auta_kara_xenA"
;The wicket keeper stumped the batsman.
;
