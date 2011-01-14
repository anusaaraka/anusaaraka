
(defrule trap0
(declare (salience 5000))
(id-root ?id trap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trap.clp 	trap0   "  ?id "  GAwa )" crlf))
)

;"trap","N","1.GAwa"
;The rat was caught in a trap.
;--"2.jAla"
;The mouse was caught in the trap.
;
(defrule trap1
(declare (salience 4900))
(id-root ?id trap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pazsa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trap.clp 	trap1   "  ?id "  Pazsa_jA )" crlf))
)

;"trap","V","1.Pazsa_jAnA"
;He was trapped inside when the fire broke out.
;--"2.jAla_lagAnA"
;The hunter hid behind the bushes to trap the antelope.
;
