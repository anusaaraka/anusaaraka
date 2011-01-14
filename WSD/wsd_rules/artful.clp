
(defrule artful0
(declare (salience 5000))
(id-root ?id artful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAlAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  artful.clp 	artful0   "  ?id "  cAlAka )" crlf))
)

(defrule artful1
(declare (salience 4900))
(id-root ?id artful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAlAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  artful.clp 	artful1   "  ?id "  cAlAka )" crlf))
)

;"artful","Adj","1.cAlAka"
;He is quite an artful devil.
;--"2.kuSalawApUrvaka"
;He played an artful trick on her.
;
;
