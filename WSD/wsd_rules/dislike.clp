
(defrule dislike0
(declare (salience 5000))
(id-root ?id dislike)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aruci))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dislike.clp 	dislike0   "  ?id "  aruci )" crlf))
)

;"dislike","N","1.aruci"
;My dislike for him was instinctive.
;
(defrule dislike1
(declare (salience 4900))
(id-root ?id dislike)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pasaMxa_na_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dislike.clp 	dislike1   "  ?id "  pasaMxa_na_kara )" crlf))
)

;"dislike","VT","1.pasaMxa_na_karanA"
;I really dislike this salesman.
;
