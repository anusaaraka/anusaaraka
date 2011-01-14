
(defrule disguise0
(declare (salience 5000))
(id-root ?id disguise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BeRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disguise.clp 	disguise0   "  ?id "  BeRa )" crlf))
)

;"disguise","N","1.BeRa"
;The theatrical notion of disguise is always associated with catastrophe in his
;stories.
;
(defrule disguise1
(declare (salience 4900))
(id-root ?id disguise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BeRa_baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disguise.clp 	disguise1   "  ?id "  BeRa_baxala )" crlf))
)

;"disguise","VT","1.BeRa_baxalanA"
;The CID officer disguised himself as a potter to hide his identity.
;
