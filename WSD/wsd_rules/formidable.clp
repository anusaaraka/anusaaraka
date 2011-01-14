
(defrule formidable0
(declare (salience 5000))
(id-root ?id formidable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  formidable.clp 	formidable0   "  ?id "  vikata )" crlf))
)

(defrule formidable1
(declare (salience 4900))
(id-root ?id formidable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurjeya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  formidable.clp 	formidable1   "  ?id "  xurjeya )" crlf))
)

;"formidable","Adj","1.xurjeya"
;Solving rider && theorems is a formidable task for me.
;
;
