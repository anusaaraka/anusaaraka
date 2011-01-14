
(defrule jog0
(declare (salience 5000))
(id-root ?id jog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XIre_XIre_xOda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jog.clp 	jog0   "  ?id "  XIre_XIre_xOda )" crlf))
)

(defrule jog1
(declare (salience 4900))
(id-root ?id jog)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jog.clp 	jog1   "  ?id "  xOdZa )" crlf))
)

;"jog","N","1.xOdZa"
;I go for a jog in the park every morning.
;
;