
(defrule bump0
(declare (salience 5000))
(id-root ?id bump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_mila_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bump.clp	bump0  "  ?id "  " ?id1 "  acAnaka_mila_jA  )" crlf))
)

;I bumped into him in the fair.
;mEM acAnaka use mele meM mila gayA
(defrule bump1
(declare (salience 4900))
(id-root ?id bump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bump.clp	bump1  "  ?id "  " ?id1 "  mAra  )" crlf))
)

;The deer got bumped off by the lion.
(defrule bump2
(declare (salience 4800))
(id-root ?id bump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-off_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAra_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bump.clp	bump2  "  ?id "  " ?id1 "  mAra_dAla  )" crlf))
)

(defrule bump3
(declare (salience 4700))
(id-root ?id bump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAra_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bump.clp	bump3  "  ?id "  " ?id1 "  mAra_dAla  )" crlf))
)

(defrule bump4
(declare (salience 4600))
(id-root ?id bump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uBAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bump.clp 	bump4   "  ?id "  uBAra )" crlf))
)

;default_sense && category=noun	gumadZA	0
;"bump","N","1.gumadZA"
;He hit the wall very hard && got a bump on his forehead.
;--"2.takkara"
;The bump threw him off the bicycle
;
;