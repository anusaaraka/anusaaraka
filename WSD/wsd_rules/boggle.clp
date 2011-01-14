
(defrule boggle0
(declare (salience 5000))
(id-root ?id boggle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SaMkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boggle.clp 	boggle0   "  ?id "  SaMkA )" crlf))
)

;"boggle","N","1.SaMkA"
(defrule boggle1
(declare (salience 4900))
(id-root ?id boggle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JiJaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boggle.clp 	boggle1   "  ?id "  JiJaka )" crlf))
)

;"boggle","VT","1.JiJakanA"
;This boggles the mind!
;
