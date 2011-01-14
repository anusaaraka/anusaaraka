
(defrule domestic0
(declare (salience 5000))
(id-root ?id domestic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GarelU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  domestic.clp 	domestic0   "  ?id "  GarelU )" crlf))
)

;"domestic","Adj","1.GarelU"
;Domestic issues such as tax rate && highway construction have to be first tackled.
;Domestic servant
;Domestic worries
;--"2.pAlawU"
;dog is a domestic animal.
;5.  domestic wine
;
(defrule domestic1
(declare (salience 4900))
(id-root ?id domestic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAkara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  domestic.clp 	domestic1   "  ?id "  cAkara )" crlf))
)

;"domestic","N","1.cAkara/Gara_kA_nOkara"
