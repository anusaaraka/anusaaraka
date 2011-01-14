
(defrule cardinal0
(declare (salience 5000))
(id-root ?id cardinal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buniyAxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cardinal.clp 	cardinal0   "  ?id "  buniyAxI )" crlf))
)

(defrule cardinal1
(declare (salience 4900))
(id-root ?id cardinal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cardinal.clp 	cardinal1   "  ?id "  muKya )" crlf))
)

;"cardinal","Adj","1.muKya/praXAna"
;Is there a cardinal rule to solve this problem?
;
;