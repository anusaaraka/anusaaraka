
(defrule secondary0
(declare (salience 5000))
(id-root ?id secondary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gONa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  secondary.clp 	secondary0   "  ?id "  gONa )" crlf))
)

(defrule secondary1
(declare (salience 4900))
(id-root ?id secondary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id amuKya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  secondary.clp 	secondary1   "  ?id "  amuKya )" crlf))
)

;"secondary","Adj","1.amuKya"
;Luxury is a secondary thing in the life of every man.
;--"2.xUsare krama kA"
;Petrol is a secondary fuel obtained from crude petroleum.
;--"3.mAXyamika"
;The secondary education is a must to achieve success in one's life.
;
;
