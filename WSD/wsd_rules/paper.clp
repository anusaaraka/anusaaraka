
;Added by Meena(2.9.11)
;Murdoch owns many papers. 
;I read the Sunday paper. 
;I read about the robbery in Sunday paper. 
;I read about the train accident in today's paper. 
;The photo was on the front page of all the papers.
(defrule paper0
(declare (salience 3000))
(id-root ?id paper)
?mng <- (meaning_to_be_decided ?id)
;(id-root ?id1 Sunday|Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|daily|evening|local|national|monthly|weekly|today|tomorrow|yesterday)
(not(id-root ?id1 thin|brown|recycle))
(or(viSeRya-RaRTI_viSeRaNa  ?id ?id1)(samAsa ?id ?id1)(viSeRya-viSeRaNa  ?id ?id1)(viSeRya-of_saMbanXI ?id1 ?id)(and(kriyA-object ?id1 ?id)(id-root ?id1 own|publish))) 
(id-word ?id1 ?wrd) 
(id-cat_coarse =(- ?id1 1) ?cat)
=>
(bind ?len (length ?wrd))
(bind ?word (string-to-field (sub-string 1 (- ?len 2) ?wrd)))
(if(or(eq ?wrd sunday)(eq ?wrd monday)(eq ?wrd tuesday)(eq ?wrd wednesday)(eq ?wrd thursday)(eq ?wrd friday)(eq ?wrd saturday)(eq ?wrd daily)(eq ?wrd evening)(eq ?wrd local)(eq ?wrd national)(eq ?wrd monthly)(eq ?wrd weekly))then
(if (eq ?cat preposition) then 
(assert (id-wsd_root_mng ?id ke_samAcAra_pawra)) 
(retract ?mng)
    (if ?*debug_flag* then
    (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paper.clp       paper0  " ?id "  ke_samAcAra_pawra )" crlf)))
else  
(if(or(eq ?word today)(eq ?word tomorrow)(eq ?word yesterday))then
(assert (id-wsd_root_mng ?id samAcAra_pawra))
    (retract ?mng)
    (if ?*debug_flag* then
    (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paper.clp       paper0  " ?id "  samAcAra_pawra )" crlf))
else
(assert (id-wsd_root_mng ?id samAcAra_pawra))
;(assert (id-wsd_root_mng ?id kA_samAcAra_pawra))
(retract ?mng)
(if ?*debug_flag* then
  (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paper.clp       paper0  " ?id "  samAcAra_pawra )" crlf)))
))




 
;Salience reduced by Meena(2.9.11) as it is a default rule
;She works on paper because she hates computers. 
;She received a package wrapped in brown paper. 
;Added by Pramendra Rathi : MNNIT student(6-6-11)
(defrule paper1
   (declare (salience 0))
   (id-root ?id paper)
   ?mng <- (meaning_to_be_decided ?id)
 =>
   (retract ?mng)
   (assert (id-wsd_root_mng ?id kAgaja))
   (if ?*debug_flag*
      then
      (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paper.clp 	paper1  " ?id "  kAgaja )" crlf)))



;Modified by Meena(6.9.11)
;I read a recent paper in the Journal of Medicine. 
;She was invited to give a paper on the results of her research. 
;Added by Pramendra Rathi : MNNIT student(6-6-11)
;This is scientific paper.
(defrule paper2
(declare (salience 3010))
(id-root ?id paper)
;(id-root ?id1 Medicine|scientific|research|social|historical)
(id-root ?id1 medicine|scientific|research|social|historical) ;Modified Medicine to lowcase by Roja(13-06-13) 
?mng <- (meaning_to_be_decided ?id)
;(viSeRya-viSeRaNa ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id leKapawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paper.clp 	paper2  " ?id "  leKapawra )" crlf))
)

;Added by Meena(5.9.11)
;Your grade will be based on four papers and a final exam. 
;Immigration officials will ask to see your papers. 
;The Geography paper was hard. 
;She spent the evening marking exam papers. 
(defrule paper3
(declare (salience 3010))
(id-root ?id paper)
(or(id-root ?id1 his|your|my|her|their|our|divorce|identification|exam|term|test|subject|history|geography|Geography|Science|Maths|Physics|Chemistry|Biology)(id-cat_coarse ?id1 number))
?mng <- (meaning_to_be_decided ?id)
(or(viSeRya-saMKyA_viSeRaNa  ?id ?id1)(viSeRya-RaRTI_viSeRaNa  ?id ?id1)(samAsa ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pepara))  
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paper.clp       paper3  " ?id "  pepara )" crlf))
)




;Experience is more important for this job than paper qualifications. 
;This journal is available in paper and electronic form. 
;The company made a paper profit last year.
;Added by Pramendra Rathi : MNNIT student(6-6-11)
;This is paper box.
(defrule paper4
(declare (salience 3020))
(id-root ?id paper)
?mng <- (meaning_to_be_decided ?id)
(samAsa ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kagajI))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paper.clp 	paper4  " ?id "  kagajI )" crlf)))

