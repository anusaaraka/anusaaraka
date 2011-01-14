
(defrule reprimand0
(declare (salience 5000))
(id-root ?id reprimand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reprimand.clp 	reprimand0   "  ?id "  dAzta )" crlf))
)

;"reprimand","N","1.dAzta"
;Her negligence passed without a reprimand.
;
(defrule reprimand1
(declare (salience 4900))
(id-root ?id reprimand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JidZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reprimand.clp 	reprimand1   "  ?id "  JidZaka )" crlf))
)

;"reprimand","VT","1.JidZakanA"
;The typist was reprimanded for typographical errors.
;
