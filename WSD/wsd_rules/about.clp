;;FILE MODIFIED BY Meena(20.5.10); DELETED THE REDUNDANT RULES 


;Added by Meena(13.5.11)
(defrule what_about
(declare (salience 4600))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) how|what)
(id-cat_coarse =(+ ?id 1) verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) =(+ ?id 1) 0_ne_ke_bAre_meM_kya_KyAla_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " about.clp   what_about  "  ?id "  " (- ?id 1) " "(+ ?id 1)"  0_ne_ke_bAre_meM_kya_KyAla_hE )" crlf))
)





(defrule about0
(declare (salience 5000))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) have|has|had)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagaBaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about0   "  ?id "  lagaBaga )" crlf))
)

; I have about 100 Rs.





(defrule about1
(declare (salience 4700))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) accept|acknowledge|add|admit|agree|allege|announce|answer|argue|arrange|assert|assume|assure|believe|boast|check|claim|comment|complain|concede|conclude|confirm|consider|contend|convince|decide|demonstrate|deny|determine|discover|dispute|doubt|dream|elicit|ensure|estimate|expect|explain|fear|feel|figure|find|foresee|forget|gather|guarantee|guess|hear|hold|hope|imagine|imply|indicate|inform|insist|judge|know|learn|maintain|mean|mention|note|notice|notify|object|observe|perceive|persuade|pledge|pray|predict|pretend|promise|prophesy|prove|read|realize|reason|reassure|recall|reckon|record|reflect|remark|remember|repeat|reply|report|require|resolve|reveal|say|see|sense|show|state|suggest|suppose|swear|teach|tell|think|threaten|understand|vow|warn|wish|worry|write)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isa_ke_bAre_meM_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about1   "  ?id "  isa_ke_bAre_meM_ki )" crlf))
)

; He told us about who killed whom.




(defrule about2
(declare (salience 4600))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usa_ke_bAre_meM_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about2   "  ?id "  usa_ke_bAre_meM_ki )" crlf))
)

; He was thinking about who got killed in the accident.


;Modified by Meena(27.5.11); added "half" ,"an" in the list Ex; The interview lasted about an hour.
;Added (or(id-cat =(+ ?id 1) <num>)(id-cat_coarse =(+ ?id 1) number)(......) for {"The suspect was about 2 metres tall."} Meena (11.5.11) 
;Modified by Meena(20.5.10)
;Typically , a doctor will take about thirty patients a day .
(defrule about3
(declare (salience 4500))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(or(id-cat =(+ ?id 1) <num> )(id-cat_coarse =(+ ?id 1) number)(id-word =(+ ?id 1) half|an|one|two|three|four|five|six|seven|eight|nine|ten|twenty|thirty|forty|fifty|sixty|seventy|eighty|ninety|hundred|thousand))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagaBaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about3   "  ?id "  lagaBaga )" crlf))
)




;Modified by Meena(3.6.11);(not(id-cat_coarse =(+ ?id 1) verb|.. ..))
;Is John about?
;There's a lot of flu about.
(defrule about04
(declare (salience  100))
;(declare (salience 4200))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) noun|PropN|adverb)
(not(id-cat_coarse =(+ ?id 1) verb|verbal_noun|determiner))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AsapAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp     about04   "  ?id "  AsapAsa )" crlf))
)





;Salience changed by Meena(12.5.11)
(defrule about4
(declare (salience 0))
;(declare (salience 4200))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAro_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about4   "  ?id "  cAro_ora )" crlf))
)

;"about","Adv","1.cAro_ora"
;The boys were climbing about on the rocks.
;--"2.iXara_uXara"
;Boys were sitting about in the park.
;--"3.lagaBaga"
;She is about to finish her homework.
;--"4.bahuwa_ho_gayA"
;I've had about enough of your complaining.
;


;Modified by Meena(8.8.11)
;Added by Meena(12.5.11)
;Their belongings were flung about the room.
;I have been running about all morning trying to find you.
;She always leaves her clothes lying about on the floor. 
(defrule about5
(declare (salience 4100))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-about_saMbanXI  ?id1 ?saMb)(kriyA-kriyA_viSeRaNa ?id1 ?id))
(id-root ?id1 fling|throw|lie|run|jog|walk|move|stroll)
(id-cat_coarse =(+ ?id 1) ?cat)
(id-word =(+ ?id 1) ?wrd)
=>
(if (and (neq ?cat preposition)(neq ?wrd all)) then
    (assert (id-wsd_root_mng ?id meM_iXara-uXara))
    (retract ?mng)
    (if ?*debug_flag* then
        (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp      about5   "  ?id "  meM_iXara-uXara )" crlf))
    else
    (assert (id-wsd_root_mng ?id iXara-uXara))
    (retract ?mng)
    (if ?*debug_flag* then
        (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp     about5   "  ?id "  iXara-uXara )" crlf))
))





;Salience reduced by Meena(12.5.11)
;;We have very different ideas about disciplining children. 
(defrule about6
(declare (salience 0))
;(declare (salience 4100))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bAre_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about6   "  ?id "  ke_bAre_meM )" crlf))
)

;"about","Prep","1.ke_bAre_meM"
;I read a book about cricket.
;--"2.Asa_pAsa"
;I dropped the pen somewhere about here.
;
