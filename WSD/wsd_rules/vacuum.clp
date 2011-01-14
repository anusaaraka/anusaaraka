
(defrule vacuum0
(declare (salience 5000))
(id-root ?id vacuum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SUnya_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vacuum.clp 	vacuum0   "  ?id "  SUnya_sWAna )" crlf))
)

;"vacuum","N","1.SUnya_sWAna"
;Vacuum prevents oxidation
;
(defrule vacuum1
(declare (salience 4900))
(id-root ?id vacuum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirvAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vacuum.clp 	vacuum1   "  ?id "  nirvAwa )" crlf))
)

;"vacuum","V","1.nirvAwa"
;Create a vacuum inside the container.
;--"2.KAlIpana"
;The death fo her son has created a vaccum in her life.
;
