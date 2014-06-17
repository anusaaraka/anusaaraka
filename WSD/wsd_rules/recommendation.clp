;@@@ Added by Anita 15.3.2014
;The report makes the recommendation that no more prisons should be builte report makes the recommendation that no ;more prisons should be built.  [oxford learner's dictionary]
;रिपोर्ट और अधिक जेलों का निर्माण न किये जाने का  अनुरोध करती है।
(defrule recommendation1
(declare (salience 5000))
(id-root ?id recommendation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuroXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recommendation.clp 	recommendation1   "  ?id "  anuroXa )" crlf))
)

;#####################################default-rule###################################################

;@@@ Added by Anita 15.3.2014
;There was protracted debate in the Senate over the recommendations of the Committee, ASUTOSH AND ;THE QUOTECALCUTTA UNIVERSITY but the sheer driving forces of Sir Asutosh won the - acceptance of ;the Senate, which also framed regulations with a view to carry them into execution. [gyanidhi sentence]
;समिति की सिफारिशों पर सिनेट में लम्बी बहस हुई परंतु सर आशुतोष की प्रेरित करने की शक्ति ने ही सिनेट की स्वीकृति हासिल की जिसने इसे लागू करने के लिए ;नियम भी बनाये।
(defrule recommendation_default-rule
(id-root ?id recommendation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id siPAriSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recommendation.clp 	recommendation_default-rule   "  ?id "  siPAriSa )" crlf))
)
