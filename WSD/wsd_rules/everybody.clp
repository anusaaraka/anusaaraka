
(defrule everybody0
(declare (salience 5000))
(id-root ?id everybody)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawyeka_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  everybody.clp 	everybody0   "  ?id "  prawyeka_vyakwi )" crlf))
)

(defrule everybody1
(declare (salience 4900))
(id-root ?id everybody)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawyeka_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  everybody.clp 	everybody1   "  ?id "  prawyeka_vyakwi )" crlf))
)

;"everybody","Pron","1.prawyeka_vyakwi"
;Everybody was anxiously waiting for the final results.
;
