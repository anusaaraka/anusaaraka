
(defrule fluster0
(declare (salience 5000))
(id-root ?id fluster)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GabadZAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fluster.clp 	fluster0   "  ?id "  GabadZAhata )" crlf))
)

;"fluster","N","1.GabadZAhata"
;The students were in a state of fluster due to the new circular from the principal.
;
(defrule fluster1
(declare (salience 4900))
(id-root ?id fluster)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GabadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fluster.clp 	fluster1   "  ?id "  GabadZA )" crlf))
)

;"fluster","V","1.GabadZAnA"
;He gets terribly flustered even with minor problems.
;
