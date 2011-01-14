
(defrule worldwide0
(declare (salience 5000))
(id-root ?id worldwide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSva_vyApaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worldwide.clp 	worldwide0   "  ?id "  viSva_vyApaka )" crlf))
)

;"worldwide","Adj","1.viSva_vyApaka"
;Computer has a worldwide market.
;He got worldwide recognition for for his mathematical achievements.
;
(defrule worldwide1
(declare (salience 4900))
(id-root ?id worldwide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvavyApI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worldwide.clp 	worldwide1   "  ?id "  viSvavyApI )" crlf))
)

;"worldwide","Adv","1.viSvavyApI"
;The worry over the harmful consequences of environment degradation is worldwide. 
;
