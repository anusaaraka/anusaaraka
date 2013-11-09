
(defrule pitch0
(declare (salience 5000))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pitched )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id JukAhuA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  pitch.clp  	pitch0   "  ?id "  JukAhuA )" crlf))
)

;"pitched","Adj","1.JukAhuA"
;The pitched roofs of mountainous houses give a peculiar look.
;
;
(defrule pitch1
(declare (salience 4900))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pitch.clp	pitch1  "  ?id "  " ?id1 "  kara  )" crlf))
)

;You can pitch in your work with this idea.
;wuma isa vicAra ke sAWa yaha kArya kara sakawe ho
(defrule pitch2
(declare (salience 4800))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-into_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pata_padZa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pitch.clp pitch2 " ?id "  Pata_padZa )" crlf)) 
)

;He pitched into her about her carelessness.
;vaha usakI lAparavAhI ke kAraNa usa para Pata padZA
(defrule pitch3
(declare (salience 4700))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Pata_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pitch.clp	pitch3  "  ?id "  " ?id1 "  Pata_padZa  )" crlf))
)

;He pitched into her about her carelessness.
;vaha usakI lAparavAhI ke kAraNa usa para Pata padZA
(defrule pitch4
(declare (salience 4600))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kela_ke_lie_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pitch.clp 	pitch4   "  ?id "  Kela_ke_lie_sWAna )" crlf))
)

;"pitch","N","1.Kela_ke_lie_sWAna"
;The cricket pitch is wet now.
;--"2.wArawva/sura/svara"
;A train seens to have higher pitch as the train approaches.
;--"3.UzcAI"
;The dancer's talent reached the pitch of perfection.
;--"4.PZeMka/kRepaNa"
;The basket ball player gave an exact pitch && the ball fell in the basket.
;--"5.ucanicAva"
;The ship travelled on the sea with a pitch.
;--"1.dAmara/alakawarA"
;Pitch is a useful product in sealing gaps.
;
(defrule pitch5
(declare (salience 4500))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWira_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pitch.clp 	pitch5   "  ?id "  sWira_kara )" crlf))
)

;"pitch","V","1.sWira_karanA"
;Their prices are pitched lower than those of their competition.
;--"2.lagAnA"
;Pitch the transistor to maximum.
;--"3.PZeMkanA"
;Pitch pebbles into that river.
;--"4.tappA_KAnA"
;The ball pitched short.
;--"5.giranA{XadAma_se}"
;The boy suddenly pitched forward out of his seat when the driver applied a sudden break.
;--"6.dUbanA-uwarAnA"
;The ship pitched in the sea due to tides.
;--"7.derA_dAlanA"
;We pitched camp near the river while tracking. 
;
