
(defrule cream0
(declare (salience 5000))
(id-root ?id cream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id malAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cream.clp 	cream0   "  ?id "  malAI )" crlf))
)

;"cream","N","1.malAI/2.sarvowma_aMSa/sAra/"
;The cream of England's young men were killed in the Great War
;--"2.eka_prakAra_kI_sOnxaryavarXaka_vaswu"
;She regularly applies the cold cream in winter. 
;
(defrule cream1
(declare (salience 4900))
(id-root ?id cream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id malAI_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cream.clp 	cream1   "  ?id "  malAI_bana )" crlf))
)

;"cream","VI","1.malAI_bananA"
;skim cream from the surface of milk
;
(defrule cream2
(declare (salience 4800))
(id-root ?id cream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id malAI_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cream.clp 	cream2   "  ?id "  malAI_uwAra )" crlf))
)

;"cream","VT","1.malAI_uwAranA/sawa_nikAla_lenA"
;skim cream from the surface of milk
;

;@@@ Added by Preeti(-1-14)
;Apply the suntan cream liberally to exposed areas every three hours and after swimming. [By mail]
;prawyeka wIna GaNte meM Ora wErane ke bAxa bAhya wvacA para KUba sArA sanatEna krIma lagAeM. 
(defrule cream3
(declare (salience 5050))
(id-root ?id cream)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id krIma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cream.clp 	cream3   "  ?id "  krIma )" crlf))
)