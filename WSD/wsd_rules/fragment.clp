
(defrule fragment0
(declare (salience 5000))
(id-root ?id fragment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tukadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fragment.clp 	fragment0   "  ?id "  tukadZA )" crlf))
)

;"fragment","N","1.tukadZA"
;The glass broke into small faragements.
;
(defrule fragment1
(declare (salience 4900))
(id-root ?id fragment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fragment.clp 	fragment1   "  ?id "  wodZa )" crlf))
)

;"fragment","V","1.wodZanA"
;The ownership of the farm is increasingly fragmented.
;
