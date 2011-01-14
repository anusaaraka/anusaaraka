
(defrule mental0
(declare (salience 5000))
(id-root ?id mental)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnasika-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mental.clp 	mental0   "  ?id "  mAnasika- )" crlf))
)

(defrule mental1
(declare (salience 4900))
(id-root ?id mental)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnasika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mental.clp 	mental1   "  ?id "  mAnasika )" crlf))
)

;"mental","Adj","1.mAnasika"
;He is going through lot of mental anguish.
;He has a mental problem.
;
;
