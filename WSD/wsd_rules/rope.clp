
(defrule rope0
(declare (salience 5000))
(id-root ?id rope)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rassI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rope.clp 	rope0   "  ?id "  rassI )" crlf))
)

;"rope","N","1.rassI"
;She tied a piece of rope to the branch with the help of a long stick.
;She has a beautiful rope of corals.                                        
;
(defrule rope1
(declare (salience 4900))
(id-root ?id rope)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rassI_se_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rope.clp 	rope1   "  ?id "  rassI_se_bAzXa )" crlf))
)

;"rope","V","1.rassI_se_bAzXanA{bazXanA}"
;Mountain climbers roped together for safety.
;
