
(defrule knock0
(declare (salience 5000))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ArAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock0  "  ?id "  " ?id1 "  ArAma_kara  )" crlf))
)

;I spent most of my time knocking about the house yesterday.
;kala mEMne Gara meM apanA aXikawara samaya ArAma karane meM biwA xiyA


(defrule knock1
(declare (salience 4900))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gira_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock1  "  ?id "  " ?id1 "  gira_jA  )" crlf))
)

;An old lady was knocked down as she crossed the road
;eka bUDZI Orawa sadZaka pAra karawe samaya gira gaI


(defrule knock2
(declare (salience 4800))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kImawa_meM_kamI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock2  "  ?id "  " ?id1 "  kImawa_meM_kamI_ho  )" crlf))
)

;It was an expensive ring when i bought it but now it's price has been knocked down.
;yaha azgUTI bahuwa mahaMgI WI jaba mEne ise KarIxA WA lekina aba isakI kImawa meM kamI A gaI hE



(defrule knock3
(declare (salience 4700))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 corI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock3  "  ?id "  " ?id1 "  corI_kara  )" crlf))
)

;He has knocked off that watch from the shop.
;usane vaha GadZI xukAna se curAI hE
;kImawa_meM_kamI_karanA	0
;The shopkeeper refused to knock off anymore.
;xukAnaxAra ne kImawa meM Ora aXika kamI karane se manA kara xiyA
;jalxI_se_pUrA_karanA	0
;She knocked off all the work before lunch.
;usane xopahara ke KAne se pahale apanA kAma jalxI se pUrA kara liyA
;mAra_xenA	0
;I have heard that the missing child has been knocked off.
;mEne sunA hE ki usa lApawA bacce ko mAra xiyA gayA hE




(defrule knock4
(declare (salience 4600))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAma_karanA_roka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock4  "  ?id "  " ?id1 "  kAma_karanA_roka_xe  )" crlf))
)

;I don't knock off until six.
;mEM Ca: baje waka apanA kAma karanA nahIM rokawA



(defrule knock5
(declare (salience 4500))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acewa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock5  "  ?id "  " ?id1 "  acewa_kara_xe  )" crlf))
)

;Don't take so much of sleeping pills,they'll knock you out.
;iwanI sArI nIMxa kI goliyAz mawa lo ,ye wumhe acewa kara xeMgIM




(defrule knock6
(declare (salience 4400))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 harA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock6  "  ?id "  " ?id1 "  harA_xe  )" crlf))
)

;I am very upset that they have knocked out our team.
;muJe bahuwa xuKa hE ki unhone hamArI tIma ko harA xiyA



(defrule knock7
(declare (salience 4300))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 takarA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock7  "  ?id "  " ?id1 "  takarA_jA  )" crlf))
)

;I got knocked over by a bus when i was going home.
;jaba mEM Gara jA rahA WA waba eka basa se takarA gayA



(defrule knock8
(declare (salience 3200))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 WakA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	  knock8  "  ?id "  " ?id1 "  WakA_xe  )" crlf))
)

;iwanA kAma mawa karo nahIM wo wuma apane Apa ko WakA xoge !


(defrule knock9
(declare (salience 3100))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 garBavawI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock9  "  ?id "  " ?id1 "  garBavawI_kara  )" crlf))
)

;Just tell me who has knocked you up?
;muJe yaha bawAo ki wumheM kisane garBavawI kiyA hE?


(defrule knock10
(declare (salience 2700))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwa_karo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	 knock10  "  ?id "  " ?id1 "  samApwa_karo  )" crlf))
)



(defrule knock11
(declare (salience 2500))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_girA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	  knock11  "  ?id "  " ?id1 "  nIce_girA  )" crlf))
)



;Added by Meena(9.02.10)
;I knocked my cup and saucer and spilled the coffee . 
(defrule knock12
(declare (salience 2400))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id takarA_jA))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knock.clp     knock12   "  ?id "  takarA_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  knock.clp      knock12   "  ?id " se )" crlf)
)
)



;Salience reduced by Meena(9.02.10)
(defrule knock13
(declare (salience 0))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaswaka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knock.clp 	knock13   "  ?id "  xaswaka_xe )" crlf))
)

;default_sense && category=verb	xaswaka xe	0
;"knock","V","1.xaswaka xenA"
;Somebody is knocking on the door.
;--"2.Tokara lagAnA"
;He knocked the glass clear across the room.
;
;
