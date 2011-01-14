
(defrule taper0
(declare (salience 5000))
(id-root ?id taper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawalI_momabawwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  taper.clp 	taper0   "  ?id "  pawalI_momabawwI )" crlf))
)

;"taper","N","1.pawalI_momabawwI"
;He lighted a taper when there was no light.
;
(defrule taper1
(declare (salience 4900))
(id-root ?id taper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waMga_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  taper.clp 	taper1   "  ?id "  waMga_ho )" crlf))
)

;"taper","VI","1.waMga_honA"
;The road tapers at the end.
;
