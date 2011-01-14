
(defrule strange0
(declare (salience 5000))
(id-root ?id strange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viciwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strange.clp 	strange0   "  ?id "  viciwra )" crlf))
)

(defrule strange1
(declare (salience 4900))
(id-root ?id strange)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anoKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strange.clp 	strange1   "  ?id "  anoKA )" crlf))
)

;"strange","Adj","1.anoKA"
;Everybody makes fun of Hari as he wears strange clothes.
;
;
