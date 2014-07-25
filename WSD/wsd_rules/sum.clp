
(defrule sum0
(declare (salience 5000))
(id-root ?id sum)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sArAMSa_nikAla));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " sum.clp sum0 " ?id "  sArAMSa_nikAla )" crlf)) 
)
;He summed up the discussion in few words.[rajpal]
;उसने थोडे शब्दों में चर्चा का सारांश निकाला . 
(defrule sum1
(declare (salience 4900))
(id-root ?id sum)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sArAMSa_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sum.clp	sum1  "  ?id "  " ?id1 "  sArAMSa_nikAla  )" crlf))
)
;@@@ Added by jagriti(8.2.2014)
;A large sum of money.[oald]
;एक बडी रकम . 
(defrule sum3
(declare (salience 4800))
(id-root ?id sum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 money)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Xana-rASi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sum.clp sum3  "  ?id "  " ?id1 "  Xana-rASi )" crlf))
)
;@@@ Added by jagriti(8.2.2014)
;Huge sums have been invested in this project.[oald]
;बडी  धन-राशि  इस परियोजना में दी गयी है . 
;He needs a sum of hundred rupees.[rajpal]
;उसको सौ रुपयों की धन-राशि की जरूरत  है . 
;He borrowed a large sum. [wordnet]
;उसने एक बडी धन-राशि उधार ली . 
(defrule sum4
(declare (salience 4700))
(id-root ?id sum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI ?id ?id1)(kriyA-object ?id1 ?id)(kriyA-subject ?id1 ?id)(viSeRya-viSeRaNa  ?id ?id1))
(id-root ?id1 rupee|dollar|large|huge|certain|small|borrow|need|give|invest)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xana-rASi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sum.clp 	sum4   "  ?id "  Xana-rASi )" crlf))
)
;@@@ Added by jagriti(8.2.2014)
;He can not do the sums of arithmetic.[rajpal]
;वह अङ्कगणित के सवाल नहीं कर सकता है .
;I was good at sums at school.[oald] 
;मैं विद्यालय में सवालों में अच्छा था .
;A mathematical sum .
(defrule sum5
(declare (salience 4600))
(id-root ?id sum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-object ?id1 ?id)(kriyA-subject ?id1 ?id)(viSeRya-viSeRaNa  ?id ?id1)(subject-subject_samAnAXikaraNa ?id ?id1)(viSeRya-at_saMbanXI ?id1 ?id))
(id-root ?id1 easy|difficult|hard|do|solve|think|good|mathematical)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id savAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sum.clp 	sum5   "  ?id "  savAla )" crlf))
)
;@@@ Added by jagriti(8.2.2014)
;This is the sum of my achievements so far.[oald]
;यह अब तक मेरी उपलब्धियों सार है . 
;I can't tell you the sum of this drama in a few words.[wordnet]
;मैं आपको कुछ शब्दों में इस नाटक का सार नहीं बता सकता हूँ .  
(defrule sum6
(declare (salience 4600))
(id-root ?id sum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 drama|experience|achievement|affort|evidence|discussion|point)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sum.clp 	sum6   "  ?id "  sAra )" crlf))
)

;.....default rule..
;;Sum of 3 and 4 is seven.
;3 और 4 का जोड सात है . 
(defrule sum8
(declare (salience 100))
(id-root ?id sum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sum.clp 	sum8   "  ?id "  jodZa )" crlf))
)


;default_sense && category=noun	yoga	0
;"sum","N","1.yoga"
;Sum of 3 && 4 is seven.
;
;
