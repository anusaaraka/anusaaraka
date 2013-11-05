
(defrule could0
(declare (salience 5000))
(id-root ?id could)
?mng <-(meaning_to_be_decided ?id)
;(id-word 1 ?id)
(test (eq ?id 1)) ;Commented above line and added test condition by Roja 04-11-13 automatically by a programme.
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  could.clp 	could0   "  ?id "  kyA )" crlf))
)

(defrule could1
(declare (salience 4900))
(id-root ?id could)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sakawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  could.clp 	could1   "  ?id "  sakawA )" crlf))
)

;"could","V","1.kyA{praSnavAcaka}"
;Could I borrow some money from you?
;--"2.sakA/kara_sakawA"
;I wish,I could help you in your crises.
;
