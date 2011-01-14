
(defrule lever0
(declare (salience 5000))
(id-root ?id lever)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwolaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lever.clp 	lever0   "  ?id "  uwwolaka )" crlf))
)

(defrule lever1
(declare (salience 4900))
(id-root ?id lever)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwolaka_se_hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lever.clp 	lever1   "  ?id "  uwwolaka_se_hatA )" crlf))
)

;"lever","V","1.uwwolaka se hatAnA"
;Iron rods are often used to lever the logs.
;
;