
(defrule clown0
(declare (salience 5000))
(id-root ?id clown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jokara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clown.clp 	clown0   "  ?id "  jokara )" crlf))
)

;"clown","N","1.jokara"
;Clowns are there in circus to make the spectators laugh.
;--"2.mUrKa"
;Mohan is really clown at times.
;
(defrule clown1
(declare (salience 4900))
(id-root ?id clown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUrKawApUrNa_vyavahAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clown.clp 	clown1   "  ?id "  mUrKawApUrNa_vyavahAra_kara )" crlf))
)

;"clown","V","1.mUrKawApUrNa_vyavahAra_karanA"
;Mohan sometimes clowns around.
;
