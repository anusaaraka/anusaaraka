
(defrule test0
(declare (salience 5000))
(id-root ?id test)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parIkRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  test.clp 	test0   "  ?id "  parIkRA )" crlf))
)

;"test","N","1.parIkRA"
;The space programme was a test for our abilities.
;
(defrule test1
(declare (salience 4900))
(id-root ?id test)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAzca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  test.clp 	test1   "  ?id "  jAzca_kara )" crlf))
)

;"test","VT","1.jAzca_karanA"
;Mohan was tested && interviewed for the officer's post.
;
