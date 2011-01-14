
(defrule staple0
(declare (salience 5000))
(id-root ?id staple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKya_aMSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  staple.clp 	staple0   "  ?id "  muKya_aMSa )" crlf))
)

;"staple","Adj","1.muKya_aMSa"
;carbohydrate are the staple components of our diet.
;
(defrule staple1
(declare (salience 4900))
(id-root ?id staple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id stepala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  staple.clp 	staple1   "  ?id "  stepala )" crlf))
)

;"staple","N","1.stepala"
;These documents need staple.
;
(defrule staple2
(declare (salience 4800))
(id-root ?id staple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id stepala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  staple.clp 	staple2   "  ?id "  stepala_kara )" crlf))
)

;"staple","V","1.stepala_karanA"
;I stapled all my test paper.
;
