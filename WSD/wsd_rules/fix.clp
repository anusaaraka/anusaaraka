
(defrule fix0
(declare (salience 5000))
(id-root ?id fix)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fixed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sWira_kI_huI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fix.clp  	fix0   "  ?id "  sWira_kI_huI )" crlf))
)

;"fixed","Adj","1.sWira_kI_huI"
;In this shop prices of all items are fixed.
;--"2.xqDa_kiyA_huA"
;He has fixed ideas about his son.
;--"3.sWApiwa_kiyA_huA"
;He has a fixed smile on his face.
;
;
(defrule fix1
(declare (salience 4900))
(id-root ?id fix)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 waya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fix.clp	fix1  "  ?id "  " ?id1 "  waya_kara  )" crlf))
)

;Have you fixed on a date for your party?
;kyA wumane apanI pArtI kI wArIKZa waya kara lI hE?


;He then [varied] the charges in pairs, keeping the distance [fixed] for each pair.   [physics]
;तत्पश्चात उन्होंने प्रत्येक युगल के लिए  निश्चित की हुई दूरी रखकर युगलों में आवेशों में परिवर्तन किया .
(defrule fix2
(declare (salience 4800))
(id-root ?id fix)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa_kara))  ;meaning modified by Pramila(Banasthali University) on 23-10-2013
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fix.clp 	fix2   "  ?id "  niSciwa_kara )" crlf))
)

(defrule fix3
(declare (salience 4800))
(id-root ?id fix)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fix.clp 	fix3   "  ?id "  niSciwa_kara )" crlf))
)



;Added by Meena (27.8.09)
;Dick is important to fix the problem.
(defrule fix4
(declare (salience 4800))
(id-root ?id fix)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 problem)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sulaJA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fix.clp 	fix4   "  ?id "  sulaJA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  fix.clp       fix4   "  ?id " ko )" crlf)
)
)

(defrule fix5
(declare (salience 4500))
(id-root ?id fix)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTinAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fix.clp 	fix5   "  ?id "  kaTinAI )" crlf))
)

;"fix","N","1.kaTinAI"
;By agreeing to his proposal, she has put herself in a great fix.
;--"2.beimAnI"
;The culprit got away because this case was a fix.
;--"3.naSIlI_xavAI"
;A person addicted to drugs needs frequent fixes to remain normal.
;--"4.sWApanA"
;Please fix the co-ordinates of our position by survey.
;
;
;LEVEL 
;Headword : fix
;
;Examples --
;
;"fix","V","1.lagAnA"
;He has come to fix a pole
;vaha KaMBA lagAne AyA hE.
;--"2.niSciwa_karanA"<--samaya se mItiMga ko jodZanA
;Please fix the time for our meeting
;kqpayA bETaka ke samaya ko niSciwa kara xIjiye.
;--"3.wEyAra_karanA"  <-- TIka karanA
;You fix up a meal for the guests tonight
;Aja rAwa awiWiyoM ke liye Bojana kA wEyAra kara xIjiye.
;--"4.TIka_karanA"  <--vApasa jodZanA
;Can you fix this machine?
;kyA wuma isa maSIna ko TIka kara sakawe ho?
;--"5.kisI_para xqRti jamAnA"<-- xqRti ko vyakwi se jodZa xenA
;Her eyes are fixed on the picture
;usakI xqRti ciwra para jamI hE
;
;"fix","N","ulaJana"
;He was in a fix.
;vaha ulaJana meM WA. <--asamaMjasa kI sWiwi meM PazsanA <--eka sWiwi se judZa jAnA
;
;vyAKyA - uparyukwa kriyA vAkyoM ke anusAra `jodZanA' niRkarRa nikalawA hE. kyoMki jodZane kA arWa yahAz kuCa PElA huA hE awaH isake sAWa '`' lagAnA uciwa hogA.
;'TIka karanA' (u.4.) BI yaxyapi 'jodZane' se sambanXiwa hE Pira BI AsAnI ke liye ise BIsUwra meM raKA jA sakawA hE. saMjFAprayoga 'ulaJana' BI eka xqRti se 'judZane' kA hI BAva aBIvyakwa kara rahA hE. awaH isakA sUwra hogA -
;
;sUwra : jodZanA`^TIka_karanA
;
