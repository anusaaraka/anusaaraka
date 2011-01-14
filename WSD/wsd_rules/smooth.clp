
(defrule smooth0
(declare (salience 5000))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smooth.clp 	smooth0   "  ?id "  cikanA )" crlf))
)

(defrule smooth1
(declare (salience 4900))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sapAta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " smooth.clp	smooth1  "  ?id "  " ?id1 "  sapAta_kara  )" crlf))
)

(defrule smooth2
(declare (salience 4800))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sapAta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " smooth.clp	smooth2  "  ?id "  " ?id1 "  sapAta_kara  )" crlf))
)

(defrule smooth3
(declare (salience 4700))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sapAta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smooth.clp 	smooth3   "  ?id "  sapAta_kara )" crlf))
)

(defrule smooth4
(declare (salience 4600))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smooth.clp 	smooth4   "  ?id "  cikanA )" crlf))
)

;"smooth","Adj","1.cikanA"
;She had a smooth face.
;--"2.maXura"   
;The Ice cream was smooth.
;She has a smooth voice.
;--"3.barAbara"
;The path was smooth.
;--"4.nirviGna"
;The journey was smooth.
;--"5.SAnwa"
;The receptionist was smooth.
;
;