
(defrule power0
(declare (salience 5000))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id powered )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id UrjAvAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  power.clp  	power0   "  ?id "  UrjAvAna )" crlf))
)

;"powered","Adj","1.UrjAvAna"
;
;to_vAlA_viSeRya=come && category=noun	Sakwi	12.5506193386689
(defrule power1
(declare (salience 4900))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power1   "  ?id "  Sakwi )" crlf))
)

(defrule power2
(declare (salience 4800))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samarWa_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power2   "  ?id "  samarWa_banA )" crlf))
)

(defrule power3
(declare (salience 4700))
(id-root ?id power)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samarWa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  power.clp 	power3   "  ?id "  samarWa_ho )" crlf))
)

;"power","V","1.samarWa_honA[banAnA]"
;The toys are powered by batteries.
;He powered his way into the lead.
;
;
