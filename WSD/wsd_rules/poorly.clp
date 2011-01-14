
(defrule poorly0
(declare (salience 5000))
(id-root ?id poorly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asvasWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poorly.clp 	poorly0   "  ?id "  asvasWa )" crlf))
)

;"poorly","Adj","1.asvasWa"
;He used to be a very poorly student while studying in a school.
;
(defrule poorly1
(declare (salience 4900))
(id-root ?id poorly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lastamapastama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poorly.clp 	poorly1   "  ?id "  lastamapastama )" crlf))
)

;"poorly","Adv","1.lastamapastama"
