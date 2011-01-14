
(defrule swallow0
(declare (salience 5000))
(id-root ?id swallow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id abAbIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swallow.clp 	swallow0   "  ?id "  abAbIla )" crlf))
)

;"swallow","N","1.abAbIla"
;A lone swallow sat on the tree stump.
;
(defrule swallow1
(declare (salience 4900))
(id-root ?id swallow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nigala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swallow.clp 	swallow1   "  ?id "  nigala )" crlf))
)

;"swallow","V","1.nigalanA"
;Snakes swallow their pray.
;--"2.AzKa_mUzxakara_viSvAsa_karanA"
;He flatters her outrageously, && she swallows it whole.
;--"3.samA_lenA"
;The air craft was swallowed in the clouds.
;--"4.samApwa_karanA"
;The cost of the trail swallowed up all their savings.
;
