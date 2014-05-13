


;Added by Meena(2.3.10)
;Clinton announced on Tuesday a bold new proposal .
(defrule bold0
(declare (salience 5000))
(id-root ?id bold)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 proposal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirBIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bold.clp      bold0   "  ?id "  nirBIka )" crlf))
)



;Salience reduced by Meena((2.3.10)
(defrule bold1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id bold)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nidara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bold.clp 	bold1   "  ?id "  nidara )" crlf))
)

(defrule bold2
(declare (salience 4900))
(id-root ?id bold)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabaMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bold.clp 	bold2   "  ?id "  xabaMga )" crlf))
)

;"bold","Adj","1.xabaMga"
;Bold settlers on some foreign shore
;--"2.spaRta"
;Bold handwriting
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_bold0
(declare (salience 5000))
(id-root ?id bold)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 proposal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirBIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sub_samA_bold0" ?id " nirBIka )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_bold0
(declare (salience 5000))
(id-root ?id bold)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 proposal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirBIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " obj_samA_bold0" ?id " nirBIka )" crlf))
)
