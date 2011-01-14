
(defrule reprint0
(declare (salience 5000))
(id-root ?id reprint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id punarmuxraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reprint.clp 	reprint0   "  ?id "  punarmuxraNa )" crlf))
)

;"reprint","N","1.punarmuxraNa/saMskaraNa"
;The book is into its seventh reprint.
;
(defrule reprint1
(declare (salience 4900))
(id-root ?id reprint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_CApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reprint.clp 	reprint1   "  ?id "  Pira_CApa )" crlf))
)

;"reprint","VT","1.Pira_CApanA"
;The dictionary is being reprinted with minor addition.
;
