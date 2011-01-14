
(defrule throttle0
(declare (salience 5000))
(id-root ?id throttle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nalI_vAlva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throttle.clp 	throttle0   "  ?id "  nalI_vAlva )" crlf))
)

;"throttle","N","1.nalI_vAlva"
;When the steam was let out of the throttle the engine made a peculiar noise.
;
(defrule throttle1
(declare (salience 4900))
(id-root ?id throttle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galA_GoMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  throttle.clp 	throttle1   "  ?id "  galA_GoMta )" crlf))
)

;"throttle","VT","1.galA_GoMtanA"
;The thief throttled the security man && made him unconscious .
;
