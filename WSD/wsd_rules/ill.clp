
(defrule ill0
(declare (salience 5000))
(id-root ?id ill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asvasWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ill.clp 	ill0   "  ?id "  asvasWa )" crlf))
)

;"ill","Adj","1.asvasWa"
;She fell ill suddenly.
;
(defrule ill1
(declare (salience 4900))
(id-root ?id ill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asvasWawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ill.clp 	ill1   "  ?id "  asvasWawA )" crlf))
)

;"ill","N","1.asvasWawA"
;She fell ill suddenly.
;

;@@@ Added by Prachi Rathore[27-3-14]
;A bird of ill omen.[oald]
;बुरे शगुन चिह्न की चिडिया . 
(defrule ill2
(declare (salience 5100))
(id-root ?id ill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 omen|luck)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ill.clp 	ill2   "  ?id "  burA )" crlf))
)


;@@@ Added by Prachi Rathore[27-3-14]
;I can ill afford the time or the money for a holiday.[oald]
;मैं अवकाश के लिये समय या पैसे  मुश्किल से निकाल सकता हूँ . 
(defrule ill3
(declare (salience 5100))
(id-root ?id ill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
(id-root ?id1 afford)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muSkila_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ill.clp 	ill3   "  ?id " muSkila_se )" crlf))
)

;@@@ Added by Prachi Rathore[27-3-14]
(defrule ill4
(declare (salience 500))
(id-root ?id ill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burI_waraha_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ill.clp 	ill4   "  ?id " burI_waraha_se )" crlf))
)

;@@@ Added by Prachi Rathore[27-3-14]
;Don't speak ill of the dead.[oald]
;मृतक का बुरा मत बोलिए . 
(defrule ill5
(declare (salience 5100))
(id-root ?id ill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA-object  ?id1 ?id)
(id-root ?id1 speak|wish)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ill.clp 	ill5   "  ?id " burA )" crlf))
)

;@@@ Added by Prachi Rathore[27-3-14]
; The ills of the modern world.[oald]
;आधुनिक विश्व की बुराइयाँ . 
(defrule ill6
(declare (salience 5000))
(id-root ?id ill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ill.clp 	ill6   "  ?id "  burAI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_ill2
(declare (salience 5100))
(id-root ?id ill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 omen|luck)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " ill.clp   sub_samA_ill2   "   ?id " burA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_ill2
(declare (salience 5100))
(id-root ?id ill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 omen|luck)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " ill.clp   obj_samA_ill2   "   ?id " burA )" crlf))
)
