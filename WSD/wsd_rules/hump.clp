
(defrule hump0
(declare (salience 5000))
(id-root ?id hump)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id humped )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kubadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hump.clp  	hump0   "  ?id "  kubadA )" crlf))
)

;"humped","Adj","1.kubadA"
;usa 'humped' bUDZI ko bacce ciDZAwe hEM.
;
(defrule hump1
(declare (salience 4900))
(id-root ?id hump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mittI_kA_tIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hump.clp 	hump1   "  ?id "  mittI_kA_tIlA )" crlf))
)

;"hump","N","1.mittI_kA_tIlA"
;kone meM 'hump'padA hE.
;
(defrule hump2
(declare (salience 4800))
(id-root ?id hump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUbadZa_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hump.clp 	hump2   "  ?id "  kUbadZa_uTA )" crlf))
)

;"hump","V","1.kUbadZa_uTAnA/prayAsa_karanA"
;mEne ParnIcara ko sArA xina 'humping'karawA rahA.
;
