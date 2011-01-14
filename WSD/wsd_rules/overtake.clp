
(defrule overtake0
(declare (salience 5000))
(id-root ?id overtake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overtake.clp 	overtake0   "  ?id "  Age_nikala )" crlf))
)

;"overtake","V","1.Age_nikalanA^A_GeranA"
(defrule overtake1
(declare (salience 4900))
(id-root ?id overtake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_nikala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overtake.clp 	overtake1   "  ?id "  Age_nikala_jA )" crlf))
)

;"overtake","VT","1.Age_nikala_jAnA"
;The lorry overtook the car
;--"2.Age_baDZa_jAnA{saMKyA}"
;The population may overtake one billion in the coming year
;--"3.A_GeranA"
;A series of problems overtook the nation.
;
