
(defrule reveal0
(declare (salience 5000))
(id-root ?id reveal)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id revealing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xiKAnevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  reveal.clp  	reveal0   "  ?id "  xiKAnevAlA )" crlf))
)

;"revealing","Adj","1.xiKAnevAlA"
;This document is extremely revealing.
;Mostly she wears revealing dresses.
;
(defrule reveal1
(declare (salience 4900))
(id-root ?id reveal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakata_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reveal.clp 	reveal1   "  ?id "  prakata_kara )" crlf))
)

;"reveal","V","1.prakata karanA"
;She can not reveal her secret to any one.
;Her evidence revealed the accused to be innocent.
;
;