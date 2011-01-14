
(defrule vault0
(declare (salience 5000))
(id-root ?id vault)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id vaulted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id meharAbI_Cawa_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  vault.clp  	vault0   "  ?id "  meharAbI_Cawa_kA )" crlf))
)

;"vaulted","Adj","1.meharAbI_Cawa_kA"
;We looked at the vaulted roof of the Notre Dame in Paris
;
(defrule vault1
(declare (salience 4900))
(id-root ?id vault)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meharAbI_Cawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vault.clp 	vault1   "  ?id "  meharAbI_Cawa )" crlf))
)

;"vault","N","1.meharAbI_Cawa"
;Beautiful pictures are carved on the vault
;--"2.wahaKAnA"
;Wine is stored in the vaults
;--"1.CalAzga"
;The clown took vault over the rope
;
(defrule vault2
(declare (salience 4800))
(id-root ?id vault)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagge_ke_sahAre_kUxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vault.clp 	vault2   "  ?id "  lagge_ke_sahAre_kUxa )" crlf))
)

;"vault","VTI","1.lagge_ke_sahAre_kUxanA"
;The athelete vaulted over the pole
;
