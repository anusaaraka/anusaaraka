
(defrule uppermost0
(declare (salience 5000))
(id-root ?id uppermost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sabase_UcAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  uppermost.clp 	uppermost0   "  ?id "  sabase_UcAz )" crlf))
)

;"uppermost","Adj","1.sabase_UcAz"
;Get me  the uppermost book in the pile
;
(defrule uppermost1
(declare (salience 4900))
(id-root ?id uppermost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarvocca_sWAna_yA_paxa_iwyAxi_me))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  uppermost.clp 	uppermost1   "  ?id "  sarvocca_sWAna_yA_paxa_iwyAxi_me )" crlf))
)

;"uppermost","Adv","1.sarvocca_sWAna_yA_paxa_iwyAxi_me"
;The blade turned uppermost
;
