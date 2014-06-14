
;@@@ Added by Pramila(BU) on 14-02-2014
;He had no occasion to buy a scooter.          ;shiksharthi
;उसके पास स्कूटर खरीदने का कारण है.
;This is one of the occasions of his success.            ;shiksharthi
;यह उसकी सफलता के कारणों में से एक है.
(defrule occasion0
(declare (salience 5000))
(id-root ?id occasion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(saMjFA-to_kqxanwa  ?id ?id1)(viSeRya-of_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occasion.clp 	occasion0   "  ?id "  kAraNa )" crlf))
)

;@@@ Added by Pramila(BU) on 14-02-2014
;It should have been an occasion for rejoicing, but she could not feel any real joy.    ;oald
;यह आनन्द लेने के लिए एक मौका होना चाहिए था, लेकिन वह कोई वास्तविक आनन्द नही ले सकी.
(defrule occasion1
(declare (salience 5000))
(id-root ?id occasion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mOkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occasion.clp 	occasion1   "  ?id "  mOkA)" crlf))
)

;@@@ Added by Pramila(BU) on 14-02-2014
;I'll speak to him about it if the occasion arises    ;oald
;यदि मौका मिलता है तो मैं उसे इसके बारे में बताऊँगा .
;The bride took/used the occasion to make a short speech.  ;cald
;दुल्हन ने एक संक्षिप्त भाषण देने के लिए मौके का प्रयोग किया.
(defrule occasion2
(declare (salience 5000))
(id-root ?id occasion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-subject  ?kri ?id)(kriyA-object  ?kri ?id))
(id-root ?kri arise|take|use)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mOkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occasion.clp 	occasion2   "  ?id "  mOkA)" crlf))
)


;@@@ Added by Pramila(BU) on 14-02-2014
;I have met him on several occasions.        ;oald
;मैं उससे कई बार मिला हूँ.
(defrule occasion3
(declare (salience 4900))
(id-root ?id occasion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-on_saMbanXI  ?kri ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root-category-suffix-number ?id ? noun s p)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  occasion.clp 	occasion3   "  ?id "  bAra )" crlf))
)

;@@@ Added by Pramila(BU) on 14-02-2014
;I have a suit but I only wear it on special occasions.   ;cald
;मेरे पास एक सूट है परन्तु मैं इसे केवल विशेष अवसर पर पहनती हूँ.
;this rule is added because conditions of sentence 'I have met him on several occasions.' with this sentence.
(defrule occasion4
(declare (salience 5000))
(id-root ?id occasion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-on_saMbanXI  ?kri ?id)
(id-root ?kri wear|sing)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avasara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occasion.clp 	occasion4   "  ?id "  avasara )" crlf))
)


(defrule occasion5
(declare (salience 100))
(id-root ?id occasion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avasara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occasion.clp 	occasion5   "  ?id "  avasara )" crlf))
)

;"occasion","N","1.avasara/prasaMga"
;On rare occassions, she dressed up.
;--"2.mOkA"
;I don't get much occasion to speak German.
;
(defrule occasion6
(declare (salience 4900))
(id-root ?id occasion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nimiwwamAwra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occasion.clp 	occasion6   "  ?id "  nimiwwamAwra_ho )" crlf))
)

;"occasion","V","1.nimiwwamAwra_honA"
;The child's remarks occasioned lots of mirth. 
;
