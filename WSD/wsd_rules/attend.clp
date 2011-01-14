
(defrule attend0
(declare (salience 5000))
(id-root ?id attend)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XyAna_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " attend.clp	attend0  "  ?id "  " ?id1 "  XyAna_xe  )" crlf))
)

;I have some urgent work to attend to.
;muJe eka jarUrI kAma para XyAna xenA hE
(defrule attend1
(declare (salience 4900))
(id-root ?id attend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upasWiwa_ho))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attend.clp 	attend1   "  ?id "  upasWiwa_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  attend.clp    attend1   "  ?id " meM )" crlf)
)
)

;default_sense && category=verb	hissA_le	0
;"attend","VTI","1.hissA_lenA"
;Many people attended the function.
;--"2.sevA_karanA"
;She attended to all his needs during his illness.
;--"3.XyAna_xenA"
;He had a number of matters to attend to.
;
;LEVEL 
;HEADWORD : attend
;
;Examples --
;
;"attend","V","1.hissA_lenA"
;Many people attended the function
;aneka logoM ne samAroha meM BAga liyA
;--"2.sevA_karanA"
;He attended to her in the HOSPITal
;usane haspawAla meM usakI sevA kI  <--sevA_ke_liye_upasWiwa_honA
;--"3.hAWa_meM_lenA"
;I have some urgent business to attend to
;muJe awyAvaSyaka kuCa jZarUrI kAma hAWa meM lenA hE. <--hAWa meM lenA <--karane ke liye usWiwa honA
;--"4.XyAna_xenA"
;You can't have been attending the lecture properly, otherwise how did you miss the point.
;wuma lEkcara meM XyAna nahIM xe rahe hogawa, nahIM wo yaha pOYiMta CUta kEse gayA. <--mAnasika rUpa se upasWiwa honA
;
;
;sUwra : upasWiwa_honA[>sevA_karanA]
;
;
;
;
