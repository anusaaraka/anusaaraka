
(defrule plenty0
(declare (salience 5000))
(id-root ?id plenty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika_mAwrA_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plenty.clp 	plenty0   "  ?id "  aXika_mAwrA_meM )" crlf))
)

;"plenty","Adv","1.aXika_mAwrA_meM"
;We have plenty more of books to read.
;
(defrule plenty1
(declare (salience 4900))
(id-root ?id plenty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paryApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plenty.clp 	plenty1   "  ?id "  paryApwa )" crlf))
)

;"plenty","N","1.paryApwa"
;We have plenty of time left to do our work.
;
(defrule plenty2
(declare (salience 4800))
(id-root ?id plenty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paryApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plenty.clp 	plenty2   "  ?id "  paryApwa )" crlf))
)

;"plenty","Pron","1.paryApwa"
;The people offered plenty of food to those who were hungry.
;
