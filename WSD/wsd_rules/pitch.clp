
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




;@@@ Added by Sonam Gupta MTech IT Banasthali 12-2-2014
;She pitched the idea to me over lunch. [Cambridge]
;उसने मुझे लन्च में विचार समझाया .
(defrule pitch6
(declare (salience 5500))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pitch.clp 	pitch6   "  ?id "  samaJA )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 12-2-2014
;They are pitching for new business at the moment. [Cambridge]
;वे उस क्षण नये व्यापार के बारे में विचार-विमर्श कर रह थे .
(defrule pitch7
(declare (salience 5500))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAra-vimarSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pitch.clp 	pitch7   "  ?id "  vicAra-vimarSa_kara )" crlf))
)




;@@@ Added by Sonam Gupta MTech IT Banasthali 12-2-2014
;He braked too hard and the car pitched forward.  [Cambridge]
;उसने बहुत तेज ब्रेक लगाए और गाड़ी आगे बढ़ी . 
(defrule pitch8
(declare (salience 5500))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-root ?id1 further|forward|ahead)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pitch.clp 	pitch8   "  ?id "  baDZa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 12-2-2014
;The tune was pitched much too high for me.  [Cambridge]
;धुन की तान मेरे लिये बहुत ऊँची थी .
(defrule pitch9
(declare (salience 5500))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 tune|volume|sound|music)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pitch.clp 	pitch9   "  ?id "  wAna )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 12-2-2014
;If we all pitch in, we'll get this kitchen cleaned up in no time.  [Cambridge]
;यदि हम सब में सहायता करते हैं, तो यह रसोईघर  हम तुरन्त स्वच्छ कर देंगे . 
(defrule pitch10
(declare (salience 5500))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 in)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahAyawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pitch.clp 	pitch10   "  ?id "  sahAyawA_kara )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 12-2-2014
;The explosion pitched her violently into the air. [oald]
;विस्फोट ने हवा में हिंसात्मक ढङ्ग से उसको फेंका . 
(defrule pitch11
(declare (salience 5500))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pitch.clp 	pitch11   "  ?id "  PeMka )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 12-2-2014
;The new government has already been pitched into a crisis. [oald]
;नयी सरकार सङ्कट के अंदर पहले से ही फँस गयी है . 
(defrule pitch12
(declare (salience 5700))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?id1)
(id-root ?id1 crisis|problem|disaster|emergency)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pazsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pitch.clp 	pitch12   "  ?id "  Pazsa )" crlf))
)




;@@@ Added by Sonam Gupta MTech IT Banasthali 12-2-2014
;The new software is being pitched at banks. [oald]
;नया सॉफ्टवेयर बैंकों में स्थापित किया जा रहा है . 
(defrule pitch13
(declare (salience 5500))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-at_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWApiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pitch.clp 	pitch13   "  ?id "  sWApiwa_kara )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 12-2-2014
;Orange juice is to be pitched as an athlete's drink. [oald]
;नारङ्गी रस एक व्यायामी के पेय या शरबत जैसे ही इस्तेमाल किया जाना है . 
(defrule pitch14
(declare (salience 5500))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-as_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iswemAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pitch.clp 	pitch14   "  ?id "  iswemAla_kara )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 12-2-2014
;They pitched camp for the night near the river. [oald]
;उन्होंने नदी के पास रात में तंबू गाढ़ा .
(defrule pitch15
(declare (salience 5500))
(id-root ?id pitch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 camp|tent)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pitch.clp 	pitch15   "  ?id "  gAdZa )" crlf))
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
