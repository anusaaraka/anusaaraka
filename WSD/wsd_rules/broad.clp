

;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)17-Feb-2014
;Computer viruses fall into three broad categories.[oald]
;सङ्गणक वायरस तीन मुख्य वर्गों में विभाजित होते हैं 
;In broad terms, the paper argues that each country should develop its own policy.[oald]
;मुख्य रूप से, यह लेख तर्क प्रस्तुत करता है कि हर एक देश को उसकी अपनी नीति का विकास करना चाहिए . 
(defrule broad3
(declare (salience 3000))
(id-root ?id broad)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 category|term|outline)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broad.clp 	broad3   "  ?id "  muKya )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith)17-Feb-2014
;The robbery occurred in broad daylight, in a crowded street.[oald]
;डकैती एक भीड़ वाली सड़क में भरे दिन के उजाले में, घटित हुई . 
(defrule broad4
(declare (salience 3000))
(id-root ?id broad)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 daylight)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broad.clp 	broad4   "  ?id "  Bare )" crlf))
)

;************************DEFAULT RULES***********************

(defrule broad0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id broad)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viswqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broad.clp 	broad0   "  ?id "  viswqwa )" crlf))
)

(defrule broad1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id broad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broad.clp 	broad1   "  ?id "  cOdZA )" crlf))
)

(defrule broad2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id broad)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viswqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  broad.clp 	broad2   "  ?id "  viswqwa )" crlf))
)

;"broad","Adj","1.viswqwa"
;A broad rule
;A broad lawn
;--"2.spaRta"
;Gave us a broad hint that it was time to leave
;A broad southern accent
;A broad political stance
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_broad3
(declare (salience 3000))
(id-root ?id broad)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 category|term|outline)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " broad.clp   sub_samA_broad3   "   ?id " muKya )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_broad3
(declare (salience 3000))
(id-root ?id broad)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 category|term|outline)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " broad.clp   obj_samA_broad3   "   ?id " muKya )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_broad4
(declare (salience 3000))
(id-root ?id broad)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 daylight)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " broad.clp   sub_samA_broad4   "   ?id " Bare )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_broad4
(declare (salience 3000))
(id-root ?id broad)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 daylight)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bare))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " broad.clp   obj_samA_broad4   "   ?id " Bare )" crlf))
)
