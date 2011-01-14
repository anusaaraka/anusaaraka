
(defrule ramp0
(declare (salience 5000))
(id-root ?id ramp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DZalAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ramp.clp 	ramp0   "  ?id "  DZalAna )" crlf))
)

;"ramp","N","1.DZalAna"
;The builder has made a beautiful ramp between two sky high buildings. 
;Ramps across the roads should be marked with yellow && black linings.
;
(defrule ramp1
(declare (salience 4900))
(id-root ?id ramp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ramp.clp 	ramp1   "  ?id "  uCala )" crlf))
)

;"ramp","VT","1.uCalanA"
;Her child is ramping && raging in a great fury.
;
