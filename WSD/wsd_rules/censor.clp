
(defrule censor0
(declare (salience 5000))
(id-root ?id censor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirIkRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  censor.clp 	censor0   "  ?id "  nirIkRaka )" crlf))
)

;"censor","N","1.nirIkRaka/guNaxoRa_vivecaka"
;The film will be certified by the Board of Film Censors.
;
(defrule censor1
(declare (salience 4900))
(id-root ?id censor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta_CAzta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  censor.clp 	censor1   "  ?id "  kAta_CAzta_kara )" crlf))
)

;"censor","V","1.kAta_CAzta_karanA"
;Many communal scenes were censored from the film.
;
