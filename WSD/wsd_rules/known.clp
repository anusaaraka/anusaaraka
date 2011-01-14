
(defrule known0
(declare (salience 5000))
(id-root ?id known)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vixiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  known.clp 	known0   "  ?id "  vixiwa )" crlf))
)

;"known","N","1.vixiwa"
;He is a musician known throughout the world.
;It is a known quantity of milk.
;the limits of the known world
;--"2.jAnA_huA"
;He is a known criminal.
;
(defrule known1
(declare (salience 4900))
(id-root ?id known)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jFAwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  known.clp 	known1   "  ?id "  jFAwa_ho )" crlf))
)

;"known","V","1.jFAwa_honA"
;Bhagvat Gita is known to every one.
;Now-a-days, computer is known to a common man.
;
