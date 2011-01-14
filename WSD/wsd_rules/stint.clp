
(defrule stint0
(declare (salience 5000))
(id-root ?id stint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma_karane_kA_samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stint.clp 	stint0   "  ?id "  kAma_karane_kA_samaya )" crlf))
)

;"stint","N","1.kAma_karane_kA_samaya"
;My mother had a two-year stint as a principal in a school.
;
(defrule stint1
(declare (salience 4900))
(id-root ?id stint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMjUsI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stint.clp 	stint1   "  ?id "  kaMjUsI_kara )" crlf))
)

;"stint","V","1.kaMjUsI_karanA"
;You shouldn't stint on giving money to the beggar.
;
