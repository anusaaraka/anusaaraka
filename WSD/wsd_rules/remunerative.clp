
;@@@ Added by Anita 18.3.2014 
;But their belief was that the expenditure which they recommended would be remunerative, not only in its effect upon the ;sources of the moral strength but also upon the economic welfare of the country and upon its civic and industrial initiative. [gyanidhi sentence]
;परंतु उनका यह विश्वास था कि उनके द्वारा सुझाये गये व्यय से न केवल  हैतिक शक्ति के स्त्रोतों पर बल्कि देश के आर्थिक कल्याण पर और उसकी नागरिक और ;औद्योगिक पहलशक्ति पर भी लाभकारी असर पड़ेगा ।
;Charity work is not very remunerative.
;दान कार्य बहुत अधिक लाभकारी नहीं है ।
(defrule remunerative1
(declare (salience 25))
(id-root ?id remunerative)
?mng <-(meaning_to_be_decided ?id)
(or(subject-subject_samAnAXikaraNa  ? ?id)(viSeRya-viSeRaka  ?id ?))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remunerative.clp 	remunerative1  "?id "  lABakArI )" crlf))
)

;@@@ Added by Anita 18.3.2014
;Writing proved to be more remunerative than teaching.  [OALD]
;लेखन शिक्षण की अपेक्षा अधिक पारिश्रमिक प्रदत्त सिद्ध हुआ ।
(defrule remunerative2
(declare (salience 50))
(id-root ?id remunerative)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-than_saMbanXI  ?id ?)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAriSramika_praxawwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remunerative.clp 	remunerative2  "?id "  pAriSramika_praxawwa )" crlf))
)

;####################################default-rule###############################
;@@@ Added by Anita--18.3.2014
(defrule remunerative_default-rule
(id-root ?id remunerative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remunerative.clp 	remunerative_default-rule  "?id "  lABakArI )" crlf))
)
