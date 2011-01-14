
(defrule muse0
(declare (salience 5000))
(id-root ?id muse)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id musing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cinwana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  muse.clp  	muse0   "  ?id "  cinwana )" crlf))
)

;"musing","N","1.cinwana"
(defrule muse1
(declare (salience 4900))
(id-root ?id muse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id _vicAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  muse.clp 	muse1   "  ?id "  _vicAra_kara )" crlf))
)

;"muse","V","1._vicAra_karanA"
;At night he likes to sit musing on the events of the day.
;--"2.cinwana_karanA"
;
