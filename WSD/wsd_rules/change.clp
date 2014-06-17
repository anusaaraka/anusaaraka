;$$$  Modified by Preeti(28-4-14)
;There was no change in the patient's condition overnight. 
;rAwoMrAwa marIja kI sWiwi meM koI baxalAva nahIM WA.
(defrule change0
;(declare (salience 5000));salience changed
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxalAva));meaning changed
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  change.clp 	change0   "  ?id "  baxalAva )" crlf))
)

;$$$  Modified by Preeti(28-4-14)
;The lights changed from red to green. 
;bawwI lAla rafga se harA ko baxala gayI.
;Salience reduced by Meena(26.8.10)
(defrule change1
;(declare (salience 0))
(declare (salience 1000));salience changed
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1);condition added
(id-root ?id1 life|computer|light)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  change.clp 	change1   "  ?id "  axala_jA )" crlf))
)


;(defrule change2
;(declare (salience 4800))
;(id-root ?id change)
;?mng <-(meaning_to_be_decided ?id)
;(kriyA-object ?id ?)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id baxala))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  change.clp 	change2   "  ?id "  ;baxala )" crlf))
;)

;$$$  Modified by Preeti(28-4-14)
;Since he met her, he is a changed man. 
;jaba se vaha usase milA, vaha eka baxalA huA AxamI hE.
(defrule change3
;(declare (salience 4700));salience changed
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  change.clp 	change3   "  ?id "  baxala )" crlf))
)

;@@@ Added by Preeti(28-4-14)
;She changed into her swimsuit. 
;usane apanI wErAkI_kI poSAka pahanI.
(defrule change4
(declare (salience 1050))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word =(+ ?id 1) into)
(kriyA-into_saMbanXI  ?id ?id1)
(id-root ?id1 swimsuit)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  change.clp 	change4   "  ?id "  "(+ ?id 1)" pahana )" crlf))
)

;@@@ Added by Preeti(28-4-14)
;You need to change out of those wet things. 
;Apako una gIle kapadZoM ko baxalane kI jarUrawa hE.
(defrule change5
(declare (salience 1050))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word =(+ ?id 1) out)
(id-word =(+ ?id 2) of)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) =(+ ?id 2) baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  change.clp 	change5   "  ?id "  "(+ ?id 1)"  "(+ ?id 2)" baxala )" crlf))
)

;@@@ Added by Preeti(28-4-14)
;He changed out of his school uniform into jeans and a T-shirt. 
;usane apanI skUlI poSAka baxala kara jeans aOra tISarta pahanI.
(defrule change6
(declare (salience 1060))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word =(+ ?id 1) out)
(id-word =(+ ?id 2) of)
(kriyA-into_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) =(+ ?id 2) baxala_kara_pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  change.clp 	change6   "  ?id "  "(+ ?id 1)"   "(+ ?id 2)"baxala_kara_pahana )" crlf))
)

;@@@ Added by Preeti(28-4-14)
;I did not have time to get changed before the party. 
;mere pAsa pArtI se pahale kapadZe baxalane kA samaya nahIM WA.
(defrule change7
(declare (salience 1050))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word =(- ?id 1) get)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1)  kapadZe_baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  change.clp 	change7   "  ?id "  "(- ?id 1)"  kapadZe_baxala)" crlf))
)

;@@@ Added by Preeti(28-4-14)
;The baby needs changing. 
;SiSu kA laMgota_baxalane kI jarUrawa hE.
(defrule change8
(declare (salience 1050))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 baby)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id   laMgota_baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  change.clp 	change8   "  ?id "  laMgota_baxala)" crlf))
)

;@@@ Added by Preeti(28-4-14)
;You have changed all the furniture around. 
;Apane pUre ParnIcara ko axalA_baxala_kiyA hEM.
(defrule change9
(declare (salience 1050))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 around)
;(kriyA-upasarga  ?id ?id1)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  ?id1 axalA_baxala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  change.clp 	change9   "  ?id "  " ?id1" axalA_baxala_kara )" crlf))
)

;@@@ Added by Preeti(28-4-14)
;You can change back unused dollars into pounds at the bank. 
;Apa bEMka meM aprayukwa dOlara ko Pira_se_baxala pONda meM sakawe hEM.
(defrule change10
(declare (salience 1050))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 back)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  ?id1 Pira_se_baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  change.clp 	change10   "  ?id "  "?id1" Pira_se_baxala )" crlf))
)

;@@@ Added by Preeti(28-4-14)
;She changed back into her work clothes. 
;usane apane kArya vaswra Pira_se pahane.
(defrule change101
(declare (salience 1060))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 back)
(id-word  =(+ ?id 2) into)
;(kriyA-upasarga  ?id ?id1)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(kriyA-into_saMbanXI  ?id ?id2)
(id-root ?id2 clothes)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  ?id1 =(+ ?id 2) Pira_se_pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  change.clp 	change101   "  ?id "  "?id1" "(+ ?id 2)" Pira_se_pahana )" crlf))
)

;@@@ Added by Preeti(28-4-14)
;Change down into second. 
;xUsare meM lAie.
(defrule change11
(declare (salience 1050))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 down)
(id-word  =(+ ?id 2) into)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  ?id1 =(+ ?id 2) meM_lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  change.clp 	change11   "  ?id "  "?id1" "(+ ?id 2)" meM_lA )" crlf))
)

;@@@ Added by Preeti(28-4-14)
;We have just changed over from gas central heating to electric. 
;hame aBI gEsa pramuKa garama_karane_kI paxXawi se  vExyuwa meM_wabxIla_kiyA  hEM.
(defrule change12
(declare (salience 1050))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 over)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 meM_wabaxIla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  change.clp 	change12   "  ?id "  "?id1" meM_wabaxIla_kara )" crlf))
)

;@@@ Added by Preeti(28-4-14)
;Change up into fifth. 
;pAzcavAz meM lAie.
(defrule change13
(declare (salience 1050))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word  ?id1 up)
(id-word  =(+ ?id 2) into)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 =(+ ?id 2) meM_lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  change.clp 	change13   "  ?id "  "?id1" "(+ ?id 2)" meM_lA )" crlf))
)

;@@@ Added by Preeti(28-4-14)
;Do you have any change for the phone? 
;kyA Apake pAsa telIPona ke liye  Cutte pEse hEM?
(defrule change14
(declare (salience 1000))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CuttA_pEsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  change.clp 	change14   "  ?id "  CuttA_pEsA )" crlf))
)


;@@@ Added by Preeti(28-4-14)
;Do not forget your change! 
;ApakA SeRa pEse mawa BUlie!
(defrule change15
(declare (salience 1000))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-RaRTI_viSeRaNa  ?id ?)(viSeRya-saMKyA_viSeRaNa  ?id ?))

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SeRa_pEse))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  change.clp 	change15   "  ?id "  SeRa_pEse )" crlf))
)

;@@@ Added by Preeti(28-4-14)
;The ticket machine gives change. 
;tikata_kI maSIna SeRa pEse xewA hE.
(defrule change16
(declare (salience 1050))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 give)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SeRa_pEse))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  change.clp 	change16   "  ?id "  SeRa_pEse )" crlf))
)

;@@@ Added by Preeti(28-4-14)
;I keep a change of shoes in the car. 
;mEM gAdI meM jUwoM kA awirikwa joda raKawA hUz.
(defrule change17
(declare (salience 1050))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 clothes|shoe)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awirikwa_jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  change.clp 	change17   "  ?id "  awirikwa_jodZa )" crlf))
)

;@@@ Added by Preeti(28-4-14)
;This country needs a change of government. 
;isa xeSa ko sarakAra meM parivarwana kI jarUrawa hE.
(defrule change18
(declare (salience 1000))
(id-root ?id change)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
;(id-root ?id1  address)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parivarwana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  change.clp 	change18   "  ?id "  parivarwana )" crlf))
)

;parser problem
;He puts his loose change in a money box for the children. 
;There are baby changing facilities in all our stores.
;That is 40p change.

;"change","V","1.baxala_jAnA"
;His voice began to change when he was 14 years old
;
;
;parser problem
;At half-time the teams change ends.
;Is there somewhere I can get changed?
