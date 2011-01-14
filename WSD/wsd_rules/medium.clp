
(defrule medium0
(declare (salience 5000))
(id-root ?id medium)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAXyama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  medium.clp 	medium0   "  ?id "  mAXyama )" crlf))
)

(defrule medium1
(declare (salience 4900))
(id-root ?id medium)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maXyama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  medium.clp 	medium1   "  ?id "  maXyama )" crlf))
)

;"medium","Adj","1.maXya"
;I don't like too bright or too light colours, medium suits me fine.
;
;
