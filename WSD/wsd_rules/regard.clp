
(defrule regard0
(declare (salience 5000))
(id-root ?id regard)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id regarding )
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ke_bAre_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  regard.clp  	regard0   "  ?id "  ke_bAre_meM )" crlf))
)

;"regarding","Prep","1.ke_bAre_meM"
;He said so much regarding your request. 
;
(defrule regard1
(declare (salience 4900))
(id-root ?id regard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XyAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  regard.clp 	regard1   "  ?id "  XyAna )" crlf))
)

(defrule regard2
(declare (salience 4800))
(id-root ?id regard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  regard.clp 	regard2   "  ?id "  mAna )" crlf))
)

;"regard","VT","1.mAnanA"
;I regard his behaviour unmanly.
;--"2.Axara_karanA"
;He is very highly regarded as the best teacher in the school.
;--"3.XyAna_xenA"   
;He hardly regards my advice.
;--"4.xeKanA"
;He regarded me with some doubt.
;
;