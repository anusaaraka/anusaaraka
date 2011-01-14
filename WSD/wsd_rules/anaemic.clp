
(defrule anaemic0
(declare (salience 5000))
(id-root ?id anaemic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurbala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anaemic.clp 	anaemic0   "  ?id "  xurbala )" crlf))
)

(defrule anaemic1
(declare (salience 4900))
(id-root ?id anaemic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamajora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anaemic.clp 	anaemic1   "  ?id "  kamajora )" crlf))
)

;"anaemic","Adj","1.kamajora"
;Indian atheletes gave an anaemic performance in the World Atheletic Meet.
;--"2.rakwABAva_se_pIdZiwa"
;She is an anaemic girl.
;
;
