
(defrule wind0
(declare (salience 5000))
(id-root ?id wind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id havA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wind.clp 	wind0   "  ?id "  havA )" crlf))
)

;"wind","N","1.havA"
;Skin should be protected against wind.
;
(defrule wind1
(declare (salience 100))
(id-root ?id wind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hazPA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wind.clp 	wind1   "  ?id "  hazPA )" crlf))
)

;"wind","VT","1.hazPAnA"
;The long climb completely winded us.
;

;$$$ Modified by Pramila(BU) on 15-03-2014[meaning changed from 'modZa' to 'mudZa' and condition also added]
;The road winds here.  ;shiksharthi
;सड़क यहाँ मुड़ती है.
(defrule wind2
(declare (salience 4500))
(id-root ?id wind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mudZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wind.clp 	wind2   "  ?id "  mudZa )" crlf))
)

;"wind","VTI","1.modZanA"
;The road winds towards the mountain.
;
;@@@ Added by Pramila(BU) on 15-03-2014
;While racing he felt difficulty in the wind.   ;shiksharthi
;उसे दौड़ लगाते हुए साँस में तकलीफ हुई.
(defrule wind3
(declare (salience 5000))
(id-root ?id wind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
(kriyA-vAkya_subject  ?id1 ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAzsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wind.clp 	wind3   "  ?id "  sAzsa )" crlf))
)


;@@@ Added by Pramila(BU) on 15-03-2014
;The old is suffering from wind.    ;shiksharthi
;बूढा आदमी गैस से पीडित है.
;He has wind in his stomach.    ;shiksharthi
;उसके पेट में गैस है.
(defrule wind4
(declare (salience 5000))
(id-root ?id wind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-from_saMbanXI  ?id1 ?id)(viSeRya-in_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gEsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wind.clp 	wind4   "  ?id "  gEsa )" crlf))
)


;@@@ Added by Pramila(BU) on 15-03-2014
;He got the wind of your mischief.    ;shiksharthi
;उसे तुम्हारी शरारत की भनक लग गई.
(defrule wind5
(declare (salience 5000))
(id-root ?id wind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Banaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wind.clp 	wind5   "  ?id "  Banaka )" crlf))
)

;@@@ Added by Pramila(BU) on 15-03-2014
;This path winds through the jungle.    ;shiksharthi
;यह रास्ता जंगल मे से होते हुए जाता है.
(defrule wind6
(declare (salience 5000))
(id-root ?id wind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-through_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id howe_hue_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wind.clp 	wind6   "  ?id "  howe_hue_jA )" crlf))
)

;@@@ Added by Pramila(BU) on 15-03-2014
;He winds a rope around his waist.    ;shiksharthi
;वह अपनी कमर के चारों ओर रस्सी लपेटता है.
(defrule wind7
(declare (salience 5000))
(id-root ?id wind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-around_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lapeta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wind.clp 	wind7   "  ?id "  lapeta )" crlf))
)

;@@@ Added by Pramila(BU) on 15-03-2014
;He forgot to wind the thread on a reel.   ;shiksharthi
;वह रील पर धागा लपेटना भूल गया.
(defrule wind8
(declare (salience 5000))
(id-root ?id wind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(kriyA-on_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lapeta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wind.clp 	wind8   "  ?id "  lapeta )" crlf))
)

;@@@ Added by Pramila(BU) on 15-03-2014
;I can't eat beans—they give me wind.   ;oald
;मैं फली नहीं खा सकता - उनसे मुझे गैस होती है.
(defrule wind9
(declare (salience 5000))
(id-root ?id wind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object_2  ?id1 ?id)
(kriyA-vAkyakarma  ?id2 ?id1)
(kriyA-vAkyakarma  ?kri ?id2)
(id-root ?kri eat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gEsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wind.clp 	wind9   "  ?id "  gEsa )" crlf))
)


