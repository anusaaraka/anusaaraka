
(defrule merit0
(declare (salience 5000))
(id-root ?id merit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id merited )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id yogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  merit.clp  	merit0   "  ?id "  yogya )" crlf))
)

;"merited","Adj","1.yogya"
;She is a merited candidate.
;
(defrule merit1
(declare (salience 4900))
(id-root ?id merit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yogyawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  merit.clp 	merit1   "  ?id "  yogyawA )" crlf))
)

;default_sense && category=noun	yogyawA	0
;"merit","N","1.yogyawA"
;He has obtained this job on merit only.
;
;