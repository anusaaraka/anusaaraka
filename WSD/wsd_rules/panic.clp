
(defrule panic0
(declare (salience 5000))
(id-root ?id panic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanwrAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  panic.clp 	panic0   "  ?id "  sanwrAsa )" crlf))
)

;"panic","N","1.sanwrAsa"
;A  decision made by me in panic effected me in the long run.
;
(defrule panic1
(declare (salience 4900))
(id-root ?id panic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanwrAswa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  panic.clp 	panic1   "  ?id "  sanwrAswa_ho )" crlf))
)

;"panic","V","1.sanwrAswa_honA"
;The sound of the fire shot panicked the people.
;
