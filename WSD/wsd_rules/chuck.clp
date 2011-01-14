
(defrule chuck0
(declare (salience 5000))
(id-root ?id chuck)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " chuck.clp	chuck0  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)

;usane apanI Aja kI klAsa CodZa xI
(defrule chuck1
(declare (salience 4900))
(id-root ?id chuck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_xenA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chuck.clp 	chuck1   "  ?id "  nikAla_xenA )" crlf))
)

;"chuck","N","1.nikAla_xenA"
;He got the chuck from his job for absenteism.
;
(defrule chuck2
(declare (salience 4800))
(id-root ?id chuck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beparavAha_PeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chuck.clp 	chuck2   "  ?id "  beparavAha_PeMka )" crlf))
)

;"chuck","V","1.beparavAha_PeMkanA"
;He chucked the bits of paper in the bin.
;
