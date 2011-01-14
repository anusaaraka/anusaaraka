
(defrule desolate0
(declare (salience 5000))
(id-root ?id desolate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ujAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desolate.clp 	desolate0   "  ?id "  ujAdZa )" crlf))
)

;"desolate","Adj","1.ujAdZa"
;I saw a  desolate && despairing home in the town.
;--"2.akelA"
;She was feeling quite desolate after her friend left for home.
;
(defrule desolate1
(declare (salience 4900))
(id-root ?id desolate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ujAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desolate.clp 	desolate1   "  ?id "  ujAdZa )" crlf))
)

;"desolate","VT","1.ujAdZanA"
;The city was desolated after the war.
;--"2.akelA_mahasUsa_karanA"
;Ram was  depressed && desolated after he lost his daughter.
;
