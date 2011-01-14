
(defrule nark0
(declare (salience 5000))
(id-root ?id nark)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id narked )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gussA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  nark.clp  	nark0   "  ?id "  gussA )" crlf))
)

;"narked","Adj","1.gussA"
;I was narked at my friend for not attending the meeting.
;
(defrule nark1
(declare (salience 4900))
(id-root ?id nark)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pulisa_ko_gupwa_bAweM_bawAne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nark.clp 	nark1   "  ?id "  pulisa_ko_gupwa_bAweM_bawAne_vAlA )" crlf))
)

;"nark","N","1.pulisa_ko_gupwa_bAweM_bawAne_vAlA"
;The nark changed his name to protect his identity.
;The nark gave the information to the police inspector.
;
;