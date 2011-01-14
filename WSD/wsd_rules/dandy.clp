
(defrule dandy0
(declare (salience 5000))
(id-root ?id dandy)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA_TanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dandy.clp 	dandy0   "  ?id "  banA_TanA )" crlf))
)

(defrule dandy1
(declare (salience 4900))
(id-root ?id dandy)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dandy.clp 	dandy1   "  ?id "  bAzkA )" crlf))
)

;"dandy","Adj","1.bAzkA/CElA"
;
;
