
(defrule report0
;(declare (salience 5000)) ;commented by Anita-22.3.2014
(id-root ?id report)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id riporta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  report.clp 	report0   "  ?id "  riporta )" crlf))
)

(defrule report1
(declare (salience 4900))
(id-root ?id report)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAla_liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  report.clp 	report1   "  ?id "  hAla_liKa )" crlf))
)
;@@@ Added by Anita--21.3.2014
;To remove such ambiguities in determining the number of significant figures the best way is to report ;every measurement in scientific notation in the power of 10. [ncert]
;सार्थक अङ्कों के निर्धारण में इस प्रकार की सन्दिग्धता को दूर करने के लिए सर्वोत्तम उपाय यह है कि प्रत्येक माप को वैज्ञानिक सङ्केत (10 ;की घातों के रूप में) में प्रस्तुत किया जाए.
;Thus the result of measurement should be reported in a way that indicates the precision of measurement.
;अतः मापन के परिणामों को इस प्रकार प्रस्तुत किया जाना चाहिए कि मापन की परिशुद्धता स्पष्ट हो जाए..
;Clearly reporting the result of measurement that includes more digits than the significant digits is ;superfluous and also misleading since it would give a wrong idea about the precision of measurement.
;अतः मापन के परिणामों को इस प्रकार प्रस्तुत किया जाना चाहिए कि मापन की परिशुद्धता स्पष्ट हो जाए
(defrule report2
(declare (salience 5100))
(id-root ?id report)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-in_saMbanXI  ?id ?)(kriyA-kriyA_viSeRaNa  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  report.clp 	report2   "  ?id "  praswuwa_kara )" crlf))
)

;@@@ Added by Anita--21..3.2014
;Suppose a length is reported to be 4.700 m.. [ncert]
;मान लीजिए कि लंबाई 4.700 मीटर होने का वर्णन है ।
(defrule report3
(declare (salience 5200))
(id-root ?id report)
?mng <-(meaning_to_be_decided ?id)
(kriyA-karma  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varNana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  report.clp 	report3   "  ?id "  varNana_kara )" crlf))
)

;@@@ Added by Anita--21.3.2014
;Normally the reported result of measurement is a number that includes all digits in the number that ;are known reliably plus the first digit that is uncertain. [ncert]
;अभिलम्बवत् मापन का अच्छे नाम का परिणाम एक ऐसा अंक है कि जो उस अंक में सब अङ्क सम्मिलित होता है कि जो मिलाकर प्रथम ;अङ्क विश्वसनीय ढङ्ग से जाना गया है कि वह अनिश्चित है
(defrule report4
(declare (salience 5300))
(id-root ?id report)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ? ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  report.clp 	report4   "  ?id "  sUciwa )" crlf))
)

;@@@ Added by Anita--22.3.2014
;The length of an object reported after measurement to be 287.5 cm has four significant figures the ;digits 2 8 7 are certain while the digit 5 is uncertain. [ncert ]
;माप करने के बाद किसी वस्तु की लम्बाई  चार महत्वपूर्ण आँकड़ों में २८७.५ सेमी बताई गई  है  ,अंकों में २८७ निश्चित है , जबकि अंक ५ अनिश्चित आंकड़ा है । 
(defrule report5
(declare (salience 5400))
(id-root ?id report)
?mng <-(meaning_to_be_decided ?id)
(kriyA-after_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawAyA_gayA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  report.clp 	report5   "  ?id "  bawAyA_gayA )" crlf))
)

;@@@ Added by Anita--29.3.2014
;Thus in the example above density should be reported to three significant figures. [ncert]
;अतः उपरोक्त उदाहरण में घनत्व को तीन सार्थक अङ्कों तक ही लिखा जाना चाहिए.
(defrule report6
(declare (salience 5500))
(id-root ?id report)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  report.clp 	report6   "  ?id "  liKa )" crlf))
)
;"report","VTI","1.hAla_liKanA"
;The discovery of a new medicine of Cancer has been reported.
;--"2.kArya_pragawi_sUcanA"
;The doctor reported the patient is now fit && well. 
;--"3.SikAyawa_karanA"
;I intend to report him to the secretary for cheating.  
;--"4.liKanA"   
;The stenographer has reported the speech of the president. 
;--"5.jAnakArI_xenA"
;Please report to the receptionist on arrival at 10.1.tomorrow with your
;certificates && testimonials. 
;--"6.varNana_karanA"
;He has reported a deficit.  
;The company reports pre-tax profits of over 1000d crore.
;
;
