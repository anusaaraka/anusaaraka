
(defrule plain0
(declare (salience 5000))
(id-root ?id plain)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAXAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plain.clp 	plain0   "  ?id "  sAXAraNa )" crlf))
)

(defrule plain1
(declare (salience 4900))
(id-root ?id plain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samawala_BUmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plain.clp 	plain1   "  ?id "  samawala_BUmI )" crlf))
)

;"plain","N","1.samawala BUmI"
;We have the plains at the out skirts of the town.
;
;
