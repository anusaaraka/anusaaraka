
(defrule duck0
(declare (salience 5000))
(id-root ?id duck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawaKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  duck.clp 	duck0   "  ?id "  bawaKa )" crlf))
)

;"duck","N","1.bawaKa/2.SUnya{kriketa_meM}"
(defrule duck1
(declare (salience 4900))
(id-root ?id duck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  duck.clp 	duck1   "  ?id "  Juka )" crlf))
)

;"duck","VI","1.JukanA/2.dubakI_mAranA"
;Before he could duck, another stone struck him.
;
