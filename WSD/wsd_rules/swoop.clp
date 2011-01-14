
(defrule swoop0
(declare (salience 5000))
(id-root ?id swoop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JapattA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swoop.clp 	swoop0   "  ?id "  JapattA )" crlf))
)

;"swoop","N","1.JapattA"
;Police made a dawn swoop.
;
(defrule swoop1
(declare (salience 4900))
(id-root ?id swoop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Japata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swoop.clp 	swoop1   "  ?id "  Japata )" crlf))
)

;"swoop","V","1.JapatanA/JapattA_mAranA"
;Cat swooped over the rat.
;
