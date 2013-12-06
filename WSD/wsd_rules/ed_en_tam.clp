;The eaten fruit. 
(defrule ed_en_tam0
(declare (salience 5000))
(id-TAM ?id ed_en)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) determiner)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed_en yA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_en_tam.clp  	ed_en_tam0  "  ?id "  yA_huA )" crlf))
)



;They lived there for 5 years.
(defrule ed_en_tam1
(declare (salience 4900))
(id-TAM ?id ed_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id live|imply);Added imply in the list by Roja (06-12-13) Ex: His words implied a threat.
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed_en wA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_en_tam.clp  	ed_en_tam1  "  ?id "  wA_WA )" crlf))
)



;They knew him very well.
(defrule ed_en_tam2
(declare (salience 4800))
(id-TAM ?id ed_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id know)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed_en wA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_en_tam.clp  	ed_en_tam2  "  ?id "  wA_WA )" crlf))
)


;He attacked the enemy
;(defrule ed_en_tam3
;(declare (salience 4700))
;(id-TAM ?id ed_en)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat ?id verb_past_tense)
;=>
;(retract ?mng)
;(assert (id-E_tam-H_tam_mng ?id ed_en yA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_en_tam.clp  	ed_en_tam3  "  ?id "  yA )" crlf))
;)

;He threw the rotten food. 
;(defrule ed_en_tam4
;(declare (salience 4600))
;(id-TAM ?id ed_en)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat ?id verb_past_participle)
;=>
;(retract ?mng)
;(assert (id-E_tam-H_tam_mng ?id ed_en yA_huA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_en_tam.clp  	ed_en_tam4  "  ?id "  yA_huA )" crlf))
;)

;attacked enemy
(defrule ed_en_tam5
(declare (salience 4500))
(id-TAM ?id ed_en)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed_en yA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_en_tam.clp  	ed_en_tam5  "  ?id "  yA_huA )" crlf))
)


;the painted doors look nice.
;The attacked snake hissed furiously. 
(defrule ed_en_tam6
(declare (salience 4400))
(id-TAM ?id ed_en)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa =(+ ?id 1) ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed_en yA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_en_tam.clp        ed_en_tam6  "  ?id "  yA_huA )" crlf))
)


;This rule is to determine the proper tam  i.e. whether it is ed or en.
;Rama married Sita.
(defrule ed_en_tam7
(declare (salience 4300))
(id-TAM ?id ed_en)
?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 ?)
(kriyA-subject ?id ?id1) 
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed_en yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_en_tam.clp        ed_en_tam7  "  ?id "  yA )" crlf))
)



;Added by Meena(29.8.09)
;Venus was a major Roman goddess , associated with love and beauty . 
(defrule ed_en_tam8
(declare (salience 4800))
(id-TAM ?id ed_en)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id  ?id1)
;(id-root ?id know)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed_en yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_en_tam.clp        ed_en_tam8  "  ?id "  yA )" crlf))
)

;Added by Shirisha Manju (21-10-13) Suggested by Sukhada
(defrule ed_en_tam9
(declare (salience 1000))
(id-TAM ?id ed_en)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id ed_en yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  ed_en_tam.clp        ed_en_tam9  "  ?id "  yA )" crlf))
)










;the painted doors
;{ed/en} yA/wA_WA/yA_huA	
;	i) muKya kriyA
;	     a) sahAyaka kriyAoM ke sAWa hameSA en howA hE.
;	        isa prayoga meM pUrNawA kA BAva rahawA hE.
;	        uxA. 
;		  He has/had done the work.
;		  The work is/was done.
;	     b) sahAyaka kriyAoM ke binA hameSA ed (BUwakAla) ko xarSAwA hE.
;		Ram published the book.
;       ii) viSeRaNa
;	   viSeRaNa ke arWa meM hameSA vaha en hI hogA.
;	   uxA.  prakASiwa_huyI puswakeM
