
(defrule dock0
(declare (salience 4000))
(id-root ?id dock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dock.clp 	dock0   "  ?id "  GAta )" crlf))
)

;"dock","N","1.GAta/jahAja_goxAma"
;--"2.kataGarA"
;
(defrule dock1
(declare (salience 4000))
(id-root ?id dock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAta_meM_KadZA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dock.clp 	dock1   "  ?id "  GAta_meM_KadZA_kara )" crlf))
)

;"dock","VI","1.GAta_meM_KadZA_karanA/jahAja_goxAma_meM_raKanA"
;Dock the ships
;

;@@@ Added by Pramila(Banasthali University) on 10-01-2014
;The prisoner is in the dock.
;कैदी कटघरे में है.
;In the court,the witness also stands in dock.
;न्यायालय में  गवाह भी कटघरे में खड़ा होता है.
(defrule dock2
(declare (salience 5000))
(id-root ?id dock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kataGarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dock.clp 	dock2   "  ?id "  kataGarA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 10-01-2014
;They've docked 15% off my pay for this week.    ;oald
;उन्होंने मेरा इस सप्ताह का 15 % वेतन काट लिया है.
(defrule dock3
(declare (salience 4900))
(id-root ?id dock)
?mng <-(meaning_to_be_decided ?id)
(kriyA-off_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dock.clp 	dock3   "  ?id "  kAta_le )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 10-01-2014
;If you're late, your wages will be docked.  ;oald
;यदि आप लेट है तो आपकी मजदूरी काट ली जाएगी
;The university has docked lecturers' pay/wages by 20 percent because of their refusal to mark exam papers.        ;cald
;विश्वविद्यालय ने  परीक्षा पत्रों को चिह्नित करने के लिए उनके इनकार के कारण व्याख्याताओं के वेतन / मजदूरी से 20 प्रतिशत काट लिया है .
(defrule dock4
(declare (salience 4900))
(id-root ?id dock)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 pay|wage)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dock.clp 	dock4   "  ?id "  kAta_le )" crlf))
)

