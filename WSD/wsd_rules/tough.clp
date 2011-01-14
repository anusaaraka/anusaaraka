
(defrule tough0
(declare (salience 5000))
(id-root ?id tough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tough.clp 	tough0   "  ?id "  kadZA )" crlf))
)

(defrule tough1
(declare (salience 4900))
(id-root ?id tough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tough.clp 	tough1   "  ?id "  kadZA )" crlf))
)

;"tough","Adj","1.kadZA"
;He is a tough person to deal with.
;--"2.majabUwa"
;It is a tough glass. It will not break.
;--"3.uxxaNda"
;Police are controlling the tough mob.
;--"4.kaTora"
;Police are tough with the criminals.
;--"5.xu:sAXya"
;It is rather a tough problem to solve.
;
;