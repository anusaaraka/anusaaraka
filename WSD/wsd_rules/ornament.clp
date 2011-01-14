
(defrule ornament0
(declare (salience 5000))
(id-root ?id ornament)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ABURaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ornament.clp 	ornament0   "  ?id "  ABURaNa )" crlf))
)

;"ornament","N","1.ABURaNa"
;Now-a-days the gold ornaments are very costly.
;
(defrule ornament1
(declare (salience 4900))
(id-root ?id ornament)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBURiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ornament.clp 	ornament1   "  ?id "  viBURiwa_kara )" crlf))
)

;"ornament","VT","1.viBURiwa_karanA"
;The dress elaborately ornamented with lace was so nice.
;
