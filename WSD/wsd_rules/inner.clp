
(defrule inner0
(declare (salience 5000))
(id-root ?id inner)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIwarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inner.clp 	inner0   "  ?id "  BIwarI )" crlf))
)

(defrule inner1
(declare (salience 4900))
(id-root ?id inner)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIwarI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inner.clp 	inner1   "  ?id "  BIwarI )" crlf))
)

;"inner","Adj","1.BIwarI"
;They decorated the inner portion of their rooms.
;--"2.Awmika[BAvanA]"
;Mozart's music touches one's inner feelings.
;
;
