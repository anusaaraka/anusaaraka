
(defrule precipitate0
(declare (salience 5000))
(id-root ?id precipitate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vega_se_girA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  precipitate.clp 	precipitate0   "  ?id "  vega_se_girA_xe )" crlf))
)

(defrule precipitate1
(declare (salience 4900))
(id-root ?id precipitate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vega_se_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  precipitate.clp 	precipitate1   "  ?id "  vega_se_gira )" crlf))
)

;"precipitate","V","1.vega_se_giranA[girA_xenA]"
;To precipitate any object out of earth's gravity line requires a large amount of force.
;--"2.preriwa_karanA"
;The price hike of the onions precipitated the people to buy them at heavy price
;.
;
