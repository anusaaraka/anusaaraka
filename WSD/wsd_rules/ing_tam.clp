;word category is determined using chunk && pos info
;word_category=noun	tam:wA_huA	0
(defrule ing_tam0
(declare (salience 5000))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (make_verbal_noun ?id))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  ing_tam.clp  	ing_tam0  "  ?id " )" crlf))
)


;Modified by Meena(18.5.11) so that it does not affect the sentences like :The girl running to the shop is my friend. 
;Added by Meena(12.5.11)
;I have been running about all morning trying to find you.
;I saw him telling her about the party 
;Default is wA_huA
(defrule ing_tam1
(declare (salience 4900))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-kqxanwa_kriyA_viSeRaNa ?id1 ?id )(viSeRya-kqxanwa_viSeRaNa  ?id1  ?id ))
(not(id-root ?id1 girl|boy|man|woman|baby|child))
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing we_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ing_tam.clp  	ing_tam1  "  ?id "  we_hue )" crlf))
)

;Modified by Meena(3.6.11);added (id-root =(- ?id 2) be)
;Added by Meena(1.6.11)
;She was found crying in a patch of nettles. 
(defrule ing_tam01
(declare (salience 4900))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) verb)
(kriyA-kqxanwa_karma  =(- ?id 1) ?id)
(id-root =(- ?id 2) be)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing wA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ing_tam.clp       ing_tam01  "  ?id "  wA_huA )" crlf))
)





(defrule ing_tam2
(declare (salience 4800))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing wA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ing_tam.clp  	ing_tam2  "  ?id "  wA_huA )" crlf))
)



;Modified by Meena(3.6.11)
;I have started working. 
;I like running. 
(defrule ing_tam3
(declare (salience 4700))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) start|hate|finish|give|suggest|regret|advise|permit|forbid|deserve|remember|forget|prefer|like|begin|mean|intend|enjoy|commence|stop|dislike|allow|disallow|prohibit|love|than) ;$$$ 'than' added by Roja. Suggested by Chaitanya Sir(06-01-14) Ex: This is a better method, and certainly more effective than looking at only one star. (Also modified word fact to root fact by Roja)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (make_verbal_noun ?id))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  ing_tam.clp  	ing_tam3  "  ?id " )" crlf))
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
(assert (make_verbal_noun ?id))
(assert (id-H_vib_mng ?id vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  ing_tam.clp  	ing_tam4  "  ?id " )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng " ?*wsd_dir* "  ing_tam.clp    ing_tam4  "  ?id " vAlA )" crlf))
)

;$$$ Modified by Shirisha Manju (25-03-14)
; added use|worth in the list
;She struck me as being a very nervy kind of person.
(defrule ing_tam5
(declare (salience 4500))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) good|use|worth)
=>
(retract ?mng)
(assert (make_verbal_noun ?id))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  ing_tam.clp  	ing_tam5  "  ?id " )" crlf))
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
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ing_tam.clp  	ing_tam8  "  ?id "  0_0_kara )" crlf))
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
(assert (make_verbal_noun ?id))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  ing_tam.clp 	ing_tam9  "  ?id " )" crlf))
)

;I am fond of going there

;Running such machine; Running is good for health.

;first_word && word_category=verb	nA	0
;@@@ Added by Roja(06-01-14). Suggested by Chaitanya Sir.
;Ex: Running such a machine is difficult.
(defrule ing_tam_nA
(declare (salience 4000))
(id-TAM ?id  ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(test (eq ?id 1))
=>
(retract ?mng)
(assert (make_verbal_noun ?id))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  ing_tam.clp    ing_tam_nA  "  ?id " )" crlf))
)


;modified by Meena(28.04.09)
(defrule ing_tam10
(declare (salience 4000))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse =(+ ?id 1) verb)
(kriyA-subject ?id1 ?id)
=>
(retract ?mng)
(assert (make_verbal_noun ?id))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  ing_tam.clp  	ing_tam10  "  ?id " )" crlf))
)

(defrule ing_tam11
(declare (salience 3900))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) has|have|had|may|might|can|could|shall|should|will|would|is|am|was|were|are|did|does|do)
=>
(retract ?mng)
(assert (make_verbal_noun ?id))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  ing_tam.clp  	ing_tam11  "  ?id " )" crlf))
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
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ing_tam.clp  	ing_tam12  "  ?id "  yA_huA )" crlf))
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
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ing_tam.clp  	ing_tam13  "  ?id "  wA_huA )" crlf))
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
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ing_tam.clp  	ing_tam14  "  ?id "  yA_huA )" crlf))
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
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ing_tam.clp  	ing_tam15  "  ?id "  wA_huA )" crlf))
)
;Who is the boy dancing under a tree?


(defrule ing_tam16
(declare (salience 3400))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) verb)
=>
(retract ?mng)
(assert (make_verbal_noun ?id))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  ing_tam.clp  	ing_tam16  "  ?id " )" crlf))
)

;I completed writing the paper.


;Added by Meena(25.9.09)
;I tried phoning but there was no answer . 
(defrule ing_tam016
(declare (salience 3400))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (make_verbal_noun ?id))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  ing_tam.clp    ing_tam016  "  ?id " )" crlf)
)
)





(defrule ing_tam17
(declare (salience 3300))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (make_verbal_noun ?id))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  ing_tam.clp  	ing_tam17  "  ?id " )" crlf))
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
(assert (id-E_tam-H_tam_mng ?id ing yA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ing_tam.clp  	ing_tam18  "  ?id "  ye_hue )" crlf))
)

(defrule ing_tam19
(declare (salience 3100))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing wA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ing_tam.clp  	ing_tam19  "  ?id "  wA_huA )" crlf))
)



;Modified by Meena 06-04-09
;Taking that course,the students improved their skills.
;Turning the knob, he opened the door.
;Finishing the book, the student completed the assignment.
(defrule ing_tam20
(declare (salience 3100))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-subject ?id ?))
(id-root ?id1 ?)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ing kara_ke))
(assert (make_verbal_noun ?id)) ; Added by Manju Ex: I have doubts about inviting him .
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ing_tam.clp        ing_tam20  "  ?id "   kara_ke )" crlf))
)

;
;{ing}
; 1.  ing nA 		rAma hE_jAnawA wEranA.
;                        Ram knows swimming. 
; 2.  ing wA_huA 	rAma xOdZawI_huI trena meM caDZA.
;                         Ram boarded the running train.
; 3.  ing 0_rahA 	rAma Gara jA_rahA_hE.
;                         Ram is going home


;Taking that course was helpful.
;Taking that course improved the student's skills.
(defrule ing_tam21
(declare (salience 3600))
(id-TAM ?id ing)
?mng <-(meaning_to_be_decided ?id)
;(id-root 1 ?id)
(id-root ?id1 ?)
(kriyA-subject ?id1 ?id)
;(kriyA-object  ?id ?id2)
=>
(retract ?mng)
(assert (make_verbal_noun ?id))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-make_verbal_noun " ?*wsd_dir* "  ing_tam.clp 	ing_tam21  "  ?id " )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi " ?*wsd_dir* "  ing_tam.clp    ing_tam21  "  ?id " se )" crlf)
)
)


;--------------------- Removed rules ---------------
; if -1  use    then make_verbal_noun  --- merged in 'ing_tam5' rule
; if -1  worth  then make_verbal_noun  --- merged in 'ing_tam5' rule
;

