 ;Added by sheetal(19-02-10)
(defrule killer0
(declare (salience 5000))
(id-root ?id killer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 disease)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GAwaka_roga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  killer.clp       killer0   "  ?id "  GAwaka_roga )" crlf))
)
;Cancer and heart disease are the UK's biggest killers .
 


;Added by Prachi RAthore[21-11-13]
;
(defrule killer2
(declare (salience 5000))
(id-root ?id killer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAwila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  killer.clp       killer2   "  ?id "   kAwila )" crlf))
)

;Added by Prachi RAthore[21-11-13]
(defrule killer3
(declare (salience 4000))
(id-root ?id killer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hawyArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  killer.clp       killer3   "  ?id "   hawyArA )" crlf))
)

;Added by Prachi RAthore[21-11-13]
(defrule killer4
(declare (salience 3000))
(id-root ?id killer)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hawyArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  killer.clp       killer4   "  ?id "   hawyArA )" crlf))
)
