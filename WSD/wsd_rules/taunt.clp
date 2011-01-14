
(defrule taunt0
(declare (salience 5000))
(id-root ?id taunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  taunt.clp 	taunt0   "  ?id "  wAnA )" crlf))
)

;"taunt","N","1.wAnA"
;The journalist ignored the taunts of the public .
;
(defrule taunt1
(declare (salience 4900))
(id-root ?id taunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAnA_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  taunt.clp 	taunt1   "  ?id "  wAnA_mAra )" crlf))
)

;"taunt","V","1.wAnA_mAranA"
(defrule taunt2
(declare (salience 4800))
(id-root ?id taunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAnA_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  taunt.clp 	taunt2   "  ?id "  wAnA_mAra )" crlf))
)

;"taunt","VT","1.wAnA_mAranA"
;The master taunts him in public.
;
