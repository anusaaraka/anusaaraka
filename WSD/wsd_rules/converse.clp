
(defrule converse0
(declare (salience 5000))
(id-root ?id converse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viparIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  converse.clp 	converse0   "  ?id "  viparIwa )" crlf))
)

;"converse","Adj","1.viparIwa"
;`parental' && `filial' are converse terms.
;Her parents hold converse views.
;
(defrule converse1
(declare (salience 4900))
(id-root ?id converse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viparIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  converse.clp 	converse1   "  ?id "  viparIwa )" crlf))
)

;"converse","N","1.viparIwa"
;She thinks she's attractive to boys,though in fact converse is the case.
;
(defrule converse2
(declare (salience 4800))
(id-root ?id converse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vArwAlApa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  converse.clp 	converse2   "  ?id "  vArwAlApa_kara )" crlf))
)

;"converse","VI","1.vArwAlApa_karanA"
;What were you conversing with that boy.
;I conversed with the co-traveller on various topics.
;
