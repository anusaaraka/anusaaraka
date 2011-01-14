
(defrule abridge0
(declare (salience 5000))
(id-root ?id abridge)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id abridged )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saMkRipwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  abridge.clp  	abridge0   "  ?id "  saMkRipwa )" crlf))
)

;"abridged","Adj","1.saMkRipwa"
;I read the abridged edition of Dickens's `Oliver Twist'.
;
(defrule abridge1
(declare (salience 4900))
(id-root ?id abridge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkRepaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  abridge.clp 	abridge1   "  ?id "  saMkRepaNa_kara )" crlf))
)

;"abridge","VT","1.saMkRepaNa_karanA"
;The book was abridged for children.
;
;
