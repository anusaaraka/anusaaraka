
(defrule tamper0
(declare (salience 5000))
(id-root ?id tamper)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-with_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_haswakRepa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " tamper.clp tamper0 " ?id "  meM_haswakRepa_kara )" crlf)) 
)

(defrule tamper1
(declare (salience 4900))
(id-root ?id tamper)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-with_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_haswakRepa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " tamper.clp tamper1 " ?id "  meM_haswakRepa_kara )" crlf)) 
)

(defrule tamper2
(declare (salience 4800))
(id-root ?id tamper)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-with_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_haswakRepa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " tamper.clp tamper2 " ?id "  meM_haswakRepa_kara )" crlf)) 
)

(defrule tamper3
(declare (salience 4700))
(id-root ?id tamper)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 meM_haswakRepa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tamper.clp	tamper3  "  ?id "  " ?id1 "  meM_haswakRepa_kara  )" crlf))
)

(defrule tamper4
(declare (salience 4600))
(id-root ?id tamper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_haswakRepa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tamper.clp 	tamper4   "  ?id "  meM_haswakRepa_kara )" crlf))
)

;default_sense && category=verb	haswakRepa_kara	0
;"tamper","VT","1.haswakRepa_karanA"
;The officer told the clerk not to tamper with the file.
;
;