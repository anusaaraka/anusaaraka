
(defrule tip0
(declare (salience 5000))
(id-root ?id tip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id agraBAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tip.clp 	tip0   "  ?id "  agraBAga )" crlf))
)

;"tip","N","1.agraBAga"
;The ship'Titanic' sunk after hitting the tip of the iceberg.
;--"2.suJAva"
;He got a tip on the stock market.
;
(defrule tip1
(declare (salience 4900))
(id-root ?id tip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sirA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tip.clp 	tip1   "  ?id "  sirA_lagA )" crlf))
)

;"tip","VT","1.sirA_lagAnA"
;The hunter tipped the arrow with poison.
;--"2.baKSISa_xenA"
;  Remember to tip the waiter.
;--"3.CU_jAnA"
;The ball tipped the edge of the bat.
;
