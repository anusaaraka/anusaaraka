
(defrule know0
(declare (salience 5000))
(id-root ?id know)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id knowing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jAnakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  know.clp  	know0   "  ?id "  jAnakAra )" crlf))
)

;"knowing","Adj","1.jAnakAra"
;He is a knowing collector of rare books.
;It was a knowing attempt to defraud.
;She gave me a knowing look when I mentioned about him.



; 
(defrule know1
(declare (salience 4900))
(id-root ?id know)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id knowing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jAnanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  know.clp  	know1   "  ?id "  jAnanA )" crlf))
)

;"knowing","N","1.jAnanA"
;There is a big difference in knowing && understanding.



;
(defrule know2
(declare (salience 4800))
(id-root ?id know)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id knowing )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jAnawe_huye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  know.clp  	know2   "  ?id "  jAnawe_huye )" crlf))
)

;"knowing","V","1.jAnawe_huye"
;Knowing all the facts I will  not hold this against you.
;



;Added by Meena(24.9.09) salience in know3 should be higher than know4 
; At once he knew that they were thieves.
(defrule know3
(declare (salience 4900))
(id-root ?id know)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id knew)
(id-root =(- ?id 2) once)
(id-root =(- ?id 3) at)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahacAna_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  know.clp      know3   "  ?id "  pahacAna_jA )" crlf))
)



;Added by Meena(24.9.09)
;They knew him very well.
(defrule know4
(declare (salience 4800))
;(declare (salience 1500))
(id-root ?id know)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  know.clp 	know4   "  ?id "  jAna )" crlf))
)


;Added by Meena(22.01.10)
;I want to know about it.
(defrule know5
(declare (salience 1000))
(id-root ?id know)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kqxanwa_karma  ?id1 ?id)
(kriyA-about_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAlUma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  know.clp      know5   "  ?id "  mAlUma_kara )" crlf))
)



;Added by Meena(22.01.10)
;I want her to know about it.
(defrule know6
(declare (salience 3000))
(id-root ?id know)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id2 =(- ?id 2))
(kriyA-about_saMbanXI  ?id ?id1)
(kriyA-aBiprewa_kriyA  ?id2 ?id)
(kriyA-karwA  ?id =(- ?id 2))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAlUma_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  know.clp      know6   "  ?id "  mAlUma_ho )" crlf))
)


(defrule know7
(declare (salience -1000))
(id-root ?id know)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  know.clp      know7   "  ?id "  jAna )" crlf))
)


;"know","V","1.jAnanA"
;I want to know who is winning the game.
;I know that the President lied to the people.
;She knows how to knit.
;Galileo knew that the earth moves around the sun.
;I know that I left the key on the table.
;We know this movie.
;His greed knew no limits.
;This student knows her irregular verbs.
;I know Latin.
;Adam knew Eve.
;The child knows right from wrong.
;I know this voice.
;
;

;Added by Prachi Rathore[2-12-13]
;Indeed, our many questions about the heavens have received reasonably satisfactory answers from the laws of science [known] to us today.
;वास्तव में, विज्ञान के जो सिद्धांत हमें आज मालूम हैं, उनसे हमें आकाश संबंधी कई प्रश्नों के संतोषजनक उत्तर मिल गये हैं।
(defrule know8
(declare (salience 5000))
(id-root ?id know)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAlUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  know.clp      know8   "  ?id "  mAlUma )" crlf))
)

;Added by Prachi Rathore[3-12-13]
;Paradoxically, scientists seem to [know] more about the stars which are far away than about the planets of our own solar system.
;यह अजीब बात है कि वैज्ञानिकों को हमारे अपने सौरमंडल के ग्रहों के मुकाबले उन तारों के बारे में ज्यादा जानकारी है जो बहुत दूरी पर स्थित हैं।
(defrule know9
(declare (salience 5000))
(id-root ?id know)
?mng <-(meaning_to_be_decided ?id)
(kriyA-about_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  know.clp      know9   "  ?id "  jAnakArI )" crlf))
)

;@@@ Added by Prachi Rathore[9-1-14]
;If you want to call a meeting or anything, just let me know.
(defrule know10
(declare (salience 5000))
(id-root ?id know)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(kriyA-vAkyakarma  ?id2 ?id)
(id-root ?id2 let)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 bawA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " know.clp	know10  "  ?id "  " ?id2 "  bawA_xe  )" crlf))
)
