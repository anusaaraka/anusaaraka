
(defrule mystic0
(declare (salience 5000))
(id-root ?id mystic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gUDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mystic.clp 	mystic0   "  ?id "  gUDZa )" crlf))
)

;"mystic","Adj","1.gUDZa"
;Mystical intuition
;Mystical religion
;
(defrule mystic1
(declare (salience 4900))
(id-root ?id mystic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rahasyavAxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mystic.clp 	mystic1   "  ?id "  rahasyavAxI )" crlf))
)

;"mystic","N","1.rahasyavAxI"
