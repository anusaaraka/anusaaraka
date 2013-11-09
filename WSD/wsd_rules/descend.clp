
(defrule descend0
(declare (salience 5000))
(id-root ?id descend)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " descend.clp	descend0  "  ?id "  " ?id1 "  AkramaNa_kara  )" crlf))
)

;A crowd of press(photographers)descended on the hotel.
;presa kI BIdZa hotala para tUta padZI
(defrule descend1
(declare (salience 4900))
(id-root ?id descend)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upon_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acAnaka_A));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " descend.clp descend1 " ?id "  acAnaka_A )" crlf)) 
)

(defrule descend2
(declare (salience 4800))
(id-root ?id descend)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " descend.clp	descend2  "  ?id "  " ?id1 "  acAnaka_A  )" crlf))
)

(defrule descend3
(declare (salience 4700))
(id-root ?id descend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  descend.clp 	descend3   "  ?id "  uwara )" crlf))
)

;default_sense && category=verb	uwara	0
;"descend","VT","1.uwaranA"
;They descended from the stairs rather quietly.
;
;
