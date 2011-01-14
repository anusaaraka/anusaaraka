
(defrule planetary0
(declare (salience 5000))
(id-root ?id planetary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gqha_saMbaMXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  planetary.clp 	planetary0   "  ?id "  gqha_saMbaMXI )" crlf))
)

(defrule planetary1
(declare (salience 4900))
(id-root ?id planetary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id graha_saMbanXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  planetary.clp 	planetary1   "  ?id "  graha_saMbanXI )" crlf))
)

;"planetary","Adj","1.graha saMbanXI"
;Earth is the part of the planetary system.
;
;