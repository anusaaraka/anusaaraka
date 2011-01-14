
(defrule pique0
(declare (salience 5000))
(id-root ?id pique)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id piqued )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id KZijAyAhuA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  pique.clp  	pique0   "  ?id "  KZijAyAhuA )" crlf))
)

;"piqued","Adj","1.KZijAyAhuA"
;He was piqued to discover that he had not been invited to the party.
;
(defrule pique1
(declare (salience 4900))
(id-root ?id pique)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KZIja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pique.clp 	pique1   "  ?id "  KZIja )" crlf))
)

;"pique","N","1.KZIja"
;Out of pique, the deterioration of society is increasing.
;
(defrule pique2
(declare (salience 4800))
(id-root ?id pique)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KIja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pique.clp 	pique2   "  ?id "  KIja )" crlf))
)

;"pique","V","1.KIja"
