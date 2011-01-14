
(defrule proper0
(declare (salience 5000))
(id-root ?id proper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  proper.clp 	proper0   "  ?id "  uciwa )" crlf))
)

(defrule proper1
(declare (salience 4900))
(id-root ?id proper)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  proper.clp 	proper1   "  ?id "  uciwa )" crlf))
)

;"proper","Adj","1.uciwa"
;We should always be dressed in a proper way.
;
;