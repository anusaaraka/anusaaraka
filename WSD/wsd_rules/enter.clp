
(defrule enter0
(declare (salience 5000))
(id-root ?id enter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SurUAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " enter.clp	enter0  "  ?id "  " ?id1 "  SurUAwa_kara  )" crlf))
)

;We have entered on the new business.
;hamane nae vyApAra kI SurUAwa kI hE
(defrule enter1
(declare (salience 4900))
(id-root ?id enter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praveSa_kara))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enter.clp 	enter1   "  ?id "  praveSa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  enter.clp     enter1   "  ?id " meM )" crlf)
)
)

;"enter","V","1.praveSa_kara"
(defrule enter2
(declare (salience 4800))
(id-root ?id enter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIwara_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enter.clp 	enter2   "  ?id "  BIwara_A )" crlf))
)

;"enter","VI","1.BIwara_AnA"
;The ship entered an area of shallow marshes..
;
(defrule enter3
(declare (salience 4700))
(id-root ?id enter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GusA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enter.clp 	enter3   "  ?id "  GusA )" crlf))
)

;"enter","VT","1.GusAnA"
;He entered her name in the school register.
;
