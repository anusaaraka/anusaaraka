
(defrule combine0
(declare (salience 5000))
(id-root ?id combine)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  combine.clp 	combine0   "  ?id "  milA )" crlf))
)

(defrule combine1
(declare (salience 4900))
(id-root ?id combine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  combine.clp 	combine1   "  ?id "  mila )" crlf))
)

;"combine","V","1.milanA[milAnA]"
;Combine resources.
;These forces combined with others
;
