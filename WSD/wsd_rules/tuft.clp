
(defrule tuft0
(declare (salience 5000))
(id-root ?id tuft)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tufted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id guvCA_banA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  tuft.clp  	tuft0   "  ?id "  guvCA_banA_huA )" crlf))
)

;"tufted","Adj","guvCA_banA_huA"
;He is selling a tufted peacock's feathers.
;
(defrule tuft1
(declare (salience 4900))
(id-root ?id tuft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMKoM_GAsa_bAloM_Axi_kA_gucCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tuft.clp 	tuft1   "  ?id "  paMKoM_GAsa_bAloM_Axi_kA_gucCA )" crlf))
)

;"tuft","N","1.paMKoM_GAsa_bAloM_Axi_kA_gucCA"
;He tied his tuft.
;
(defrule tuft2
(declare (salience 4800))
(id-root ?id tuft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gucCA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tuft.clp 	tuft2   "  ?id "  gucCA_banA )" crlf))
)

;"tuft","VT","1.gucCA_banAnA"
;She had to tuft her dishevelled hair.
;
