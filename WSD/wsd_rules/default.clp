
(defrule default0
(declare (salience 5000))
(id-root ?id default)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anupasWiwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  default.clp 	default0   "  ?id "  anupasWiwi )" crlf))
)

;"default","N","1.anupasWiwi"
;He was sent to jail in default of evidence of his innocence.
;
(defrule default1
(declare (salience 4900))
(id-root ?id default)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cUka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  default.clp 	default1   "  ?id "  cUka )" crlf))
)

;"default","V","1.cUkanA"
;He has defaulted from his usual behaviour.
;--"2.BugawAna_na_karanA"
;He defaulted on the loan.
;
