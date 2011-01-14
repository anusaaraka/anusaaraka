
(defrule proposition0
(declare (salience 5000))
(id-root ?id proposition)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  proposition.clp 	proposition0   "  ?id "  praswAva )" crlf))
)

;"proposition","N","1.praswAva"
;A commercial proposition was made between the government && some private companies to share the software technology.
;--"2.samasyA"
;Collecting of crime news is a bit proposition to the reuters. 
;
(defrule proposition1
(declare (salience 4900))
(id-root ?id proposition)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswAva_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  proposition.clp 	proposition1   "  ?id "  praswAva_raKa )" crlf))
)

;"proposition","V","1.praswAva_raKanA[karanA]"
;She was propositioned several times in the cource of evening.
;
