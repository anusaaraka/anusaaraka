;Added by Pramendra Rathi : NIT ALLAHABAD student(11-6-11)
;We need a strong sanction against corruption.
(defrule seize1
(declare (salience 6000))
(id-root ?id seize)
 (id-root ?id2 chance|opportunity|victory|initiative|freedom|life|mechanics|moment|pretext)
?mng <- (meaning_to_be_decided ?id)
(or(kriyA-object ?id  ?id2)(kriyA-subject ?id  ?id2)(id-root =(+ ?id 2)chance|opportunity|victory|initiative|freedom|life|mechanics|moment|pretext))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAsila_kara ))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seize.clp 	seize1  " ?id "  hAsila_kara )" crlf))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : NIT ALLAHABAD student(11-6-11)
;That was not just text that seize his interest.
(defrule seize2
(declare (salience 6100))
(id-root ?id seize)
(id-root ?id2 interest|imagination|attention)
?mng <- (meaning_to_be_decided ?id)
(kriyA-object ?id  ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  ujAgara_kara))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seize.clp 	seize2  " ?id "  ujAgrwa_kara)" crlf))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : NIT ALLAHABAD student(11-6-11)
;...until the engine seize.
(defrule seize3
(declare (salience 6300))
(id-root ?id seize)
(id-root ?id2 brake|engine|clutch|machine)
?mng <- (meaning_to_be_decided ?id)
(kriyA-object ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  jAma_ho))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seize.clp 	seize3 " ?id "  jAma_ho)" crlf))
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : NIT ALLAHABAD student(11-6-11)
;Someone said london would seize up before Christmas.
(defrule seize5
(declare (salience 6400))
(id-root ?id seize)
(id-word ?up up)
?mng <- (meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?up)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(or(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "place.gdbm" ?str))))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?up jAma_laga))
(assert (kriyA_id-object_viBakwi ?id me))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* "  seize.clp 	seize5  " ?id " "?up"  jAma_laga)" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  seize.clp       seize5   "  ?id " me )" crlf)
)
;--------------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : NIT ALLAHABAD student(12-6-11)
;Her back screwed up and she was given traction.
(defrule seize6
(declare (salience 6350))
(id-root ?id seize)
(id-word ?up up)
?mng <- (meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?up akada_ja))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* "  seize.clp 	seize6  " ?id " "?up"  akada_ja)" crlf))
)
;---------------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : NIT ALLAHABAD student(13-6-11)
;Police raided television stations to seize films.(if subject is police ,officer...etc)
(defrule seize7
(declare (salience 5900))
(id-root ?id seize)
(id-root ?id2 it|police|officer|custom|authority|FBI|CBI|court|bank|government|offical|drug|firearm|property|gun|cash|car|vehicle|shotgun|passport|camera|weapon|resin|goods|good|document|money|bomb|cocaine|heroin|cannabis|furniture|partkilo|ton|total)
?mng <- (meaning_to_be_decided ?id)
(or(kriyA-subject ?id ?id2)(kriyA-by_saMbanXI ?id ?id2)(kriyA-object ?id  ?id2)(kriyA-with_saMbanXI ?id ?id2))
 =>
(retract ?mng)
(assert (id-wsd_root_mng ?id  jabwa_kara))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seize.clp 	seize7 " ?id "  jabwa_kara )" crlf))
)
;--------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : NIT ALLAHABAD student(13-6-11)
;They will never get their seized property.
(defrule seize10
(declare (salience 5900))
(id-root ?id seize)
(id-root ?id2 it|drug|property|cash|gun|weapon|camera|document|money|bomb|part|goods|good|resin|firearm|shotgun|passport|car|vehicle|kilo|ton|total)
?mng <- (meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id ?id2)(id-root =(- ?id 1) it|drug|property|cash|gun|camera|weapon|document|resin|car|vehicle|shotgun|passport|firearm|money|bomb|part|goods|goodkilo|ton|total)(viSeRya-kqxanwa_viSeRaNa ?id2 ?id))
 =>
(retract ?mng)
(assert (id-wsd_root_mng ?id  jabwa_kara))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seize.clp 	seize10 " ?id "  jabwa_kara )" crlf))
)
;---------------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : NIT ALLAHABAD student(13-6-11)
;The military seized power and ruled the country. 
(defrule seize11
(declare (salience 4900))
(id-root ?id seize)
(id-root ?id2 troop|army|military|force|rebel|citizen|group|terrorist)
?mng <- (meaning_to_be_decided ?id)
(kriyA-subject ?id ?id2)
 =>
(retract ?mng)
(assert (id-wsd_root_mng ?id  kabjA_kara))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seize.clp 	seize11 " ?id "  kabjA_kara )" crlf))
)
;--------------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : NIT ALLAHABAD student(14-6-11)
;The military seized power and ruled the country. 
(defrule seize12
(declare (salience 4900))
(id-root ?id seize)
(id-root ?id2 possession|power|control|headquarter|nation|area|government|east|west|north|south|part|party)
?mng <- (meaning_to_be_decided ?id)
 (or(kriyA-object ?id  ?id2)(id-root =(+ ?id 1) possession|power|control|headquarter|nation|area|government|east|west|north|south|part|party))
  =>
(retract ?mng)
(assert (id-wsd_root_mng ?id  kabjA_kara))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seize.clp 	seize12 " ?id "  kabjA_kara )" crlf))
)
;------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : NIT ALLAHABAD student(14-6-11)
;Japan seized South Koria.	but tis rule not work if the object is not is the place: e.g. Piatakov now seized Kharkov. 
(defrule seize13
(declare (salience 4800))
(id-root ?id seize)
(kriyA-object ?id  ?id2)
?mng <- (meaning_to_be_decided ?id)
(or(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "place.gdbm" ?str))))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  kabjA_kara))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seize.clp 	seize13 " ?id "  kabjA_kara )" crlf))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : NIT ALLAHABAD student(14-6-11)
;for passive sentence
(defrule seize14
(declare (salience 4850))
(id-root ?id seize)
?mng <- (meaning_to_be_decided ?id)
(or(id-root ?id2 troop|army|military|force|rebel|citizen|group|terrorist|uniates)(kriyA-by_saMbanXI ?id ?id2))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  kabjA_kara))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seize.clp 	seize14 " ?id "  kabjA_kara )" crlf))
)
;---------------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : NIT ALLAHABAD student(14-6-11)
;The woman is seized by hysterics.   (more emotion should added.) 
(defrule seize15
(declare (salience 6500))
(id-root ?id seize)
(id-root ?id2 panic|fear|shame|revulsion|hysterics|joy|attack|terror|delusion|grief|pain|urgency|jealousy|tension)
?mng <- (meaning_to_be_decided ?id)
 (or(kriyA-object ?id  ?id2)(kriyA-subject ?id ?id2))
 =>
(retract ?mng)
(assert (id-wsd_root_mng ?id  praBAviwa_kara))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seize.clp 	seize15 " ?id "  praBAviwa_kara )" crlf))
)
;-------------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : NIT ALLAHABAD student(14-6-11)
;He was fully seized of the point.
(defrule seize16
(declare (salience 6600))
(id-root ?id seize)
(id-word =(+ ?id 1) of)
?mng <- (meaning_to_be_decided ?id)
 =>
(retract ?mng)
(assert (id-wsd_root_mng ?id  aBiGy_ho))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seize.clp 	seize16 " ?id "  aBiGy_ho )" crlf))
)
