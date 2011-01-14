
(defrule uniform0
(declare (salience 5000))
(id-root ?id uniform)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekasamAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  uniform.clp 	uniform0   "  ?id "  ekasamAna )" crlf))
)

;"uniform","Adj","1.ekasamAna"
;One can see uniform tall white buildings on MG street.
;
(defrule uniform1
(declare (salience 4900))
(id-root ?id uniform)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaNavesa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  uniform.clp 	uniform1   "  ?id "  gaNavesa )" crlf))
)

;default_sense && category=noun	eka_rUpa_kA_vaswra	0
;"uniform","N","1.eka_rUpa_kA_vaswra"
;Children wear uniform in school.
;
