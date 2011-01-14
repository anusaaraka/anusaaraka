
(defrule classify0
(declare (salience 5000))
(id-root ?id classify)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id classified )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vargIkqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  classify.clp  	classify0   "  ?id "  vargIkqwa )" crlf))
)

;"classified","Adj","1.vargIkqwa"
;I brought a classified catalogue of library books.
;--"2.gopanIya"
;Classified official information was disclosed to the public.
;
(defrule classify1
(declare (salience 4900))
(id-root ?id classify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vargIkqwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  classify.clp 	classify1   "  ?id "  vargIkqwa_kara )" crlf))
)

;"classify","V","1.vargIkqwa_karanA"
;The books are classified in the library according to the subjects.
;
;
