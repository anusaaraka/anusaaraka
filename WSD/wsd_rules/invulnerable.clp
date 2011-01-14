
(defrule invulnerable0
(declare (salience 5000))
(id-root ?id invulnerable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBexya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invulnerable.clp 	invulnerable0   "  ?id "  aBexya )" crlf))
)

(defrule invulnerable1
(declare (salience 4900))
(id-root ?id invulnerable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id surakRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invulnerable.clp 	invulnerable1   "  ?id "  surakRiwa )" crlf))
)

;"invulnerable","Adj","1.surakRiwa"
;The Mughal emperors had the fortification that was invulnerable to attacks.
;--"2.aBexya"
;Srilankans are in an invulnerable position at the cricket match series.
;
;
