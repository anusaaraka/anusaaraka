
(defrule truck0
(declare (salience 5000))
(id-root ?id truck)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id trucking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id traka_calana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  truck.clp  	truck0   "  ?id "  traka_calana )" crlf))
)

;"trucking","N","1.traka_calana"
;Goods are transported by trucking.
;
(defrule truck1
(declare (salience 4900))
(id-root ?id truck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id traka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  truck.clp 	truck1   "  ?id "  traka )" crlf))
)

;"truck","N","1.traka"
;Many trucks are plying on the road.
;
(defrule truck2
(declare (salience 4800))
(id-root ?id truck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sOxAgarI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  truck.clp 	truck2   "  ?id "  sOxAgarI_kara )" crlf))
)

;"truck","VTI","1.sOxAgarI_karanA"
;Trucks are used for transporting goods.
;
