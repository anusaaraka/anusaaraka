
(defrule decide0
(declare (salience 5000))
(id-root ?id decide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id decided )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id niSciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  decide.clp  	decide0   "  ?id "  niSciwa )" crlf))
)

;"decided","Adj","1.niSciwa"
;He has decided views about that book.
;
(defrule decide1
(declare (salience 4900))
(id-root ?id decide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niScaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decide.clp 	decide1   "  ?id "  niScaya_kara )" crlf))
)

;"decide","V","1.niScaya karanA"
;He was not able to decide whether he should go for the movie.
;--"2.nirNaya xenA"
;The judge has to decide about the case tommorow.
;--"3.nirNaya waka pahuzcanA"
;The torture at the office finally made her decide to leave the job.
;
;
