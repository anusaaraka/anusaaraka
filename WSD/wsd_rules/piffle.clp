
(defrule piffle0
(declare (salience 5000))
(id-root ?id piffle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id piffling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mahawwvahIna_bAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  piffle.clp  	piffle0   "  ?id "  mahawwvahIna_bAwa )" crlf))
)

;"piffling","Adj","1.mahawwvahIna bAwa"
;She always comes to me with piffling complaints.
;
(defrule piffle1
(declare (salience 4900))
(id-root ?id piffle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakavAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  piffle.clp 	piffle1   "  ?id "  bakavAsa )" crlf))
)

;"piffle","N","1.bakavAsa"
;Romila talks  all piffle.
;
;