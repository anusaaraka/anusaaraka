
(defrule sew0
(declare (salience 5000))
(id-root ?id sew)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sewing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id silAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sew.clp  	sew0   "  ?id "  silAI )" crlf))
)

;"sewing","N","1.silAI"
;Old ladies enjoy sewing && knitting.
;
(defrule sew1
(declare (salience 4900))
(id-root ?id sew)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sew.clp 	sew1   "  ?id "  sI )" crlf))
)

;"sew","V","1.sInA/silAI karanA"
;She doesn't know even how to sew a button on to a shirt.
;
;