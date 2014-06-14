;@@@ Added by Nandini (14-12-13)
;Then around March, the trees grow new leaves which give shade during the hot summer.[via mail]
;waba lagaBaga mArca meM, pedoM para nayI pawwiyAz howe hEM jo garama grIRma ke xOrAna CAyA xewI hEM.
(defrule march0
(declare (salience 500))
(id-root ?id march)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mArca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  march.clp 	march0   "  ?id "  mArca)" crlf))
)

;@@@ Added by Nandini (14-12-13)
;The army began their long march to the coast.[oxford advanced learner's dictionary]
;senA ne unakA samuxra wata ko lambe kUca karanA AramBa kiyA.
(defrule march1
(declare (salience 550))
(id-root ?id march)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUca_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  march.clp 	march1   "  ?id "  kUca_karanA)" crlf))
)

;@@@ Added by Nandini (14-12-13)
;They marched 20 miles to reach the capital.[oxford advanced learner's dictionary]
;unhoMne rAjaXAnI waka pahuzcane ke liye 20 mIla xUra kUca kie.
(defrule march2
(declare (salience 1000))
(id-root ?id march)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  march.clp 	march2   "  ?id "  kUca_kara)" crlf))
)

;@@@ Added by Nandini (14-12-13)
;Several thousand people marched on City Hall.[oxford advanced learner's dictionary]
;hajAroM ki wAxAxa me loga sitI hoYla para kUca kara gaye.
(defrule march3
(declare (salience 1200))
(id-root ?id march)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUca_kara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  march.clp 	march3   "  ?id "  kUca_kara_jA )" crlf))
)

;@@@ Added by Nandini (14-12-13)
;Time marches on and we still have not made a decision.[oxford advanced learner's dictionary]
;samaya vyawiwa ho rahA hE Ora Pira BI hamane koI niraNaya nahIM liyA.
(defrule march4
(declare (salience 1200))
(id-root ?id march)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-subject ?id ?id2)
(id-word ?id2 time)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vyawiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " march.clp	march4  "  ?id "  " ?id1 " vyawiwa_ho )" crlf))
)

;@@@ Added by Nandini (14-12-13)
;She marched over to me and demanded an apology.[oxford advanced learner's dictionary]
;vaha wejI se merI waraPa AI Ora muJe mAPI maMgane ke liye jixa karane lagI.
(defrule march5
(declare (salience 1600))
(id-root ?id march)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(conjunction-components  ? ?id ?id2)
(id-root ?id2 demand)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wejzI_se_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " march.clp	march5  "  ?id "  " ?id1 "  wejzI_se_A)" crlf))
)

;@@@ Added by Nandini (14-12-13)
;She was marched out of the door and into a waiting car.[oxford advanced learner's dictionary]
;vaha xaravAje ke bAhara prawIkRA karawI huI gAdI meM calI gayI WI.
(defrule march6
(declare (salience 1250))
(id-root ?id march)
?mng <-(meaning_to_be_decided ?id)
(kriyA-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  march.clp 	march6   "  ?id "  cala )" crlf))
)
