
(defrule approximate0
(declare (salience 5000))
(id-root ?id approximate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagaBaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approximate.clp 	approximate0   "  ?id "  lagaBaga )" crlf))
)

;"approximate","Adj","1.lagaBaga"
;The approximate estimate of the building construction is Rs.10,000,00/-.
;
(defrule approximate1
(declare (salience 4900))
(id-root ?id approximate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samIpa_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  approximate.clp 	approximate1   "  ?id "  samIpa_A )" crlf))
)

;"approximate","VTI","1.samIpa_AnA"
;These statistics approximate the figures we have.
;
