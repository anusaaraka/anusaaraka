
(defrule plumb0
(declare (salience 5000))
(id-root ?id plumb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id plumbing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nalasAjZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plumb.clp  	plumb0   "  ?id "  nalasAjZI )" crlf))
)

;"plumbing","N","1.nalasAjZI"
;Only plumber can do plumbing well.
;
(defrule plumb1
(declare (salience 4900))
(id-root ?id plumb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plumb.clp 	plumb1   "  ?id "  TIka )" crlf))
)

;"plumb","Adv","1.TIka"
;He fell plumb in the middle of the drama.
;
(defrule plumb2
(declare (salience 4800))
(id-root ?id plumb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharAI_meM_jAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plumb.clp 	plumb2   "  ?id "  gaharAI_meM_jAna )" crlf))
)

;"plumb","V","1.gaharAI_meM_jAnanA"
;He immediately plumbed into the new research problem.
;
