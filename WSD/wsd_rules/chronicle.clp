
(defrule chronicle0
(declare (salience 5000))
(id-root ?id chronicle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iwihAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chronicle.clp 	chronicle0   "  ?id "  iwihAsa )" crlf))
)

;"chronicle","N","1.iwihAsa/vqwwAnwa"
;He consulted the chronicles of the period to find the facts.
;
(defrule chronicle1
(declare (salience 4900))
(id-root ?id chronicle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iwihAsa_meM_liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chronicle.clp 	chronicle1   "  ?id "  iwihAsa_meM_liKa )" crlf))
)

;"chronicle","VT","1.iwihAsa_meM_liKanA"
;That institute chronicles the events.
;
