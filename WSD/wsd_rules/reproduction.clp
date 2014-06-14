

;@@@ Added by Anita-22.4.2014
;Use a black pen on white paper to ensure good reproduction. [oxford learner's dictionary]
;सुनिश्चित रूप से अच्छी प्रतिकृति के लिए सफेद कागज़ पर काले कलम का प्रयोग करें ।
(defrule reproduction0
(declare (salience 1000))
(id-root ?id reproduction)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawikqwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reproduction.clp 	reproduction0   "  ?id "  prawikqwi )" crlf))
)

;@@@ Added by Anita-22.4.2014
;Digital recording gives excellent sound reproduction. [oxford learner's dictionary]
;डिजिटल रिकॉर्डिंग उत्तम ध्वनि की पुर्नप्रस्तुति करती है ।
(defrule reproduction1
(declare (salience 2000))
(id-root ?id reproduction)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object_2  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id punarprswuwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reproduction.clp 	reproduction1   "  ?id "  punarprswuwi )" crlf))
)

;@@@ Added by Anita-22.4.2014
;A catalogue with colour reproductions of the paintings for sale. [oxford learner's dictionary]
;बिक्री के लिए रंगों से पुनर्निर्मित चित्रों की  एक सूची ।
(defrule reproduction2
(declare (salience 3000))
(id-root ?id reproduction)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-with_saMbanXI  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id punarnirmiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reproduction.clp 	reproduction2   "  ?id "  punarnirmiwa )" crlf))
)
;###################################default-rule#########################
;@@@ Added by Anita-22.4.2014
;We are researching reproduction in elephants. [cambridge dictionary]
;हम हाथियों में पुनरुत्पत्ति पर शोध कर रहे हैं ।
;They are studying reproduction in shellfish. [oxford learner's dictionary]
;वे सीपदार मछली में पुनरुत्पत्ति पर अध्ययन कर रहे हैं ।
(defrule reproduction_default-rule
(declare (salience 0))
(id-root ?id reproduction)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id punaruwpawwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reproduction.clp 	reproduction_default-rule   "  ?id "  punaruwpawwi )" crlf))
)
