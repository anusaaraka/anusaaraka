
(defrule blunder0
(declare (salience 5000))
(id-root ?id blunder)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-away_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kuprabanXase_naRta_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blunder.clp	blunder0  "  ?id "  " ?id1 "  kuprabanXase_naRta_ho_jA  )" crlf))
)

(defrule blunder1
(declare (salience 4900))
(id-root ?id blunder)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kuprabanXase_naRta_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blunder.clp	blunder1  "  ?id "  " ?id1 "  kuprabanXase_naRta_ho_jA  )" crlf))
)

(defrule blunder2
(declare (salience 4800))
(id-root ?id blunder)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 binA_soce_bola_pada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blunder.clp	blunder2  "  ?id "  " ?id1 "  binA_soce_bola_pada  )" crlf))
)

(defrule blunder3
(declare (salience 4700))
(id-root ?id blunder)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 binA_soce_bola_pada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blunder.clp	blunder3  "  ?id "  " ?id1 "  binA_soce_bola_pada  )" crlf))
)

(defrule blunder4
(declare (salience 4600))
(id-root ?id blunder)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 binA_soce_bola_pada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blunder.clp	blunder4  "  ?id "  " ?id1 "  binA_soce_bola_pada  )" crlf))
)

(defrule blunder5
(declare (salience 4500))
(id-root ?id blunder)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 binA_soce_bola_pada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blunder.clp	blunder5  "  ?id "  " ?id1 "  binA_soce_bola_pada  )" crlf))
)

(defrule blunder6
(declare (salience 4400))
(id-root ?id blunder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA_soce_bola_pada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blunder.clp 	blunder6   "  ?id "  binA_soce_bola_pada )" crlf))
)

(defrule blunder7
(declare (salience 4300))
(id-root ?id blunder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blunder.clp 	blunder7   "  ?id "  cUka )" crlf))
)

;"blunder","N","1.cUka/BArI_BUla"
;I committed a blunder by not going there.
; 
;"blunder away","PhrV","1.kuprabanXase_naRta_ho jAnA"
;Antiques present in the museum blunder away.
;
;