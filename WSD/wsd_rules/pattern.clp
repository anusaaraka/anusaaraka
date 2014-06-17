
(defrule pattern0
(declare (salience 5000))
(id-root ?id pattern)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id racA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pattern.clp 	pattern0   "  ?id "  racA_huA )" crlf))
)

;"pattern","Adj","1.racA_huA"
;She has a blue shawl patterned with silver embroidery.
;

;Added by Sonam Gupta MTech IT Banasthali 2013
;Greek civilization of more than two thousand years ago, show how man tried to
;work out the pattern behind the somewhat chaotic movements of a handful of heavenly bodies called the planets.
;दो हजार वर्ष से अधिक पुरानी यूनान की सभ्यता से मिली पांडुलिपियों से पता चलता है कि ग्रह कहे जाने वाले आकाश के पिंडों की अनियमित सी गति का सिद्धांत/तरीक़ा जानने के लिए मनुष्य ने 
;क्या-क्या प्रयत्न किये थे।
(defrule pattern1
(declare (salience 4900))
(id-root ?id pattern)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-cat_coarse ?id1 noun)
(viSeRya-behind_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warIkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pattern.clp 	pattern1   "  ?id "  warIkA )" crlf))
)

(defrule pattern2
(declare (salience 4800))
(id-root ?id pattern)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id namUnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pattern.clp 	pattern2   "  ?id "  namUnA )" crlf))
)

;"pattern","N","1.namUnA/prawirUpa"
;She bought a book of wallpaper patterns.
;The pattern of his house is not modern.
;The tailor showed him the best dress patterns.
;They follow his pattern of good conduct.
;--"2.AxarSa"
;The company's export policy set the pattern for other companies.
;
(defrule pattern3
(declare (salience 4700))
(id-root ?id pattern)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anukaraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pattern.clp 	pattern3   "  ?id "  anukaraNa_kara )" crlf))
)

;"pattern","V","1.anukaraNa_karanA"
;The child tries to pattern everything her parents do.
;
