
(defrule bob0
(declare (salience 5000))
(id-root ?id bob)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bobbed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Cote_bAla_vAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bob.clp  	bob0   "  ?id "  Cote_bAla_vAlI )" crlf))
)

;"bobbed","Adj","1.Cote_bAla_vAlI"
;She sports a bobbed hairstyle.
;
(defrule bob1
(declare (salience 4900))
(id-root ?id bob)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cote_bAla_raKane_kA_kisma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bob.clp 	bob1   "  ?id "  Cote_bAla_raKane_kA_kisma )" crlf))
)

;"bob","N","1.Cote_bAla_raKane_kA_kisma"
; Bobcut was a very popular hairstyle in the sixties.
;
(defrule bob2
(declare (salience 4800))
(id-root ?id bob)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_nIce_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bob.clp 	bob2   "  ?id "  Upara_nIce_kara )" crlf))
)

(defrule bob3
(declare (salience 4700))
(id-root ?id bob)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_nIce_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bob.clp 	bob3   "  ?id "  Upara_nIce_ho )" crlf))
)

;"bob","V","1.Upara_nIce_karanA[honA]"
;He bobbed his head in agreement.
;
