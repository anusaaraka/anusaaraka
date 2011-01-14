
(defrule kind0
(declare (salience 5000))
(id-root ?id kind)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id kinds)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id prakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  kind.clp  	kind0   "  ?id "  prakAra )" crlf))
)

(defrule kind1
(declare (salience 4900))
(id-root ?id kind)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) a )
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kind.clp 	kind1   "  ?id "  prakAra )" crlf))
)

(defrule kind2
(declare (salience 4800))
(id-root ?id kind)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xayAlupana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kind.clp 	kind2   "  ?id "  xayAlupana )" crlf))
)

(defrule kind3
(declare (salience 4700))
(id-root ?id kind)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xayAlu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kind.clp 	kind3   "  ?id "  xayAlu )" crlf))
)

(defrule kind4
(declare (salience 4600))
(id-root ?id kind)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kind.clp 	kind4   "  ?id "  prakAra )" crlf))
)

;default_sense && category=noun	prakAra	0
;"kind","N","1.prakAra"
;He is a very different kind of person.
;--"2.vaswu"
;Either pay in cash or in kind.
;
;
