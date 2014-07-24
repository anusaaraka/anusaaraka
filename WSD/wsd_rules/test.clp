
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

;@@@ Added by Prachi Rathore 7-1-14
;They played well in the first Test against South Africa. 
(defrule test2
(declare (salience 5500))
(id-root ?id test)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
(id-root ?id1 play|win)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id testa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  test.clp 	test2   "  ?id "  testa )" crlf))
)

;@@@ Added by Prachi Rathore 7-1-14
;The local elections will be a good test of the government's popularity.
(defrule test3
(declare (salience 5000))
(id-root ?id test)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI  ?id ?)(viSeRya-viSeRaNa   ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parIkRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  test.clp 	test3   "  ?id "  parIkRaNa )" crlf))
)


