
(defrule insistent0
(declare (salience 5000))
(id-root ?id insistent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurAgrahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insistent.clp 	insistent0   "  ?id "  xurAgrahI )" crlf))
)

(defrule insistent1
(declare (salience 4900))
(id-root ?id insistent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haTI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  insistent.clp 	insistent1   "  ?id "  haTI )" crlf))
)

;"insistent","Adj","1.haTI"
;The lady could not manage her child's insistent behaviour.
;--"2.AgrahapUrNa"
;
;
