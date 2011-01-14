
(defrule spontaneous0
(declare (salience 5000))
(id-root ?id spontaneous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahaja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spontaneous.clp 	spontaneous0   "  ?id "  sahaja )" crlf))
)

(defrule spontaneous1
(declare (salience 4900))
(id-root ?id spontaneous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manamAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spontaneous.clp 	spontaneous1   "  ?id "  manamAnI )" crlf))
)

;"spontaneous","Adj","1.manamAnI"
;He gave a spontaneous offer of help.
;
;
