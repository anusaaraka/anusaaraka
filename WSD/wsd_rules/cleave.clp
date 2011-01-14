
(defrule cleave0
(declare (salience 5000))
(id-root ?id cleave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cipaka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cleave.clp	cleave0  "  ?id "  " ?id1 "  cipaka_jA  )" crlf))
)

;The paper cleaved to the wall.
;kAgajZa xIvAra se cipaka gayA
(defrule cleave1
(declare (salience 4900))
(id-root ?id cleave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vaPAxAra_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cleave.clp	cleave1  "  ?id "  " ?id1 "  vaPAxAra_raha  )" crlf))
)

;You should cleave to your principles.
;wumhe apane sixXAnwoM ke prawi vaPAxAra rahanA cAhie
(defrule cleave2
(declare (salience 4800))
(id-root ?id cleave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xviKaMdiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cleave.clp 	cleave2   "  ?id "  xviKaMdiwa_kara )" crlf))
)

;"cleave","V","1.xviKaMdiwa_karanA"
;The carpenter cleaved the wood into two.
;--"2.cipake_hue_rahanA"
;His parents are still cleaved to old ways of living.
;
;