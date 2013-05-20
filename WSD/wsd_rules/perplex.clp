
(defrule perplex0
(declare (salience 5000))
(id-root ?id perplex)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id perplexing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jatila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  perplex.clp  	perplex0   "  ?id "  jatila )" crlf))
)

;"perplexing","Adj","1.jatila"
;Please don't ask perplexing questions.
;
(defrule perplex1
(declare (salience 4900))
(id-root ?id perplex)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id perplexed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vyAkula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  perplex.clp  	perplex1   "  ?id "  vyAkula )" crlf))
)

;"perplexed","Adj","1.vyAkula"
;She tried to explain her behaviour to her perplexed parents.
;
;
(defrule perplex2
(declare (salience 4800))
(id-root ?id perplex)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id perplexed )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyAkula_kara))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  perplex.clp  	perplex2   "  ?id "  vyAkula_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  perplex.clp    perplex2   "  ?id "  yA )" crlf))
)

;
(defrule perplex3
(declare (salience 4700))
(id-root ?id perplex)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyAkula_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  perplex.clp 	perplex3   "  ?id "  vyAkula_kara )" crlf))
)

;"perplex","V","1.vyAkula karanA"
;I was perplexed by his rude behaviour.
;
;
