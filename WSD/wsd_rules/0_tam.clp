;Order of the following two rules is important.
(defrule 0_tam0
(declare (salience 5000))
(id-TAM ?id 0)
?mng <-(meaning_to_be_decided ?id)
(pada_info (group_head_id ?id)(group_cat infinitive)) ; Added by Shirisha Manju Suggested by Chaitanya sir (27-09-13) Everybody is free to explore it and take freely as much as he wants.
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id 0 -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  0_tam.clp  	0_tam0  "  ?id "  - )" crlf))
)

; He was in a hurry to get home.
(defrule 0_tam1
(declare (salience 4900))
(id-TAM ?id 0)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 NULL)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id 0 subj))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  0_tam.clp  	0_tam1  "  ?id "  subj )" crlf))
)

;Go there.


;Modified by Meena(6.3.10)
;Added by Meena(25.02.10)
;I am not sure that the results are biochemically valid . 
(defrule 0_tam01
(declare (salience 4900))
(id-TAM ?id 0)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id be)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id 0 hE))
;(assert (kriyA_id-subject_viBakwi ?id kA))    ;commented by Meena(6.3.10)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  0_tam.clp         0_tam01  "  ?id "  hE )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  0_tam.clp      0_tam01   "  ?id " kA )" crlf)
)
)


(defrule 0_tam2
(declare (salience 4800))
(id-TAM ?id 0)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) please )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id 0 subj))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  0_tam.clp  	0_tam2  "  ?id "  subj )" crlf))
)

(defrule 0_tam3
(declare (salience 4700))
(id-TAM ?id 0)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id 0 wA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  0_tam.clp  	0_tam3  "  ?id "  wA_hE )" crlf))
)

; They go home.
(defrule 0_tam4
(declare (salience 4600))
(id-TAM ?id 0)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (root_id-TAM-vachan ?id 0 s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan   " ?*wsd_dir* "  0_tam.clp         0_tam4  "  ?id " 0  s )" crlf)) 
)


;The chair is good.
;{0}	
;1. saMjFA  ekavacana	kursI{0} = kursI{e.}	chair
;2. kriyA
;     a)AjFArWa		jA{0} = (wU) jA		(you) Go
;     b)wA_hE		jA{0} = jAwA_hE{_(3.e.)} I/We/you/they go
;     c)sahAyaka kriyAoM ke sAWa
;         I will/can/may/should/would/might/could 'go'.
;	 She cannot 'speak' to you.
;
;       ina prayogoM meM kriyA kA prawyaya arWa sahAyaka kriyA ke sAWa judZa kara AwA hE       yaxyapi kriyA kA rUpa 0 prawyaya vAlA hE 
;
;     d)nA to- sAWa 	She wants to go vaha jAnA cAhawI hE.
; 	
;
;     e)nA (Non TO-INFINITIVE)
;       i) let jaba sahAyaka kriyA rUpa meM AwI hoM waba - 
;             Don't let them 'exploit' you.
;             unheM apanA 'SoRaNa_karane' nahIM xo.  
;             Let them go.
;             unako 'jAne' xo.
;             Her brother would not let her study in peace.
;             usakA BAI usako SAnwi se 'paDZane'nahIM xewA.
;             Her parents let her 'stay' out late night.
;             usake mAwA-piwA usako xera rAwa waka bAhara 'rahane' xewe hEM.
;      ii) 'rather' ke sAWa
;             Rather than 'make' it myself, I bought it.
;             Kuxa 'banAne' kI apekRA, mEMne KarIxa liyA.
;	     I would rather 'go' there.
;             mEM vahAz 'jAnA' pasanxa karUzgA.
;  
;     f)'wA' jFAneMxriyoM se sambanXiwa kriyAoM ke sAWa
;	  Hari saw Meera 'fall' from the tree.
;	  hari ne mIrA ko pedZa se 'garawe' xeKA.  
;          Giri heard them 'close' the door.
;          giri ne unako xaravAjZA banxa karawe sunA. 
;
;     g) 'ez' anya
;          We had better 'take' some warm clothing.
;	  acCA ho ki hama kuCa garama kapadZe 'le_jAez'
;	  Let us 'go' to the cinema tonight.
;          calo Aja hama pikcara xeKane jAez.
; 
;     h) 'preraNArWaka' make jaba sahAyaka kriyA rUpa meM AwI hoM waba - 
;	  Mohan made me 'write' the article.
;          mohana ne muJase leKa 'liKavAyA'.
;	  Could she make him 'see' the point.
;          kyA vaha usako pvOYinta 'xiKA_pAyA'
;
;3. aMgrejI meM lagaBaga kisI BI saMjFA kA kriyA ke rUpa meM prayoga howA hE.
;   uxA. The President chaired the meeting.
;        rARtrapawi ne saBA kI 'aXyakRawA kI'. 
