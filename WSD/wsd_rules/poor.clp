;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Most of the world's poorest countries are in Africa.  [Cambridge]
;विश्व के सबसे अधिक गरीब देश ज्यादातर अफ्रीका में हैं . 
(defrule poor0
(declare (salience 5000))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 farmer|country|person|city|family)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garIba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poor.clp      poor0   "  ?id "  garIba )" crlf))
)


(defrule poor1
(declare (salience 4900))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 result|performance)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poor.clp      poor1   "  ?id "  KarAba )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;That cold sounds terrible, you poor thing! [Cambridge]
;वह ठण्ड भयानक है,आप बेचारे.
(defrule poor2
(declare (salience 4800))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 thing)
(or(viSeRya-viSeRaNa  ?id1 ?id)(kriyA-object  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id becArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poor.clp      poor2   "  ?id "  becArA )" crlf))
)

;$$$ Modified by Sonam Gupta MTech IT Banasthali 2013 (modified relation)
;Poor Health. [OALD]
;खराब स्वास्थ्य . 
;Added by Meena(12.11.10)
;There is little doubt that poor medical treatment hastened her death.
(defrule poor3
(declare (salience 4700))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ?id1 ?id)(viSeRya-viSeRaNa ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poor.clp      poor3   "  ?id "  KarAba )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;I was always very poor at maths at school.  [Cambridge]
;मैं विद्यालय पर हिसाब पर हमेशा अत्यन्त कमजोर था . 
(defrule poor4
(declare (salience 4600))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
(id-root ?id1 maths|english|hindi|geography|civics|history|computer)
(viSeRya-at_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamajora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poor.clp 	poor4   "  ?id "  kamajora )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;At last month's meeting, attendance was poor. [Cambridge]
;पिछले महीने की सभा में, उपस्थिती कम थी.
(defrule poor5
(declare (salience 4500))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
;(id-root ?id1 attendance|presence|crowd)
(or(subject-subject_samAnAXikaraNa  ? ?id)(viSeRya-in_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poor.clp 	poor5   "  ?id "  kama )" crlf))
)


;Salience reduced by Meena(12.11.10)
(defrule poor6
(declare (salience 4400))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poor.clp 	poor6   "  ?id "  xIna )" crlf))
)

;"poor","Adj","1.xIna/xarixra"
;According to me, being poor is a curse for a human being.
;--"2.alpa"
;This soil is poor in nutrients.
;--"3.KarAba"
;They sold very poor quality wool.
;--"4.aBAgA/becArA"
;The poor girl has nothing to eat.
;



;Added by Meena(17.3.10)
;And she declared that out of love for the poor she had gotten her family to go against convention . 
(defrule poor7
(declare (salience 4700))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) the)
(not(id-cat_coarse =(+ ?id 1) noun))
(viSeRya-det_viSeRaNa ?id =(- ?id 1))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xInoM))
(assert (id-wsd_number ?id p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  poor.clp      poor7   "  ?id "  xInoM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number   " ?*wsd_dir* "  poor.clp      poor7   "  ?id "  p )" crlf))
)




;Salience reduced by Meena(17.3.10)
(defrule poor8
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poor.clp 	poor8   "  ?id "  xIna )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 5-2-2014
;If it were urged that the tax-payers of Bengal were too poor to be able to pay for the 
;advantages of such an improved education, the answer of the Commission was that, Bengal 
;was too poor to be able to afford the waste of ability which was caused by the. present system. [gyannidhi]
;यदि इस बात पर ज़ोर दिया जाता कि बंगाल के करदाता इतनी विकसित  शितक्षा प्रणाली के लाभ की कीमत चुकाने के लिए बपहुत निर्धन थे, 
;तो आयोग का उत्तर था कि बंगाल इतना निर्धन है कि वह वर्तमान पद्धति के कारण होने वाले क्षमता के अपव्यय को बर्दाश्त नहीं कर सकता।
(defrule poor9
(declare (salience 5500))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaka  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garIba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poor.clp 	poor9   "  ?id "  garIba )" crlf))
)

;"poor","N","1.xIna/xarixra"
;According to me, being poor is a curse for a human being.
;--"2.alpa"
;This soil is poor in nutrients.
;--"3.KarAba"
;They sold very poor quality wool.
;--"4.aBAgA/becArA"
;The poor girl has nothing to eat.
;
