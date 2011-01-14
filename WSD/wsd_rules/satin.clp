
(defrule satin0
(declare (salience 5000))
(id-root ?id satin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  satin.clp 	satin0   "  ?id "  cikanA )" crlf))
)

;"satin","Adj","1.cikanA"
;The paint has a satin finish.
;
(defrule satin1
(declare (salience 4900))
(id-root ?id satin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAtana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  satin.clp 	satin1   "  ?id "  sAtana )" crlf))
)

;"satin","N","1.sAtana"
;Rani wore white satin dress on her birthday.
;
