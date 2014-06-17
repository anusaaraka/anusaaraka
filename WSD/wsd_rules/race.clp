;@@@ Added by Anita-7.4.2014
;The children came racing. [Advanced Learner's English-Hindi Dictionary] [parse problem]
;बच्चे दौड़ते हुए आए ।
(defrule race0
(declare (salience 5000))
(id-root ?id race)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-for_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xOdZa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  race.clp 	race0   "  ?id " xOdZa_ho )" crlf))
)


;@@@ Added by Anita-5.4.2014
;This custom is found in people of all races throughout the world.  [oxford learner's dictionary]
(defrule race1
(declare (salience 4900))
(id-root ?id race)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  race.clp 	race1   "  ?id " varga )" crlf))
)

;@@@ Added by Anita-5.4.2014
;He admired Canadians as a hardy and determined race. [oxford learner's dictionary]
;उसने केनेडियनों की एक साहसी और दृढ़ संकल्पी जाति के रूप में  प्रशंसा की ।
(defrule race2
(declare (salience 4800))
(id-root ?id race)
?mng <-(meaning_to_be_decided ?id)
(kriyA-as_saMbanXI  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  race.clp 	race2   "  ?id " jAwi )" crlf))
)

; @@@ Added by Anita-7.4.2014
;She raced for the one thousand metre race and won the prize. [Advanced Learner's English-Hindi Dictionary}
;वह एक हजार मीटर की दौड़ दौड़ी और पुरस्कार जीत लिया । 
(defrule race3
(declare (salience 4700))
(id-root ?id race)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  race.clp 	race3   "  ?id " xOdZa )" crlf))
)

;@@@ Added by Anita-9.4.2014 
;During the FC, a special session was devoted to ' prevention of an arms race in outer space ' on Tuesday October 19. ;[YourDictionary]
;एफ सी के दौरान , मंगलवार अक्टूबर १९ को एक खास बैठक   ' अंतरिक्ष के बाहर हथियारों की स्पर्धा की रोक-थाम ' को समर्पित की गई ।
(defrule race4
(declare (salience 5100))
(id-root ?id race)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 prevention)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sparXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  race.clp 	race4   "  ?id " spARXA )" crlf))
)

;@@@ Added by Anita - 9.4.2014
;He has been racing for over ten years. [cambridge dictionary]
;वह दस से ज्यादा वर्षों से दौड़ में भाग ले रहा है ।
(defrule race5
(declare (salience 5200))
(id-root ?id race)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xOdZa_meM_BAga_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  race.clp 	race5   "  ?id " xOdZa_meM_BAga_le )" crlf))
)


;His race of life was much successful.
;उसकी जीवन -यात्रा काफी सफल रही ।

;######################################default-rule####################################
;@@@ Added by Anita-5.4.2014
;He is already in training for the big race against Bailey. [oxford learner's dictionary]
;वे बेली के खिलाफ बड़ी दौड़ के लिए प्रशिक्षण में पहले से ही है ।
(defrule race_default-rule
(declare (salience 0))
(id-root ?id race)
?mng <-(meaning_to_be_decided ?id)
;(or(viSeRya-for_saMbanXI  ? ?id)(viSeRya-det_viSeRaNa  ?id ?))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  race.clp 	race_default-rule   "  ?id " xOdZa )" crlf))
)
