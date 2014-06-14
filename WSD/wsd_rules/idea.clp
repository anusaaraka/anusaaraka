;Added by sheetal (10-09-09).
;She is full of bright ideas .
;vaha wejasvI vicAroM se BarI huI hE.
(defrule sh-idea0
(declare (salience 5000))
(id-root ?id idea)
?mng <- (meaning_to_be_decided ?id)
(id-word ?id1 bright)
(viSeRya-viSeRaNa  ?id ?id1);Relation added by Roja for the given example. 06-12-13
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idea.clp    sh-idea0   " ?id "  vicAra )" crlf))
)

;Added by sheetal (10-09-09).
;Do you have any idea of what he looks like?
;Can you give me an idea of the cost ?
(defrule sh-idea2
(declare (salience 4800))
(id-root ?id idea)
?mng <- (meaning_to_be_decided ?id)
(or (id-word =(- ?id 1) no|any)(id-word ?id1 cost))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  idea.clp       sh-idea2   "  ?id "  jAnakArI )" crlf))
)


;Added by Prachi Rathore[4-12-13].
;Such a study gives an idea of how human beings are born, grow up, get, old and die.[gyannidhi corpus]
;इस प्रकार का अध्ययन  जानकारी देता है कि मनुष्यों का जन्म कैसे होता है, वे कैसे बढ़ते हैं, कैसे बूढ़े होते हैं और कैसे उनकी मृत्यु होती है।
(defrule idea2
(declare (salience 4800))
(id-root ?id idea)
?mng <- (meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-root ?id1 give)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  idea.clp       idea2   "  ?id "  jAnakArI )" crlf))
)

;Added by Prachi Rathore[4-12-13].
;If this is your idea of a joke, then I don't find it very funny.[OALD]
;यदि यह चुटकुले का आपका विचार है, तो  मैं इसको अत्यन्त हास्यास्पद नहीं पाता हूँ .
(defrule idea3
(declare (salience 4800))
(id-root ?id idea)
?mng <- (meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  idea.clp       idea3   "  ?id "  vicAra )" crlf))
)


;Added by Prachi Rathore[29-3-14].
;You can get an idea of how bad the situation is in the office from the fact that DTO Anil Garg does not have any information regarding the notice on the delivery counter.
;ऑफिस की बदतर हालत का अंदाजा इसी बात से लगाया जा सकता है कि डीटीओ अनिल गर्ग को डिलीवरी काउंटर पर लगे इस नोटिस की जानकारी तक नहीं है।
(defrule idea4
(declare (salience 4800))
(id-root ?id idea)
?mng <- (meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMxAjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  idea.clp       idea4   "  ?id "  aMxAjA)" crlf))
)
