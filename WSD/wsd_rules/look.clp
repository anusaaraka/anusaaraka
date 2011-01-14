
(defrule look0
(declare (salience 5000))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xeKaBAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look0  "  ?id "  " ?id1 "  xeKaBAla_kara  )" crlf))
)

;Do you think you could look after this baby while we're away?
;kyA wumheM lagawA hE ki jaba hama bAhara hoMge waba wuma isa SiSu kI xeKaBAla kara sakoge ?
(defrule look1
(declare (salience 4900))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wiraskAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look1  "  ?id "  " ?id1 "  wiraskAra_kara  )" crlf))
)

;You should not look down on him just because he is illiterate.
;wumheM usakA wiraskAra nahIM karanA cAhie ,sirPa isalie ki vaha anapaDZa hE
(defrule look2
(declare (salience 4800))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUzDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look2  "  ?id "  " ?id1 "  DUzDa  )" crlf))
)

;Have you seen my spectacles? I've been looking for them since morning. 
;kyA wumane mere caSmeM xeKe hEM ? mEM unheM subaha se DUzDZa rahA hUz
(defrule look3
(declare (salience 4700))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forward)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prawIkRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look3  "  ?id "  " ?id1 "  prawIkRA_kara  )" crlf))
)

;PP_null_forward && transitivity=TR && category=verb	xilacaspI_ho	0
;I'm not looking forward to Diwali this year.
;isa sAla xivAlI ke lie merI koI xilacaspI nahIM hE
(defrule look4
(declare (salience 4600))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BeMta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look4  "  ?id "  " ?id1 "  BeMta_kara  )" crlf))
)

;I decided to look in on her when i was in her city.
;jaba mEM usake Sahara meM WA waba mEne usase milane kA niScaya kiyA
(defrule look5
(declare (salience 4500))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nirIkRaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look5  "  ?id "  " ?id1 "  nirIkRaNa_kara  )" crlf))
)

(defrule look6
(declare (salience 4400))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nirIkRaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look6  "  ?id "  " ?id1 "  nirIkRaNa_kara  )" crlf))
)

;Police is looking into the murder case which happened last night.
;pulisa usa kZawla ke mAmale kA nirIkRaNa kara rahI hE jo piCalI rAwa huA WA
(defrule look7
(declare (salience 4300))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xarSaka_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look7  "  ?id "  " ?id1 "  xarSaka_bana  )" crlf))
)

;No, i won't participate-i'll just look on the game.
;nahIM ,mEM hissA nahIM lUzgA-Kela meM kevala xarSaka banUzgA
(defrule look8
(declare (salience 4200))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sawarka_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look8  "  ?id "  " ?id1 "  sawarka_ho  )" crlf))
)

;Look out while crossing the road.
;sawarka raho !jaba BI sadZaka pAra karo
(defrule look9
(declare (salience 4100))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XyAna_se_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look9  "  ?id "  " ?id1 "  XyAna_se_xeKa  )" crlf))
)

;Please look through this report again && give me the feedback. 
;kqpyA isa riporta ko xobArA XyAna se xeKo Ora muJe usakI prawipuRti xo
(defrule look10
(declare (salience 4000))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anaxeKA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look10  "  ?id "  " ?id1 "  anaxeKA_kara  )" crlf))
)

;I called her but she looked straight through me.
;mEneM use bulAyA lekina usane muJe anaxeKA kara xiyA
(defrule look11
(declare (salience 3900))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XyAna_se_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look11  "  ?id "  " ?id1 "  XyAna_se_xeKa  )" crlf))
)

;Please look through this report again && give me the feedback. 
;kqpyA isa riporta ko xobArA XyAna se xeKo Ora muJe usakI prawipuRti xo
(defrule look12
(declare (salience 3800))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Axara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look12  "  ?id "  " ?id1 "  Axara_kara  )" crlf))
)

;We should always look up to our teachers.
;hameM hameMSAM apane aXyApakoM kA Axara karanA cAhie
(defrule look13
(declare (salience 3700))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 suXAra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look13  "  ?id "  " ?id1 "  suXAra_ho  )" crlf))
)

;This road seems to be looking up at last.
;isa sadZaka meM AKirakAra suXAra howA xiKAI xe rahA hE
(defrule look14
(declare (salience 3600))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUzDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look14  "  ?id "  " ?id1 "  DUzDa  )" crlf))
)

;I need her number,so u'll have to look it up.
;
(defrule look15
(declare (salience 3500))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xeKaBAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look15  "  ?id "  " ?id1 "  xeKaBAla_kara  )" crlf))
)

(defrule look16
(declare (salience 3400))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xeKaBAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look16  "  ?id "  " ?id1 "  xeKaBAla_kara  )" crlf))
)

(defrule look17
(declare (salience 3300))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUzDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look17  "  ?id "  " ?id1 "  DUzDa  )" crlf))
)

(defrule look18
(declare (salience 3200))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUzDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look18  "  ?id "  " ?id1 "  DUzDa  )" crlf))
)

(defrule look19
(declare (salience 3100))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ko_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look19  "  ?id "  " ?id1 "  ko_xeKa  )" crlf))
)

(defrule look20
(declare (salience 3000))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ko_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look20  "  ?id "  " ?id1 "  ko_xeKa  )" crlf))
)

(defrule look21
(declare (salience 2900))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rakRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look21  "  ?id "  " ?id1 "  rakRA_kara  )" crlf))
)

(defrule look22
(declare (salience 2800))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rakRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look22  "  ?id "  " ?id1 "  rakRA_kara  )" crlf))
)

(defrule look23
(declare (salience 2700))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUzDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look23  "  ?id "  " ?id1 "  DUzDa  )" crlf))
)

(defrule look24
(declare (salience 2600))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUzDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look24  "  ?id "  " ?id1 "  DUzDa  )" crlf))
)

(defrule look25
(declare (salience 2500))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KyAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look25  "  ?id "  " ?id1 "  KyAla_kara  )" crlf))
)

(defrule look26
(declare (salience 2400))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nirIkRaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look26  "  ?id "  " ?id1 "  nirIkRaNa_kara  )" crlf))
)

(defrule look27
(declare (salience 2300))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KyAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look27  "  ?id "  " ?id1 "  KyAla_kara  )" crlf))
)

(defrule look28
(declare (salience 2200))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 take)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqRti))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  look.clp 	look28   "  ?id "  xqRti )" crlf))
)

(defrule look29
(declare (salience 2100))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look29  "  ?id "  " ?id1 "  bAhara_xeKa  )" crlf))
)

(defrule look30
(declare (salience 2000))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look30  "  ?id "  " ?id1 "  bAhara_xeKa  )" crlf))
)

;When somebody looks out
(defrule look31
(declare (salience 1900))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) like )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  look.clp 	look31   "  ?id "  xiKa )" crlf))
)

(defrule look32
(declare (salience 1800))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUzDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look32  "  ?id "  " ?id1 "  DUzDa  )" crlf))
)

(defrule look33
(declare (salience 1700))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 DUzDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look33  "  ?id "  " ?id1 "  DUzDa  )" crlf))
)

(defrule look34
(declare (salience 1600))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look34  "  ?id "  " ?id1 "  xeKa  )" crlf))
)

(defrule look35
(declare (salience 1500))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look35  "  ?id "  " ?id1 "  xeKa  )" crlf))
)

(defrule look36
(declare (salience 1400))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) at )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  look.clp 	look36   "  ?id "  xeKa )" crlf))
)

(defrule look37
(declare (salience 1300))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  look.clp 	look37   "  ?id "  xeKa )" crlf))
)

(defrule look38
(declare (salience 1200))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  look.clp 	look38   "  ?id "  xiKa )" crlf))
)

(defrule look39
(declare (salience 1100))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  look.clp 	look39   "  ?id "  xeKa )" crlf))
)

; Hence the TR/INTR is commented.
(defrule look40
(declare (salience 1000))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id najZara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  look.clp 	look40   "  ?id "  najZara )" crlf))
)

(defrule look41
(declare (salience 900))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 me)
(viSeRya-at_viSeRaNa ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  look.clp 	look41   "  ?id "  xeKa )" crlf))
)

(defrule look42
(declare (salience 800))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 it)
(viSeRya-at_viSeRaNa ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  look.clp 	look42   "  ?id "  xeKa )" crlf))
)

(defrule look43
(declare (salience 700))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look43  "  ?id "  " ?id1 "  xeKa  )" crlf))
)

(defrule look44
(declare (salience 600))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look44  "  ?id "  " ?id1 "  xeKa  )" crlf))
)

(defrule look45
(declare (salience 500))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cAroM_ora_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look45  "  ?id "  " ?id1 "  cAroM_ora_xeKa  )" crlf))
)

(defrule look46
(declare (salience 400))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cAroM_ora_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " look.clp	look46  "  ?id "  " ?id1 "  cAroM_ora_xeKa  )" crlf))
)

; He look around for help.
(defrule look47
(declare (salience 300))
(id-root ?id look)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 again)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  look.clp 	look47   "  ?id "  xeKa )" crlf))
)

;default_sense && category=verb	najZara_A	0
;default_sense && category=noun	xqRti	0
;"look","N","1.xqRti"
;Have a look at this book.
;--"2.avalokana"
;A pleasant look.
;--"3.PESana"
;A new look hairdress.
;--"4.SElI"
;A new look hairstyle.
;--"5.walASa"
;I have had a good look at the shelf but I could not get the book that I needed.
;
;
