
(defrule fourteen0
(declare (salience 5000))
(id-root ?id fourteen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOxaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fourteen.clp 	fourteen0   "  ?id "  cOxaha )" crlf))
)

;"fourteen","Det","1.cOxaha"
;It took me fourteen days to finish this work.
;
(defrule fourteen1
(declare (salience 4900))
(id-root ?id fourteen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOxaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fourteen.clp 	fourteen1   "  ?id "  cOxaha )" crlf))
)

;"fourteen","N","1.cOxaha"
;It took me fourteen days to finish this work.
;
