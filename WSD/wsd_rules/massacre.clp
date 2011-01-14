
(defrule massacre0
(declare (salience 5000))
(id-root ?id massacre)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hawyAkANda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  massacre.clp 	massacre0   "  ?id "  hawyAkANda )" crlf))
)

;"massacre","N","1.hawyAkANda"
;There was a blood massacre of innocent civilians.
;
(defrule massacre1
(declare (salience 4900))
(id-root ?id massacre)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kawle_Ama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  massacre.clp 	massacre1   "  ?id "  kawle_Ama_kara )" crlf))
)

;"massacre","V","1.kawle_Ama_karanA"
;The bandits massacred the villagers.
;
