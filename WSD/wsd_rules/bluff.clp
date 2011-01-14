
(defrule bluff0
(declare (salience 5000))
(id-root ?id bluff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bluff.clp 	bluff0   "  ?id "  rUKA )" crlf))
)

;"bluff","Adj","1.rUKA"
;He is known for his bluff behavior .
;
(defrule bluff1
(declare (salience 4900))
(id-root ?id bluff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAzsA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bluff.clp 	bluff1   "  ?id "  JAzsA_xe )" crlf))
)

;"bluff","V","1.JAzsA_xenA/bevakUPa_banAnA"
;He tried to bluff people by all means to work out his plan.
;
