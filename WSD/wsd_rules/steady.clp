
(defrule steady0
(declare (salience 5000))
(id-root ?id steady)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steady.clp 	steady0   "  ?id "  sWira )" crlf))
)

(defrule steady1
(declare (salience 4900))
(id-root ?id steady)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anavarawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steady.clp 	steady1   "  ?id "  anavarawa )" crlf))
)

;"steady","Adj","1.anavarawa"
;Sita is making steady progress in her writing.
;--"2.niyamiwa"  
;Ram has been holding a steady job for past 1.years.
;--"3.gamBIra"
;A steady man is trusted by every one.
;
;