
(defrule gulp0
(declare (salience 5000))
(id-root ?id gulp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nigalanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gulp.clp 	gulp0   "  ?id "  nigalanA )" crlf))
)

;"gulp","N","1.nigalanA"
;I drank the full glass of water in one gulp.
;
(defrule gulp1
(declare (salience 4900))
(id-root ?id gulp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nigala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gulp.clp 	gulp1   "  ?id "  nigala_jA )" crlf))
)

;"gulp","V","1.nigala_jAnA"
;I gulped down the tea as I had to rush to the office.
;--"2.gale_na_uwaranA"
;
