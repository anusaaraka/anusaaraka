
(defrule bounce0
(declare (salience 5000))
(id-root ?id bounce)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-back_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCala));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " bounce.clp bounce0 " ?id "  uCala )" crlf)) 
)

(defrule bounce1
(declare (salience 4900))
(id-root ?id bounce)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uCala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bounce.clp	bounce1  "  ?id "  " ?id1 "  uCala  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22-Feb-2014
;The system automatically bounces back emails which contain attachments.[oald]
;मशीन अपने आप वह इमेल वापस भेज देती है जिनमें संलग्नक होते हैं
(defrule bounce4
(declare (salience 5000))
(id-root ?id bounce)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 email)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vApasa_Beja_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bounce.clp	bounce4  "  ?id "  " ?id1 "  vApasa_Beja_xe  )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22-Feb-2014
;The airline's shares have bounced back from two days of heavy losses.[oald]
;दो दिन के भारी नुक्सान के बाद हवाई कम्पनी के शेयर की कीमतों में उछाल आया है
(defrule bounce5
(declare (salience 5000))
(id-root ?id bounce)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(kriyA-from_saMbanXI  ?id ?)
(kriyA-subject  ?id ?sub)
(id-word ?sub shares)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kImawoM_meM_uCAla_A))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bounce.clp	bounce5  "  ?id "  " ?id1 "  kImawoM_meM_uCAla_A  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* " bounce.clp	bounce5   "  ?id " kA )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24-Feb-2014
;He was soon bounced from the post.[oald]
;उसे जल्द ही पद छोड़ने के लिये मजबूर किया गया था
(defrule bounce6
(declare (salience 5000))
(id-root ?id bounce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
(id-word ?id1 post)
(id-word =(+ ?id 1) from)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) CodZane_ke_liye_majabUra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bounce.clp	bounce6  "  ?id "  " (+ ?id 1) "  CodZane_ke_liye_majabUra_kara )" crlf)
))


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24-Feb-2014
;He bounced ideas off colleagues everywhere he went.[oald]
;वह जहाँ भी जाता था सहकार्यकर्ताओं को अपने विचार बताता था . 
(defrule bounce7
(declare (salience 5000))
(id-root ?id bounce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 idea)
(kriyA-off_saMbanXI  ?id ?id2)
(id-word =(+ ?id1 1) off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 (+ ?id1 1) apane_vicAra_bawA))
(assert (id-H_vib_mng ?id2 ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bounce.clp	bounce7  "  ?id "  " ?id1 " "(+ ?id1 1) "  apane_vicAra_bawA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  bounce.clp	bounce7  "  ?id2 "  ko )" crlf)
))


;*********************************DEFAULT RULES******************************

(defrule bounce2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bounce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bounce.clp 	bounce2   "  ?id "  uCala )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22-Feb-2014
;There's not much bounce left in these balls.[oald]
;इन गेंदो में ज्यादा उछाल नहीं बचा है
(defrule bounce3
(declare (salience 0))
(id-root ?id bounce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bounce.clp 	bounce3   "  ?id "  uCAla )" crlf))
)

;default_sense && category=verb	uCala_padZa	0
;"bounce","VI","1.uCala_padZanA"
;The rubber ball bounced
;He bounced to his feet
;--"2.vApisa_AnA"
;The check bounced
;Bounce a check
;--"3.mAranA"
;The ex-boxer's job is to bounce people who want to enter this private club
;
;************************************EXAMPLES*****************************

;I tried to send her an email but it bounced back.
;The system automatically bounces back emails which contain attachments.
;The airline's shares have bounced back from two days of heavy losses.
;He's had a lot of problems, but he always seems to bounce back pretty quickly.
;He was soon bounced from the post.
;I tried to send her an email but it bounced.
;The system automatically bounces emails which contain attachments.
;He bounced ideas off colleagues everywhere he went.
;He bounced across the room to greet them.
;The bus bounced down the hill.
;Her hair bounced as she walked.
;She bounced up and down excitedly on the bed.
;She bounced the ball against the wall.
;The light bounced off the river and dazzled her.
;Short sound waves bounce off even small objects.
;The ball bounced twice before he could reach it.
