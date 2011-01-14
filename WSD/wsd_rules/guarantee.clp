
(defrule guarantee0
(declare (salience 5000))
(id-root ?id guarantee)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZamAnawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  guarantee.clp 	guarantee0   "  ?id "  jZamAnawa )" crlf))
)

;"guarantee","N","1.jZamAnawa"
;The T.V. has come with a three year guarantee.
;
(defrule guarantee1
(declare (salience 4900))
(id-root ?id guarantee)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZimmA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  guarantee.clp 	guarantee1   "  ?id "  jZimmA_le )" crlf))
)

;"guarantee","VT","1.jZimmA_lenA"
;Going tutions doesn't guarantee you success in the exams.
;
