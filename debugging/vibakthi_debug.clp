 (load* global_path.clp)
 (assert (load_yA_tams_with_ne))
 (load-facts "hindi_meanings.dat")
 (load-facts "pada_control_fact.dat")
 (load-facts "relations.dat")
 (load-facts "wsd_tam_facts_output.dat")
 (load-facts "hindi_tam_info.dat")
 (load-facts "wsd_facts_output.dat")
 (load-facts "linkid_word.dat")
 (load-facts "original_word.dat")
 (load-facts "root.dat")


 (dribble-on debug_info)
 (facts)
 (dribble-off)
 (assert (vibakthi missing))

; (defrule question
; (declare (salience 100))
; ?f<-(question ?text)
; =>
; (retract ?f)
; (printout t ?text crlf)
; (bind ?reply (read))
; (if (eq ?reply yes) then
;     (assert (vibakthi missing))
;	 else (if (eq ?reply no) then
;      (printout t "Has vibakthi generated is wrong ?")
;	      (bind ?reply (read))
;      (if (eq ?reply yes) then
;	      (assert (Extra vibakthi added)))
;         else
;	 (printout t "Legal answers are \"yes\" or \"no\"" crlf)
;        (assert (question "Is vibakthi missing ?" ))
;  ))      
; )

 (defrule vibakthi_missing
 ?f<-(vibakthi missing)
 =>
 (retract ?f)
 (printout t "Is the vibakthi problem with subject ?" crlf)
 (bind ?reply (read))
  (if  (eq ?reply yes) then
       (assert (vibakthi missing with subject))
  else (if (eq ?reply no) then
           (printout t "Is the vibakthi problem with object ?" crlf)
           (bind ?reply (read))
           (if (eq ?reply yes) then
               (assert (vibakthi missing with object))
           else (if (eq ?reply no) then
                (printout t "Is the vibakthi problem with preposition ?" crlf)
                (bind ?reply (read))
                  (if (eq ?reply yes) then
                  (assert (vibakthi missing with prepositional id))
                  else (if (eq ?reply no) then               
                  (printout t "vibakthi is always related to subject , object and preposition only" crlf)
                  else
                  (printout t "Legal answers are \"yes\" or \"no\"" crlf)
                  (assert (vibakthi missing))))
           else
               (printout t "Legal answers are \"yes\" or \"no\"" crlf)
               (assert (vibakthi missing))))
      else
      (printout t "Legal answers are \"yes\" or \"no\"" crlf)
      (assert (vibakthi missing)) 
      ) 
     ) 
  )


 (defrule vibakthi_missing_for_subject
 ?f<-(vibakthi missing with subject)
 =>
 (retract ?f)
 (printout t "Is there \"kriyA-subject\" relation with that id in the facts" crlf)
      (bind ?reply (read))
      (if (eq ?reply yes) then
          (printout  t "Has the pada present with subject as a head id and category as PP" crlf)
              (bind ?reply (read))
              (if (eq ?reply yes) then
                  (printout  t "Is \"kriyA_id-subject_viBakwi\" relation present in facts list" crlf)
                  (bind ?reply (read))
                  (if (eq ?reply yes) then
                      (printout t "So ,according to rules subject should have vibakthi." crlf)
                  else (if (eq ?reply no) then
                       (printout t "Has the pada present with kriyA (of that subject) as a head id and category as PP" crlf)
                       (printout  t "Is hindi tam of that kriyA is present in \"yA_tam\" list" crlf)
                       (bind ?reply (read))
                       (if (eq ?reply yes) then
                       (assert (subject vibakthi hindi tam present in yA_tam list))                      
                       else (if (eq ?reply no) then
                       (printout t "Then according to rules subject doesn't have any vibakthi" crlf)
                       else
                       (printout t "Legal answers are \"yes\" or \"no\"" crlf)
                       (assert (vibakthi missing with subject))))
                  else
                      (printout t "Legal answers are \"yes\" or \"no\"" crlf)
                      (assert (vibakthi missing with subject))))
              else (if (eq ?reply no) then
              (printout t "So ,there may be pada_formation problem" crlf)
              else
              (printout t "Legal answers are \"yes\" or \"no\"" crlf)
              (assert (vibakthi missing with subject))))
       else (if (eq ?reply no) then
            (printout t "So ,there may be problem in relation_formation" crlf)
       else
           (printout t "Legal answers are \"yes\" or \"no\"" crlf)
           (assert (vibakthi missing with subject))))
 )


 (defrule subject_vibakthi_hindi_tam_present_in_yA_tam_list
 ?f<-(subject vibakthi hindi tam present in yA_tam list)
 =>
 (retract ?f)
 (printout  t "Has the hindi_meaning generated for that subject is correct" crlf)
 (bind ?reply (read))
      (if (eq ?reply yes) then
      (printout  t "Is there another \"kriyA-subject\" relation with same subject (for other kriyA) " crlf)
      (bind ?reply (read))
             (if (eq ?reply yes ) then
                 (printout t "Then according to rules subject doesn't have any vibakthi" crlf)
            else (if (eq ?reply no) then
                 (printout t "Is the hindi_meaning is present in \"not_ne_verb_list.txt\"" crlf)
                 (printout t "NOTE :: If the hindi_meaning has \"_\"'s check the meaning after the last \"_\" "crlf)
                 (bind ?reply (read))
                 (if (eq ?reply yes) then
                 (printout t "then according to the rules vibakthi is added to the subject of the least kriyA" crlf)
                 else (if (eq ?reply no) then
                 (printout t "Then according to rules subject doesn't have any vibakthi" crlf)
                 else
                 (printout t "Legal answers are \"yes\" or \"no\"" crlf)
                 (assert (subject vibakthi hindi tam present in yA_tam list))))
            else
                (printout t "Legal answers are \"yes\" or \"no\"" crlf)
                (assert (subject vibakthi hindi tam present in yA_tam list))))
      else (if (eq ?reply no) then
           (printout t "Change the meaning and run the sentence again" crlf)      
      else
           (printout t "Legal answers are \"yes\" or \"no\"" crlf)
                  (assert (subject vibakthi hindi tam present in yA_tam list))))
 )


 (defrule vibakthi_missing_for_object
 ?f<-(vibakthi missing with object)
 =>
 (retract ?f)
 (printout t "Is there \"kriyA-object\" or \"kriyA-object_2\" relation with that id in the facts" crlf)
      (bind ?reply (read))
      (if (eq ?reply yes) then
          (assert (vibakthi missing with object or object_2))
      else (if (eq ?reply no) then
               (printout t "Is there \"kriyA-object_1\" relation with that id in the facts" crlf)
               (bind ?reply (read))
               (if (eq ?reply yes) then
               (assert (vibakthi missing with object_1))
               else (if (eq ?reply no) then
               (printout t "So ,there may be problem in relation_formation" crlf)
               else
               (printout t "Legal answers are \"yes\" or \"no\"" crlf)
               (assert (vibakthi missing with object))))
       else
          (printout t "Legal answers are \"yes\" or \"no\"" crlf)
          (assert (vibakthi missing with object))))
 )
 

 (defrule vibakthi_missing_for_object_or_object_2
 ?f<-(vibakthi missing with object or object_2)
 =>
 (retract ?f)
 (printout t "Is there \"kriyA_id-object_viBakwi\" or \"kriyA_id-object2_viBakwi\" fact present in the fact list" crlf
              "If relation is \"kriyA-object\" check for \"kriyA_id-object_viBakwi\"" crlf
              "If relation is \"kriyA-object_2\"  check for \"kriyA_id-object2_viBakwi\" "crlf) 
          (bind ?reply (read))
          (if (eq ?reply yes) then
              (printout t "So ,according to the rules object should have vibakthi" crlf)
          else (if (eq ?reply no) then
               (printout t "Is there \"subject-subject_samAnAXikaraNa\" relation present in the facts list" crlf)
               (bind ?reply (read))
               (if (eq ?reply yes) then
                    (printout t "Is \"subject-subject_samAnAXikaraNa\" relation is correct for that sentence" crlf)
                    (bind ?reply (read))
                    (if (eq ?reply yes) then
                        (printout t "So ,there may be be some other problem" crlf)
                     else (if (eq ?reply no) then
                        (printout t "So, problem is in relations " crlf)
                     else
                        (printout t "Legal answers are \"yes\" or \"no\"" crlf)
                        (assert (vibakthi missing with object or object_2))))
                 else (if (eq ?reply no) then
                          (printout t "Check hindi_meaning of that object in the animate_list , Is it present" crlf)
                          (bind ?reply (read))
                          (if (eq ?reply yes) then
                          (printout t "So ,there may be problem in execution" crlf)
                          else (if (eq ?reply no) then
                                 (printout t "Check whether the given meaning is correct for that object in that sentence" crlf "If it is correct there may be problem in execution " crlf "Else change the meaning and run the sentence again" crlf)
                              else (printout t "Legal answers are \"yes\" or \"no\"" crlf)
                        (assert (vibakthi missing with object or object_2))))
                  else
                     (printout t "Legal answers are \"yes\" or \"no\"" crlf)
                        (assert (vibakthi missing with object or object_2))))
        else
           (printout t "Legal answers are \"yes\" or \"no\"" crlf)
                        (assert (vibakthi missing with object or object_2))))

 )

 (defrule vibakthi_missing_for_object_1_
 ?f<-(vibakthi missing with object_1)
 =>
 (retract ?f)
 (printout t "Is there \"kriyA_id-object1_viBakwi\" fact present in the fact list" crlf)
            (bind ?reply (read))
            (if (eq ?reply yes) then
            (printout t "So ,there may be problem in execution" crlf)
            else
            (if (eq ?reply no) then 
            (printout t "wrong wsd_rule might have been fired or there may be no rule in wsd_rules" crlf)
            else
            (printout t "Legal answers are \"yes\" or \"no\"" crlf)
            (assert (vibakthi missing with object_1))))

)
            

                    
 (defrule  vibakthi_missing_with_prepositional_id
 ?f<- (vibakthi missing with prepositional id)
 =>
 (retract ?f)
 (printout  t "Has the pada present with preposition_id in the preposition slot with category as PP" crlf)
 (bind ?reply (read))
            (if (eq ?reply yes) then
                (printout  t "Has the hindi_meaning generated for that preposition is correct" crlf)
                (bind ?reply (read))
                (if (eq ?reply yes) then
                (printout t "So ,there may be problem in execution" crlf)
                else (if (eq ?reply no) then
                (printout t "Chech why the hindi_meaning has not been generated" crlf)
                else
                (printout t "Legal answers are \"yes\" or \"no\"" crlf)
                (assert (vibakthi missing with prepositional id))))
           else (if (eq ?reply no) then
                (printout t "So ,there may be problem in pada_formation" crlf)
           else
               (printout t "Legal answers are \"yes\" or \"no\"" crlf)
               (assert (vibakthi missing with prepositional id))))    
)
               





(run) 
