
(defrule instant0
(declare (salience 5000))
(id-root ?id instant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wawkAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  instant.clp 	instant0   "  ?id "  wawkAla )" crlf))
)

;;$$$   ---modified by Prachi Rathore
;Meaning changed from Asanna to kRaNa
(defrule instant1
(declare (salience 4900))
(id-root ?id instant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRaNa)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  instant.clp 	instant1   "  ?id "  kRaNa )" crlf))
)

;default_sense && category=noun	kRaNa	0
;"instant","N","1.kRaNa"
;Come here this instant.
;
;

;;@@@   ---Added by Prachi Rathore
;There's instant tea too, isn't there, Daddy?[gyannidhi]
;बनी बनाई चाय भी तो होती है, है न डैडी?
(defrule instant2
(declare (salience 5500))
(id-root ?id instant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 coffee|tea|pudding|rice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banI_banAyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  instant.clp 	instant2   "  ?id "  banI_banAyI )" crlf))
)

;@@@ Added by Prachi Rathore[11-3-14]
;We can use Eq. 3.3a for obtaining the value of velocity at an instant either graphically or numerically.[ncert]
;किसी क्षण पर वस्तु का वेग निकालने के लिए हम समीकरण (3.3a) का उपयोग कर सकते हैं इसके लिए ग्राफिक या गणितीय विधि को प्रयोग में लाते हैं ... ... .. .
(defrule instant3
(declare (salience 5500))
(id-root ?id instant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-at_saMbanXI  ? ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  instant.clp 	instant3   "  ?id "  kRaNa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_instant2
(declare (salience 5500))
(id-root ?id instant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 coffee|tea|pudding|rice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banI_banAyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " instant.clp   sub_samA_instant2   "   ?id " banI_banAyI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_instant2
(declare (salience 5500))
(id-root ?id instant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 coffee|tea|pudding|rice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banI_banAyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " instant.clp   obj_samA_instant2   "   ?id " banI_banAyI )" crlf))
)
