;Added by Meena(4.3.11)
;Golconda fort is situated on the western outskirts of hyderabad. 
(defrule situate0
(declare (salience 5000))
(id-root ?id situate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id situated)
=>
(retract ?mng)
;(assert (id-wsd_root_mng ?id sWiwa))
(assert (id-wsd_root_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  situate.clp     situate0   "  ?id " hE  )" crlf))
)



;Added by Meena(4.3.11)
;They plan to situate the bus stop at the corner of the road.
;To understand this issue, it must first be situated in its context.
(defrule situate1
(declare (salience 4900))
(id-root ?id situate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  situate.clp    situate1   "  ?id "  raKa )" crlf))
)

