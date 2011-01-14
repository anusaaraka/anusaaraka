
(defrule delicious0
(declare (salience 5000))
(id-root ?id delicious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAxiRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  delicious.clp 	delicious0   "  ?id "  svAxiRta )" crlf))
)

(defrule delicious1
(declare (salience 4900))
(id-root ?id delicious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAxiRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  delicious.clp 	delicious1   "  ?id "  svAxiRta )" crlf))
)

;"delicious","Adj","1.svAxiRta"
;She prepared a delicious meal for the family.
;My mother always prepares delicious food.
;merI mAz hameSA svAxiRta Bojana pakAwI hE.
;--"2.rocaka"
;It was a delicious joke.
;
;
