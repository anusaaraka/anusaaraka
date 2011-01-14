
(defrule typical0
(declare (salience 5000))
(id-root ?id typical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSiRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  typical.clp 	typical0   "  ?id "  viSiRta )" crlf))
)

(defrule typical1
(declare (salience 4900))
(id-root ?id typical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AxarSa_rUpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  typical.clp 	typical1   "  ?id "  AxarSa_rUpa )" crlf))
)

;"typical","Adj","1.AxarSa_rUpa"
;It is typical of him to speak the truth.
;
;
