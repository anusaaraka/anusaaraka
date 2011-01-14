
(defrule cry0
(declare (salience 5000))
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 manA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cry.clp	cry0  "  ?id "  " ?id1 "  manA_kara  )" crlf))
)

;She cried off the party at last moment.
;AKirI kRaNoM meM usane pArtI ke lie manA kara xiyA
; Added by human
(defrule cry1
(declare (salience 4900))
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 baby)
(kriyA-subject ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ro))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cry.clp 	cry1   "  ?id "  ro )" crlf))
)

(defrule cry2
(declare (salience 4800))
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cry.clp 	cry2   "  ?id "  nAxa )" crlf))
)

(defrule cry3
(declare (salience 4700))
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jora_se_cillA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cry.clp	cry3  "  ?id "  " ?id1 "  jora_se_cillA  )" crlf))
)

(defrule cry4
(declare (salience 4600))
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jora_se_cillA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cry.clp	cry4  "  ?id "  " ?id1 "  jora_se_cillA  )" crlf))
)

(defrule cry5
(declare (salience 4500))
(id-root ?id cry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cry.clp 	cry5   "  ?id "  cIKa )" crlf))
)

;default_sense && category=verb	ro	0
;"cry","VI","1.ronA"
;People cry when they are in pain
;--"2.cillAnA"
;When the intruder entered her place she cried for help
;
;
