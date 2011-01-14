
(defrule encore0
(declare (salience 5000))
(id-root ?id encore)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_xuharAne_kA_kahAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encore.clp 	encore0   "  ?id "  Pira_xuharAne_kA_kahAva )" crlf))
)

;"encore","N","1.Pira_xuharAne_kA_kahAva"
;Teacher asked children  to give encore to the answer.
;
(defrule encore1
(declare (salience 4900))
(id-root ?id encore)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuharAne_ke_liye_kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encore.clp 	encore1   "  ?id "  xuharAne_ke_liye_kaha )" crlf))
)

;"encore","VT","1.xuharAne_ke_liye_kahanA"
;Director told to hero to encore the dialogue.
;
