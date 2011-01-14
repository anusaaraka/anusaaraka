
(defrule parrot0
(declare (salience 5000))
(id-root ?id parrot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wowA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parrot.clp 	parrot0   "  ?id "  wowA )" crlf))
)

;"parrot","N","1.wowA"
;Parrot's words are very sweet to listen.
;
(defrule parrot1
(declare (salience 4900))
(id-root ?id parrot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXAnukaraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parrot.clp 	parrot1   "  ?id "  aMXAnukaraNa_kara )" crlf))
)

;"parrot","V","1.aMXAnukaraNa_karanA"
;My youngest sister is parroting me to talk in my style.
;
