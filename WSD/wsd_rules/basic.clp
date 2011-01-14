
(defrule basic0
(declare (salience 5000))
(id-root ?id basic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buniyAxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  basic.clp 	basic0   "  ?id "  buniyAxI )" crlf))
)

;"basic","Adj","1.buniyAxI"
;First you should have the basic knowledge of computer.
;
(defrule basic1
(declare (salience 4900))
(id-root ?id basic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlawawwva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  basic.clp 	basic1   "  ?id "  mUlawawwva )" crlf))
)

;"basic","N","1.mUlawawwva"
;His basic problem is with the spoken language .
;
