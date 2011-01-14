
(defrule reverse0
(declare (salience 5000))
(id-root ?id reverse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ultI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reverse.clp 	reverse0   "  ?id "  ultI )" crlf))
)

;"reverse","Adj","1.ultI"
;The three winners were announced in reverse order.
;She is going in the reverse direction.
;
(defrule reverse1
(declare (salience 4900))
(id-root ?id reverse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viparIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reverse.clp 	reverse1   "  ?id "  viparIwa )" crlf))
)

;"reverse","N","1.viparIwa"
;He has done the reverse of what he was asked.
;He suffered some serious financial reverses.
;The reverse of a mountain is the area of rain shadow.
;The arms race has gone into reverse.
;
(defrule reverse2
(declare (salience 4800))
(id-root ?id reverse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ulata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reverse.clp 	reverse2   "  ?id "  ulata )" crlf))
)

;"reverse","VT","1.ulatanA"
;The gate was open,so she reversed in.
;The Judge reversed the decision of a lower court.
;They are trying to reverse the decline of their father's company.
;
