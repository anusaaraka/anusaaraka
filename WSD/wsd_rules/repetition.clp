

;@@@Added by Anita-19.4.2014
;We want to prevent a repetition of last summer's fires, which destroyed more than 500,000 acres of land. [cambridge ;dictionary] 
;पिछली गर्मियों की आग को दुबारा होने से हम रोकना चाहते हैं जिससे देश की 500,000 एकड़ से अधिक  जमीन नष्ट हो गई थी ।
;We do not want to see a repetition of last year's tragic events. [oxford learner's dictionary]
;हम पिछले वर्ष की दु:खद् घटनाओं के दुबारा होते हुए नहीं देखना  चाहता । 
(defrule repetition0
(declare (salience 1000))
(id-root ?id repetition)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xubArA_honA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repetition.clp 	repetition0   "  ?id "  xubArA_honA )" crlf))
)

;@@@Added by Anita-19.4.2014
;In her work we find the constant repetition of the same themes. [oxford learner's dictionary]
;हम उसके कार्य में लगातार एक समान विषयों का दोहराव पाते हैं ।
(defrule repetition1
(declare (salience 2000))
(id-root ?id repetition)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoharAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repetition.clp 	repetition1   "  ?id "  xoharAva )" crlf))
)

;@@@Added by Anita-19.4.2014
;learning by repetition . [oxford learner's dictionary]
;बार-बार करने से सीखना ।
(defrule repetition2
(declare (salience 3000))
(id-root ?id repetition)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?kri ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAra_bAra_karane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repetition.clp 	repetition2   "  ?id "  bAra_bAra_karane )" crlf))
)
;#######################################default-rule##########################
;@@@Added by Anita-19.4.2014
;His books are full of repetition . [cambridge dictionary]
;उसकी पुस्तक पुनरावृत्ति से भरपूर है ।
(defrule repetition_default-rule
(declare (salience 0))
(id-root ?id repetition)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id punarAvqwwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repetition.clp 	repetition_default-rule   "  ?id "  punarAvqwwi )" crlf))
)
