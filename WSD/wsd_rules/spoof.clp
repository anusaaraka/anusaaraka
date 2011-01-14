
(defrule spoof0
(declare (salience 5000))
(id-root ?id spoof)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Taga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spoof.clp 	spoof0   "  ?id "  Taga )" crlf))
)

;"spoof","N","1.Taga"
;A spoof make out money from every person.
;
(defrule spoof1
(declare (salience 4900))
(id-root ?id spoof)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakamA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spoof.clp 	spoof1   "  ?id "  cakamA_xe )" crlf))
)

;"spoof","V","1.cakamA_xenA"
;You have been spoofed.
;
