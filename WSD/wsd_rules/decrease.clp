
(defrule decrease0
(declare (salience 5000))
(id-root ?id decrease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decrease.clp 	decrease0   "  ?id "  kamI )" crlf))
)

;"decrease","N","1.kamI"
;There was a decrease in the speed of train near the station.
;--"2.GatawI"
;A decrease was noted in the rate of crime in that area.
;



;Thus, as the excitation of hydrogen atom increases (that is as n increases) the value of minimum energy required to 
;free the electron from the excited atom decreases.
;इस प्रकार, हाइड्रोजन परमाणु की उत्तेजित अवस्था बढाने पर (अर्थात n के बढने पर) उत्तेजित परमाणु से इलेक्ट्रॉन को स्वतन्त्र करने के लिए आवश्यक न्यूनतम ऊर्जा घटती है. 

(defrule decrease1
(declare (salience 4900))
(id-root ?id decrease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gata))	;Modified by Pramila(Banasthali University) on 19-10-2013
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decrease.clp 	decrease1   "  ?id "  Gata )" crlf))
)

;"decrease","V","1.GatanA_yA_GatAnA"
;The intensity of rain has decreased now.
;
