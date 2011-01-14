;Added by Meena(23.11.09)
;I went to the store, got a gallon of milk and returned the eggs.
(defrule store0
(declare (salience 5000))
(id-root ?id store)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xukAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  store.clp     store0   "  ?id "  xukAna )" crlf))
)



;Salience reduced by Meena(23.11.09)
(defrule store1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id store)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMciwa_mAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  store.clp 	store1   "  ?id "  saMciwa_mAla )" crlf))
)

;"store","N","1.saMciwa_mAla"
;Good store of food is required in every house.
;--"2.BaMdZAra"
;Benetlon has a good store of clothes.
;--"3.xukAna"
;There are several cosmetic stores in a city market.
;
(defrule store2
(declare (salience 4900))
(id-root ?id store)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  store.clp 	store2   "  ?id "  saMciwa_kara )" crlf))
)

;"store","V","1.saMciwa_karanA"
;Store the vegetables in an airtight container.
;
