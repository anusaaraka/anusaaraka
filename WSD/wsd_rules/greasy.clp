
(defrule greasy0
(declare (salience 5000))
(id-root ?id greasy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wela_yukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  greasy.clp 	greasy0   "  ?id "  wela_yukwa )" crlf))
)

(defrule greasy1
(declare (salience 4900))
(id-root ?id greasy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  greasy.clp 	greasy1   "  ?id "  cikanA )" crlf))
)

;"greasy","Adj","1.cikanA"
;The pipes are greasy after oiling.
;--"2.aXika_carabI_vAlA_KAnA
;Traditional Indian food is very spicy && greasy.
;
;
