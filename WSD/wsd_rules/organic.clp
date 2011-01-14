; Added by human beings:
(defrule organic0
(declare (salience 5000))
(id-root ?id organic)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 compound)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArbanic))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  organic.clp 	organic0   "  ?id "  kArbanic )" crlf))
)

(defrule organic1
(declare (salience 4900))
(id-root ?id organic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id inxriya_saMbaMXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  organic.clp 	organic1   "  ?id "  inxriya_saMbaMXI )" crlf))
)

;"organic","Adj","1.inxriya_saMbaMXI"
;He treats organic diseases.
;--"2.kArbanika"
;Hydrocarbons are organic compounds.
;
;
