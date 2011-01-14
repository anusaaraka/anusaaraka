;word category is determined using chunk && pos info
;word_category=noun	tam:wA_huA	0
(defrule ing_tam0
(declare (salience 5000))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam0  "  ?id "  nA )" crlf))
)

;Default is wA_huA
(defrule ing_tam1
(declare (salience 4900))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing we_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam1  "  ?id "  we_hue )" crlf))
)

(defrule ing_tam2
(declare (salience 4800))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing wA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam2  "  ?id "  wA_huA )" crlf))
)

(defrule ing_tam3
(declare (salience 4700))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) start|hate|finish|give|suggest|regret|advise|permit|forbid|deserve|remember|forget|prefer|like|begin|mean|intend|enjoy|commence|stop|dislike|allow|disallow|prohibit|love)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam3  "  ?id "  nA )" crlf))
)

;previous_word=started	tam:nA	0
;He started/starts eating
;He gave up smoking
;He suggested writing
;I dislike people telling me what to do.
(defrule ing_tam4
(declare (salience 4600))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) as)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing nA_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam4  "  ?id "  nA_vAlA )" crlf))
)

;She struck me as being a very nervy kind of person.
(defrule ing_tam5
(declare (salience 4500))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) good)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam5  "  ?id "  nA )" crlf))
)

(defrule ing_tam6
(declare (salience 4400))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) use)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam6  "  ?id "  nA )" crlf))
)

(defrule ing_tam7
(declare (salience 4300))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) worth)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam7  "  ?id "  nA )" crlf))
)

; Is it any use expecting them to be in time.
;I didn't think it worth complaining about the meal.
(defrule ing_tam8
(declare (salience 4200))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) of )
(id-word =(- ?id 2) tired)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing 0_0_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam8  "  ?id "  0_0_kara )" crlf))
)

; I am tired of hearing her complaints.
(defrule ing_tam9
(declare (salience 4100))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) after|against|before|between|beyond|by|for|from|in|into|of|on|to|towards|upon|without)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam9  "  ?id "  nA )" crlf))
)

;I am fond of going there
;first_word && word_category=verb	nA	0
;Running such machine; Running is good for health.
(defrule ing_tam10
(declare (salience 4000))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam10  "  ?id "  nA )" crlf))
)

(defrule ing_tam11
(declare (salience 3900))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) has|have|had|may|might|can|could|shall|should|will|would|is|am|was|were|are|did|does|do)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam11  "  ?id "  nA )" crlf))
)

;The teasing has created a problem.
;Your telling John to leave was stupid.
;This is ambiguous between two readings:
; I saw her going there.
;mEMne usakA vahAz jAnA xeKA.
;mEMne usako vahAz jAwe hue xeKA.
;Is The 1st one preferable?
(defrule ing_tam12
(declare (salience 3800))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) pronoun)
(id-root ?id1  sit|miss|stand)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing yA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam12  "  ?id "  yA_huA )" crlf))
)

;I saw him sitting under a tree?
(defrule ing_tam13
(declare (salience 3700))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) pronoun)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing wA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam13  "  ?id "  wA_huA )" crlf))
)

;I saw him dancing under a tree?
(defrule ing_tam14
(declare (salience 3600))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) noun)
(id-root ?id1  sit|miss|stand)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing yA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam14  "  ?id "  yA_huA )" crlf))
)

;Who is the boy sitting under a tree?
(defrule ing_tam15
(declare (salience 3500))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) noun)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing wA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam15  "  ?id "  wA_huA )" crlf))
)

;Who is the boy dancing under a tree?
(defrule ing_tam16
(declare (salience 3400))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam16  "  ?id "  nA )" crlf))
)

;I completed writing the paper.
(defrule ing_tam17
(declare (salience 3300))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam17  "  ?id "  nA )" crlf))
)

;following_category=preposition	tam:nA	0
;This is the story about the returning of young scientists.
;default_sense	tam:wA_huA	0
(defrule ing_tam18
(declare (salience 3200))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  sit|miss|stand)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing ye_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam18  "  ?id "  ye_hue )" crlf))
)

(defrule ing_tam19
(declare (salience 3100))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing wA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp  	ing_tam19  "  ?id "  wA_huA )" crlf))
)



;Modified by Meena 06-04-09
;Turning the knob, he opened the door.
;Finishing the book, the student completed the assignment.
(defrule ing_tam20
(declare (salience 3100))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  =(+ ?id 2) =(+ ?id 1))
(kriyA-object  ?id =(+ ?id 2))
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing kara_ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  old_ing_tam.clp        ing_tam20  "  ?id "   kara_ke )" crlf))
)

;
;{ing}
; 1.  ing nA 		rAma hE_jAnawA wEranA.
;                        Ram knows swimming. 
; 2.  ing wA_huA 	rAma xOdZawI_huI trena meM caDZA.
;                         Ram boarded the running train.
; 3.  ing 0_rahA 	rAma Gara jA_rahA_hE.
;                         Ram is going home
