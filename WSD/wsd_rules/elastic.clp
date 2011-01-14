
(defrule elastic0
(declare (salience 5000))
(id-root ?id elastic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lacIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elastic.clp 	elastic0   "  ?id "  lacIlA )" crlf))
)

;"elastic","Adj","1.lacIlA"
;I keep my schedule quite elastic.
;
(defrule elastic1
(declare (salience 4900))
(id-root ?id elastic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ilAstika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elastic.clp 	elastic1   "  ?id "  ilAstika )" crlf))
)

;"elastic","N","1.ilAstika"
;They use good elastic for the waist band.
;
