
(defrule indirect0
(declare (salience 5000))
(id-root ?id indirect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aprawyakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indirect.clp 	indirect0   "  ?id "  aprawyakRa )" crlf))
)

(defrule indirect1
(declare (salience 4900))
(id-root ?id indirect)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aprawyakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indirect.clp 	indirect1   "  ?id "  aprawyakRa )" crlf))
)

;"indirect","Adj","1.aprawyakRa"

;@@@ Added by Prachi Rathore[3-3-14]
;It is an indirect way to go to the market. [shiksharthi kosh]
; यह बाजार जाने का घुमावदार मार्ग है . 
;We came about an indirect route.[shiksharthi kosh]
;हम घुमावदार मार्ग से आये. 
(defrule indirect2
(declare (salience 5000))
(id-root ?id indirect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 route|way)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumAvaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indirect.clp 	indirect2   "  ?id " GumAvaxAra)" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_indirect2
(declare (salience 5000))
(id-root ?id indirect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 route|way)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumAvaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " indirect.clp   sub_samA_indirect2   "   ?id " GumAvaxAra)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_indirect2
(declare (salience 5000))
(id-root ?id indirect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 route|way)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumAvaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " indirect.clp   obj_samA_indirect2   "   ?id " GumAvaxAra)" crlf))
)
