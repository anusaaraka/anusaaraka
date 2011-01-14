
(defrule nine0
(declare (salience 5000))
(id-root ?id nine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nO))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nine.clp 	nine0   "  ?id "  nO )" crlf))
)

;"nine","Det","1.nO"
;Nine out of ten children got good percentage.
;
(defrule nine1
(declare (salience 4900))
(id-root ?id nine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nO))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nine.clp 	nine1   "  ?id "  nO )" crlf))
)

;"nine","N","1.nO"
;Nine out of ten children got good percentage.
;
