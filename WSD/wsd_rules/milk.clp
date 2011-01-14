
(defrule milk0
(declare (salience 5000))
(id-root ?id milk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id milking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xuhanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  milk.clp  	milk0   "  ?id "  xuhanA )" crlf))
)

;"milking","N","1.xuhanA"
;What would a city brat know about milking.
;
(defrule milk1
(declare (salience 4900))
(id-root ?id milk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  milk.clp 	milk1   "  ?id "  xUXa )" crlf))
)

;"milk","N","1.xUXa"
;Drink a glass of milk everyday.
;
(defrule milk2
(declare (salience 4800))
(id-root ?id milk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  milk.clp 	milk2   "  ?id "  xuha )" crlf))
)

;"milk","V","1.xuhanA"
;Milk the cow twice everyday.
;
