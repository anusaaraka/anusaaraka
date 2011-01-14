
(defrule bud0
(declare (salience 5000))
(id-root ?id bud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bud.clp 	bud0   "  ?id "  kalI )" crlf))
)

(defrule bud1
(declare (salience 4900))
(id-root ?id bud)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalI_PUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bud.clp 	bud1   "  ?id "  kalI_PUta )" crlf))
)

;default_sense && category=verb	kalI_nikAla	0
;"bud","VI","1.kalI_nikAlanA"
;The hibiscus is budding!
;--"2.pallaviwa_honA"
;Their friendship was budding.
;
;