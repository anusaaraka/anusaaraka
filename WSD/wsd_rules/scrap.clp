;Added by Pramendra Rathi : MNNIT student(7-6-11)
;This is a scrap of paper.
(defrule scrap0
(declare (salience 3900))
(id-root ?id scrap)
?mng <- (meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI 	?id 	 ?)(id-root =(+ ?id 1) of))
(not(id-cat_coarse ?id verb)) 	
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tukadA))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scrap.clp 	scrap0  " ?id "  tukadA )" crlf)))

;----------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : MNNIT student(7-6-11)
;This is a scrap.
(defrule scrap1
(declare (salience 3000))
(id-root ?id scrap)
?mng <- (meaning_to_be_decided ?id)
(not(id-cat_coarse ?id verb))
(or(subject-subject_samAnAXikaraNa ?	?id)(samAsa ? ?id) (id-cat_coarse ?id adjective)(id-root =(+ ?id 1) material|iron|copper|matel|timber|dealer|wood|book)
(id-root =(+ ?id 1) in)) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raxxI))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scrap.clp 	scrap1  " ?id "  raxxI )" crlf)))
;-----------------------------------------------------------------------------------------
;Added by Pramendra Rathi : MNNIT student(7-6-11)
;we should scrap the old airplane and sell the parts.
(defrule scrap2
(declare (salience 3200))
(id-root ?id scrap)
?mng <- (meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id2 airplane|machine|tank|car|truck|vehicle|missile|bomb|frigates|weapon|aircraft|carrier|BRM|shell|helicopter|submarine|ship|aeroplane|squadron)
(or(kriyA-object 	?id ?id2)
(kriyA-subject ?id ?id2))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kabAda_me_baxala))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scrap.clp 	scrap2  " ?id "  kabAda_me_baxala))" crlf)))
;-----------------------------------------------------------------------------------------
;Added by Pramendra Rathi : MNNIT student(7-6-11)(This rule is not working fine because i couldnot catogrize for this rule.i tried a lot to add object but they are a lot and have no similarity)
;He is scrapping proposals to privatise all the nuclear reactors of the country.
(defrule scrap3
(declare (salience 3100))
(id-root ?id scrap)
?mng <- (meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raxxa_kara))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scrap.clp 	scrap3  " ?id "  raxxa_kara)" crlf)))

;------------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : MNNIT student(7-6-11)
(defrule scrap8
(declare (salience 3150))
(id-root ?id scrap)
?mng <- (meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not(kriyA-object 	?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raxxa_kara))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scrap.clp 	scrap8  " ?id "  raxxa_kara)" crlf)))
;------------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : MNNIT student(7-6-11)
;THis is a scrap heap.
(defrule scrap4
(declare (salience 4000))
(id-root ?id scrap)
(id-root =(+ ?id 1) heap) 
?mng <- (meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) raxxI_kA_Dera))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* "  scrap.clp	scrap4  " ?id " "=(+ ?id 1)"  raxxI_kA_Dera)" crlf)
))

;--------------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : MNNIT student(7-6-11)
;The creatures of Woodrow's imagination remain attached to their scrap metal hosts, making every sculpture a parasite. 
(defrule scrap5
(declare (salience 4100))
(id-root ?id scrap)
(id-root =(+ ?id 1) metal) 
?mng <- (meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) raxxI_XAwu))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* "  scrap.clp	 scrap5  " ?id " "=(+ ?id 1)"  raxxI_XAwu))" crlf)
))
;--------------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : MNNIT student(7-6-11)
;This is a scrap book.
(defrule scrap6
(declare (salience 4200))
(id-root ?id scrap)
(id-root =(+ ?id 1) book) 
?mng <- (meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) kawarana_rajistara))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* "  scrap.clp	 scrap6  " ?id " "=(+ ?id 1)"  kawarana_rajistara))" crlf)
))
;---------------------------------------------------------------------------------------------------------------------------
;Added by Pramendra Rathi : MNNIT student(7-6-11)
;This is a scrap yard.
(defrule scrap7
(declare (salience 4300))
(id-root ?id scrap)
(id-root =(+ ?id 1) yard) 
?mng <- (meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) raxxIKAnA))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* "  scrap.clp	 scrap7  " ?id " "=(+ ?id 1)"  raxxIKAnA))" crlf)
))
