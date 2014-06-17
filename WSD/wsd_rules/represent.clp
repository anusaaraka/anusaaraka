;@@@ Added by Anita 29-11-13
;The crosses on the map represent churches.   [cambridge.org/dictionary/learner-english]
;मानचित्र पर क्रॉस गिरिजाघर के प्रतीक हैं ।
(defrule represent1
(declare (salience 50))
(id-root ?id represent)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(viSeRya-on_saMbanXI  ?id1 ?id2)
(id-root ?id2 map|road|paper)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  represent.clp 	represent1   "?id"  prawIka )" crlf))
)

;(defrule represent2
;(declare (salience 55))
;(id-root ?id represent)
;?mng <-(meaning_to_be_decided ?id)
;(kriyA-object  ?id ?)
;(kriyA-subject  ?id ?)
;(id-cat_coarse ?id noun)
;=>
;(retract ?mng)
;(assert (id-wsd_word_mng ?id prawiniXi))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  represent.clp 	represent2   "?id "  prawiniXi )" crlf))
;)

;@@@ Added by Anita 29-11-13
;We represented our grievances/demands to the boss.  [cambridge.;org/dictionary/learnerenglish]
; हमने अपनी समस्याओं को बाँस के सामने पेश किया ।
;He represents himself as an expert, but he knows nothing.
;वह अपने को बहुत निपुण की तरह पेश करता है ,लेकिन उसे कुछ नहीं आता है ।
(defrule represent2
(declare (salience 60))
(id-root ?id represent)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-to_saMbanXI  ?id ?)(kriyA-as_saMbanXI  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  represent.clp 	represent2   "?id "  peSa_kara )" crlf))
)

;@@@ Added by Anita 29-11-13
;They chose a famous barrister to represent them in court. [cambridge.org/dictionary/learner-english]
;कोर्ट में उनका प्रतिनिधित्व करने के लिए उन्होंने मशहूर वकील को चुना ।
;Union officials representing the teachers met the government today.  [cambridge.org/dictionary/learner-english]
;अध्यापकों का प्रतिनिधित्व करने वाले यूनियन अधिकारी ने आज सरकार से भेंट की ।
;I sent my husband to represent me at the funeral.        [cambridge.org/dictionary/learner-english]
;अंतिम संस्कार पर अपना प्रतिनिधित्व करने के लिए मैंने अपने पति को भेजा ।
;Women were well/poorly represented at the conference .   [cambridge.org/dictionary/learner-english]
;कांफ्रेंस में बड़ी संख्या में महिलाओं ने प्रतिनिधित्व किया ।
;Mr Smythe represents Barnet.                             [cambridge.org/dictionary/learner-english]
;श्री स्मिथ बर्नेट का प्रतिनिधित्व करते हैं ।
;She will be remembered for her courage.
;उसे उसके साहस के लिए याद किया जायेगा .
(defrule represent3
(declare (salience 50))
(id-root ?id represent)
?mng <-(meaning_to_be_decided ?id)
(or (kriyA-subject ?id ?sub)(saMjFA-to_kqxanwa  ?sub ?id))
(or (id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))(id-cat_coarse ?sub PropN) (add_organizations_list.gdbm))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiniXiwva_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  represent.clp 	represent3   "?id "  prawiniXiwva_kara )" crlf))
)

;------------------------------- Default Rules -----------------------------------

;The cancellation of the new road project represents a victory for protesters. [cambridge.org/dictionary/learner-english]
;नई सड़क परियोजना का रद्द होना प्रदर्शनकारियों की जीत को दर्शाती है ।
;The union represents over 200 employees.                  [cambridge.org/dictionary/learner-english]
; संघ 200 से अधिक कर्मचारियों को दर्शाती  है ।
;The statue represents St George killing the dragon.  [cambridge learner's ;dictionary]
;मूर्ति को  संत जॉर्ज के द्वारा ड्रेगन (सर्प )को मारते हुए दर्शाया गया  है ।
;This book represents ten years of thought and research. [cambridge learner's ;dictionary]
;यह किताब दस वर्ष की सोच और शोध को दर्शाती है ।
;The new offer represented an increase of 10% on the previous one. [cambridge learner's ;dictionary]
;नयी क़ीमत पिछली से  १०% की बढ़ोतरी को दर्शाती है ।
;@@@ Added by Anita 29-11-13
(defrule represent_default
(id-root ?id represent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarSA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  represent.clp 	represent_default   "?id "  xarSA )" crlf))
)
