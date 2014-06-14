
(defrule pop0
(declare (salience 5000))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prakata_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pop.clp	pop0  "  ?id "  " ?id1 "  prakata_ho  )" crlf))
)

;I was looking for her && suddenly she popped up!
;mEM use DUzDZa rahA WA Ora vaha acAnaka xiKa gaI
(defrule pop1
(declare (salience 4900))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pop.clp pop1 " ?id "  mara )" crlf)) 
)

;$$$ Modified by Sonam Gupta MTech IT Banasthali 22-3-2014 (changed meaning)
(defrule pop2
(declare (salience 4800))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pop.clp	pop2  "  ?id "  " ?id1 "  nikala_jA  )" crlf))
)

(defrule pop3
(declare (salience 4700))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acAnaka_najZara_A));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pop.clp pop3 " ?id "  acAnaka_najZara_A )" crlf)) 
)

(defrule pop4
(declare (salience 4600))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_najZara_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pop.clp	pop4  "  ?id "  " ?id1 "  acAnaka_najZara_A  )" crlf))
)

(defrule pop5
(declare (salience 4500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wadaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pop.clp 	pop5   "  ?id "  wadaka )" crlf))
)

;default_sense && category=verb	wadaka	0
;"pop","V","1.wadakanA"
;Champagne corks were popping throughtout the celebrations.
;--"2.pataka xenA"
;The children were popping ballons.
;
;


;@@@ Added by Sonam Gupta MTech IT Banasthali 21-3-2014
;I'll pop into the supermarket on my way home. [cambridge]
;मैं घर जाते समय सुपरमार्केट जाऊँगा .
(defrule pop6
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pop.clp 	pop6   "  ?id "  jA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 21-3-2014
;Can you pop the pizza in the oven? [cambridge]
;क्या आप पिज्ज़ा को ओवन में रख सकते हैं .
(defrule pop7
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?noun)
(viSeRya-in_saMbanXI  ?noun ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pop.clp 	pop7   "  ?id "  raKa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 21-3-2014
;The balloon popped.  [M-W]
;गुब्बारा फटा .
(defrule pop8
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-subject  ?id ?id1)(kriyA-object  ?id ?id1))
(id-root ?id1 balloon)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pop.clp 	pop8   "  ?id "  Pata )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 21-3-2014
;One of the buttons popped off my sweater.   [M-W]
;बटन में से एक मेरे स्वेटर में से निकल गया .
(defrule pop9
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 off)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pop.clp 	pop9   "  ?id "  nikala_jA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 22-3-2014
;We popped some popcorn in the microwave.  [M-W]
;हमने माइक्रोवेव में कुछ पोपकोर्न भूने .
(defrule pop10
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 popcorn)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pop.clp 	pop10   "  ?id "  BUna )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 22-3-2014
;If you are busy, I can pop back in later.   [M-W]
;यदि आप व्यस्त हैं, तो मैं वापिस आ सकता हूँ .
(defrule pop11
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-root ?id1 back)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pop.clp 	pop11   "  ?id "  A )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 22-3-2014
;She popped over for a cup of tea.    [M-W]
;वह एक प्याला चाय के लिये आई .
(defrule pop12
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 over)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pop.clp	pop12  "  ?id "  " ?id1 "  A  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 22-3-2014
;My neighbor popped in for a visit.     [M-W]
;मेरा पड़ोसी मिलने के लिये आया .
(defrule pop13
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 in)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pop.clp 	pop13   "  ?id "  A )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 22-3-2014
;I'll pop down to the post office during my break.    [M-W]
;मैं अंतराल के दौरान डाक घर जाऊँगा .
(defrule pop14
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pop.clp	pop14  "  ?id "  " ?id1 "  jA  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 22-3-2014
;She popped a CD in the player.    [M-W]
;उसने प्लेयर में सी डी डाली .
(defrule pop15
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 cd|cassette)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pop.clp 	pop15   "  ?id "  dAla )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 22-3-2014
;I felt like popping him.  [M-W]
;मेर् उसे मारने का मन हुआ .
(defrule pop16
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-like_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pop.clp 	pop16   "  ?id "  mAra )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 22-3-2014
;Pop on a hat. [M-W]
;टोपी पहनिये .
(defrule pop17
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?)
(id-root ?id1 on)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pop.clp	pop17  "  ?id "  " ?id1 "  pahana  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 22-3-2014
;The suitcase popped open. [M-W]
;सूटकेस झटके से खुला .
(defrule pop18
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(subject-subject_samAnAXikaraNa  ?noun ?id1)
(kriyA-subject  ?id ?noun)
(id-root ?id1 open)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Jatake_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pop.clp 	pop18   "  ?id "  Jatake_se )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 22-3-2014
;I've been popping pills all week for this cold.  [M-W]
;मैं पूरे हफ्ते इस सर्दी के लिये गोलियाँ लेता रहा .
(defrule pop19
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 pill|tablet|medicine|capsule)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pop.clp 	pop19   "  ?id "  le )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 22-3-2014
;He popped the question on Christmas Day. [M-W]
;उसने क्रिसमस के दिन प्रश्न पूछा .
(defrule pop20
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 question|query)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pop.clp 	pop20   "  ?id "  pUCa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 22-3-2014
;He took a pop at his rival.  [M-W]
;उसने अपने प्रतिद्वंदी को मुक्का मारा .
(defrule pop21
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?verb ?id)
(kriyA-at_saMbanXI  ?verb ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pop.clp 	pop21   "  ?id "  mukkA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 22-3-2014
;Pop culture  [M-W]
;पौप संस्कृति .
(defrule pop22
(declare (salience 5500))
(id-root ?id pop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1)
(id-root ?id1 music|artist|culture|musician|band)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pOpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pop.clp 	pop22   "  ?id "  pOpa )" crlf))
)
