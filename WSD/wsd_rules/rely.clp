
(defrule rely0
(declare (salience 5000))
(id-root ?id rely)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upon_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para_BarosA_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " rely.clp rely0 " ?id "  para_BarosA_kara )" crlf)) 
)

(defrule rely1
(declare (salience 4900))
(id-root ?id rely)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 para_BarosA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " rely.clp	rely1  "  ?id "  " ?id1 "  para_BarosA_kara  )" crlf))
)

(defrule rely2
(declare (salience 4800))
(id-root ?id rely)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rely.clp 	rely2   "  ?id "  viSvAsa_kara )" crlf))
)

;"rely","VT","1.viSvAsa_karanA"
;You may rely upon me for help.
;--"2.nirBara karanA"
;Nowadays we rely on computers to regulate the flow of traffic in the city. 
;
;