
(defrule seaward0
(declare (salience 5000))
(id-root ?id seaward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samuxrABimuKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seaward.clp 	seaward0   "  ?id "  samuxrABimuKa )" crlf))
)

;"seaward","Adj","1.samuxrABimuKa"
;Some people were running seaward.
;
(defrule seaward1
(declare (salience 4900))
(id-root ?id seaward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samuxra_kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seaward.clp 	seaward1   "  ?id "  samuxra_kI_ora )" crlf))
)

;"seaward","Adv","1.samuxra_kI_ora"
;Some people were running seaward.
;
