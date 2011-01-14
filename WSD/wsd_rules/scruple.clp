
(defrule scruple0
(declare (salience 5000))
(id-root ?id scruple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nEwika_saMkoca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scruple.clp 	scruple0   "  ?id "  nEwika_saMkoca )" crlf))
)

;"scruple","N","1.nEwika_saMkoca"
;He had no scruple in taking food at anyone's house.
;
(defrule scruple1
(declare (salience 4900))
(id-root ?id scruple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JiJaKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scruple.clp 	scruple1   "  ?id "  JiJaKa )" crlf))
)

;"scruple","V","1.JiJaKanA"
;She wouldn't scrupple to tell a lie if she thought it would be to her advantage.
;
