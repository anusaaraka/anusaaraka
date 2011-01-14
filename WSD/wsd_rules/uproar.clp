
(defrule uproar0
(declare (salience 5000))
(id-root ?id uproar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kolAhala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  uproar.clp 	uproar0   "  ?id "  kolAhala )" crlf))
)

;"uproar","Adj","1.kolAhala/XUmaXAma/baKedZA"
;There is uproar in the Lok Sabha nowadays.
;
(defrule uproar1
(declare (salience 4900))
(id-root ?id uproar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kolAhala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  uproar.clp 	uproar1   "  ?id "  kolAhala )" crlf))
)

;"uproar","N","1.kolAhala"
