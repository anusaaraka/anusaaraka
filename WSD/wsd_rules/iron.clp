
(defrule iron0
(declare (salience 5000))
(id-root ?id iron)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hatA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " iron.clp	iron0  "  ?id "  " ?id1 "  hatA_xe  )" crlf))
)

;If you give me a chance,i can iron out all your problems.
;agara wuma muJe mOkA xo wo mEM wumhArI sArI pareSAniyAz xUra kara sakawA hUz
(defrule iron1
(declare (salience 4900))
(id-root ?id iron)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lohA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  iron.clp 	iron1   "  ?id "  lohA )" crlf))
)

(defrule iron2
(declare (salience 4800))
(id-root ?id iron)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iswrI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  iron.clp 	iron2   "  ?id "  iswrI_kara )" crlf))
)

;"iron","VT","1.iswrI_karanA"
;She listens to music while ironing.
;
;
