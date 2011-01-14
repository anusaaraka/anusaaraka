
(defrule circular0
(declare (salience 5000))
(id-root ?id circular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqwwIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  circular.clp 	circular0   "  ?id "  vqwwIya )" crlf))
)

;"circular","Adj","1.vqwwIya"
;The planets move in circular motion.
;
(defrule circular1
(declare (salience 4900))
(id-root ?id circular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarkyulara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  circular.clp 	circular1   "  ?id "  sarkyulara )" crlf))
)

;"circular","N","1.sarkyulara"
;He mailed the circular to all subscribers
;
