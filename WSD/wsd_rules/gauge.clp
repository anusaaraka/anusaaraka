
(defrule gauge0
(declare (salience 5000))
(id-root ?id gauge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gauge.clp 	gauge0   "  ?id "  mApa )" crlf))
)

;"gauge","N","1.mApa"
;A new broad guage line is being laid here.
;
(defrule gauge1
(declare (salience 4900))
(id-root ?id gauge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gauge.clp 	gauge1   "  ?id "  nApa )" crlf))
)

;"gauge","VT","1.nApanA"
;There is a new equipment to guage the speed of the bowler's delivery.
;
