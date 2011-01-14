
(defrule splinter0
(declare (salience 5000))
(id-root ?id splinter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PAzsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  splinter.clp 	splinter0   "  ?id "  PAzsa )" crlf))
)

;"splinter","N","1.PAzsa"
;I have got a splinter in my finger.
;
(defrule splinter1
(declare (salience 4900))
(id-root ?id splinter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  splinter.clp 	splinter1   "  ?id "  cira )" crlf))
)

;"splinter","V","1.ciranA"
;This wood splinters easily.
;
