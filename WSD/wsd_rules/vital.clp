
(defrule vital0
(declare (salience 5000))
(id-root ?id vital)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIvana_saMbaMXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vital.clp 	vital0   "  ?id "  jIvana_saMbaMXI )" crlf))
)

(defrule vital1
(declare (salience 4900))
(id-root ?id vital)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahawvapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vital.clp 	vital1   "  ?id "  mahawvapUrNa )" crlf))
)

;"vital","Adj","1.mahawvapUrNa"
;Mahatma Gandhi played a vital role in the freedom struggle
;--"2.jIvaMwa"
;She's a vital person
;
;

;@@@ Added by Prachi Rathore 17-12-13
;But Uncle, isn't sunlight [vital] for the growth of plants?[gyan-nidhi]
;किन्‍तु अंकल, क्‍या सूर्य का प्रकाश पौधों के विकास के लिए जरूरी/महत्वपूर्ण नहीं है?
(defrule vital2
(declare (salience 5100))
(id-root ?id vital)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahawvapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vital.clp 	vital2   "  ?id "  mahawvapUrNa )" crlf))
)

