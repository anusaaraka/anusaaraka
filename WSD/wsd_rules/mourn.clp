
(defrule mourn0
(declare (salience 5000))
(id-root ?id mourn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mourning )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Soka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mourn.clp  	mourn0   "  ?id "  Soka )" crlf))
)

;"mourning","N","1.Soka"
;Mourning is seen at the places where someone dies or something unfortunate happens.
;
(defrule mourn1
(declare (salience 4900))
(id-root ?id mourn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Soka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mourn.clp 	mourn1   "  ?id "  Soka_kara )" crlf))
)

;"mourn","V","1.Soka karanA/xuHKI honA"
;The people are mourning because of the death of the old man.
;
;