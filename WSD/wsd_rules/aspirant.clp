
(defrule aspirant0
(declare (salience 5000))
(id-root ?id aspirant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prArWI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aspirant.clp 	aspirant0   "  ?id "  prArWI )" crlf))
)

;"aspirant","Adj","1.prArWI/ummIxavAra"
;He is an aspirant politician.
;
(defrule aspirant1
(declare (salience 4900))
(id-root ?id aspirant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahawvAkAkRI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aspirant.clp 	aspirant1   "  ?id "  mahawvAkAkRI )" crlf))
)

;"aspirant","N","1.mahawvAkAkRI/uccAkAkRI"
;He is an aspirant to politics.
;
