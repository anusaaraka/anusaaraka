
(defrule rocket0
(declare (salience 5000))
(id-root ?id rocket)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bANa-havAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rocket.clp 	rocket0   "  ?id "  bANa-havAI )" crlf))
)

;"rocket","N","1.bANa-havAI"
;Rockets are used to shoot missile or launch spacecraft. 
;
(defrule rocket1
(declare (salience 4900))
(id-root ?id rocket)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acAnaka_bahuwa_baDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rocket.clp 	rocket1   "  ?id "  acAnaka_bahuwa_baDa )" crlf))
)

;"rocket","V","1.acAnaka_bahuwa_baDanA"
;Nowadays land prices are rocketing.      
;
