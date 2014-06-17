

(defrule exhibit0
(declare (salience 5000))
(id-root ?id exhibit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exhibit.clp 	exhibit0   "  ?id "  praxarSana )" crlf))
)

;"exhibit","N","1.praxarSana"
;The museum had many exhibits of oriental art
;

;$$$ Modified by Pramila(Banasthali university) on 22-02-2014
;They will be exhibiting their new designs at the trade fairs.   ;oald
;वे व्यापार मेलों में अपने नए डिजाइनों का प्रदर्शन करेंगे.
;He exhibits regularly in local art galleries.   ;oald
;वह स्थानीय कला चित्रशालाओं में नियमित रूप से प्रदर्शन करता है.
(defrule exhibit1
(declare (salience 4900))
(id-root ?id exhibit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-at_saMbanXI  ?id ?id1)(kriyA-in_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exhibit.clp 	exhibit1   "  ?id "  praxarSana_kara )" crlf))
)

;"exhibit","VT","1.praxarSana_karanA"
;He exhibits a great talent
;

;@@@ Added by Pramila(Banasthali university) on 22-02-2014
;He exhibited great self-control considering her rudeness.   ;cald
;उसने उसकी अशिष्टता का लिहाज करते हुए बहुत आत्म - नियंत्रण दिखाया.
(defrule exhibit2
(declare (salience 100))
(id-root ?id exhibit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exhibit.clp 	exhibit2   "  ?id "  xiKA )" crlf))
)
