
(defrule dare0
(declare (salience 5000))
(id-root ?id dare)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id daring )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sAhasI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dare.clp  	dare0   "  ?id "  sAhasI )" crlf))
)

;"daring","Adj","1.sAhasI"
;David was a daring warrior in his young days.
;
(defrule dare1
(declare (salience 4900))
(id-root ?id dare)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id daring )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vIrawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dare.clp  	dare1   "  ?id "  vIrawA )" crlf))
)

;"daring","N","1.vIrawA/sAhasa"
;Some students have the daring to disobey the teacher.
;
(defrule dare2
(declare (salience 4800))
(id-root ?id dare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAhasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dare.clp 	dare2   "  ?id "  sAhasa )" crlf))
)

(defrule dare3
(declare (salience 4700))
(id-root ?id dare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAhasa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dare.clp 	dare3   "  ?id "  sAhasa_kara )" crlf))
)

;"dare","V","1.sAhasa_karanA"
;How dare you call my lawyer?
;I don't dare call him
;--"2.lalakAranA"
;I dare you!
;
;
