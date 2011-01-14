
(defrule rivet0
(declare (salience 5000))
(id-root ?id rivet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ribeta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rivet.clp 	rivet0   "  ?id "  ribeta )" crlf))
)

;"rivet","N","1.ribeta"
;She has used rivet for tightening her bag.                
;
(defrule rivet1
(declare (salience 4900))
(id-root ?id rivet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUztI_se_jadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rivet.clp 	rivet1   "  ?id "  KUztI_se_jadZa )" crlf))
)

;"rivet","VT","1.KUztI_se_jadZanA"
;The scissor handles are made of two pieces riveted together.
;--"2.AkqRta_karanA"
;He was completely riveted by her tale. 
;
