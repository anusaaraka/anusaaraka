
(defrule why0
(declare (salience 5000))
(id-root ?id why)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyoM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  why.clp 	why0   "  ?id "  kyoM )" crlf))
)

(defrule why1
(declare (salience 4900))
(id-root ?id why)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id wh_adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyoM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  why.clp 	why1   "  ?id "  kyoM )" crlf))
)

;"why","Interro","1.kyoM"
;Why did you leave him?.
;
