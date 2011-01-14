
(defrule solace0
(declare (salience 5000))
(id-root ?id solace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAnwvanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solace.clp 	solace0   "  ?id "  sAnwvanA )" crlf))
)

;"solace","N","1.sAnwvanA/upaSama"
;Every one can find solace in music.
;
(defrule solace1
(declare (salience 4900))
(id-root ?id solace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAnwvanA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solace.clp 	solace1   "  ?id "  sAnwvanA_xe )" crlf))
)

;"solace","V","1.sAnwvanA_xenA/xuHKa_kama_kara_xenA"
;He gives his parents solace while performing his duties.
;
