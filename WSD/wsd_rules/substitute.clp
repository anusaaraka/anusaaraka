;;Example:-You can substitute oil for butter in this recipe.

(defrule substitute1
(declare (salience 5000))
(id-root ?id substitute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayoga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  substitute.clp     substitute1   "  ?id " prayoga_kara)" crlf))
)


