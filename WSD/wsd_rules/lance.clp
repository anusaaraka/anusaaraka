
(defrule lance0
(declare (salience 5000))
(id-root ?id lance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lance.clp 	lance0   "  ?id "  BAlA )" crlf))
)

;"lance","N","1.BAlA"
;Early man used lance for hunting.
;
(defrule lance1
(declare (salience 4900))
(id-root ?id lance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lance.clp 	lance1   "  ?id "  cIra )" crlf))
)

;"lance","V","1.cIranA/GoMpakara_bAhara_nikalanA"
;Lancing the infected part of the body is very powerful.
;
