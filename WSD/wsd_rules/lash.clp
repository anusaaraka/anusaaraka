
(defrule lash0
(declare (salience 5000))
(id-root ?id lash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id lashing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kode_lagAne_kI_prakriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  lash.clp  	lash0   "  ?id "  kode_lagAne_kI_prakriyA )" crlf))
)

;"lashing","N","1.kode lagAne kI prakriyA"
;--"2.bAMXane kI rassI"
;
;
;$$$--- Modified by Nandini(25-4-14)
;The lion suddenly lashed out && killed the deer.
;Sera ne acAnaka  AkramaNa kiyA Ora hiraNa ko mAra girAyA.
(defrule lash1
(declare (salience 4900))
(id-root ?id lash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkramaNa_kara));meaning change by Nandini
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lash.clp	lash1  "  ?id "  " ?id1 "  AkramaNa_kara  )" crlf))
)


(defrule lash2
(declare (salience 4800))
(id-root ?id lash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kodA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lash.clp 	lash2   "  ?id "  kodA )" crlf))
)

;"lash","N","1.kodA"
;He used a lash to east him. He was given twenty lashes.
;--"2.barOnI"
;Eye-lashes

;$$$--- Modified by Nandini(5-4-14)
;Slaves were commonly lashed in olden times.[OLD];Add Eng sentence- parse problem
;gulAmoM ko prAcIna kAla meM sAmAnyawaH kode lagAwe We.   ;Add hindi sentence
(defrule lash3
(declare (salience 4700))
(id-root ?id lash)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI  ?id ?); Add relation
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kode_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lash.clp 	lash3   "  ?id "  kode_lagA )" crlf))
)


;@@@---Added by Nandini(5-4-14)
;Huge waves lashed the shore.[OLD]
;viSAla lahareM kinAre se takarAIM.
(defrule lash4
(declare (salience 4650))
(id-root ?id lash)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 wave|rain|branch)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id takarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lash.clp 	lash4   "  ?id "  takarA )" crlf))
)

;@@@---Added by Nandini(5-4-14)
;In a bitter article he lashed out at his critics.[OALD]
;eka kadave leKa meM usane usake AlocakoM ko PatakArA.
(defrule lash5
(declare (salience 4950))
(id-root ?id lash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga  ?id ?id1)
(kriyA-subject  ?id ?id2)
(id-root ?id2 ?str)
(test (and (neq (numberp ?str) TRUE) (gdbm_lookup_p "human.gdbm" ?str) TRUE))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PatakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lash.clp	lash5  "  ?id "  " ?id1 "  PatakAra)" crlf))
)


;@@@---Added by Nandini(5-4-14)
;The prisoner was lashed to a tree.
;kExI peda ko bAzXA gayA WA.
(defrule lash6
(declare (salience 4700))
(id-root ?id lash)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-subject  ?id ?id1)
(kriyA-to_saMbanXI  ?id ?id1)
(id-root ?id1 tree|piller|chair)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lash.clp 	lash6   "  ?id "  bAzXa )" crlf))
)


;@@@---Added by Nandini(5-4-14)
;The crocodile's tail was lashing furiously from side to side.
;magaramacCa kI pUzCa kroxAveSa meM xAzyez bAzyez jora_jora_se_GUma rahI WI.
(defrule lash7
(declare (salience 4700))
(id-root ?id lash)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 tail)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_jora_se_GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lash.clp 	lash7   "  ?id "  jora_jora_se_GUma )" crlf))
)

;@@@---Added by Nandini(5-4-14)
;I saw a girl with long lashes.[bruhat-bAharI-kosh] 
;mEMne laMbA barOnI se ladakI ko xeKA.
(defrule lash8
(declare (salience 5000))
(id-root ?id lash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id barOnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  lash.clp  	lash8   "  ?id "  barOnI )" crlf))
)




;"lash","V","1.kode_lagAnA"
;Slaves were commonly lashed in olden times.
;--"2.SIGrawA_se_hilAnA"
;The angny tiger is lashing its tail.
;--"3.kasakara_bAzXanA"
;Lash the patient securely to the strecture.
;--"4.se_takarAnA"
;Sea waves were lashing the coast.
;--"5.PatakAranA"
;He was lashed for his misdemeanour by his loss.
;--"6.acAnaka_AkramaNa_karanA"
;The horse lashed at with its hind legs.
;
