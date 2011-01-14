
(defrule polish0
(declare (salience 5000))
(id-root ?id polish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id polished )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pAliSaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  polish.clp  	polish0   "  ?id "  pAliSaxAra )" crlf))
)

(defrule polish1
(declare (salience 4900))
(id-root ?id polish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " polish.clp	polish1  "  ?id "  " ?id1 "  samApwa_kara  )" crlf))
)

;She polished off her work in the midnight.
;usane apanA kArya AXI rAwa meM samApwa kiyA
(defrule polish2
(declare (salience 4800))
(id-root ?id polish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pOYliSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  polish.clp 	polish2   "  ?id "  pOYliSa )" crlf))
)

(defrule polish3
(declare (salience 4700))
(id-root ?id polish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  polish.clp 	polish3   "  ?id "  camakA )" crlf))
)

;"polish","V","1.camakAnA"
;Before going to school, polish your shoes properly.
;--"2.pariRkqwa honA/saMvArA jAnA"
;Please polish up your article before sending.
;
;