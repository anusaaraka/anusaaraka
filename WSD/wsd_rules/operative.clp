
(defrule operative0
(declare (salience 5000))
(id-root ?id operative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kriyAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operative.clp 	operative0   "  ?id "  kriyAwmaka )" crlf))
)

;"operative","Adj","1.kriyAwmaka"
;This rule will become operative from next year.
;
(defrule operative1
(declare (salience 4900))
(id-root ?id operative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArIgara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operative.clp 	operative1   "  ?id "  kArIgara )" crlf))
)

;"operative","N","1.kArIgara"
;He is an operative && sincere in the factory.
;
