;Synthetic clothes catch the fire easily.
;The synthetic silk is giving a tough competition to natural silk as it is more durable.
(defrule synthetic0
(declare (salience 5000))
(id-root ?id synthetic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMSliRta));Replaced jAlI with saMSliRta by Pramila (Banasthali University) on 11-08-2013
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  synthetic.clp 	synthetic0   "  ?id "    saMSliRta)" crlf))
)

;"synthetic","Adj","1.jAlI/banAvatI"
;The honesty && frendliness of the shopkeeper was synthetic.
;
(defrule synthetic1
(declare (salience 4900))
(id-root ?id synthetic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqwrima))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  synthetic.clp 	synthetic1   "  ?id "  kqwrima )" crlf))
)

;"synthetic","N","1.kqwrima"
;
