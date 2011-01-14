
(defrule prompt0
(declare (salience 5000))
(id-root ?id prompt)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id prompting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id anuboXana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  prompt.clp  	prompt0   "  ?id "  anuboXana )" crlf))
)

;"prompting","N","1.anuboXana"
;The prompting could help the actor to give better performance.
;
(defrule prompt1
(declare (salience 4900))
(id-root ?id prompt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wawkAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prompt.clp 	prompt1   "  ?id "  wawkAla )" crlf))
)

;"prompt","Adj","1.wawkAla"
;I gave a prompt reply to my friend.
;--"2.uxyawa"
;Ram is very prompt in paying income tax.
;
(defrule prompt2
(declare (salience 4800))
(id-root ?id prompt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prompt.clp 	prompt2   "  ?id "  TIka )" crlf))
)

;"prompt","Adv","1.TIka"
;I will be have at 6'o clock prompt.
;
(defrule prompt3
(declare (salience 4700))
(id-root ?id prompt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuboXana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prompt.clp 	prompt3   "  ?id "  anuboXana )" crlf))
)

;"prompt","N","1.anuboXana"
;Amateur actors need prompt in the stage.
;
(defrule prompt4
(declare (salience 4600))
(id-root ?id prompt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id preriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prompt.clp 	prompt4   "  ?id "  preriwa_kara )" crlf))
)

;"prompt","V","1.preriwa_karanA"
;The ban on taking alcohol was prompted by complaints of middle class women.
;
