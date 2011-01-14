
(defrule bully0
(declare (salience 5000))
(id-root ?id bully)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XOMsa_xiKAnevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bully.clp 	bully0   "  ?id "  XOMsa_xiKAnevAlA )" crlf))
)

;"bully","Adj","1.XOMsa_xiKAnevAlA"
;A bully pulpit
;
(defrule bully1
(declare (salience 4900))
(id-root ?id bully)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XOMsa_xiKAnevAlA_manuRya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bully.clp 	bully1   "  ?id "  XOMsa_xiKAnevAlA_manuRya )" crlf))
)

;"bully","N","1.XOMsa_xiKAnevAlA_manuRya"
;Ramesh is a real bully.
;
(defrule bully2
(declare (salience 4800))
(id-root ?id bully)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XamakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bully.clp 	bully2   "  ?id "  XamakA )" crlf))
)

;"bully","VT","1.XamakAnA/JidZakanA"
;He bullies everyone around him.
;
