
(defrule cheerful0
(declare (salience 5000))
(id-root ?id cheerful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AnaMxiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheerful.clp 	cheerful0   "  ?id "  AnaMxiwa )" crlf))
)

(defrule cheerful1
(declare (salience 4900))
(id-root ?id cheerful)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ananxiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheerful.clp 	cheerful1   "  ?id "  Ananxiwa )" crlf))
)

;"cheerful","Adj","1.Ananxiwa"
;I like her cheerful nature.
;
;
