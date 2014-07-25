

;@@@ Added by Anita - 12.5.2014
;The gala evening was attended by royalty and politicians. [oxford learner's dictionary]
;समारोह वाली शाम में राजपरिवार-सदस्य और राजनीतिज्ञ शामिल थे ।
;We were treated like royalty. [oxford learner's dictionary]
;हमारे साथ राजपरिवार के सदस्य की तरह व्यवहार किया गया ।
;Hollywood royalties are very famous . [oxford learner's dictionary] [verified sentence]
;हॉलीवुड के राजपरिवार के सदस्य  बहुत प्रसिद्ध हैं ।
(defrule royalty0
(declare (salience 1000))
(id-root ?id royalty)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-by_saMbanXI  ?kri ?id)(kriyA-like_saMbanXI  ?kri ?id)(subject-subject_samAnAXikaraNa  ?id ?))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAjaparivAra_ke_saxasya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  royalty.clp     royalty0  "  ?id " rAjaparivAra_ke_saxasya )" crlf))
)

;@@@ Added by Anita - 12.5.2014
;All royalties from the album will go to charity. [oxford learner's dictionary]
;एल्बम की सारी रॉयल्टी दान में जाएगी ।
;She received £2000 in royalties. [oxford learner's dictionary]
;उसने रॉयल्टी के  2000 पाउन्ड प्राप्त किये।
(defrule royalty1
(declare (salience 2000))
(id-root ?id royalty)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-from_saMbanXI  ?id ?sam)(viSeRya-in_saMbanXI  ? ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAyaltI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  royalty.clp     royalty1  "  ?id " rAyaltI )" crlf))
)

;##############################default-rule##################################
;@@@ Added by Anita - 12.5.2014
;She believes she's related to royalty.
;उसे विश्वास है कि वह राजपरिवार से संबंधित है ।
(defrule royalty_default-rule
(declare (salience 0))
(id-root ?id royalty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAjaparivAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  royalty.clp     royalty_default-rule  "  ?id "  rAjaparivAra )" crlf))
)
