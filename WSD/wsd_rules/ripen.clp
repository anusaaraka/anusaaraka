
(defrule ripen0
(declare (salience 5000))
(id-root ?id ripen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ripen.clp 	ripen0   "  ?id "  paka )" crlf))
)

;"ripen","VI","1.pakanA"
;Raw bananas will take time to ripen.
;
(defrule ripen1
(declare (salience 4900))
(id-root ?id ripen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ripen.clp 	ripen1   "  ?id "  pakA )" crlf))
)

;"ripen","VT","1.pakAnA"
;Keep this raw papaya inside for ripening.
;
