
(defrule swallow0
(declare (salience 1))
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
(declare (salience 1))
(id-root ?id swallow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nigala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swallow.clp 	swallow1   "  ?id "  nigala )" crlf))
)
;@@@ Added by jagriti(2.1.2014)
;The cost of the trail swallowed up all their savings.
;रास्ते के खर्चे ने उनकी सब बचत समाप्त कर दी.
(defrule swallow2
(declare (salience 5000))
(id-root ?id swallow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1  samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " swallow.clp	swallow2  "  ?id "  " ?id1 "   samApwa_kara )" crlf))
)
;@@@ Added by jagriti(2.1.2014)
;The air craft was swallowed in the clouds.
;विमान बादलों में समा गय़ा.
(defrule swallow3
(declare (salience 4900))
(id-root ?id swallow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swallow.clp 	swallow3   "  ?id "  samA_jA )" crlf))
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
