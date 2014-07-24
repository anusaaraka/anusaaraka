;@@@ Added by jagriti(5.4.2014)
;Prices in this shop are rather steep.[rajpal]
;इस दुकान में मूल्य काफी अत्यधिक हैं . 
(defrule steep2
(declare (salience 5000))
(id-root ?id steep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(subject-subject_samAnAXikaraNa ?id1 ?id)(viSeRya-viSeRaNa ?id1 ?id))
(id-root ?id1 price)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steep.clp 	steep2   "  ?id "  awyaXika )" crlf))
)
;@@@ Added by jagriti(5.4.2014)
;He steeped himself in the literature of ancient art.[iit-bombay wordnet]
;उसने प्राचीन कला के साहित्य में स्वयं को ओत प्रोत कर दिया . 
(defrule steep4
(declare (salience 4900))
(id-root ?id steep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI ?id ?id1)
(id-root ?id1 knowledge|ignorance|literature)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id owa_prowa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steep.clp 	steep4   "  ?id "  owa_prowa_kara_xe )" crlf))
)
;...Default Rule..
(defrule steep0
(declare (salience 100))
(id-root ?id steep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_KadZI_caDZAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steep.clp 	steep0   "  ?id "  bahuwa_KadZI_caDZAI )" crlf))
)

(defrule steep1
(declare (salience 100))
(id-root ?id steep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurAroha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steep.clp 	steep1   "  ?id "  xurAroha )" crlf))
)
;@@@ Added by jagriti(5.4.2014)
;To steep the cloths in water for washing.[rajpal]
;धोने के लिये पानी में कपडे भिगो देना . 
(defrule steep3
(declare (salience 100))
(id-root ?id steep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bigo_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steep.clp 	steep3   "  ?id "  Bigo_xe )" crlf))
)
;"steep","Adj","1.xurAroha"
;The mountain on which we went for tracking was very steep.
;--"2.awyaXika"
;There was a steep decline in share values due to mid term elections.
;--"3.bewukA"
;Sewing of corn flakes with tea seems a bit steep to me.
;
;
