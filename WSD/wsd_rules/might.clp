;Commented this rule by Roja(27-12-13). Suggested by Sukhada. Modal verbs are handled in LWG.
;(defrule might0
;(declare (salience 5000))
;(id-root ?id might)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id modal)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id hogA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  might.clp 	might0   "  ?id "  hogA )" crlf))
;)

;"might","AuxV","1.hogA{SAyaxa}"
;Call before you go, as he might not be expecting you.
;--"2.sakanA"
;He might get upset if we do not go there.
;
(defrule might1
(declare (salience 4900))
(id-root ?id might)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  might.clp 	might1   "  ?id "  bala )" crlf))
)

;"might","N","1.bala"
;Might is not always right.
;
