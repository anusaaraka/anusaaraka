
(defrule urgency0
(declare (salience 5000))
(id-root ?id urgency)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyAvaSakawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  urgency.clp 	urgency0   "  ?id "  awyAvaSakawA )" crlf))
)

(defrule urgency1
(declare (salience 4900))
(id-root ?id urgency)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyAvaSyakawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  urgency.clp 	urgency1   "  ?id "  awyAvaSyakawA )" crlf))
)

;"urgency","Adj","1.awyAvaSyakawA"
;There was a note of urgency in her voice.
;
;