
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



;@@@ Added by Sonam Gupta MTech IT Banasthali 17-2-2014
;I certainly wouldn't presume to tell you how to do your job. [M-W]
;मैं आपको कतई बताने की धृष्टता नहीं करूंगा कि आपको अपना काम कैसे करना है .
(defrule presume2
(declare (salience 5200))
(id-root ?id presume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_niReXaka  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XaqRtawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  presume.clp 	presume2   "  ?id "  XaqRtawA_kara )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 17-2-2014
;Do you presume to tell me what is right and what is wrong. [rajpal]
;क्या आप मुझे बताने का साहस करते हैं कि क्या सही है और क्या गलत .
(defrule presume3
(declare (salience 5100))
(id-root ?id presume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAhasa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  presume.clp 	presume3   "  ?id "  sAhasa_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 17-2-2014
(defrule presume4
(id-root ?id presume)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  presume.clp 	presume4   "  ?id "  mAna_le )" crlf))
)

