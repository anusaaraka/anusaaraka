;@@@ Added by Preeti 8-11-13
;This school compares with the best in the country. [ Oxford Advanced Learner's Dictionary]
;yaha vixyAlaya xeSa ke sarvowwama vixyAlayoM ke sAWa barAbrI karawA hE.
(defrule compare_barAbrI_kara
(declare (salience 700))
(id-root ?id compare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?)
(not(kriyA-object  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbrI_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compare.clp	compare_barAbrI_kara   "  ?id "  barAbrI_kara )" crlf))
)
;@@@ Added by Preeti 8-11-13
;I have had some difficulties, but they were nothing compared to yours. [ Oxford Advanced Learner's Dictionary]
;merI kuCa kaTinAiyAz WIM, paranwu ye Apa kI wulanA meM kuCa_BI nahI WIM.
(defrule compare_wulanA_meM
(declare (salience 600))
(id-root ?id compare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id compared)
(id-word =(+ ?id 1) with|to)
(not (root-verbchunk-tam-chunkids compare ?chunk ?tam $?  ?id $?)) 
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) wulanA_meM ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  compare.clp	compare_wulanA_meM  "  ?id "  "(+ ?id 1)" wulanA_meM )" crlf))
)

;#############################Defaults rule#######################################
;@@@ Added by Preeti 8-11-13
;You can not compare the two cities - they are totally different. [Cambridge Learner’s Dictionary]
;Apa xonoM SaharoM kI wulanA_nahIM_kara sakawe hEM- ye pUrNa rUpa se alaga hEM.
(defrule compare_wulanA_kara
(declare (salience 500))
(id-root ?id compare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wulanA_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compare.clp	compare_wulanA_kara   "  ?id "  wulanA_kara )" crlf))
)

;###################Parser Problem####################
;Still only twenty-five, she has been compared to the greatest dancer of all time. 
;################### Additional Examples ####################
;compare_wulanA_kara########
;The teachers are always comparing me with/to my sister.
;The critics compared his work to that of Martin Amis.
;We compared the two reports carefully.
;We carefully compared the first report with the second.
;Compare some recent work with your older stuff and you'll see how much you've improved.
;You can't compare the two cities - they're totally different.  
;People have compared me to Elizabeth Taylor. 
;The poet compares his lover's tongue to a razor blade. 
;That seems expensive - have you compared prices in other shops? 
;If you compare house prices in the two areas, it's quite amazing how different they are. 


;compare_wulanA_meM#############
;Children seem to learn more interesting things compared to/with when we were at school. 
;This road is quite busy compared to/with ours. 
;This room is very tidy compared to mine.
;My own problems seem insignificant compared with other people's.
;I've had some difficulties, but they were nothing compared to yours.
;Standards in health care have improved enormously compared to 40 years ago.

;compare_barAbrI_kara#############
;This product compares well with more expensive brands.
;This school compares with the best in the country.
;This house doesn't compare with our previous one .
;Their prices compare favourably with those of their competitors.

