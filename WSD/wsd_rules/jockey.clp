
(defrule jockey0
(declare (salience 5000))
(id-root ?id jockey)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GudZa_xOdZa_kA_peSevara_GudasavAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jockey.clp 	jockey0   "  ?id "  GudZa_xOdZa_kA_peSevara_GudasavAra )" crlf))
)

;"jockey","N","1.GudZa_xOdZa_kA_peSevara_GudasavAra"
;Pesi Shroff is the most famous jockey in India.
;
(defrule jockey1
(declare (salience 4900))
(id-root ?id jockey)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Taga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jockey.clp 	jockey1   "  ?id "  Taga )" crlf))
)

;"jockey","VT","1.TaganA"
;Some shopkeepers jockey foreign tourists to make money.
;
