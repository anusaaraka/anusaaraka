
(defrule not_ing_tam0
(declare (salience 5000))
(id-TAM ?id not_ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) ~noun ) 
(id-word 1 not_ing)
=>
(retract ?mng)
(assert (id-preceeding_part_of_verb ?id nahIM))
(assert (id-E_tam-H_tam_mng ?id not_ing nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  not_ing_tam.clp  	not_ing_tam0  "  ?id "  nA )" crlf))
)

;Running such machine; Running is good for health.
(defrule not_ing_tam1
(declare (salience 4900))
(id-TAM ?id not_ing)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) of )
(id-word =(- ?id 2) tired)
=>
(retract ?mng)
(assert (id-preceeding_part_of_verb ?id nahIM))
(assert (id-E_tam-H_tam_mng ?id not_ing 0_0_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  not_ing_tam.clp  	not_ing_tam1  "  ?id "  0_0_kara )" crlf))
)

; I am tired of hearing her complaints.
(defrule not_ing_tam2
(declare (salience 4800))
(id-TAM ?id not_ing)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) after|against|before|between|beyond|by|for|from|in|into|of|on|to|towards|upon|without)
=>
(retract ?mng)
(assert (id-preceeding_part_of_verb ?id nahIM))
(assert (id-E_tam-H_tam_mng ?id not_ing ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  not_ing_tam.clp  	not_ing_tam2  "  ?id "  ne )" crlf))
)

;I am fond of going there
(defrule not_ing_tam3
(declare (salience 4700))
(id-TAM ?id not_ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id not_ing nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  not_ing_tam.clp  	not_ing_tam3  "  ?id "  nA )" crlf))
)

(defrule not_ing_tam4
(declare (salience 4600))
(id-TAM ?id not_ing)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) has|have|had|may|might|can|could|shall|should|will|would|is|am|was|were|are|did|does|do)
=>
(retract ?mng)
(assert (id-preceeding_part_of_verb ?id nahIM))
(assert (id-E_tam-H_tam_mng ?id not_ing nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  not_ing_tam.clp  	not_ing_tam4  "  ?id "  nA )" crlf))
)

;The teasing has created a problem.
(defrule not_ing_tam5
(declare (salience 4500))
(id-TAM ?id not_ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) pronoun)
=>
(retract ?mng)
(assert (id-preceeding_part_of_verb ?id nahIM))
(assert (id-E_tam-H_tam_mng ?id not_ing nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  not_ing_tam.clp  	not_ing_tam5  "  ?id "  nA )" crlf))
)

;Your telling John to leave was stupid.
(defrule not_ing_tam6
(declare (salience 4400))
(id-TAM ?id not_ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) pronoun)
=>
(retract ?mng)
(assert (id-preceeding_part_of_verb ?id nahIM))
(assert (id-E_tam-H_tam_mng ?id not_ing nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  not_ing_tam.clp  	not_ing_tam6  "  ?id "  nA )" crlf))
)

;This is the story about the returning of young scientists.
(defrule not_ing_tam7
(declare (salience 4300))
(id-TAM ?id not_ing)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-preceeding_part_of_verb ?id nahIM))
(assert (id-E_tam-H_tam_mng ?id not_ing wA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  not_ing_tam.clp  	not_ing_tam7  "  ?id "  wA_huA )" crlf))
)

;
;{ing}
; 1.  ing nA 		rAma hE_jAnawA wEranA.
;                        Ram knows swimming. 
; 2.  ing wA_huA 	rAma xOdZawI_huI trena meM caDZA.
;                         Ram boarded the running train.
; 3.  ing 0_rahA 	rAma Gara jA_rahA_hE.
;                         Ram is going home
