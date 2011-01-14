
(defrule butter0
(declare (salience 5000))
(id-root ?id butter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 maskA_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " butter.clp	butter0  "  ?id "  " ?id1 "  maskA_mAra  )" crlf))
)

;He's always buttering up his Boss.
;vaha hameMSAM apane bAsa ko maskA mArawA hE
(defrule butter1
(declare (salience 4900))
(id-root ?id butter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id makKana_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  butter.clp 	butter1   "  ?id "  makKana_lagA )" crlf))
)

(defrule butter2
(declare (salience 4800))
(id-root ?id butter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id makKana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  butter.clp 	butter2   "  ?id "  makKana )" crlf))
)

(defrule butter3
(declare (salience 4700))
(id-root ?id butter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id makKana_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  butter.clp 	butter3   "  ?id "  makKana_lagA )" crlf))
)

;"butter","V","1.makKana_lagAnA"
;You have not buttered my toast properly.
;Sita has been buttering her mother to get permission for going to Bombay.
;
;
