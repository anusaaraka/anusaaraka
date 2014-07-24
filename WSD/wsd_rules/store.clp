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

;@@@ Added by jagriti(24.1.2014)
;A store of energy. 
;ऊर्जा का संचय . 
;Good store of food is required in every house.
;आहार का अच्छा संचय प्रत्येक घर में जरूरी है . 
(defrule store1
(declare (salience 4900))
(id-root ?id store)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 energy|food|knowledge|chocolate)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMcaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  store.clp     store1   "  ?id "  saMcaya )" crlf))
)

;$$$ Modified by jagriti(24.1.2014)....
;Changed default meaning from 'saMciwa_mAla' to 'xukAna'
;Buyers from stores are given the opportunity to go through fashion collections item by item and place orders.
;Salience reduced by Meena(23.11.09)
(defrule store2
(declare (salience 100))
(id-root ?id store)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xukAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  store.clp 	store2   "  ?id "  xukAna )" crlf))
)

;"store","N","1.saMciwa_mAla"
;Good store of food is required in every house.
;--"2.BaMdZAra"
;Benetlon has a good store of clothes.
;--"3.xukAna"
;There are several cosmetic stores in a city market.

;@@@ Added by jagriti(24.1.2014)
;A mind well stored with facts .
;मन अच्छी तरह तथ्यों से भरा हुआ है.
(defrule store3
(declare (salience 4800))
(id-root ?id store)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  store.clp 	store3   "  ?id "  BarA_ho )" crlf))
)

(defrule store4
(declare (salience 100))
(id-root ?id store)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  store.clp 	store4  "  ?id "  saMciwa_kara )" crlf))
)

;"store","V","1.saMciwa_karanA"
;Store the vegetables in an airtight container.
;
