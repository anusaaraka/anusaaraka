
(defrule wrench0
(declare (salience 100))
(id-root ?id wrench)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id marodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrench.clp 	wrench0   "  ?id "  marodZa )" crlf))
)

;"wrench","N","1.marodZa"
;He got a wrench in his back while travelling.
;--"2.[BAvanAoM_ko]Tesa_pahuzcAnA"
;She felt a wrench when her boy friend left her.
;--"3.nata_bolta_kasane_kA_upakaraNa"
;The plumber uses the wrench.
;
(defrule wrench1
(declare (salience 100))
(id-root ?id wrench)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KIMca_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrench.clp 	wrench1   "  ?id "  KIMca_le )" crlf))
)

;"wrench","VT","1.KIMca_lenA"
;The violent storm wrenched the main door.
;

;@@@ Added by Pramila(BU) on 24-03-2014
;He gave a wrench at the door and it opened.   ;shiksharthi
;उसने दरवाजे पर एक झटका दिया और वह खुल गया.
(defrule wrench2
(declare (salience 5000))
(id-root ?id wrench)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(kriyA-at_saMbanXI  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JatakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrench.clp 	wrench2   "  ?id "  JatakA )" crlf))
)

;@@@ Added by Pramila(BU) on 24-03-2014
;He wrenched the revolver from my hands.   ;shiksharthi
;उसने मेरे हाथ से रिवोल्वर छीन ली.
(defrule wrench3
(declare (salience 4900))
(id-root ?id wrench)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CIna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrench.clp 	wrench3   "  ?id "  CIna_le )" crlf))
)


;@@@ Added by Pramila(BU) on 24-03-2014
;The plumber uses the wrench.   [old clp]
;प्लम्बर रिंच का उपयोग करता है.
(defrule wrench4
(declare (salience 5000))
(id-root ?id wrench)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(id-root ?kri use)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id riMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrench.clp 	wrench4   "  ?id "  riMca )" crlf))
)
