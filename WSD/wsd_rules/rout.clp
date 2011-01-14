
(defrule rout0
(declare (salience 5000))
(id-root ?id rout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNa_parAjaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rout.clp 	rout0   "  ?id "  pUrNa_parAjaya )" crlf))
)

;"rout","N","1.pUrNa_parAjaya"
;After their defeat  in the first half the second half match became a rout.  
;
(defrule rout1
(declare (salience 4900))
(id-root ?id rout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rout.clp 	rout1   "  ?id "  harA_xe )" crlf))
)

;"rout","VT","1.harA_xenA"
;He resigned from his post after his party was routed in the election.
;
