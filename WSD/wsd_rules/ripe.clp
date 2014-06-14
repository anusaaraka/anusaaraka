

;@@@ Added by Anita - 3.5.2014
;This brie smells  ripe. [cambridge dictionary]
;यह पनीर तैयार और अच्छी गंध वाला है ।
(defrule ripe0
(declare (salience 1000))
(id-root ?id ripe)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 brie)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
;(conjunction-components  ?con ? ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ripe.clp     ripe0  " ?id "  wEyAra )" crlf))
)
;@@@ Added by Anita - 5.5.2014
;A ripe joke . [cambridge dictionary]
;एक प्रौढ़ जोक ।
(defrule ripe1
(declare (salience 2000))
(id-root ?id ripe)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 joke)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prODa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ripe.clp     ripe1  " ?id "  prODa )" crlf))
)

;@@@ Added by Anita - 5.5.2014
;This land is ripe for development. [oxford learner's dictionary]
;यह जमीन उन्नति के लिए तैयार है ।
(defrule ripe2
(declare (salience 3000))
(id-root ?id ripe)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?id ?)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ripe.clp     ripe2  " ?id "  wEyAra )" crlf))
)
;@@@ Added by Anita - 5.5.2014
;The conditions were ripe for social change. [oxford learner's dictionary]
;सामाजिक परिवर्तन के लिए परिस्थितियाँ उपयुक्त थीं ।
(defrule ripe3
(declare (salience 4000))
(id-root ?id ripe)
(id-root ?id1 change)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?id ?id1)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upayukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ripe.clp     ripe3  " ?id "  upayukwa )" crlf))
)
;@@@ Added by Anita - 5.5.2014
;Reforms were promised when the time was ripe. [oxford learner's dictionary]
;उचित समय आने पर सुधारों के लिए वादे किये गये थे ।
(defrule ripe4
(declare (salience 5000))
(id-root ?id ripe)
?mng <-(meaning_to_be_decided ?id)
(kriyA-samakAlika_kriyA  ?kri ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ripe.clp     ripe4  " ?id "  uciwa )" crlf))
)


;######################################default-rule####################################

; @@@ Added by Anita - 3.5.2014
;Those bananas are not ripe yet . [cambridge dictionary]
;ये केले अभी तक पके नहीं हैं ।
(defrule ripe_default-rule
(declare (salience 0))
(id-root ?id ripe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  ripe.clp  	ripe_default-rule   "  ?id "  pakA )" crlf))
)
