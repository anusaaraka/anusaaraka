
(defrule joke0
(declare (salience 5000))
(id-root ?id joke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cutakulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  joke.clp 	joke0   "  ?id "  cutakulA )" crlf))
)

(defrule joke1
(declare (salience 4900))
(id-root ?id joke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majZAka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  joke.clp 	joke1   "  ?id "  majZAka_kara )" crlf))
)

;"joke","V","1.majZAka_karanA"
;I am only joking.
;
;