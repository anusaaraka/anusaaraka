
(defrule do0
(declare (salience 5000))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(kriyA-dummy_subject ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  do.clp 	do0   "  ?id "  - )" crlf))
)

;She has more money than he does. (In this does is dummy; used only to mark the subject!)
;She has more money than does he. (In this does is dummy; used only to mark the subject!)
(defrule do1
(declare (salience 4900))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " do.clp	do1  "  ?id "  " ?id1 "  samApwa_kara  )" crlf))
)

;
;
(defrule do2
(declare (salience 4800))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAra_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " do.clp	do2  "  ?id "  " ?id1 "  mAra_xe  )" crlf))
)

;She tried to do away with herself but she couldn't.
;vaha apane Apa ko KZawma karanA cAhawI WI paraMwu EsA kara na sakI
(defrule do3
(declare (salience 4700))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XoKA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " do.clp	do3  "  ?id "  " ?id1 "  XoKA_xe  )" crlf))
)

;Stop doing yourself down.
;kisI ko XoKA xenA baMxa karo
(defrule do4
(declare (salience 4600))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 naRta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " do.clp	do4  "  ?id "  " ?id1 "  naRta_kara  )" crlf))
)

;She was done for after finding her daughter in the hospital.
;apanI betI ko haspawAla meM pAkara vaha marane kI sWiwi meM A gaI
(defrule do5
(declare (salience 4500))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GarelU_kAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " do.clp	do5  "  ?id "  " ?id1 "  GarelU_kAma_kara  )" crlf))
)

;My maid comes in thrice a week to do for me.
;merI nOkarAnI haPwe meM wIna bAra(kAma ke lie) AwI hE
(defrule do6
(declare (salience 4400))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hawyA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " do.clp	do6  "  ?id "  " ?id1 "  hawyA_kara  )" crlf))
)

;Koe hue bacce ke bAre meM KZabara AyI ki kisI ne usakI hawyA kara xI 
;
(defrule do7
(declare (salience 4300))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sajAnA_yA_sAPa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " do.clp	do7  "  ?id "  " ?id1 "  sajAnA_yA_sAPa_kara  )" crlf))
)

;I spent the whole day doing out my kitchen.
; mEne pUrA xina apanI rasoI ko sAPa karane meM biwA xiyA
(defrule do8
(declare (salience 4200))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 without)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ASriwa_na_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " do.clp	do8  "  ?id "  " ?id1 "  ASriwa_na_ho  )" crlf))
)

;You'll have to do without a car for some more days.
;wumhe kuCa xina Ora binA gAdZI ke kAma calAnA hogA
(defrule do9
(declare (salience 4100))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAma_ke_yogya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " do.clp	do9  "  ?id "  " ?id1 "  kAma_ke_yogya_ho  )" crlf))
)

(defrule do10
(declare (salience 4000))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAma_ke_yogya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " do.clp	do10  "  ?id "  " ?id1 "  kAma_ke_yogya_ho  )" crlf))
)

(defrule do11
(declare (salience 3900))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Waka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " do.clp	do11  "  ?id "  " ?id1 "  Waka_jA  )" crlf))
)

(defrule do12
(declare (salience 3800))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Waka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " do.clp	do12  "  ?id "  " ?id1 "  Waka_jA  )" crlf))
)

(defrule do13
(declare (salience 3700))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  do.clp 	do13   "  ?id "  kara )" crlf))
)

;Added by sheetal
;I really like the way you do your hair.
(defrule do14-a
(declare (salience 3650))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(id-root ?kri do)
(id-root ?obj hair)
(kriyA-object  ?kri ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  do.clp        do14-a   "  ?id "  banA )" crlf))
)

(defrule do14
(declare (salience 3600))
(id-root ?id do)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  do.clp 	do14   "  ?id "  kara )" crlf))
)


(defrule do15
(declare (salience 3500))
(id-root ?id do)
(kriyA-by_saMbanXa ?id ?id1)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  do.clp 	do15   "  ?id "  kara )" crlf))
)


;"do","VT","1.karanA"
;How is she doing in her new job?
;We could do with a little more help around here
;This car does 150 miles per hour
;
;LEVEL 
;Headword : do
;
;Examples --
;
;"do","VT","1.karanA"             *{kriyA}"
;What are they doing about it?
;vaha isa bAre meM kyA kara rahe hEM.
;Can I do something for you.
;kyA mEM Apake liye kuCa kara sakawI hUz.
;He does what he wants to do.
;vaha vahI karawA hE jo vaha jaranA cAhawA hE.
;--"2.calanA"
;How is she doing in her new job?
;vaha apanI nayI nOkarI meM kEsI 'cala' rahI hE.
;This car does 150 miles per hour
;yaha kAra 150 mIla prawi GaMtA calawI hE.
;--"3.
;I have done the dishes for the evening.
;mEMne SAma ke liye barwana 'mAzja xiye' hEM.
;Mohan likes the way she does her hair.
;mohana ko usakA bAla 'bAzXane' kA warIkA pasanxa hE.
;We have to get some one to do the stairs.
;hameM sIDZiyAz 'TIka karane' ke liye kisI ko bulAnA padZegA.
;I havd done my room.
;mEMne apanA kamarA 'TIka kara' liyA hE.
;
;We could do with a little more help around here
;yahAz se kuCa Ora sahAyawA hameM lABa karegI.
;
;
;'do'  kA eka arWa wo spaRta hE 'karanA', eka anya arWa 'calanA' BI 'karanA' kA viswAra hE. kinwu bAxa ke uxAharaNa xeKane para lagawA hE ki aMgrejZI Sabxa 'do' vAswava meM eka sAmAnya 'kriyA' Sabxa hE jisakI 'kriyA' saMxarBa anusAra jo uciwa howI hE vaha A jAwI hE. awaH 'do' kA sUwra hogA
;
;sUwra : calanA[<karanA`]
