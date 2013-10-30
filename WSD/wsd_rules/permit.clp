
(defrule permit0
(declare (salience 5000))
(id-root ?id permit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-of_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samBava_na_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " permit.clp	permit0  "  ?id "  " ?id1 "  samBava_na_ho  )" crlf))
)

(defrule permit1
(declare (salience 4900))
(id-root ?id permit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-of_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samBava_na_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " permit.clp	permit1  "  ?id "  " ?id1 "  samBava_na_ho  )" crlf))
)

(defrule permit2
(declare (salience 4800))
(id-root ?id permit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-of_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samBava_na_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " permit.clp	permit2  "  ?id "  " ?id1 "  samBava_na_ho  )" crlf))
)

(defrule permit3
(declare (salience 4700))
(id-root ?id permit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samBava_na_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " permit.clp	permit3  "  ?id "  " ?id1 "  samBava_na_ho  )" crlf))
)

(defrule permit4
(declare (salience 4600))
(id-root ?id permit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumawi_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  permit.clp 	permit4   "  ?id "  anumawi_xe )" crlf))
)

;default_sense && category=verb	anumawi xe	0
;"permit","V","1.anumawi xenA"
;The security gaurd permitted the students in to the musium.
;--"2.karane xenA"
;School admission should be reopened as soon as circumstances permit.
;
;