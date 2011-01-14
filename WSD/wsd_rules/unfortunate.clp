
(defrule unfortunate0
(declare (salience 5000))
(id-root ?id unfortunate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hawaBAgya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unfortunate.clp 	unfortunate0   "  ?id "  hawaBAgya )" crlf))
)

;"unfortunate","Adj","1.hawaBAgya"
;It was an unfortunate trip to the Himalayas.
;
(defrule unfortunate1
(declare (salience 4900))
(id-root ?id unfortunate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurBAgya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unfortunate.clp 	unfortunate1   "  ?id "  xurBAgya )" crlf))
)

;"unfortunate","N","1.xurBAgya"
;Despite all the unfortunates,she is solely supporting her family.
;
