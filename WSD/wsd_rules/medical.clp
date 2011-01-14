
(defrule medical0
(declare (salience 5000))
(id-root ?id medical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AyurvijFAna_saMbanXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  medical.clp 	medical0   "  ?id "  AyurvijFAna_saMbanXI )" crlf))
)

;"medical","Adj","1.AyurvijFAna_saMbanXI"
;Medical science has made tremendous progress in last few years.
;
(defrule medical1
(declare (salience 4900))
(id-root ?id medical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AyurvijFAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  medical.clp 	medical1   "  ?id "  AyurvijFAna )" crlf))
)

;"medical","N","1.AyurvijFAna"
;He has created Medical history.
;
