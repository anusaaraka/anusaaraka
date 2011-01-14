
(defrule pig0
(declare (salience 5000))
(id-root ?id pig)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pig.clp 	pig0   "  ?id "  suara )" crlf))
)

(defrule pig1
(declare (salience 4900))
(id-root ?id pig)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pig.clp 	pig1   "  ?id "  bahuwa_KA )" crlf))
)

;"pig","V","1.bahuwa KAnA"
;We pigged out on pizza && chicken wings.
;
;