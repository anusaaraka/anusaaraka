;@@@ Added by Preeti(19-2-14)
;Everyone cheered as the winners received their medals. [Cambridge Learner’s Dictionary]
;jEse hI jIwane vAloM ne unake paxaka prApwa kie saba ne jaya_jayakAra_karake_prowsAhiwa kiyA .
(defrule cheer1
(id-root ?id cheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaya_jayakAra_karake_prowsAhiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheer.clp 	cheer1   "  ?id "  jaya_jayakAra_karake_prowsAhiwa_kara )" crlf))
)

;@@@ Added by Preeti(19-2-14)
;She was cheered by the news from home. [Oxford Advanced Learner's Dictionary]
;Gara se prApwa samAcAra ne use prowsAhiwa kiyA WA.
(defrule cheer4
(declare (salience 1000))
(id-root ?id cheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prowsAhiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheer.clp 	cheer4   "  ?id " prowsAhiwa_kara)" crlf))
)

;@@@ Added by Preeti(19-2-14)
;She was sick so I sent her some flowers to cheer her up. [Cambridge Learner’s Dictionary]
;vaha asvasWa WI isalie mEMne usako prsanna karane ke liye usako kuCa PUla Beje.
(defrule cheer2
(declare (salience 1050))
(id-root ?id cheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(kriyA-object  ?id ?id2)
(id-root ?id2  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prsanna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  cheer.clp 	cheer2  "  ?id "  "  ?id1 " prsanna_kara)" crlf))
)

;@@@ Added by Preeti(19-2-14)
;He cheered up at the prospect of a meal. [Cambridge Learner’s Dictionary]
;vaha Bojana ke AsAra se prsanna huA.
(defrule cheer3
(declare (salience 1050)) 
(id-root ?id cheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(not (kriyA-object  ?id ?))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prsanna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  cheer.clp 	cheer3  "  ?id "  "  ?id1 " prsanna_ho)" crlf))
)

;Parser Problem
;@@@ Added by Preeti(19-2-14)
;As the runners went by, we cheered them on. [Cambridge Learner’s Dictionary]
;jaba XAvaka gujare, hamane unako jaya_jayakAra_karake_prowsAhiwa kiyA.
(defrule cheer5
(declare (salience 1050))
(id-root ?id cheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
;(kriyA-upasarga  ?id ?id1)
(id-word =(+ ?id 2) on)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 2) jaya_jayakAra_karake_prowsAhiwa_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  cheer.clp 	cheer5  "  ?id "  " (+ ?id 2) " jaya_jayakAra_karake_prowsAhiwa_kara)" crlf))
)

;@@@ Added by Preeti(19-2-14)
;Bright curtains can cheer up a dull room. [Oxford Advanced Learner's Dictionary]
;camakIle parxe eka suswa kamare ko KuSanumA_banA sakawe hEM.
(defrule cheer6
;(declare (salience 1050))
(id-root ?id cheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KuSanumA_banA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  cheer.clp 	cheer6  "  ?id "  "  ?id1 " KuSanumA_banA)" crlf))
)

;#############################Defaults rule#######################################
;@@@ Added by Preeti(19-2-14)
;Her speech was received with cheers and a standing ovation. [Cambridge Learner’s Dictionary]
;usake BARaNa ko jayajayakAr Ora Kade_hokara_karawalaXvani_karawe_hue_praSaMsA ke sAWa prApwa kiyA gayA WA.
(defrule cheer0
;(declare (salience 500))
(id-root ?id cheer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jayajayakAr))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheer.clp 	cheer0  "  ?id "  jayajayakAr)" crlf))
)
