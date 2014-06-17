
(defrule whine0
(declare (salience 5000))
(id-root ?id whine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karNaBexI_AvAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whine.clp 	whine0   "  ?id "  karNaBexI_AvAja )" crlf))
)

;"whine","N","1.karNaBexI_AvAja"
;The whine coming from the machines was unbearable.
;--"2.cIKa"
;The whine of the child distracted many people.
;

;$$$ Modified by Pramila(BU) on 08-03-2014
;The girl was whinning from pain.   [old clp]
;लड़की दर्द से कराह रही थी.
(defrule whine1
(declare (salience 4900))
(id-root ?id whine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?id1)
(id-word ?id1 pain)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whine.clp 	whine1   "  ?id "  karAha )" crlf))
)

;@@@ Added by Pramila(BU) on 08-03-2014
;The baby whines while grumbling.   ;shiksharthi
;बच्चा शिक्यत करते समय रिरियाता है.
(defrule whine2
(declare (salience 100))
(id-root ?id whine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ririyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whine.clp 	whine2   "  ?id "  ririyA )" crlf))
)

;"whine","VT","1.karAhanA"
;The girl was whinning from pain.
;
