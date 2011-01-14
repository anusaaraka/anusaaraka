
(defrule laugh0
(declare (salience 5000))
(id-root ?id laugh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hazsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  laugh.clp 	laugh0   "  ?id "  hazsI )" crlf))
)

;"laugh","N","1.hazsI"
;We had a good laugh at his embarrassment.
;
(defrule laugh1
(declare (salience 4900))
(id-root ?id laugh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hazsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  laugh.clp 	laugh1   "  ?id "  hazsa )" crlf))
)

;"laugh","V","1.hazsanA"
;The child's antics made everybody laugh.
;It is easy to laugh at others but difficult to laugh at oneself.
;
