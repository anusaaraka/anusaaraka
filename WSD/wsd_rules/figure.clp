
(defrule figure0
(declare (salience 5000))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id figured )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id alaMkqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  figure.clp  	figure0   "  ?id "  alaMkqwa )" crlf))
)

;"figured","Adj","1.alaMkqwa"
;
;
(defrule figure1
(declare (salience 4900))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " figure.clp	figure1  "  ?id "  " ?id1 "  samaJa  )" crlf))
)

;I can't figure out his rudeness.
;mEM usakI beruKZI ko samaJa nahIM pA rahA hUz
(defrule figure2
(declare (salience 4800))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-on_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumAna_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " figure.clp figure2 " ?id "  anumAna_kara )" crlf)) 
)

(defrule figure3
(declare (salience 4700))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anumAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " figure.clp	figure3  "  ?id "  " ?id1 "  anumAna_kara  )" crlf))
)

(defrule figure4
(declare (salience 4600))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samAXAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " figure.clp	figure4  "  ?id "  " ?id1 "  samAXAna_kara  )" crlf))
)

;I finally figured out why this program is so slow.
;Added by Sheetal(02-08-10)
(defrule figure5
(declare (salience 4500))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-subject ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawA_lagA))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " figure.clp	figure5  "  ?id "  " ?id1 "  pawA_lagA  )" crlf))
)

(defrule figure6
(declare (salience 4400))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAXAna_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " figure.clp figure6 " ?id "  samAXAna_ho )" crlf)) 
)

(defrule figure7
(declare (salience 4300))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samAXAna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " figure.clp	figure7  "  ?id "  " ?id1 "  samAXAna_ho  )" crlf))
)

(defrule figure8
(declare (salience 4200))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  figure.clp 	figure8   "  ?id "  aMka )" crlf))
)

(defrule figure9
(declare (salience 4100))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalpanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  figure.clp 	figure9   "  ?id "  kalpanA_kara )" crlf))
)

;default_sense && category=verb	xiKAI_xe	0
;"figure","V","1.xiKAI_xenA"
;His name figures in the list of suspects.
;--"2.kalpanA_karanA"
;By the way they were talking he figured it out that they will not come.
;
;
