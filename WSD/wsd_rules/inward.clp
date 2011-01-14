
(defrule inward0
(declare (salience 5000))
(id-root ?id inward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIwarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inward.clp 	inward0   "  ?id "  BIwarI )" crlf))
)

(defrule inward1
(declare (salience 4900))
(id-root ?id inward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anxaravAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inward.clp 	inward1   "  ?id "  anxaravAlA )" crlf))
)

(defrule inward2
(declare (salience 4800))
(id-root ?id inward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anxarUnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inward.clp 	inward2   "  ?id "  anxarUnI )" crlf))
)

;"inward","Adj","1.anxarUnI"
;Our actions do not reflect our inward nature.
;She had the inward inclination to help others .
;--"2.anwarmuKI"
;
;
