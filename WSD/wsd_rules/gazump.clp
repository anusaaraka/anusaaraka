
(defrule gazump0
(declare (salience 5000))
(id-root ?id gazump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id gazumping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sOxe_ke_paScAwa_kImawa_kI_baDZawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  gazump.clp  	gazump0   "  ?id "  sOxe_ke_paScAwa_kImawa_kI_baDZawa )" crlf))
)

;"gazumping","N","1.sOxe_ke_paScAwa_kImawa_kI_baDZawa"
;Gazumping is not a good practice.
;
(defrule gazump1
(declare (salience 4900))
(id-root ?id gazump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sOxe_ke_paScAwa_kImawa_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gazump.clp 	gazump1   "  ?id "  sOxe_ke_paScAwa_kImawa_baDZA )" crlf))
)

;"gazump","V","1.sOxe_ke_paScAwa_kImawa_baDZAnA"
;We had been cheated,for the house we bought was gazumped.
;
;