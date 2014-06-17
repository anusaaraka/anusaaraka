
(defrule tie0
(declare (salience 5000))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " tie.clp tie0 " ?id "  samApwa_kara )" crlf)) 
)

(defrule tie1
(declare (salience 4900))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tie.clp	tie1  "  ?id "  " ?id1 "  samApwa_kara  )" crlf))
)


(defrule tie3
(declare (salience 4700))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " tie.clp tie3 " ?id "  samApwa_kara )" crlf)) 
)

(defrule tie4
(declare (salience 4600))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tie.clp	tie4  "  ?id "  " ?id1 "  samApwa_kara  )" crlf))
)

;@@@ Added by Prachi Rathore[23-1-14]
;He left his dog tied up to a tree.[oald]
;उसने उसके कुत्ते को  पेड से बंधा छोडा . 
(defrule tie6
(declare (salience 5000))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baMXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tie.clp	tie6  "  ?id "  " ?id1 "  baMXA )" crlf))
)


;@@@ Added by Prachi Rathore[23-1-14]
 ;Ties for closing plastic bags.[oald]
; प्लास्टिक थैलों को बन्द करने के लिये डोरियाँ . 
(defrule tie7
(declare (salience 5000))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?id2)
(viSeRya-viSeRaNa  ?id2 ?id1)
(id-root ?id1 close)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dorI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tie.clp 	tie7   "  ?id " dorI)" crlf))
)


;@@@ Added by Prachi Rathore[23-1-14]
;The match ended in a tie.[oald]
;मैच बराबरी पर समाप्त हुआ .
(defrule tie8
(declare (salience 5000))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
(id-root ?id1 end)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tie.clp 	tie8   "  ?id "  barAbarI)" crlf))
)


;@@@ Added by Prachi Rathore[23-1-14]
;The ties of friendship.[oald]
;मैत्री के बंधन . 
(defrule tie9
(declare (salience 5000))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 friendship)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMXana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tie.clp 	tie9   "  ?id "  baMXana)" crlf))
)


;@@@ Added by Prachi Rathore[23-1-14]
;The firm has close ties with an American corporation.[oald]
;व्यापारिक कम्पनी का अमरीकी महापालिका के साथ निकट संबंध हैं . 
;emotional ties[oald]
; भावनात्मक संबंध
(defrule tie10
(declare (salience 5000))
(id-root ?id tie)
(id-word ?id ties)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-with_saMbanXI  ?id ?id1)(viSeRya-viSeRaNa  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMbaMXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tie.clp 	tie10   "  ?id "  saMbaMXa)" crlf))
)


;@@@ Added by Prachi Rathore[23-1-14]
;Although he was raised as a Roman Catholic, he has cut his ties with the Church.[oald]
;यद्यपि वह रोमन केथोलिक जैसे ही उभरा था, परन्तु उसने गिरजाघर के साथ उसके संबंधो में कटोती की हैं . 
(defrule tie11
(declare (salience 5000))
(id-root ?id tie)
(id-word ?id ties)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(kriyA-with_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMbaMXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tie.clp 	tie11   "  ?id "  saMbaMXa)" crlf))
)


;@@@ Added by Prachi Rathore[23-1-14]
;We are hoping to tie up the deal by tomorrow.[oald]
;हम कल तक डील करने की आशा कर रहे हैं . 
(defrule tie12
(declare (salience 5200))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 deal)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tie.clp	tie12  "  ?id "  " ?id1 "  kara)" crlf))
)

;@@@ Added by Prachi Rathore[23-1-14]
;The gang tied up a security guard.[oald]
;दल ने एक सुरक्षा गार्ड को रस्सी से बांधा . 
(defrule tie13
(declare (salience 5100))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rassI_se_bAMXA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tie.clp	tie13  "  ?id "  " ?id1 "  rassI_se_bAMXA)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  tie.clp     tie13   "  ?id "  ko )" crlf))
)


;@@@ Added by Prachi Rathore[23-1-14]
;To tie off a rope.[oald]
;रस्सी में गाँठ बाँधना . 
(defrule tie14
(declare (salience 5000))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gAzTa_bAMXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tie.clp	tie14  "  ?id "  " ?id1 " gAzTa_bAMXa )" crlf))
)

;@@@ Added by Prachi Rathore[23-1-14]
;A storm was coming, so the captain ordered us to tie everything down.[m-w]
;आँधी आ रही थी, इसलिए कप्तान ने हमें सब कुछ बांधने के लिये आज्ञा दी 
(defrule tie15
(declare (salience 5100))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAMXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tie.clp	tie15  "  ?id "  " ?id1 " bAMXa )" crlf))
)


;@@@ Added by Prachi Rathore[23-1-14]
;He's tied down by having to work every Saturday.[cambridge]
;वह प्रत्येक शनिवार को काम करने के लिये  बंधा हुआ है .  
(defrule tie16
(declare (salience 5100))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baMXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tie.clp	tie16  "  ?id "  " ?id1 " baMXA )" crlf))
)

;XXXXXXXXXXX DEFAULT RULE XXXXXXXXXXXXXXXXXX
(defrule tie5
(declare (salience 4500))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tie.clp 	tie5   "  ?id "  bAzXa )" crlf))
)


(defrule tie2
(declare (salience 4800))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tie.clp 	tie2   "  ?id "  tAI )" crlf))
)

;default_sense && category=verb	barAbara_raha	0
;"tie","VI","1.barAbara_rahanA"
;The teams tied in the end.
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_tie7
(declare (salience 5000))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?id2)
(subject-subject_samAnAXikaraNa ?id2 ?id1)
(id-root ?id1 close)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dorI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tie.clp   sub_samA_tie7   "   ?id " dorI)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_tie7
(declare (salience 5000))
(id-root ?id tie)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?id2)
(object-object_samAnAXikaraNa ?id2 ?id1)
(id-root ?id1 close)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dorI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tie.clp   obj_samA_tie7   "   ?id " dorI)" crlf))
)
