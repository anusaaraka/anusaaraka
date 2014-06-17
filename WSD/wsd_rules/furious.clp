
(defrule furious0
(declare (salience 5000))
(id-root ?id furious)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) so )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kruxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  furious.clp 	furious0   "  ?id "  kruxXa )" crlf))
)
;____________________________________________________________________________
;@@@ Added by Krithika 06/03/2014
; She drove off at a furious pace.	[OALD]
; वह गुस्से के आवेश में गाड़ी चला कर बाहर चली गयी .
; Translations by Veena ji
(defrule furious1
(declare (salience 4800))
(id-root ?id furious)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id2 ?id)
(id-root ?id2 pace|speed|storm|wind|gayle)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  furious.clp 	furious1   "  ?id "  wejZa )" crlf))
)
;____________________________________________________________________________
;@@@ Added by Krithika 06/03/2014
; A furious row broke out last night after it was revealed that hundreds of prisoners had been released early from jail.	[OALD]
; पिछली रात झगड़े ने उग्र रूप धारण कर लिया जब इस बात का पता चला कि हजारों कैदियों को जेल से पहले ही से छोड़ दिया गया था  
; Translations by Veena ji
(defrule furious2
(declare (salience 4800))
(id-root ?id furious)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id2 ?id)
(id-root ?id2 row|fight|quarrel)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ugra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  furious.clp 	furious2   "  ?id "  ugra )" crlf))
)
;____________________________________________________________________________
;@@@ Added by Krithika 06/03/2014
; ‘Damn!’ he said furiously.	[OALD]
; भाड में जाए ! उसने क्रोध में (आकर) कहा  
; Translations by Veena ji
; Root problem
(defrule furious4
(declare (salience 4800))
(id-root ?id furious)
(id-word ?id furiously)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
(id-root ?id1 say|tell|react|exclaim|reply|shout)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kroXa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  furious.clp 	furious4  "  ?id "  kroXa_se )" crlf))
)
; ____________________________________________________________________________

;@@@ Added by Krithika 06/03/2014
; They worked furiously all weekend, trying to get it finished on time. [OALD]
; उन्होंने पूरे हफ्ते अपनी सारी ताकत लगाकर निरंतर (पूरी शक्ति से ) काम किया ,ताकि समय पर काम खत्म हों जाए . 
; Translations by Veena ji
; Root problem
(defrule furious3
(declare (salience 4700))
(id-root ?id furious)
(id-word ?id furiously)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaldabAjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  furious.clp  furious3  "  ?id "  jaldabAjI )" crlf))
)

; ##################Default rules#############################
;_____________________________________________________________________________
;$$$ Modified by Krithika 6/3/2014
; Changed the meaning from jora to kroXiwa	
; She was absolutely furious at having been deceived.	[OALD]
; धोखा खाने के बाद वह पूरी तरह से आपे से बाहर हो उठी. (बुरी तरह से आग बबूला हो उठी ) 
; Translations by Veena ji
(defrule furious5
(id-root ?id furious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kroXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  furious.clp 	furious5   "  ?id "  kroXiwa)" crlf))
)

;#################### Deleted rules###########################
; (defrule furious2
;(declare (salience 4800))
;(id-root ?id furious)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id adjective)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id kupiwa))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  furious.clp 	furious2   "  ?id "  kupiwa )" crlf))
;)

;"furious","Adj","1.kupiwa"
;The teacher made a furious statement at the student.
;--"2.BIRaNa"
;A furious storm uprooted the trees.
;
;
; ##################Additional examples########################
; The King was furious.
; He was furious with himself for letting things get so out of control.
; I'm furious that I wasn't told about it.
; The teacher made a furious statement at the student.
; A furious storm uprooted the trees.

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_furious1
(declare (salience 4800))
(id-root ?id furious)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id2 ?id)
(id-root ?id2 pace|speed|storm|wind|gayle)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " furious.clp   sub_samA_furious1   "   ?id " wejZa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_furious1
(declare (salience 4800))
(id-root ?id furious)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id2 ?id)
(id-root ?id2 pace|speed|storm|wind|gayle)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " furious.clp   obj_samA_furious1   "   ?id " wejZa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_furious2
(declare (salience 4800))
(id-root ?id furious)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id2 ?id)
(id-root ?id2 row|fight|quarrel)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ugra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " furious.clp   sub_samA_furious2   "   ?id " ugra )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_furious2
(declare (salience 4800))
(id-root ?id furious)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id2 ?id)
(id-root ?id2 row|fight|quarrel)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ugra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " furious.clp   obj_samA_furious2   "   ?id " ugra )" crlf))
)
