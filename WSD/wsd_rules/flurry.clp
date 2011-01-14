
(defrule flurry0
(declare (salience 5000))
(id-root ?id flurry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acAnaka_honA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flurry.clp 	flurry0   "  ?id "  acAnaka_honA )" crlf))
)

;"flurry","N","1.acAnaka_honA"
;There has been unseasonal flurry of snow fall in this area.
;--"2.hadZabadZAhata"
;There has been unusual flurry of activity in the town when the visit of VVIP was announced.
;
(defrule flurry1
(declare (salience 4900))
(id-root ?id flurry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hawapraBa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flurry.clp 	flurry1   "  ?id "  hawapraBa_ho )" crlf))
)

;"flurry","V","1.hawapraBa_ho"
