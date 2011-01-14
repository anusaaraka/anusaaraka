
(defrule vest0
(declare (salience 5000))
(id-root ?id vest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMgaraKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vest.clp 	vest0   "  ?id "  aMgaraKA )" crlf))
)

;"vest","N","1.aMgaraKA"
;He is wearing a vest under a shirt 
;
(defrule vest1
(declare (salience 4900))
(id-root ?id vest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra_praxAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vest.clp 	vest1   "  ?id "  aXikAra_praxAna_kara )" crlf))
)

;"vest","VTI","1.aXikAra_praxAna_karanA"
;The principal vested a student leader with authority
;
