
(defrule distinct0
(declare (salience 5000))
(id-root ?id distinct)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAnya_se_Binna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distinct.clp 	distinct0   "  ?id "  sAmAnya_se_Binna )" crlf))
)

(defrule distinct1
(declare (salience 4900))
(id-root ?id distinct)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Binna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distinct.clp 	distinct1   "  ?id "  Binna )" crlf))
)

;"distinct","Adj","1.Binna/pqWaka"
;Plants of several distinct types
;A distinct flavor
;--"2.spaRta/suprakASa"
;I have noticed a distinct improvement in her performance.
;
;
