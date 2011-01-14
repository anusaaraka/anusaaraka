
(defrule acute0
(declare (salience 5000))
(id-root ?id acute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wivra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  acute.clp 	acute0   "  ?id "  wivra )" crlf))
)

(defrule acute1
(declare (salience 4900))
(id-root ?id acute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIkRNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  acute.clp 	acute1   "  ?id "  wIkRNa )" crlf))
)

;"acute","Adj","1.wIkRNa"
;Dogs have an acute sense of smell.
;--"2.kuSAgra"
;Her judgment is acute.
;--"3.vikata"
;There is an acute shortage of water in our area.
;
;
