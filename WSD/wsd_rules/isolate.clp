
(defrule isolate0
(declare (salience 5000))
(id-root ?id isolate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pqWaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  isolate.clp 	isolate0   "  ?id "  pqWaka )" crlf))
)

(defrule isolate1
(declare (salience 4900))
(id-root ?id isolate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  isolate.clp 	isolate1   "  ?id "  alaga_raKa )" crlf))
)

;"isolate","VT","1.alaga_raKanA_"
;They isolated the political prisoners from the other inmates.
;--"pqWaka_karanA"
;Scientists have isolated the virus from the gene.
;
;