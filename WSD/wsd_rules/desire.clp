
(defrule desire0
(declare (salience 5000))
(id-root ?id desire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id icCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desire.clp 	desire0   "  ?id "  icCA )" crlf))
)

;"desire","N","1.icCA"
;A man of many desires but of no efforts ,can't do anything.
;--"2.icCiwa"
;She was his heart's desire.
;
(defrule desire1
(declare (salience 4000))
(id-root ?id desire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desire.clp 	desire1   "  ?id "  cAha )" crlf))
)

;"desire","VT","1.cAhanA"
;We must desire for freedom.
;

;@@@ Added by Pramila(Banasthali University) on 25-01-2014
;Twelve post-graduate scholarships of Rs. 32 per month, tenable for two years, were instituted for distinguished graduates who
;desired to go up for the Master's degree.      ;gyannidhi
;ऐसे विशिष्ट स्नातकों के लिए जो स्नातकोत्तर डिग्री प्राप्त करने की इच्छा रखते थे, 32 रूपए प्रति मास की दो वर्ष तक चलने वाली 12 स्नात्तकोत्तर छात्रवृत्तियां प्रारंभ की गईं।
(defrule desire2
(declare (salience 4900))
(id-root ?id desire)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(kriyA-for_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id icCA_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desire.clp 	desire2   "  ?id "  icCA_raKa )" crlf))
)

