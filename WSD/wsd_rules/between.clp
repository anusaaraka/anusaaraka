
(defrule between0
(declare (salience 5000))
(id-root ?id between)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) choose)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  between.clp 	between0   "  ?id "  meM_se )" crlf))
)

(defrule between1
(declare (salience 4900))
(id-root ?id between)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bIca_kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  between.clp 	between1   "  ?id "  ke_bIca_kI )" crlf))
)


;Salience changed from 4800 to 4900 so that it takes the meaning "ke_bIca" for the sentences like
;Why is there such a divorce between the arts and the sciences in this country's schools ? 
(defrule between2
(declare (salience 4900))
(id-root ?id between)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bIca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  between.clp 	between2   "  ?id "  ke_bIca )" crlf))
)

;"between","Prep","1.ke_bIca"
;The house was between the trees.
;
