
(defrule plough0
(declare (salience 5000))
(id-root ?id plough)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vApisa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " plough.clp	plough0  "  ?id "  " ?id1 "  vApisa_le  )" crlf))
)

;He ploughed the money back from me due to some misunderstanding.
;usane kisI galwaPahamI ke kAraNa muJase rUpayA vApisa le liyA
(defrule plough1
(declare (salience 4900))
(id-root ?id plough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plough.clp 	plough1   "  ?id "  hala )" crlf))
)

(defrule plough2
(declare (salience 4800))
(id-root ?id plough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jowa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plough.clp 	plough2   "  ?id "  jowa )" crlf))
)

;"plough","V","1.jowanA"
;People plough the field to carry on their other agricultural tasks.
;
;