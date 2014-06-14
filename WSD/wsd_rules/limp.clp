
(defrule limp0
(declare (salience 5000))
(id-root ?id limp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lacIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  limp.clp 	limp0   "  ?id "  lacIlA )" crlf))
)

;"limp","Adj","1.lacIlA"
;Paper-back books have limp covers.
;--"2.SakwihIna"
;Due to the injury his leg has become quite limp.
;


;$$$--- Modified by Nandini(28-4-14)
;She had twisted her ankle and was limping.[OLAD]
;usake taKane meM moca AI WI Ora vaha laMgadA rahI WI.
(defrule limp1
(declare (salience 4900))
(id-root ?id limp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laMgadZA)) ;spelling correction by Nandini
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  limp.clp 	limp1   "  ?id "  laMgadZA )" crlf))
)

;@@@--- Added by Nandini(28-4-14)
;The old car limped along.[dictionary.com]
;purAnI gAdI  kaTinAI_se Age-baDI.
(defrule limp2
(declare (salience 4950))
(id-root ?id limp)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kaTinAI_se_Age-baDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " limp.clp	limp2  "  ?id "  " ?id1 " kaTinAI_se_Age-baDa)" crlf))
)

;@@@--- Added by Nandini(28-4-14)
;The plane limped back to the airport.[OLAD]
;havAi-jahAja vimAnapawwana se vApisa muSkila_se_calawe_hue AyA.
(defrule limp3
(declare (salience 5050))
(id-root ?id limp)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 plane)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muSkila_se_calawe_hue A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  limp.clp 	limp3   "  ?id " muSkila_se_calawe_hue A)" crlf))
)

;@@@--- Added by Nandini(28-4-14)
;The hat had become limp and shapeless.[OLAD] ;parser problem
;topI  DIlI  Ora AkArahIna huI WI.
(defrule limp4
(declare (salience 5000))
(id-root ?id limp)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 hat)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  DIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  limp.clp 	limp4   "  ?id "  DIlA )" crlf))
)

;@@@--- Added by Nandini(28-4-14)
;His hand went limp and the knife clattered to the ground.[OLAD]
;usakA hAWa nirjIva huA Ora cAkU jamIna para KadaKada karawe hue girA.
(defrule limp5
(declare (salience 5080))
(id-root ?id limp)
?mng <-(meaning_to_be_decided ?id)
(conjunction-components  ?id1 ?id ?id2)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  nirjIva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  limp.clp 	limp5   "  ?id "  nirjIva )" crlf))
)

;@@@--- Added by Nandini(28-4-14)
;She felt limp and exhausted.[OLAD]
;usane nisweja Ora WakA huA mahasUsa kiyA .
(defrule limp6
(declare (salience 5080))
(id-root ?id limp)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-root ?id1 feel)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  nisweja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  limp.clp 	limp6   "  ?id "  nisweja )" crlf))
)

;@@@--- Added by Nandini(28-4-14)
;Due to the injury his leg has become quite limp.[hinKoja]
;cota ke kAraNa usakA tAfga sacamuca SakwihIna ho gayA hE.
(defrule limp7
(declare (salience 5080))
(id-root ?id limp)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-due_to_saMbanXI  ?id ?id1)
(id-root ?id1 injury)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  SakwihIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  limp.clp 	limp7   "  ?id "  SakwihIna )" crlf))
)


;"limp","V","1.laMgadAnA"
;He limps a lot.
;--"2.kaTinAI_se_Age_baDa_pAnA"
;The boat limped into the harbour.
;
