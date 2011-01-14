
(defrule tweak0
(declare (salience 5000))
(id-root ?id tweak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikotI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tweak.clp 	tweak0   "  ?id "  cikotI )" crlf))
)

;"tweak","N","1.cikotI"
;It was a painful tweak for him.
;
(defrule tweak1
(declare (salience 4900))
(id-root ?id tweak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikotI_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tweak.clp 	tweak1   "  ?id "  cikotI_kAta )" crlf))
)

;"tweak","V","1.cikotI_kAtanA"
;He tweaked her ear while playing.
;
