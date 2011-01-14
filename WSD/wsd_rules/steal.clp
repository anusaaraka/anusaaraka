
(defrule steal0
(declare (salience 5000))
(id-root ?id steal)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id stolen )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id curAyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  steal.clp  	steal0   "  ?id "  curAyA_huA )" crlf))
)

;"stolen","V","1.curAyA huA"
;The pencil, which she is using, was stolen from my bag.
;
(defrule steal1
(declare (salience 4900))
(id-root ?id steal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saswA_vikraya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steal.clp 	steal1   "  ?id "  saswA_vikraya )" crlf))
)

;"steal","N","1.saswA_vikraya"
;
(defrule steal2
(declare (salience 4800))
(id-root ?id steal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id corI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steal.clp 	steal2   "  ?id "  corI_kara )" crlf))
)

;"steal","V","1.corI_karanA"
;John  stole a cookei from the cookie's store.
;--"2.cupake_se_AnA_jAnA"
;The morning light was stealing through the window.
;
