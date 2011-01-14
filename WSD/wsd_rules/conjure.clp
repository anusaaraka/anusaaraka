
(defrule conjure0
(declare (salience 5000))
(id-root ?id conjure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yAxa_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " conjure.clp	conjure0  "  ?id "  " ?id1 "  yAxa_A  )" crlf))
)

;The taste of that chocolate conjured up memories of school days.
;cAkaleta ke usa svAxa ne muJe skUla ke xina yAxa xilA xie
(defrule conjure1
(declare (salience 4900))
(id-root ?id conjure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAxU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  conjure.clp 	conjure1   "  ?id "  jAxU_kara )" crlf))
)

;"conjure","V","1.jAxU_karanA"
;The magician conjures before unfolding the trick.
;
;
