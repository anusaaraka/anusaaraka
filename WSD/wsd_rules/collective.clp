
(defrule collective0
(declare (salience 5000))
(id-root ?id collective)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmUhika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  collective.clp 	collective0   "  ?id "  sAmUhika )" crlf))
)

;"collective","Adj","1.sAmUhika"
;We have a collective leadership.
;
(defrule collective1
(declare (salience 4900))
(id-root ?id collective)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samUha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  collective.clp 	collective1   "  ?id "  samUha )" crlf))
)

;"collective","N","1.samUha"
;A workers collective held a meeting.
;
