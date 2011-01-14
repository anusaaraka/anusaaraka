;Added by Meena(19.4.10)
;He always bitches about Tanya.
(defrule bitch0
(declare (salience 5500))
(id-root ?id bitch)
?mng <-(meaning_to_be_decided ?id)
(kriyA-about_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burAI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name_id-wsd_root_mng   " ?*wsd_dir* " bitch.clp  bitch0  "  ?id "    burAI_kara  )" crlf))
)


