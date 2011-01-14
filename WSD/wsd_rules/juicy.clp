
(defrule juicy0
(declare (salience 5000))
(id-root ?id juicy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rasaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  juicy.clp 	juicy0   "  ?id "  rasaxAra )" crlf))
)

(defrule juicy1
(declare (salience 4900))
(id-root ?id juicy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rasaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  juicy.clp 	juicy1   "  ?id "  rasaxAra )" crlf))
)

;"juicy","Adj","1.rasaxAra"
;Mango is a very juicy fruit.
;--"2.sanasanIKeja"
;Robbins always writes juicy novels.
;
;
