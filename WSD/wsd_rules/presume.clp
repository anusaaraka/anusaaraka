
(defrule presume0
(declare (salience 5000))
(id-root ?id presume)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PAyaxA_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " presume.clp	presume0  "  ?id "  " ?id1 "  PAyaxA_uTA  )" crlf))
)

;She is presuming on your decent behaviour.
;vaha wumhAre acCe barwAva kA PZAyaxA uTA rahI hE
(defrule presume1
(declare (salience 4900))
(id-root ?id presume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  presume.clp 	presume1   "  ?id "  mAna_le )" crlf))
)

;"presume","V","1.mAna lenA"
;I presume neha is out of station as he hasn't paid me a visit since 
;the last fortnight.
;--"2.sAhasa karanA"
;My father doesn't expect me to presume travelling alone.
;
;