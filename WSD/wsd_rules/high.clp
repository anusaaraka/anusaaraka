;Modified by Meena(3.3.11) ; added (viSeRya-viSeRaNa ?id1 ?id) and deleted (samAsa ?id2 ?id)
;Added by Meena(4.12.09)
;High income taxes are important .
(defrule high0
(declare (salience 5000))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(or(samAsa ?id2 ?id1)(viSeRya-viSeRaNa ?id2 ?id)(viSeRya-viSeRaNa ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp      high0   "  ?id "  aXika )" crlf))
)

;Salience reduced by Meena(4.12.09)
(defrule high1
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp 	high1   "  ?id "  UzcA )" crlf))
)

; Changed from paxa_meM_UzcA to UzcA : Amba
;"high","Adj","1.paxa_meM_UzcA"
;jilAXISa kA paxa jile meM sabase'high' howA hE.
;
(defrule high2
(declare (salience 4900))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcAI_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp 	high2   "  ?id "  UzcAI_para )" crlf))
)

;"high","Adv","1.UzcAI_para"
;bADZa se bacane ke liye loga'high' Gara banAwe hE'


;Salience reduced by Meena(3.12.09)
(defrule high3
(declare (salience 0))
;(declare (salience 4800))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcA_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp 	high3   "  ?id "  UzcA_sWAna )" crlf))
)

;"high","N","1.UzcA_sWAna"
;Sera bAjAra Ajakala'high' nahIM hE.
;Added by Meena
;It is high time we updated our thinking on women 's issues .
(defrule high4
(declare (salience 5200))
(id-root ?id high)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
(id-root =(+ ?id 1) time|noon)
(viSeRya-viSeRaNa  =(+ ?id 1)  ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  high.clp    high4   "  ?id "  TIka )" crlf))
)


;
