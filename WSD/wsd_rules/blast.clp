
(defrule blast0
(declare (salience 5000))
(id-root ?id blast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 udZAna_Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blast.clp	blast0  "  ?id "  " ?id1 "  udZAna_Bara  )" crlf))
)

;The rocket was blasted off.
;rAketa ne udZAna BarI
(defrule blast1
(declare (salience 4900))
(id-root ?id blast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wejI_se_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blast.clp	blast1  "  ?id "  " ?id1 "  wejI_se_nikala  )" crlf))
)

;The crowd blasted out from the theatre due to fire.
;Aga lagane ke kAraNa BIdZa wejI se Wiyetara se bAhara nikalI
(defrule blast2
(declare (salience 4800))
(id-root ?id blast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XamAkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blast.clp 	blast2   "  ?id "  XamAkA )" crlf))
)

(defrule blast3
(declare (salience 4700))
(id-root ?id blast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bArUxa_se_udZA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blast.clp 	blast3   "  ?id "  bArUxa_se_udZA_xe )" crlf))
)

;"blast","VT","1.bArUxa_se_udZA_xenA"
;--"2.jZora_se_bolanA"
;She tended to blast when speaking into a microphone
;
;