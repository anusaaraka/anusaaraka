
(defrule apply0
(declare (salience 5000))
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id applied )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vyAvahArika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  apply.clp  	apply0   "  ?id "  vyAvahArika )" crlf))
)

;"applied","Adj","1.vyAvahArika"
;In every text book applied grammar is given at the end of the lessons
;for practice .
;
(defrule apply1
(declare (salience 4900))
(id-root ?id apply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAgU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  apply.clp 	apply1   "  ?id "  lAgU_kara )" crlf))
)

;"apply","VI","1.lAgU_karanA"
;"apply","V","1.lAgU_kara[ho]"
;Traffic rules must be applied strictly .
;--"2.lagAnA"
;Apply 'BARNOL' on the burns .
;--"3.prayoga_meM_lAnA"
;Apply the breaks wherever necessary .
;Unsocial elements apply political pressure && go unpunished .
;--"4.Avexana_pawra_xenA"
;Apply to the chairman for the post of cashier .
;
