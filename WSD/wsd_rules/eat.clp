
(defrule eat0
(declare (salience 5000))
(id-root ?id eat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-word ?id1 extravagence)         ;new condition added and old was removed by Pramila(Banasthali University) on 23-11-2013
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wabAha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " eat.clp	eat0  "  ?id "  " ?id1 "  wabAha_kara  )" crlf))
)

;His son's extravagence has eaten into all his savings.
;usake bete ke PijZUlaKarca ne usakI sArI bacawa ko naRta kara xiyA.


;added by Pramila(Banasthali University) on 23-11-2013
;When I've got a cold, I don't feel like eating.   ;cald
;जब मुझे जुखाम होता है ,मुझे खाना खाने का मन नहीं करता.
;We usually eat (= have a meal) at about 7 o'clock.        ;cald
;हम सामान्यता सात बजे तक खाना खा लेते हैं.
(defrule eat1
(declare (salience 5000))
(id-root ?id eat)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-like_saMbanXI  ?id ?id1)(kriyA-at_saMbanXI  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAnA_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eat.clp 	eat1   "  ?id "  KAnA_KA )" crlf))
)

;added by Pramila(Banasthali University) on 23-11-2013
;Be a good boy and eat up your vegetables.                   ;cald
;एक अच्छे बच्चे की तरह अपनी सब्जियाँ खत्म करो .
(defrule eat2
(declare (salience 5000))
(id-root ?id eat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(kriyA-object  ?id ?id2)
(id-root ?id2 vegetable|food)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kawma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eat.clp 	eat2   "  ?id "  Kawma_kara )" crlf))
)

;added by Pramila(Banasthali University) on 23-11-2013
;A big old car like that eats up petrol.               ;cald
;उस तरह की पुरानी कार सारा पेट्रोल पी जाती हैं .( खर्च हो जाता है.)
(defrule eat3
(declare (salience 5000))
(id-root ?id eat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(kriyA-subject  ?id ?id2)
(id-root ?id2 car|bike|motorcycle|truck|scooter)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pI_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eat.clp 	eat3   "  ?id "  pI_jA )" crlf))
)

;added by Pramila(Banasthali University) on 23-11-2013
;The high cost of living in London is eating into my savings.           ;cald
;मेरी सारी बचत लंदन के महंगे  रहन –सहन के स्तर  में ही इस्तेमाल हो जाती हैं . 
(defrule eat4
(declare (salience 4900))
(id-root ?id eat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)          
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iswemAla_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eat.clp 	eat4   "  ?id "  iswemAla_ho )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 06-12-2013
;I am not implying anything about your cooking, but could we eat out tonight?
;मैं आपके खाना पकाने की विधि के बारे में कुछ भी अर्थ नहीं निकाल रहा हूँ, परन्तु हम आज की रात बाहर खा सकते थे?
(defrule eat5
(declare (salience 5000))
(id-root ?id eat)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahAra_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " eat.clp	eat5  "  ?id "  " ?id1 "  bahAra_KA  )" crlf))
)

(defrule eat6
(declare (salience 4000))
(id-root ?id eat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eat.clp 	eat6   "  ?id "  KA )" crlf))
)

;"eat","VT","1.KAnA"
;Eat a good breakfast.
;
;
