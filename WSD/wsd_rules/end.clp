
(defrule end0
(declare (salience 5000))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " end.clp	end0  "  ?id "  " ?id1 "  pUrA_ho  )" crlf))
)

;He ended up in the hospital carelessness.
;vaha lAparavAhI kI vajaha se haspawAla meM pUrA ho gayA
(defrule end1
(declare (salience 4900))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) far)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUsarA_Cora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  end.clp 	end1   "  ?id "  xUsarA_Cora )" crlf))
)

;The house is at the far end of ..
(defrule end2
(declare (salience 4800))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " end.clp	end2  "  ?id "  " ?id1 "  samApwa_ho  )" crlf))
)

(defrule end3
(declare (salience 4700))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " end.clp	end3  "  ?id "  " ?id1 "  samApwa_ho  )" crlf))
)

(defrule end4
(declare (salience 4600))
(id-root ?id end)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  end.clp 	end4   "  ?id "  samApwa_ho )" crlf))
)

