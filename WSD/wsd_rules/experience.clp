
(defrule experience0
(declare (salience 5000))
(id-root ?id experience)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id experienced )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id anuBavI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  experience.clp  	experience0   "  ?id "  anuBavI )" crlf))
)

;"experienced","Adj","1.anuBavI"
;She is an experienced teacher.
;
(defrule experience1
(declare (salience 4900))
(id-root ?id experience)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuBava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  experience.clp 	experience1   "  ?id "  anuBava )" crlf))
)

;"experience","N","1.anuBava"
;She has 1.years of teaching experience.
;
(defrule experience2
(declare (salience 4800))
(id-root ?id experience)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuBava_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  experience.clp 	experience2   "  ?id "  anuBava_kara )" crlf))
)

;"experience","VT","1.anuBava_karanA"
;I experienced a brief moment of terror while watching the movie.
;
