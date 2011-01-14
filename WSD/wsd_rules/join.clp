
(defrule join0
(declare (salience 5000))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samUha_meM_SAmila_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " join.clp	join0  "  ?id "  " ?id1 "  samUha_meM_SAmila_ho  )" crlf))
)

;They were going for a movie && i joined on.
;ve sinemA jA rahe We Ora mEM BI unake samUha meM SAmila ho gayA
(defrule join1
(declare (salience 4900))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 surakRAbala_kA_saxasya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " join.clp	join1  "  ?id "  " ?id1 "  surakRAbala_kA_saxasya_ho  )" crlf))
)

;He joined up in 1950.
;1950 meM vaha surakRAbala kA saxasya banA
(defrule join2
(declare (salience 4800))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  join.clp 	join2   "  ?id "  mila )" crlf))
)

;default_sense && category=verb	saMyukwa_kara	0
;"join","VT","1.saMyukwa_karanA"
;I have joined the two wires.
;--"2.milanA"
;Lets join together in our effort to bring peace in the society.
;--"3.SAmila_honA"
;I joined the Navy in 1998.
;
;
