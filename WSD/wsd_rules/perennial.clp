;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Colonialism in different forms is a perennial theme of history. [OALD]
;विभिन्न रूप में उपनिवेशवाद इतिहास का एक सदाबहार विषय है . 
(defrule perennial0
(declare (salience 5000))
(id-root ?id perennial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root ?id1 theme|idea|matter|subject|argument|topic|premise)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saxAbahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perennial.clp 	perennial0   "  ?id "  saxAbahAra )" crlf))
)


;Meaning changed by Meena(29.7.11)
;Uttar pradesh is a land of cultural and geographical diversity, which is blessed by an innumerable perennial rivers, dense forests, and fertile soil. 
(defrule perennial1
(declare (salience 4900))
(id-root ?id perennial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bArahamAsI))
;(assert (id-wsd_root_mng ?id Avqwwi_pAnevAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perennial.clp 	perennial1   "  ?id "  bArahamAsI )" crlf))
)

;"perennial","Adj","1.Avqwwi_pAnevAlI"
;Increasing of mosquitos is a perennial problem in our colony.
;--"2.cirasWAyI"
;These plants are perennial.
;
(defrule perennial2
(declare (salience 4800))
(id-root ?id perennial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bArahamAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perennial.clp 	perennial2   "  ?id "  bArahamAsI )" crlf))
)

;"perennial","N","1.bArahamAsI"
;Her P.A owns a nursery of perennial plants.
;
