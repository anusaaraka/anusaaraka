
(defrule mammoth0
(declare (salience 5000))
(id-root ?id mammoth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mammoth.clp 	mammoth0   "  ?id "  viSAla )" crlf))
)

;"mammoth","Adj","1.viSAla"
;He has taken the mammoth task of cleaning the city.
;
(defrule mammoth1
(declare (salience 4900))
(id-root ?id mammoth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEmaWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mammoth.clp 	mammoth1   "  ?id "  mEmaWa )" crlf))
)

;"mammoth","N","1.mEmaWa"
;An extinct hairy elephant.
;
