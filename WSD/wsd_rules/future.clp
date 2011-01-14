
(defrule future0
(declare (salience 5000))
(id-root ?id future)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BaviRya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  future.clp 	future0   "  ?id "  BaviRya )" crlf))
)

;"future","Adj","1.BaviRya"
;Student's work hard to get good positions in future.
;
(defrule future1
(declare (salience 4900))
(id-root ?id future)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BaviRya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  future.clp 	future1   "  ?id "  BaviRya )" crlf))
)

;"future","N","1.BaviRya"
;A good student plans for his future.
;--"2.BAvI[GatanAez]"
;Who knows what will happen in the future.
;
