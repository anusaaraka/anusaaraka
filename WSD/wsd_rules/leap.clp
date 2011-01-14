
(defrule leap0
(declare (salience 5000))
(id-root ?id leap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CalAMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leap.clp 	leap0   "  ?id "  CalAMga )" crlf))
)

;"leap","N","1.CalAMga"
;On seeing the lizard on the ground, in one leap, she was on the bed. 
;--"2.uCAla"
;The present leap in prices is totally unjustified.
;
(defrule leap1
(declare (salience 4900))
(id-root ?id leap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uCala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  leap.clp 	leap1   "  ?id "  uCala )" crlf))
)

;"leap","V","1.uCalanA"
;He leapt across the barrier. 
;--"2.CalAMga_lagAnA"
;The frog leapt into the tank. 
;--"3.acAnaka_baDanA{xAma_Axi}"
;Due to transporter's strike the prices of vegetables leapt up.
;
