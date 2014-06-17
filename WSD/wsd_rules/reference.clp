;@@@ Added by Anita-10.4.2014
;My old headteacher said he would write me a glowing referenc. [cambridge dictionary]
;मेरे पुराने प्रधानाध्यापक ने कहा कि वह मेरे लिए बहुत अच्छा प्रमाण-पत्र लिखेंगे ।
(defrule reference0
(declare (salience 1000))
(id-root ?id reference)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pramANa_pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reference.clp 	reference0   "  ?id " pramANa_pawra )" crlf))
)

;@@@ Added by Anita-10.4.2014
;I am writing with reference to  your letter of 15 March. [cambridge dictionary]
;मैं आपके 15 मार्च के पत्र के संबंध में लिख रहा हूँ ।
(defrule reference1
(declare (salience 2000))
(id-root ?id reference)
?mng <-(meaning_to_be_decided ?id)
;(viSeRya-viSeRaNa  ?id ?)
(kriyA-with_saMbanXI  ?kri ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMbaMXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reference.clp 	reference1   "  ?id " saMbaMXa )" crlf))
)

;@@@ Added by Anita-10.4.2014
;Knowing what had happened, I avoided making any reference to weddings. [cambridge dictionary]
;यह जानते हुए कि क्या हुआ था ,मैंने शादी की कोई भी टिप्पणी करना टाल दिया ।
(defrule reference2
(declare (salience 3000))
(id-root ?id reference)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(viSeRya-det_viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tippaNI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reference.clp 	reference2   "  ?id " tippaNI )" crlf))
)
;@@@ Added by Anita-10.4.2014
;What's the grid reference of the village on this map? [cambridge dictionary]
;इस नक्शे पर गांव का ग्रिड संकेत क्या है ?
(defrule reference3
(declare (salience 4000))
(id-root ?id reference)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reference.clp 	reference3   "  ?id " saMkewa )" crlf))
)

;#####################################default-rule####################################

;@@@ Added by Anita-11.4.2014
;He made the whole speech without reference to the notes in front of him. [cambridge dictionary]
;उसने अपने सामने बिना लेख के संदर्भ के पूरा भाषण दिया ।
(defrule reference_default-rule
(declare (salience 0))
(id-root ?id reference)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMxrBa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reference.clp 	reference_default-rule   "  ?id " saMxrBa )" crlf))
)
