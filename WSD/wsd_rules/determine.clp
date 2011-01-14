
(defrule determine0
(declare (salience 5000))
(id-root ?id determine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id determined )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kqwasaMkalpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  determine.clp  	determine0   "  ?id "  kqwasaMkalpa )" crlf))
)

;"determined","Adj","1.kqwasaMkalpa"
;--"2.xqDZa"
;It was tough for the army to fight a determined enemy.
;
(defrule determine1
(declare (salience 4900))
(id-root ?id determine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niScaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  determine.clp 	determine1   "  ?id "  niScaya_kara )" crlf))
)

;default_sense && category=verb	nirXAraNa_karanA/niScaya_kara	0
;"determine","VT","1.nirXAraNa_karanA/niScaya_karanA"
;Examination marks can determine your career.
;
;
