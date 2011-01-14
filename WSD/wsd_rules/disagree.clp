
(defrule disagree0
(declare (salience 5000))
(id-root ?id disagree)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prawikUla_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " disagree.clp	disagree0  "  ?id "  " ?id1 "  prawikUla_ho  )" crlf))
)

;I always avoid coconut as it disagrees with me.
;mEM hameSAM nAriyala se parahejZa karawA hUz kyoMki vaha mere prawikUla hEM
(defrule disagree1
(declare (salience 4900))
(id-root ?id disagree)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asahamawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disagree.clp 	disagree1   "  ?id "  asahamawa_ho )" crlf))
)

;"disagree","VT","1.asahamawa honA"
;I disagree with whatever you said.
;
;
