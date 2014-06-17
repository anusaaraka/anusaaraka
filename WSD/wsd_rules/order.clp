
(defrule order0
(declare (salience 5000))
(id-root ?id order)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 see)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anukrama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  order.clp 	order0   "  ?id "  anukrama )" crlf))
)

;Added by Sonam Gupta MTech IT Banasthali 2103
;How long can the police maintain order? [Cambridge]
;पुलीस व्यवस्था कितना लम्बा बनाए रख सकती है? 
(defrule order1
(declare (salience 4900))
(id-root ?id order)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word ?id1 maintain|social|established)
(or(kriyA-object  ?id1 ?id)(and(viSeRya-viSeRaNa  ?id ?)(viSeRya-viSeRaNa  ?id ?id1)(viSeRya-det_viSeRaNa  ?id ?)(viSeRya-to_saMbanXI  ? ?id))(and(viSeRya-viSeRaNa  ?id ?id1)(viSeRya-det_viSeRaNa  ?id ?)(kriyA-to_saMbanXI  ? ?id)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavasWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  order.clp 	order1   "  ?id "  vyavasWA )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;In alphabetical order. [Cambridge]
;वर्णमालानुसार क्रम में . 
(defrule order2
(declare (salience 4800))
(id-root ?id order)
(id-word ?id order)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id krama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  order.clp 	order2   "  ?id "  krama )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;I would like to place an order for ten copies of this book. [OALD]
;मैं इस पुस्तक की दस प्रतियों के लिए एक ओर्डर रखना पसंद करूँगा . 
(defrule order3
(declare (salience 4700))
(id-root ?id order)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(and(viSeRya-det_viSeRaNa  ?id ?)(kriyA-object  ? ?id))(kriyA-to_saMbanXI  ? ?id)(and(kriyA-subject  ? ?id)(viSeRya-det_viSeRaNa  ?id ?)(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?))(and(viSeRya-det_viSeRaNa  ?id ?)(viSeRya-for_saMbanXI  ?id ?)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ordara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  order.clp 	order3   "  ?id "  ordara )" crlf))
)


(defrule order4
(declare (salience 4600))
(id-root ?id order)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AjFA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  order.clp 	order4   "  ?id "  AjFA )" crlf))
)

(defrule order5
(declare (salience 4500))
(id-root ?id order)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AjFA_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  order.clp 	order5   "  ?id "  AjFA_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  order.clp     order5   "  ?id " ko )" crlf)
)
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 22-1-2014
;We make wedding cakes to order. [OALD]
;हम ओर्डर पर विवाह के केक बनाते हैं .
(defrule order6
(declare (salience 5000))
(id-root ?id order)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-to_saMbanXI  ?id1 ?id)
(id-root ?id1 make)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ordara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  order.clp 	order6   "  ?id "  Ordara )" crlf)
)
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 22-1-2014
;As the demonstration began to turn violent, the police were called in to restore order.  [OALD]
;जैसे ही प्रदर्शन हिंसात्मक हुआ, व्यवस्था को वापस लाने के लिये पुलिस को बुलाया गय् .
(defrule order7
(declare (salience 5000))
(id-root ?id order)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 restore|reestablish|fix|reconstruct|reimpose|reinstall)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavasWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  order.clp 	order7   "  ?id "  vyavasWA )" crlf)
)
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 12-3-2014
;Table 2.4 gives the range and order of the typical masses of various objects.  [physics ncert]
;सारणी 2.4 में विभिन्न द्रव्यमानों के कोटि और परास दिए गए हैं.
(defrule order8
(declare (salience 5000))
(id-root ?id order)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(conjunction-components  ? ?id1 ?id)
(id-root ?id1 range)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  order.clp 	order8   "  ?id "  parAsa )" crlf)
)
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 12-3-2014
;Thus the diameter of the earth is 17 orders of magnitude larger than the hydrogen atom.  [physics ncert]
;इस प्रकार पृथ्वी का व्यास हाइड्रोजन अणु से १७ गुणा अधिक होता है .
(defrule order9
(declare (salience 5000))
(id-root ?id order)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-saMKyA_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  order.clp 	order9   "  ?id "  guNA )" crlf)
)
)


;"order","VTI","1.AjFA_xenA"
;The teacher ordered silence.
;--"2.krama_meM_raKanA"
;I need time to order my thoughts.
;
;
