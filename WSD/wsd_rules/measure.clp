;@@@ Added By Nandini (17-12-13)
;Measure out 250 grams of flour and sift it into a large mixing bowl.
(defrule measure0
(declare (salience 170))
(id-root ?id measure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mApa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " measure.clp	measure0  "  ?id "  " ?id1 "  mApa  )" crlf))
)

;@@@ Added By Nandini (17-12-13)
;His answers are always well measured.
(defrule measure1
(declare (salience 110))
(id-root ?id measure)
(id-root ?id1 answer)
(kriyA-subject ?id ?id1)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id napA_wulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  measure.clp 	measure1   "  ?id "  napA_wulA )" crlf))
)

;@@@ Added By Nandini (17-12-13)
;She could never measure up to her mother's expectations.
(defrule measure2
(declare (salience 150))
(id-root ?id measure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-to_saMbanXI  ?id ?id2)
(id-root ?id2 expectation)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Azkalana_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " measure.clp	measure2  "  ?id "  " ?id1 "  Azkalana_kara  )" crlf))
)

;He measured the flour into the bowl.
;usane katore meM AtA nApA.
(defrule measure3
(declare (salience 100))
(id-root ?id measure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  measure.clp 	measure3   "  ?id "  nApa )" crlf))
)

;"measure","N","1.mApa"
;It is advisable to ascertain the correct measure of every thing purchased.
(defrule measure4
(declare (salience 50))
(id-root ?id measure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  measure.clp 	measure4   "  ?id "  nApa )" crlf))
)
;==========================default-rule===========
;@@@ Added by Nandini (17-12-13)
;She replied in a measured tone to his threat.
;usane usakI XamakI ko eka napA-wulA AvAja meM javAba xiyA.
(defrule measure5
(declare (salience 50))
(id-root ?id measure)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  measure.clp 	measure5   "  ?id "  nApa )" crlf))
)
;----------------------------- Removed rules ----------
;measure0
; 	if word  measured and categorty adjective  then napA

;measure1
; 	if word  measured and categorty adjective  then  napA-wulA
	;His answers are always well measured.

;------------previous-examples---------
;"measure","V","1.nApanA"
;He measured the lenght of the room.
;--"2.nirNaya_karanA/pawA_lagAnA"
;Can one really measure the ability of a candidate in a ten minute interview?
;--"3.nApa_kA_honA"
;The lenght of the trouser measures 41 inches.
;--"4.nApa_wola_karanA"
;She never measures the effect of what she is going to say.

;-----------------Additional examples-----------
;He walked down the corridor with measured steps.
;It is advisable to ascertain the correct measure of every thing purchased.
;She never measures the effect of what she is going to say.
;The lenght of the trouser measures 41 inches.
;Can one really measure the ability of a candidate in a ten minute interview?
;He measured the length of the room.
;His answers are always well measured.
;Measure out 250 grams of flour and sift it into a large mixing bowl.
;She measured the shoe against the footprint, but it was smaller.
;There is no way of measuring the damage done to morale.
;This machine measures your heart rate.
;Let us measure it.
