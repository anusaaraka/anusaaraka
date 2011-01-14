
(defrule joint0
(declare (salience 5000))
(id-root ?id joint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAJe_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  joint.clp 	joint0   "  ?id "  sAJe_kA )" crlf))
)

;"joint","Adj","1.sAJe_kA"
;The project is a joint venture between India && Russia.
;
(defrule joint1
(declare (salience 4900))
(id-root ?id joint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  joint.clp 	joint1   "  ?id "  jodZa )" crlf))
)

;"joint","N","1.jodZa{SarIra_kA}"
;She is suffering from joint pain.
;
