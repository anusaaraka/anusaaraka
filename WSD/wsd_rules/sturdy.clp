
(defrule sturdy0
(declare (salience 5000))
(id-root ?id sturdy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hattA_kattA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sturdy.clp 	sturdy0   "  ?id "  hattA_kattA )" crlf))
)

(defrule sturdy1
(declare (salience 4900))
(id-root ?id sturdy)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sturdy.clp 	sturdy1   "  ?id "  xqDZa )" crlf))
)

;"sturdy","Adj","1.xqDZa"
;He is quite sturdy on his decisions.
;--"2.majZabUwa"
;The company offers a range of sturdy footwear.
;"sturdily","Adj","1.xqDZawA se"
;He talked to me sturdily about his plans.
;
;