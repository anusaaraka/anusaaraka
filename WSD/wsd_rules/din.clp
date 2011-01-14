
(defrule din0
(declare (salience 5000))
(id-root ?id din)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Soragula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  din.clp 	din0   "  ?id "  Soragula )" crlf))
)

;"din","N","1.Soragula"
;The bar was full of din.
;
(defrule din1
(declare (salience 4900))
(id-root ?id din)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Soragula_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  din.clp 	din1   "  ?id "  Soragula_kara )" crlf))
)

;"din","VT","1.Soragula_karanA"
;The politicians dinned in the Lok Sabha.
;
