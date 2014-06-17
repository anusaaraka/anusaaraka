;@@@ Added by Preeti(25-2-14)
;There will be rain later in central and eastern parts of the country.[Oxford Advanced Learner's Dictionary]
;xeSa ke maXyavarwI Ora pUrvI BAgoM meM bAxa meM varRA hogI.
(defrule central1
(declare (salience 1000))
(id-root ?id central)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 area|part)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maXyavarwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  central.clp 	central1   "  ?id "  maXyavarwI )" crlf))
)

;@@@ Added by Preeti(25-2-14)
;The flat is very central - just five minutes from Princes Street.[Oxford Advanced Learner's Dictionary] 
;PlEta prinsesa strIta se sirPa pAzca minata hE- awyaMwa najaxIka hE.
(defrule central2
(declare (salience 1000))
(id-root ?id central)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaka  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id najaxIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  central.clp 	central2   "  ?id "  najaxIka )" crlf))
)

;@@@ Added by Preeti(25-2-14)
;Prevention also plays a central role in traditional medicine. [Oxford Advanced Learner's Dictionary] 
;pAraMparika ORaXI meM roka-WAma BI eka pramuKa BUmikA niBAI hE.
(defrule central0
(id-root ?id central)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pramuKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  central.clp 	central0   "  ?id "   pramuKa)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_central1
(declare (salience 1000))
(id-root ?id central)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 area|part)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maXyavarwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " central.clp   sub_samA_central1   "   ?id " maXyavarwI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_central1
(declare (salience 1000))
(id-root ?id central)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 area|part)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maXyavarwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " central.clp   obj_samA_central1   "   ?id " maXyavarwI )" crlf))
)
