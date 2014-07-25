
(defrule join0
(declare (salience 5000))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samUha_meM_SAmila_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " join.clp	join0  "  ?id "  " ?id1 "  samUha_meM_SAmila_ho  )" crlf))
)

;They were going for a movie && i joined on.
;ve sinemA jA rahe We Ora mEM BI unake samUha meM SAmila ho gayA
(defrule join1
(declare (salience 4900))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 surakRAbala_kA_saxasya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " join.clp	join1  "  ?id "  " ?id1 "  surakRAbala_kA_saxasya_ho  )" crlf))
)

;He joined up in 1950.
;1950 meM vaha surakRAbala kA saxasya banA
(defrule join2
(declare (salience 4800))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  join.clp 	join2   "  ?id "  mila )" crlf))
)

;default_sense && category=verb	saMyukwa_kara	0
;"join","VT","1.saMyukwa_karanA"
;I have joined the two wires.
;--"2.milanA"
;Lets join together in our effort to bring peace in the society.
;--"3.SAmila_honA"
;I joined the Navy in 1998.
;
;

;Added by Prachi Rathore[22-11-13]
;I don't have time for a drink now, but I'll join you later. 
;मेरे पास अभी पेय या शरबत के लिए समय नहीं है, परन्तु मैं बाद में आपका साथ दूँगा .. 
(defrule join3
(declare (salience 5000))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAWa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  join.clp 	join3   "  ?id "  sAWa_xe )" crlf))
)

;Added by Prachi Rathore[22-11-13]
; It's a great club, why don't you join? 
;यह क्लब बहुत अच्छा है ,तुम क्यों नहीं इसके सदस्य बन जाते .
(defrule join4
(declare (salience 5000))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-viSeRaNa ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saxasya_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  join.clp 	join4   "  ?id "  saxasya_bana )" crlf))
)

;Added by Prachi Rathore[22-11-13]
; If you join the dots on the paper, you'll get a picture.
;अगर तुम पेपर पर के  दोनों बिंदुओं को जोड़ दो तो ,तुम्हें एक तस्बीर दिखेगी . 
(defrule join5
(declare (salience 5000))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joda))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  join.clp 	join5   "  ?id "  joda )" crlf))
)

;Added by Prachi Rathore[22-11-13]
;I felt so unfit after Christmas that I decided to join a gym.
;क्रिसमस के बाद मैंने जिम की सदस्यता लेने का निश्चय किया
(defrule join6
(declare (salience 5000))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 gym)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saxasya_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  join.clp 	join6   "  ?id "  saxasya_bana )" crlf))
)

;Added by Prachi Rathore[22-11-13]
;A long suspension bridge joins the two islands.
;एक लम्बा पुल दोनों द्वीप को जोड़ता है.
(defrule join7
(declare (salience 4900))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(and(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id2))
(and(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "place.gdbm" ?str)))(not(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joda))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  join.clp 	join7   "  ?id "  joda )" crlf))
)

;Added by Prachi Rathore[22-11-13]
;If you've come to buy tickets for tonight's performance, please join the UK queue
;अगर तुम आज की रात का प्रदर्शन (नाटक ) देखने आए हो तो कतार के अंत में शामिल होना होगा .
(defrule join8
(declare (salience 5000))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 rank|queue)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAmila_ho))
(assert (kriyA_id-object_viBakwi ?id me))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  join.clp 	join8   "  ?id "  SAmila_ho )" crlf))
)


;;@@@   ---Added by Prachi Rathore
; She was prodded into joining the team. [cambridge]
;उसे टीम में सम्मिलित होने के लिये उकसाया गया था .
;The possibility of joining the educational line came in 1887. [gyannidhi]
(defrule join9
(declare (salience 5000))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-into_saMbanXI  ? ?id)(viSeRya-of_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammiliwa_ho))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  into.clp 	join9   "  ?id "  sammiliwa_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  join.clp     join9   "  ?id "  meM )" crlf))
)

;@@@ Added by Prachi Rathore 3-1-14
;She and her sister used to be joined at the hip when they were kids. 
(defrule join10
(declare (salience 5000))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-at_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id juda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  join.clp 	join10   "  ?id "  juda)" crlf))
)

;@@@ Added by Prachi Rathore 10-1-14
;Tim has applied to join the police.[cambridge]
(defrule join11
(declare (salience 5000))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(id-root ?id1 apply)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarwI_ho))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  join.clp 	join11   "  ?id "  BarwI_ho )" crlf))
)


;@@@ Added by Prachi Rathore 10-1-14
;She joined the company three months ago.[oald]
;उसने तीन महीने पहले कम्पनी में पदभार ग्रहण किया . 
(defrule join12
(declare (salience 5000))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 company)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxaBAra_grahaNa_kara))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  join.clp 	join12   "  ?id "  paxaBAra_grahaNa_kara )" crlf))
)

;@@@ Added by Prachi Rathore 10-1-14
;I've joined an aerobics class.[oald]
;उसने तीन महीने पहले कम्पनी में पदभार ग्रहण किया . 
(defrule join13
(declare (salience 5000))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 class)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praveSa_le))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  join.clp 	join13   "  ?id "  praveSa_le )" crlf))
)


;@@@ Added by Prachi Rathore[10-1-14]
;Members of the public joined the search for the missing boy. [oald]
;
(defrule join14
(declare (salience 5000))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id juda_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  join.clp 	join14   "  ?id "  juda_jA )" crlf))
)


;@@@ Added by Prachi Rathore[10-1-14]
;I wish he would join in with the other children.[oald]
(defrule join15
(declare (salience 5000))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 in)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SAmila_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " join.clp	join15  "  ?id "  " ?id1 "  SAmila_ho  )" crlf))
)

;@@@ Added by Prachi Rathore[10-1-14]
;We'll join up with the other groups later.[oald]
(defrule join16
(declare (salience 5500))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SAmila_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " join.clp	join16  "  ?id "  " ?id1 "  SAmila_ho  )" crlf))
)

;@@@ Added by Prachi Rathore[21-1-14]
;She worked in a school for a while before joining the college.
;उसने कालेज से पहले कुछ समय तक विद्यालय में काम किया . 
(defrule join17
(declare (salience 5000))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-before_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  join.clp 	join17   "  ?id "  - )" crlf))
)

;@@@ Added by Prachi Rathore[21-1-14]
; If you join up the dots on the paper, you'll get a picture.[cambridge]
;यदि आप कागज पर बिंदु जोड देते हैं, तो आप चित्र प्राप्त करेंगे . 
(defrule join18
(declare (salience 5500))
(id-root ?id join)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-object  ?id ?id2)
(id-root ?id2 dot)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 joda_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " join.clp	join18  "  ?id "  " ?id1 "  joda_xe )" crlf))
)

