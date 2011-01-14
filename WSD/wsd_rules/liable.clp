
(defrule liable0
(declare (salience 5000))
(id-root ?id liable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZimmexAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  liable.clp 	liable0   "  ?id "  jZimmexAra )" crlf))
)

(defrule liable1
(declare (salience 4900))
(id-root ?id liable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  liable.clp 	liable1   "  ?id "  xAyI )" crlf))
)

;"liable","Adj","1.xAyI"
;Trespasser are liable to be fined.
;--"2.uwwaraxAyiwva"
;The company shall be liable for any damage caused in transit.
;--"3.saMBAvya"
;Under stress they are liable to lose their balance.
;
;
