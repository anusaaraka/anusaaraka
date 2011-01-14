
(defrule instant0
(declare (salience 5000))
(id-root ?id instant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wawkAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  instant.clp 	instant0   "  ?id "  wawkAla )" crlf))
)

(defrule instant1
(declare (salience 4900))
(id-root ?id instant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Asanna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  instant.clp 	instant1   "  ?id "  Asanna )" crlf))
)

;default_sense && category=noun	kRaNa	0
;"instant","N","1.kRaNa"
;Come here this instant.
;
;
