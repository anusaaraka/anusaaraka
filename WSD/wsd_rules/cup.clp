
;Added by Meena(17.9.09)
;Would you like a cup of tea?
(defrule cup0
(declare (salience 5000))
(id-root ?id cup)
?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 ?)
(viSeRya-det_viSeRaNa ?id ?id1)
(not(viSeRya-RaRTI_viSeRaNa ?id ?id1))
(viSeRya-of_saMbanXI ?id ?id2)
(id-root ?id3 of)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id3 ?id2 pyAlA_cAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cup.clp	cup0  "  ?id "  " ?id3 " " ?id2"  pyAlA_cAya  )" crlf))
)




;Added by Meena(17.9.09)
;This is not my cup of tea.
(defrule cup1
(declare (salience 6000))
(id-root ?id cup)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id2 of)
(viSeRya-RaRTI_viSeRaNa ?id ?id1)
(not(viSeRya-det_viSeRaNa ?id ?id1))
(viSeRya-of_saMbanXI ?id ?id3)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 ?id3 mawalaba_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cup.clp	cup1  "  ?id "  " ?id1 "  " ?id3" mawalaba_kA  )" crlf))
)




(defrule cup2
(declare (salience 4000))
(id-root ?id cup)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pyAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cup.clp 	cup2   "  ?id "  pyAlA )" crlf))
)

(defrule cup3
(declare (salience 4900))
(id-root ?id cup)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pyAle_ke_rUpa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cup.clp 	cup3   "  ?id "  pyAle_ke_rUpa_xe )" crlf))
)

;"cup","VT","1.pyAle_ke_rUpa_xenA"
;The girl was holding the berries in her cupped hands
;
;
