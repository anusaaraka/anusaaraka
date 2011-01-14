;Added by Meena(8.6.10)
;At midnight Uttama's telephone rang . 
(defrule rang0
(declare (salience 3000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id rang )
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baja ))
(assert (id-wsd_root ?id ring))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rang.clp      rang0   "  ?id "  baja  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  rang.clp      rang0   "  ?id "  ring )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng    " ?*wsd_dir* "  rang.clp      rang0   "  ?id "  yA )" crlf)
)
)



;Added by Meena(8.6.10)
;He rang the bell in the morning . 
(defrule rang1
(declare (salience 3000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id rang )
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bajA ))
(assert (id-wsd_root ?id ring))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rang.clp      rang1   "  ?id "  bajA  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  rang.clp      rang1   "  ?id "  ring )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng    " ?*wsd_dir* "  rang.clp      rang1   "  ?id "  yA )" crlf)))

