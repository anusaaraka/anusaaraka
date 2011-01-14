
(defrule nerve0
(declare (salience 5000))
(id-root ?id nerve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nerve.clp 	nerve0   "  ?id "  nasa )" crlf))
)

(defrule nerve1
(declare (salience 4900))
(id-root ?id nerve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sakwi_praxAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nerve.clp 	nerve1   "  ?id "  Sakwi_praxAna_kara )" crlf))
)

;"nerve","VT","1.Sakwi_praxAna_karanA"
;Nerve yourself for the finals.
;
;