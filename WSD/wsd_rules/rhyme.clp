
(defrule rhyme0
(declare (salience 5000))
(id-root ?id rhyme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wukabaMxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rhyme.clp 	rhyme0   "  ?id "  wukabaMxI )" crlf))
)

;"rhyme","N","1.wukabaMxI"
;Her all poetries end in rhyming words.
;She made up a little rhyme to amuse the children.
;
(defrule rhyme1
(declare (salience 4900))
(id-root ?id rhyme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wukabaMxI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rhyme.clp 	rhyme1   "  ?id "  wukabaMxI_kara )" crlf))
)

;"rhyme","V","1.wukabaMxI_karanA"
;You can rhyme girl with curl.
;
