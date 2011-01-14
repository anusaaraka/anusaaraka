
(defrule inside0
(declare (salience 5000))
(id-root ?id inside)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) from)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_aMxara_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inside.clp 	inside0   "  ?id "  ke_aMxara_se )" crlf))
)

(defrule inside1
(declare (salience 4900))
(id-root ?id inside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aByanwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inside.clp 	inside1   "  ?id "  aByanwara )" crlf))
)

;"inside","N","1.aByanwara"
;The inside of the temple was carved on marble.
;
(defrule inside2
(declare (salience 4800))
(id-root ?id inside)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_anxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inside.clp 	inside2   "  ?id "  ke_anxara )" crlf))
)

;"inside","Prep","1.ke_anxara"
;Roman emperors had bath spas inside their palaces.
;
