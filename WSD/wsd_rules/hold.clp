
(defrule hold0
(declare (salience 5000))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id holding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aXisaMpawwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hold.clp  	hold0   "  ?id "  aXisaMpawwi )" crlf))
)

;"holding","N","1.aXisaMpawwi"
;nyAyAXISa ne'holding'(KewIbAdZI)kA AXA hissA usake BAI ko xene kA PEsalA xiyA.
;
;
(defrule hold1
(declare (salience 4900))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bawAne_se_iMkAra_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold1  "  ?id "  " ?id1 "  bawAne_se_iMkAra_kara_xe  )" crlf))
)

;She wanted to tell all the things to her father but her mother held her back.
;vaha apane piwA ko saba kuCa bawA xenA cAhawI WI lekina usakI mAz ne bawAne se iMkAra kara xiyA
(defrule hold2
(declare (salience 4800))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bane_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold2  "  ?id "  " ?id1 "  bane_raha  )" crlf))
)

;He's unable to hold down in this job.
;vaha isa nOkarI meM bane rahane ke lie asamarWa hE
(defrule hold3
(declare (salience 4700))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forth)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAPI_samaya_waka_lagAwAra_bolawe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold3  "  ?id "  " ?id1 "  kAPI_samaya_waka_lagAwAra_bolawe_raha  )" crlf))
)

;I sat quietly in a corner while he held forth.
;mEM cupacApa kone meM bETA rahA Ora vaha kAPI samaya waka lagAwAra bolawA rahA
(defrule hold4
(declare (salience 4600))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold4  "  ?id "  " ?id1 "  ruka  )" crlf))
)

;Hold on! i am not ready.
;ruko! aBI mEM wEyAra nahIM hUz
(defrule hold5
(declare (salience 4500))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CipA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold5  "  ?id "  " ?id1 "  CipA  )" crlf))
)

;I don't know why he is holding out on us everything like this.
;mEM nahIM jAnawA ki vo hamase saba kuCa isa waraha kyoM CipA rahA hE
(defrule hold6
(declare (salience 4400))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samarWana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold6  "  ?id "  " ?id1 "  samarWana_kara  )" crlf))
)

;He doesn't hold with smoking.
;vaha XUmrapAna kA samarWana kaBI nahIM karawA
(defrule hold7
(declare (salience 4300))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id1  hand)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 upara_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold7  "  ?id "  " ?id1 "  upara_uTA  )" crlf))
)

(defrule hold8
(declare (salience 4200))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sazBAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold8  "  ?id "  " ?id1 "  sazBAla  )" crlf))
)

(defrule hold9
(declare (salience 4100))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sazBAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold9  "  ?id "  " ?id1 "  sazBAla  )" crlf))
)

;Added by human beings
(defrule hold10
(declare (salience 4000))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 open)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold.clp 	hold10   "  ?id "  raKa )" crlf))
)

