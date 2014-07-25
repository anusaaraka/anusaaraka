;@@@ Added by jagriti(11.1.2014)
;He should not squash inside the hall at once.
;उसको तुरन्त हॉल के अन्दर धकिया कर नहीं घुसना चाहिए .
;How many people are they going to try and squash into this bus? 
;कितने लोग कोशिश करके और कितने धकिया कर जा रहे हैं बस में ?
(defrule squash0
(declare (salience 5000))
(id-root ?id squash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(and(kriyA-into_saMbanXI ?id1 ?)(conjunction-components  ? ?id1 ?id))(kriyA-inside_saMbanXI ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XakiyA_kara_Gusa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squash.clp 	squash0   "  ?id "  XakiyA_kara_Gusa )" crlf))
)

;@@@ Added by jagriti(11.1.2014)
;He squashed his nose against the window.[oald]
;उसने खिडकी के विरुद्ध उसकी नाक दबाई . 
(defrule squash1
(declare (salience 4900))
(id-root ?id squash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-against_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squash.clp 	squash1   "  ?id "  xabA )" crlf))
)

;@@@ Added by jagriti(11.1.2014)
;The statement was an attempt to squash the rumours.
;उसका बयान अफवाहें दबाने के लिये एक प्रयास था . 
(defrule squash2
(declare (salience 4800))
(id-root ?id squash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 rumour|idea|plan|curiosity)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squash.clp 	squash2   "  ?id "  xabA )" crlf))
)
;@@@ Added by jagriti(11.1.2014)
;Give me two orange squashes, please.
;कृपया मुझे दो नारङ्गी शरबत दीजिए . 
(defrule squash3
(declare (salience 4700))
(id-root ?id squash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id ?id1)
(id-root ?id1 orange|lemon|apple|grape)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sarabawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squash.clp 	squash3   "  ?id "  Sarabawa )" crlf))
)
;@@@ Added by jagriti(11.1.2014)
;To play squash.
;स्क्वैश खेलने के लिए.
(defrule squash4
(declare (salience 4600))
(id-root ?id squash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object ?id1 ?id)
(id-root ?id1 play)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id skvAzSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squash.clp 	squash4   "  ?id "  skvAzSa )" crlf))
)
;@@@ Added by jagriti(11.1.2014)
;To squash a lemon.
;एक नींबू निचोड़ो. 
(defrule squash5
(declare (salience 4500))
(id-root ?id squash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 lemon)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nicodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squash.clp 	squash5   "  ?id "  nicodZa )" crlf))
)
;...Default rule....
;$$$ Modified by jagriti(11.1.2014)..... meaning changed from ;Sarabawa' to 'TasATasa'
(defrule squash6
(declare (salience 100))
(id-root ?id squash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TasATasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squash.clp 	squash6   "  ?id "  TasATasa )" crlf))
)
;"squash","N","1.Sarabawa"
;A chilled glass of orange squash.
;--"2.skvASa{Kela}"
;I enjoy playing squash.
;--"3.kumhadZA"
;Pumpkins are vanities of squash.

(defrule squash7
(declare (salience 100))
(id-root ?id squash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BurawA_banA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squash.clp 	squash7   "  ?id "  BurawA_banA_xe )" crlf))
)

;"squash","V","1.BurawA_banA_xenA"
;Tomatoes are easier to squash than potatoes.
;--"2.wiraskAra_karanA"
;His plans were squashed by his new boss.
;--"3.XakiyA_kara_GusanA"
;You should not try && squash inside the hall at once.
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_squash3
(declare (salience 4700))
(id-root ?id squash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 orange|lemon|apple|grape)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sarabawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " squash.clp   sub_samA_squash3   "   ?id " Sarabawa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_squash3
(declare (salience 4700))
(id-root ?id squash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 orange|lemon|apple|grape)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sarabawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " squash.clp   obj_samA_squash3   "   ?id " Sarabawa )" crlf))
)
