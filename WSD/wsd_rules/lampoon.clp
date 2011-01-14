
(defrule lampoon0
(declare (salience 5000))
(id-root ?id lampoon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ninxA_leKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lampoon.clp 	lampoon0   "  ?id "  ninxA_leKa )" crlf))
)

;"lampoon","N","1.ninxA_leKa"
;Editor should have thought before printing such kind of lampoon in his newspaper.
;
(defrule lampoon1
(declare (salience 4900))
(id-root ?id lampoon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ninxA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lampoon.clp 	lampoon1   "  ?id "  ninxA_kara )" crlf))
)

;"lampoon","V","1.ninxA_karanA"
;He was lampooned by her friend in front of the whole class.
;
