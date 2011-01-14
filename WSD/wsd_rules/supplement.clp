
(defrule supplement0
(declare (salience 5000))
(id-root ?id supplement)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id puraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  supplement.clp 	supplement0   "  ?id "  puraka )" crlf))
)

(defrule supplement1
(declare (salience 4900))
(id-root ?id supplement)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paripUrNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  supplement.clp 	supplement1   "  ?id "  paripUrNa_kara )" crlf))
)

;"supplement","V","1.paripUrNa karanA"
;A diet supplemented with Vitamin tablet.
;
;