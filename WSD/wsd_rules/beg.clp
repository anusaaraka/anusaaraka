

;Added by Meena(18.3.10)
;As the Master grew old and infirm , the disciples begged him not to die . 
(defrule beg0
(declare (salience 5000))
(id-root ?id beg)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vinawI_kara))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beg.clp       beg0   "  ?id "  vinawI_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  beg.clp      beg0   "  ?id " se )" crlf)
)
)

