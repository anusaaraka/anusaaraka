
 (dribble-on debug_info)
 (facts)
 (dribble-off)
 (system "clear")
 (system "zenity  --text-info  --filename=debug_info  --width=560  --height=300  &")


 (defglobal ?*l_list* = (create$ ))
 (defglobal ?*r_list* = (create$ ))
 (defglobal ?*k_list* = (create$ ))
 (defglobal ?*k_list1* = (create$ ))
 (defglobal ?*final_list* = (create$ ))
 (defglobal ?*count* = 1)
 (defglobal ?*count1* = 1)
 (defglobal ?*debug* = ON )
 (defglobal ?*finite_verb_count* = 0) 
 (defglobal ?*k_list_debug* = (create$ ))

 (defglobal ?*help-file* = order-help)
 (defglobal ?*path1* = ?*path*)

 (deffunction Help ()
 (bind ?help-file_path (str-cat ?*path1* "/debugging/" ?*help-file*))
 (system "zenity  --text-info --title="order-help" --filename="?help-file_path"  --width=560  --height=300  &")
 )

 

 (deffunction reverse ($?a)
 (if (eq (length ?a) 0) then ?a
 else
 (create$ (reverse (rest$ ?a)) (first$ ?a))))

 (defrule sent_display0
 (declare (salience 2007))
 ?f<-(Eng_sen ?sen)
  =>
 (retract ?f)
 (if (eq ?*debug* ON) then
 (system "cat " ?*home_anu_tmp*)
 )
 )
 

 (defrule assert_dummy_facts
 (declare (salience 2000))
 (expr $?)
  =>
 (assert(lwg_list))
 (assert(hindi_id_order ))
 (assert(ordered_group_ids))
 (assert(finite_verb_count ))
 (assert (comma_list_for_sent_opener))
 (assert (index 1))
 (assert (English-list ))

 )
 
 (defrule comma_list_for_sent_opener
 (declare (salience 1050))
 (id-right_punctuation ?id ",")
 ?f<-(comma_list_for_sent_opener $?ids)
 (test (eq (member$ ?id  $?ids) FALSE))
 =>
 (retract ?f)
 (bind $?ids (sort > (create$ $?ids ?id)))
 (printout t $?ids crlf)
 (assert (comma_list_for_sent_opener $?ids)))
 
;-----------------------------------------------------------------------------------------------------
 (defrule get_eng_word_list
 (declare (salience 1950))
 (id-word ?id ?word)
 ?f1<-(index ?id)
 ?f<-(English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (bind ?word (str-cat ?word "," ?id ))
 (assert (English-list $?Eng_list ?word))
 (bind ?id (+ ?id 1))
 (assert (index ?id))
 )

 ;----------------------------------------------------------------------------------------------------- 
 ; get head ids from local word grouping into lwg_list
 (defrule  lwg_list
 (declare (salience 1040))
 (root-verbchunk-tam-chunkids ? ? ? $? ?id)
 (relation-anu_ids  ?rel ?id ?r_id)
 ?f<-(lwg_list $?ids)
 (not (lwg_id ?id))
  =>
	(retract ?f )
        (bind ?*finite_verb_count* (+ ?*finite_verb_count* 1))
	(assert (lwg_id ?id))
    	(bind $?ids (insert$ $?ids 1 ?id))
    	(bind $?ids (sort > $?ids))
    	(assert (lwg_list $?ids))
 )

 (defrule print_lwg_list
 (declare (salience 1039))
 (lwg_list $?ids)
 (English-list $?Eng_list)
 (not (lwg_list_printed))
  =>
 (assert(lwg_list_printed))
 (if (eq ?*debug* ON) then
 (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
 (printout t crlf " Finite verbs in the sentences are : ")
                   (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
 (printout t " (Assuming lwg verbs as finite verbs)" crlf))
 )

 ;----------------------------------------------------------------------------------------------------- 
 ;Adding left-id  to ?*l_list* list and
 ;Adding right-id to ?*r_list* list

 (defrule rule1
 (declare (salience 1000))
 (relation-anu_ids  ?rel ?l_id ?r_id)
 (test (and (neq ?rel viSeRya-det_viSeRaNa) (neq ?rel viSeRya-viSeRaNa)(neq ?rel kriyA-nA)(neq ?rel kriyA-ke_liye) (neq ?rel nAma-saMkRipwa_nAma)(neq ?rel proper_noun-det_viSeRaNa)(neq ?rel subject-opener)(neq ?rel kriyA-ne_ke_liye)(neq ?rel viSeRya-wulanAwmaka_viSeRaNa)(neq ?rel kriyA-viXi_vAkyakarma)(neq ?rel kriyA-samAnakAlika_kriyA)(neq ?rel pUrvakAlika_kriyA-ananwarakAlika_kriyA)(neq ?rel kriyA-praSnavAcI)(neq ?rel muKya_vAkya-sApekRa_upavAkya)(neq ?rel subject-vAkyasamAnAXikarNa)(neq ?rel kriyA-samakAlika_kriyA)(neq ?rel kriyA-karwA)(neq ?rel kriyA-vAkyakarma)(neq ?rel kriyA-preraka_kriyA)))
 =>
 (bind ?*l_list* (create$ ?*l_list* ?l_id))
 (bind ?*r_list* (create$ ?*r_list* ?r_id))
 )


 ;----------------------------------------------------------------------------------------------------- 
 ;Getting related ids of a particular finite verb
 (defrule rule3
 (declare (salience 900))
 (lwg_list ?k_id1 $?ids)
 (English-list $?Eng_list)
 => 
  (bind ?len (length$ ?*l_list*))
  (bind ?*k_list1* (create$ ?*k_list1*  ?k_id1))
   (while (neq (length$ ?*k_list1*) 0) do
    (bind ?k_id (nth$ 1 ?*k_list1*))
     (loop-for-count (?j 0 ?len) 
        (bind ?id1 (nth$ ?j ?*l_list*))
           (if (eq ?id1 ?k_id) then
             (bind ?n_id1 (nth$ ?j ?*r_list*)) 
             (assert (list_control_fact ?n_id1))
             (if (eq (member$ ?n_id1 ?*k_list*) FALSE) then ;If the id already present in the list it should'nt be taken again
             (bind ?*k_list1* (create$ ?*k_list1* ?n_id1))
             (bind ?*k_list* (create$ ?*k_list* ?n_id1))
             )
           )
     )
     (bind ?*k_list1* (delete-member$ ?*k_list1* (first$ ?*k_list1*)))
   )
 (bind ?*k_list1* (create$ ))
 (assert (list_control_fact ?k_id1))
 (if (eq ?*debug* ON) then
 (printout t crlf "'padas' in the clause with the finite verb  \""(nth$ ?k_id1 $?Eng_list) "\" are ::  ")
                   (loop-for-count (?i  1 (length$ ?*k_list*))
                   (bind ?wrdid (nth$ ?i ?*k_list*))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
 (printout t crlf)
 )
 (bind ?*k_list* (create$ ?k_id1 ?*k_list*))
 (bind ?*k_list* (sort > ?*k_list*))
 (bind ?*k_list* (reverse  ?*k_list* ))
 (assert (list ?*k_list*))
 (if (eq ?*debug* ON) then
 (printout t " List after sorting in increasing order ::  ")
 (loop-for-count (?i  1 (length$ ?*k_list*))
                   (bind ?wrdid (nth$ ?i ?*k_list*))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
 (printout t  " (Assuming hindi words come in reverse order of English.)"crlf))
 )

 ;----------------------------------------------------------------------------------------------------- 
 

 ;Moving the subject to first position in the sentence.
 (defrule subject_rule
 (declare (salience 955))
 (relation-anu_ids kriyA-subject ?kriyA_id ?subj_id)
 ?f<-(list $?list)
 ?f1<-(list_control_fact ?subj_id)
 (test (and (member$ ?subj_id $?list)(member$ ?kriyA_id $?list)))
 (English-list $?Eng_list)
  =>
        (retract ?f ?f1)
        (if (eq ?*debug* ON) then
        (printout t " FIRED subject_rule    :: Moved subject("(nth$ ?subj_id $?Eng_list)") to first position in the sentence." crlf )
        (printout t " Before movement       :: " )
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t   crlf ))
        (bind $?list (delete-member$ $?list ?subj_id))
        (bind $?list (create$ ?subj_id $?list))
        (assert(list $?list))
        (if (eq ?*debug* ON) then
        (printout t " After movement        :: ")
        (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t   crlf crlf))
        (bind ?*k_list* (create$))
 )

 ;-----------------------------------------------------------------------------------------------------
 ;Moving the verb to last position in the sentence.
 (defrule verb_rule
 (declare (salience 954))
 (root-verbchunk-tam-chunkids $? ?h_id) ; To stop firing this rule in non-finite verb cases  Ex : Venus was a major Roman goddess , associated with love and beauty .
 ;(pada_info (group_head_id ?h_id)(group_cat VP)(Hin_position 0) )
 ?f<-(list $?list)
 ?f1<-(list_control_fact ?h_id)
 (test(and (member$ ?h_id $?list)(member$ ?h_id $?list)))
 (English-list $?Eng_list)
  =>
        (retract ?f ?f1)
        (if (eq ?*debug* ON) then
      (printout t " FIRED verb_rule       :: Moved verb("(nth$ ?h_id  $?Eng_list)") to last position in the sentence." crlf )
      (printout t " Before movement       :: " )
                      (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t   crlf ))
        (bind $?list (delete-member$ $?list ?h_id))
        (bind $?list (create$ $?list ?h_id))
        (assert(list $?list))
        (if (eq ?*debug* ON) then
        (printout t " After movement        :: " )
                     (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
                   (printout t   crlf crlf)) 
 )

  ;----------------------------------------------------------------------------------------------------- 

  ;Moving subject_samAnAXikaraNa to before kriyA position in the sentence.
  ;The hat is too small for me . 
  (defrule subject_samAnAXikaraNa_rule
  (declare (salience 350))
  (relation-anu_ids subject-subject_samAnAXikaraNa ?sub_id ?subject_samAnAXikaraNa)
  ?f<-(list $?list ?kriyA)
  ?f1<-(list_control_fact ?subject_samAnAXikaraNa)
  (test (member$ ?sub_id $?list))
  (English-list $?Eng_list)
   =>
        (retract ?f ?f1)
        (if (eq ?*debug* ON) then
        (printout t " FIRED subject_samAnAXikaraNa_rule :: Moved subject_samAnAXikaraNa("(nth$ ?subject_samAnAXikaraNa $?Eng_list)") to before kriyA("(nth$ ?kriyA $?Eng_list)") in the sentence." crlf)
        (printout t " Before movement        :: ")
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  " " (nth$ ?kriyA $?Eng_list) crlf))
        (bind $?list (delete-member$ $?list ?subject_samAnAXikaraNa))
        (assert(list $?list ?subject_samAnAXikaraNa ?kriyA))
        (if (eq ?*debug* ON) then
        (printout t " After movement         :: " )
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t " "(nth$ ?subject_samAnAXikaraNa $?Eng_list) " " (nth$ ?kriyA $?Eng_list) crlf crlf))
   )

 ;----------------------------------------------------------------------------------------------------- 
  ;Move the object to the before kriyA position in the sentence.
  (defrule object_rule
  (declare (salience 953))
  (relation-anu_ids kriyA-object|kriyA-object_2 ?kriyA ?obj_id)
  (not (relation-anu_ids kriyA-object|kriyA-object_2 ?kriyA ?obj_id2&:(> ?obj_id2 ?obj_id))) 
  ?f<-(list $?list ?kriyA)
  ?f1<-(list_control_fact ?obj_id)
  (test (member$ ?obj_id $?list))
  (English-list $?Eng_list)
   =>
        (retract ?f ?f1)
        (if (eq ?*debug* ON) then
        (printout t " FIRED object_rule     :: Moved the object("(nth$ ?obj_id $?Eng_list)") to before kriyA position in the sentence." crlf)
        (printout t " Before movement       :: " )
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  " " (nth$ ?kriyA $?Eng_list) crlf))
        (bind ?pos (member$ ?kriyA $?list))
        (bind $?list (delete-member$ $?list ?obj_id))
        (assert(list $?list ?obj_id ?kriyA ))
        (if (eq ?*debug* ON) then
        (printout t " After movement        :: " )
        (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  " " (nth$ ?obj_id $?Eng_list) " " (nth$ ?kriyA $?Eng_list) crlf))
   )

  ;Move the object to the before kriyA position in the sentence.(non-finite-verb)
  ;Taking that course improved the student's skills .
  (defrule object_rule1
  (declare (salience 351))
  ?f1<-(relation-anu_ids kriyA-object  ?kriyA ?obj_id)
  ?f2<-(list $?list ?h_kriyA)
  (test (and (member$ ?obj_id $?list) (member$ ?kriyA $?list)))
  (English-list $?Eng_list)
  =>
        (retract ?f1 ?f2)
        (if (eq ?*debug* ON) then
        (printout t " FIRED object_rule1     :: Moved the object("(nth$ ?obj_id $?Eng_list)") to before kriyA("(nth$ ?kriyA $?Eng_list)") position in the sentence.(non-finite-verb)" crlf)
        (printout t " Before movement       :: " )
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " ) 
                   )
        (printout t  " " (nth$ ?h_kriyA $?Eng_list) crlf))

        (bind $?list (delete-member$ $?list ?obj_id))
        (bind ?pos (member$ ?kriyA $?list))
        (bind $?list (insert$ $?list ?pos ?obj_id))
        (assert(list $?list ?h_kriyA)) 
        (if (eq ?*debug* ON) then
        (printout t " After movement        :: " )
        (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  " " (nth$ ?h_kriyA $?Eng_list) crlf)) 
 )

  ;Moving object_samAnAXikaraNa to after object position in the sentence.(suggested by Sheetal 06-01-10)
  ;We have undertaken a project to make the city clean .
  (defrule object_samAnAXikaraNa_rule
  (declare (salience 350))
  (relation-anu_ids object-object_samAnAXikaraNa ?obj_id ?object_samAnAXikaraNa)
  ?f<-(list $?list)
  ?f1<-(list_control_fact ?object_samAnAXikaraNa)
  (test (member$ ?obj_id $?list))
  (test (member$ ?object_samAnAXikaraNa $?list))
  (English-list $?Eng_list)
   =>
        (retract ?f ?f1)
        (if (eq ?*debug* ON) then
        (printout t " FIRED object_samAnAXikaraNa_rule     :: Moved the object_samAnAXikaraNa("(nth$ ?obj_id $?Eng_list)") to after object("(nth$ ?obj_id $?Eng_list)") position in the sentence." crlf)
        (printout t " Before movement       :: " )
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   ))
        (printout t  crlf)
        (bind ?*k_list_debug*  (create$ $?list))
        (bind $?list (delete-member$ $?list ?object_samAnAXikaraNa))
         (bind ?pos (member$ ?obj_id $?list))
         (bind $?list (insert$ $?list (+ ?pos 1) ?object_samAnAXikaraNa))
         (assert (list $?list))
        (if (eq ?*debug* ON) then
        (printout t " After movement        :: " )
        (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )) 

 )


 ;It is not a good idea to drive for hours without a rest .   
(defrule kriyA_niReXaka_rule
  (declare (salience 340))
  (relation-anu_ids kriyA-kriyA_niReXaka  ?kriyA ?kriyA_niReXaka)
  ?f<-(list $?list ?kriyA)
  ?f1<-(list_control_fact ?kriyA_niReXaka)
  (test (member$ ?kriyA_niReXaka $?list))
  (English-list $?Eng_list)
   =>
        (retract ?f ?f1)
        (if (eq ?*debug* ON) then
        (printout t " FIRED kriyA_niReXaka_rule     :: Moved the kriyA_niReXaka("(nth$ ?kriyA_niReXaka $?Eng_list)") to before kriyA("(nth$ ?kriyA $?Eng_list)") position in the sentence." crlf)
        (printout t " Before movement       :: " )
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  " " (nth$ ?kriyA $?Eng_list) crlf))

        (bind $?list (delete-member$ $?list ?kriyA_niReXaka))
        (assert(list $?list ?kriyA_niReXaka ?kriyA ))
     (if (eq ?*debug* ON) then
        (printout t " After movement        :: " )
        (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  " " (nth$ ?kriyA_niReXaka $?Eng_list) " "(nth$ ?kriyA $?Eng_list) crlf))) 

;---------------------------------------------------------------------------------------------------------------------
;Ex:-Still in development , Google Wave is a browser-based tool that mixes e-mail , with Instant Messaging and real-time online collaboration elements .  
;As a protein synthesis inhibitor , it stops the growth of bacteria by disrupting their production of proteins .
;If for a kriyA there sentence_opener's  order of the whole clause will be same as English ,and is moved to the start of the sentence
 (defrule sentence_opener_rule
 (declare (salience 951))
 ?f<-(relation-anu_ids kriyA-sentence_opener  ?kriyA ?sen_opener)
 (not (relation-anu_ids kriyA-subject ?kriyA ?sen_opener1&:(> ?sen_opener ?sen_opener1)))
 (comma_list_for_sent_opener $?ids)
 ?f2<-(list $?list)
 (test (!= (length $?ids) 0))
 (not (kriyA-sentence_opener_movement_done ?kriyA))
 (English-list $?Eng_list)
 =>
 (retract ?f2)
 (if (eq ?*debug* ON) then
        (printout t " FIRED sentence_opener_rule     :: " crlf)
        (printout t " Before movement       :: " )
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   ))
 (bind ?length (length $?ids))
 (bind $?val (create$))
 (bind $?val1 (create$))
 (loop-for-count (?i 1 ?length)
                 (bind ?j (nth$ ?i $?ids))
                 (if (> ?j ?sen_opener) then
                     (loop-for-count (?k ?sen_opener ?j)
                                     (bind $?val (create$ $?val ?k))
                      )
               (break)
                  )
  )
  (bind ?len (length $?val))
  (loop-for-count (?l 1 ?len)
                  (bind ?j (nth$ ?l $?val))
                  (if (member$ ?j $?val) then
                  (bind $?list (delete-member$ $?list ?j))
                  (bind $?val1 (sort > (create$ $?val1 ?j)))
                  )
  )
 (bind $?list (create$ $?val1 $?list))
 (assert (list $?list))
  (if (eq ?*debug* ON) then
        (printout t " After movement        :: " )
        (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   ))

 (assert (kriyA-sentence_opener_movement_done ?kriyA))
 )

  ;-----------------------------------------------------------------------------------------------------


  ;Moving  RaRTI_viSeRaNa before RaRTI_viSeRya 
  ;Passion is a must to excel and to reach your potential .
  ;Modified by Shirisha Manju :"Added viSeRya-kqxanwa_viSeRaNa" in the list Ex:The 5 thousand people invited by Bob attended 
  (defrule RaRTI_viSeRaNa_rule
  (declare (salience 340))
  (relation-anu_ids viSeRya-RaRTI_viSeRaNa|kriyA_viSeRaNa-viSeRaka|viSeRya-kqxanwa_viSeRaNa ?RaRTI_id ?RaRTI_id1)
  (not (viSeRya-RaRTI_viSeRaNa  ?RaRTI_id ?RaRTI_id2&:(> ?RaRTI_id2 ?RaRTI_id1)))
  ?f0<-(list $?list)
  (test (member$ ?RaRTI_id $?list))
  (test (member$ ?RaRTI_id1 $?list))
  (not (movement_done ?RaRTI_id))
  (not (movement_done ?RaRTI_id1))
  (English-list $?Eng_list)
  =>
        (retract ?f0 )
        (if (eq ?*debug* ON) then
        (printout t " FIRED RaRTI_viSeRaNa_rule        :: Moved RaRTI_viSeRaNa("(nth$ ?RaRTI_id1 $?Eng_list)") before RaRTI_viSeRya("(nth$ ?RaRTI_id $?Eng_list)") position in the sentence." crlf) 
        (printout t " Before movement       :: " )
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
        (bind $?list (delete-member$ $?list ?RaRTI_id1))
        (bind ?pos (member$ ?RaRTI_id $?list))
        (bind $?list (insert$ $?list ?pos ?RaRTI_id1))
        (assert (list $?list))
	(assert (movement_done ?RaRTI_id))
	(assert (movement_done ?RaRTI_id1))
        (if (eq ?*debug* ON) then
        (printout t " After movement        :: ")
        (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
   )
  
  ;-----------------------------------------------------------------------------------------------------

 ; He lives at Chandinichok in Delhi in India . 
 ;vaha BArawa meM xillI meM \@Chandinichok meM rahawA hE
  (defrule viSeRya_viSeRaNa_rule1
  (declare (salience 351))
  ?f1<-(relation-anu_ids  ?rel ?v_id ?v_id1)
  (relation-anu_ids  ?rel1 ?v_id ?v_id2&:(> ?v_id2 ?v_id1))
  (not (relation-anu_ids  ? ?v_id ?v_id3&:(> ?v_id3 ?v_id2)))
  (test (neq (str-index "-" ?rel)  FALSE))
  (test (neq (str-index "_" ?rel)  FALSE))
  (test (neq (str-index "-" ?rel1)  FALSE))
  (test (neq (str-index "_" ?rel1)  FALSE)) 
  (test (or (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "viSeRya")(eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kqxanwa")(eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kriyA")))
  (test (eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "saMbanXI"))
 (test (or (eq (sub-string 1 (- (str-index "-" ?rel1) 1) ?rel1) "viSeRya")(eq (sub-string 1 (- (str-index "-" ?rel1) 1) ?rel1) "kqxanwa")(eq (sub-string 1 (- (str-index "-" ?rel1) 1) ?rel1) "kriyA")))
  (test (eq (sub-string (+ (+ (str-index "-" ?rel1) 1) (- (str-index "_" ?rel1)  (str-index "-" ?rel1))) (length ?rel1) ?rel1) "saMbanXI"))
  (test (neq (sub-string (+ (str-index "-" ?rel) 1)  (- (str-index "_" ?rel) 1) ?rel)  "to"))
  (test (neq (sub-string (+ (str-index "-" ?rel1) 1)  (- (str-index "_" ?rel) 1) ?rel1)  "to"))
  ?f0<-(list  $?id1)
  (test (member$ ?v_id $?id1))
  (test (member$  ?v_id1 $?id1))
  (not (movement_done ?v_id1))
  (English-list $?Eng_list)
   =>
       (retract ?f0 )
       (if (eq ?*debug* ON) then
       (printout t " FIRED viSeRya_viSeRaNa_rule1     " crlf)
       (printout t " Before movement       :: " )
                  (loop-for-count (?i  1 (length$ $?id1))
                  (bind ?wrdid (nth$ ?i $?id1))
                  (bind ?word (nth$ ?wrdid $?Eng_list))
                  (printout t ?word " " )
                  )
       (printout t  crlf))
       (bind ?*k_list_debug*  (create$  $?id1))
       (bind $?id1 (delete-member$ $?id1 ?v_id1))
       (bind ?pos (member$ ?v_id $?id1))
       (bind $?id1 (insert$ $?id1 ?pos ?v_id1))
       (assert (list $?id1))
(printout t "(Rule_name-before_movement-after_movement  viSeRya_viSeRaNa_rule1  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?id1)"))" crlf)
        (if (eq ?*debug* ON) then
        (printout t " After movement        :: ")
        (loop-for-count (?i  1 (length$ $?id1))
                   (bind ?wrdid (nth$ ?i $?id1))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))

  (assert (movement_done ?v_id1))
  )

  ;Moving viSeRaNa before viSeRya 
  ;The blacksmith made an assay of iron ore . 
  ;;Moving (of/for/.....)_saMbanXI before its viSeRya
  (defrule viSeRya_viSeRaNa_rule
  (declare (salience 350))
  ?f1<-(relation-anu_ids  ?rel ?v_id ?v_id1)
  (not (relation-anu_ids  ?rel ?v_id ?v_id2&:(< ?v_id2 ?v_id1)))
  (test (neq (str-index "-" ?rel)  FALSE))
  (test (neq (str-index "_" ?rel)  FALSE))
  (test (or (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "viSeRya")(eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kqxanwa")))
  (test (eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "saMbanXI"))
  (test (neq (sub-string (+ (str-index "-" ?rel) 1)  (- (str-index "_" ?rel) 1) ?rel)  "to"))
  ?f0<-(list  $?id1)
  (test (member$ ?v_id $?id1))
  (test (member$  ?v_id1 $?id1))
  (English-list $?Eng_list)
   =>
       (retract ?f0 ?f1)
       (if (eq ?*debug* ON) then
       (bind ?str (sub-string (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel) 1) ?rel))
       (printout t " FIRED viSeRya_viSeRaNa_rule        :: Moved " ?str"_saMbanXI("(nth$ ?v_id1 $?Eng_list)") before viSeRya("(nth$ ?v_id $?Eng_list)") position in the sentence." crlf)
       (printout t " Before movement       :: ")
                   (loop-for-count (?i  1 (length$ $?id1))
                   (bind ?wrdid (nth$ ?i $?id1))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
       (bind $?id1 (delete-member$ $?id1 ?v_id1))
       (bind ?pos (member$ ?v_id $?id1))
       (bind $?id1 (insert$ $?id1 ?pos ?v_id1))
       (assert (list $?id1))
       (if (eq ?*debug* ON) then
       (printout t " After movement        :: " )
                   (loop-for-count (?i  1 (length$ $?id1))
                   (bind ?wrdid (nth$ ?i $?id1))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
  )


  ;The present version of Anusaaraka provides for translation from English to Hindi .(3rd parse)
  ;Suggested by Sukadha (23-09-09)
  ;Moving to_saMbanXI after its viSeRya
  (defrule viSeRya_viSeRaNa_to_rule
  (declare (salience 351))
  ?f1<-(relation-anu_ids  ?rel ?v_id ?v_id1)
  (test (neq (str-index "-" ?rel)  FALSE))
  (test (neq (str-index "_" ?rel)  FALSE))
  (test (or (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "viSeRya")(eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kqxanwa")));(eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kriyA")))
  (test (eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "saMbanXI"))
  (test (eq (sub-string (+ (str-index "-" ?rel) 1)  (- (str-index "_" ?rel) 1) ?rel)  "to"))
  ?f0<-(list  $?id1)
  (test (member$ ?v_id $?id1))
  (test (member$  ?v_id1 $?id1))
  (English-list $?Eng_list)
   =>
       (retract ?f0 ?f1)
       (if (eq ?*debug* ON) then
       (printout t " FIRED viSeRya_viSeRaNa_to_rule        :: Moved to_saMbanXI("(nth$ ?v_id1 $?Eng_list)") before viSeRya("(nth$ ?v_id $?Eng_list)") position in the sentence." crlf)
       (printout t " Before movement        :: " )
                     (loop-for-count (?i  1 (length$ $?id1))
                   (bind ?wrdid (nth$ ?i $?id1))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))

       (bind $?id1 (delete-member$ $?id1 ?v_id))
       (bind ?pos (member$ ?v_id1 $?id1))
       (bind $?id1 (insert$ $?id1 ?pos ?v_id))
       (assert (list $?id1))
        (if (eq ?*debug* ON) then
       (printout t " After movement        :: " )
                   (loop-for-count (?i  1 (length$ $?id1))
                   (bind ?wrdid (nth$ ?i $?id1))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
  )


   ;-----------------------------------------------------------------------------------------------------
   ;Moving kriyA_viSeRaNa_viSeRaka befor kriyA_viSeRaNa
   ;She works very carefully
  (defrule viSeRaNa_viSeRaka_rule
  (declare (salience 350))
  ?f1<-(relation-anu_ids kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka ?v_id ?v_id1)
  ?f0<-(list  $?id1)
  (test (member$ ?v_id $?id1))
  (test (member$  ?v_id1 $?id1))
  (English-list $?Eng_list)
   =>
       (retract ?f0 ?f1)
       (if (eq ?*debug* ON) then
       (printout t " FIRED viSeRaNa_viSeRaka_rule        :: Moved kriyA_viSeRaNa_viSeRaka("(nth$ ?v_id1 $?Eng_list)") before kriyA_viSeRaNa("(nth$ ?v_id $?Eng_list)") position in the sentence." crlf)
       (printout t " Before movement        :: " )
                     (loop-for-count (?i  1 (length$ $?id1))
                   (bind ?wrdid (nth$ ?i $?id1))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
       (bind $?id1 (delete-member$ $?id1 ?v_id1))
       (bind ?pos (member$ ?v_id $?id1))
       (bind $?id1 (insert$ $?id1 ?pos ?v_id1))
       (assert (list $?id1))
       (if (eq ?*debug* ON) then
       (printout t " After movement        :: " )
                   (loop-for-count (?i  1 (length$ $?id1))
                   (bind ?wrdid (nth$ ?i $?id1))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
  )
 
  ;-----------------------------------------------------------------------------------------------------
  ; Be careful , she said .
  ; Move kriyA_mUla id before kriyA id
  (defrule kriyA_mUla_rule
  (declare (salience 350))
  ?f1<-(relation-anu_ids kriyA-kriyA_mUla  ?kriyA  ?kriyA_mUla)
  ?f0<-(list $?ids)
  (test (member$ ?kriyA $?ids))
  (test (member$  ?kriyA_mUla $?ids))
  (English-list $?Eng_list)
   =>
       (retract ?f0 ?f1)
       (if (eq ?*debug* ON) then
        (printout t " FIRED viSeRaNa_viSeRaka_rule        :: Moved kriyA_mUla("(nth$ ?kriyA_mUla $?Eng_list)") before kriyA("(nth$ ?kriyA $?Eng_list)") position in the sentence." crlf)
        (printout t " Before movement        :: " )
                   (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  crlf))
        (bind $?ids (delete-member$ $?ids ?kriyA_mUla))
        (bind ?pos (member$ ?kriyA $?ids))
        (bind $?ids (insert$ $?ids ?pos ?kriyA_mUla))
        (assert (list $?ids))
        (if (eq ?*debug* ON) then
        (printout t " After movement        ::" )
        (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  crlf))
  )
 
  ;-----------------------------------------------------------------------------------------------------
  ;Move saMjFA_samAnAikaraNa before saMjFA
  ;Rama gave a book to Dasharat , the king of Ayodhya . 
  (defrule saMjFA-saMjFA_samAnAikaraNa_rule
  (declare (salience 380))
  ?f1<-(relation-anu_ids saMjFA-saMjFA_samAnAXikaraNa ?saMjFA_id ?saMjFA_samAnAikaraNa_id)
  ?f0<-(list $?ids)
  (test (member$ ?saMjFA_id $?ids))
  (test (member$ ?saMjFA_samAnAikaraNa_id $?ids))
  (English-list $?Eng_list)
  =>
        (retract ?f0 ?f1)
        (if (eq ?*debug* ON) then
        (printout t " FIRED saMjFA-saMjFA_samAnAikaraNa_rule        :: Moved saMjFA_samAnAikaraNa("(nth$ ?saMjFA_samAnAikaraNa_id $?Eng_list)") before saMjFA("(nth$ ?saMjFA_id $?Eng_list)") position in the sentence." crlf)
        (printout t " Before movement        ::" )
                      (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  crlf))
        (bind $?ids (delete-member$ $?ids ?saMjFA_samAnAikaraNa_id))
        (bind ?pos (member$ ?saMjFA_id $?ids))
        (bind $?ids (insert$ $?ids ?pos ?saMjFA_samAnAikaraNa_id))
        (assert (list $?ids))
        (if (eq ?*debug* ON) then
        (printout t " After movement        ::")
                  (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  crlf))
  )


  ;----------------------------------------------------------------------------------------------------- 
  ;Concatenating ordered sentences
  (defrule final_order
  (declare (salience -100))
  ?f1<-(lwg_list ?id $?ids)
  ?f<-(list $?list)
  ?f0<-(ordered_group_ids $?ids1)
  =>
  (retract ?f ?f1 ?f0)
  (bind ?sen (explode$ (str-cat ?*count* S)))
  (assert (Sent ?sen $?list))
  (assert (Sentence ?sen))
  (bind ?*final_list* (create$ ?*final_list* $?list))
  (bind ?*count* (+ ?*count* 1))
  (assert (lwg_list $?ids))
  (bind ?*k_list* (create$ ))
  (assert (ordered_group_ids ?*final_list*)) 
  )
  ;----------------------------------------------------------------------------------------------------- 

   (defrule substitute_ids
   (declare (salience -99))
   ?f<-(Sent ?sen ?h_id $?ids)
   (not (current_id-group_members ?h_id $?grp_ids))
   ?f0<-(Sentence ?sen $?ids1)  
  =>
        (retract ?f ?f0)
        (assert (Sent ?sen $?ids))
        (assert (Sentence ?sen $?ids1))
  )

   (defrule substitute_ids1
   (declare (salience -99))
   ?f<-(Sent ?sen ?h_id $?ids)
   (current_id-group_members ?h_id $?grp_ids)
   ?f0<-(Sentence ?sen $?ids1)
    =>
        (retract ?f ?f0)
        (assert (Sent ?sen $?ids))
        (assert (Sentence ?sen $?ids1 $?grp_ids))

   )
 ;----------------------------------------------------------------------------------------------------- 

  (defrule sen_substitution
  (declare (salience -101))
  (Sentence ?sen $?ids)
  (English-list $?Eng_list)
   =>
   (if (eq ?*debug* ON) then
   (printout t " FIRED sen_substitution     :: Sentence after substituting head ids with pada ids "crlf                                     "                            :: ")
                   (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t crlf )
   )
  )
 ;----------------------------------------------------------------------------------------------------- 
  
  (defrule final_order1
  (declare (salience -98))
  ?f<-(Sent ?sen)
  ?f0<-(Sentence ?sen $?ids1)
  ?f1<-(hindi_id_order $?ids)
  =>
  (retract ?f ?f1)
  (assert (hindi_id_order $?ids $?ids1))
  )
 
 ;----------------------------------------------------------------------------------------------------

(defrule display_final_order
  (declare (salience -110))
  ?f1<-(hindi_id_order $?ids)
  (not (display_final_order))
  (English-list $?Eng_list)
   =>
  (assert (display_final_order))
  (if (eq ?*debug* ON) then
  (printout t " FIRED display_final_order  :: Sentence Before movement/substitution of conjunctions across the sentences"crlf
              "                            :: ")
               (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t crlf ) )
  ) 

 ;----------------------------------------------------------------------------------------------------
   ;The girl who you called yesterday has arrived.
   (defrule viSeRya-jo_samAnAXikaraNa_rule
   (declare (salience -200))
   ?f0<-(relation-anu_ids viSeRya-jo_samAnAXikaraNa  ?sub ?jo_samAnAXikaraNa)
   (relation-anu_ids  kriyA-subject  ?kri ?sub)
   (relation-anu_ids  kriyA-subject  ?kri1&:(> ?kri ?kri1) ?sub_id)
   ?f1<-(Sentence ?Sen1 $?sen1 ?kri)
   ?f2<-(Sentence ?Sen2 $?sen2 ?kri1) 
   ?f3<-(hindi_id_order $?hin_order)
   (test (and (member$ ?kri $?hin_order) (member$ ?kri1 $?hin_order) ))
   (test (member$ ?jo_samAnAXikaraNa $?sen2))
   (test (member$ ?jo_samAnAXikaraNa $?sen1))
   (English-list $?Eng_list)
   =>
        (retract ?f0 ?f3)
        (if (eq ?*debug* ON) then
          (printout t " FIRED subject-jo_samAnAXikaraNa_rule  :: Removed jo_samAnAXikaraNa("(nth$ ?jo_samAnAXikaraNa $?Eng_list)") from both the sentences and deciding its position and placing it in first position "crlf)
          (bind $?b_list (create$ $?hin_order))
          (printout t " Before Movement       :: ")
          (loop-for-count (?i  1 (length$ $?b_list))
                   (bind ?wrdid (nth$ ?i $?b_list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
          (printout t crlf )
        )
        (bind ?*k_list_debug*  (create$ $?hin_order ))
        (bind $?hin_order (delete-member$ $?hin_order ?jo_samAnAXikaraNa))
        (bind $?sen2 (delete-member$ $?sen2 ?jo_samAnAXikaraNa))
        (bind ?position (member$ (nth$ 1 $?sen2) $?hin_order))
        (if (neq ?position FALSE) then
                (bind $?hin_order (insert$ $?hin_order ?position ?jo_samAnAXikaraNa ))
        else    (if (eq (length$ $?sen2) 0) then
                        (bind ?position (member$  ?kri1 $?hin_order))
                        (bind $?hin_order (insert$ $?hin_order ?position ?jo_samAnAXikaraNa ))))
                        (assert (hindi_id_order $?hin_order))
   ;                     (printout  ?*debug* "(Rule_name-before_movement-after_movement  viSeRya-jo_samAnAXikaraNa_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?hin_order ))"))" crlf)
                        (if (eq ?*debug* ON) then
                           (printout t " After Movement        :: ")
			   (bind ?a_list (create$  $?hin_order))
			   (loop-for-count (?i  1 (length$ $?a_list))
	                   	(bind ?wrdid (nth$ ?i $?a_list))
        	           	(bind ?word (nth$ ?wrdid $?Eng_list))
                		(printout t ?word " " )
                   	   )
                        (printout t crlf ))  
   )
   ;--------------------------------------------------------------------------------------------------------------- 
   ;I gave her the present I bought for her.
   ;I saw the man who you love. The snake who swallowed the rat hissed loudly.
   (defrule viSeRya-jo_samAnAXikaraNa_rule1
   (declare (salience -200))
   ?f0<-(relation-anu_ids viSeRya-jo_samAnAXikaraNa  ?sub ?jo_samAnAXikaraNa)
   (relation-anu_ids  kriyA-object  ?kri ?jo_samAnAXikaraNa)
   ?f2<-(Sentence ?Sen2 $?sen2 ?kri)
   ?f3<-(hindi_id_order $?hin_order)
   (test (member$ ?kri $?hin_order) )
   (test (member$ ?jo_samAnAXikaraNa $?sen2))
   (English-list $?Eng_list)
   =>
        (retract ?f0 ?f3)
        (if (eq ?*debug* ON) then
          (printout t " FIRED subject-jo_samAnAXikaraNa_rule  :: Removed jo_samAnAXikaraNa("(nth$ ?jo_samAnAXikaraNa $?Eng_list)") from the sentence and deciding its position and placing it"crlf)
          (bind $?b_list (create$ $?hin_order))
          (printout t " Before Movement       :: ")
          (loop-for-count (?i  1 (length$ $?b_list))
                   (bind ?wrdid (nth$ ?i $?b_list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
          (printout t crlf )
        )
        (bind ?*k_list_debug*  (create$ $?hin_order ))
        (bind $?hin_order (delete-member$ $?hin_order ?jo_samAnAXikaraNa))
        (bind $?sen2 (delete-member$ $?sen2 ?jo_samAnAXikaraNa))
        (bind ?position (member$ (nth$ 1 $?sen2) $?hin_order))
        (if (neq ?position FALSE) then
                (bind $?hin_order (insert$ $?hin_order ?position ?jo_samAnAXikaraNa ))
        else    (if (eq (length$ $?sen2) 0) then
                       (bind ?position (member$  ?kri $?hin_order))
                        (bind $?hin_order (insert$ $?hin_order ?position ?jo_samAnAXikaraNa ))))
                        (assert (hindi_id_order $?hin_order))
                   
                 (if (eq ?*debug* ON) then
 			 (printout t " After Movement        :: ")
			 (bind ?a_list (create$  $?hin_order))
			 (loop-for-count (?i  1 (length$ $?a_list))
	                   (bind ?wrdid (nth$ ?i $?a_list))
        	           (bind ?word (nth$ ?wrdid $?Eng_list))
                	   (printout t ?word " " )
                   	 )
		         (printout t crlf )
                 )  
;                        (printout  ?*debug* "(Rule_name-before_movement-after_movement  viSeRya-jo_samAnAXikaraNa_rule1  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?hin_order ))"))" crlf)
  )
   ;--------------------------------------------------------------------------------------------------------------- 

; ; Removed jo_samAnAXikaraNa from muKya_vAkya and Added jo_samAnAXikaraNa to the begining of the sApekRa_upavAkya.
;  ;The girl who you called yesterday has arrived.
;  (defrule viSeRya-jo_samAnAXikaraNa_rule
;  (declare (salience -200))
;  ?f0<-(relation-anu_ids viSeRya-jo_samAnAXikaraNa  ?sub ?jo_samAnAXikaraNa)
;  (relation-anu_ids muKya_vAkya-sApekRa_upavAkya  ?muKya_vAkya ?sApekRa_upavAkya)
;  ?f1<-(Sentence ?Sen1 $?sen1 ?muKya_vAkya)
;  ?f2<-(Sentence ?Sen2 $?sen2 ?sApekRa_upavAkya)
;  ?f3<-(hindi_id_order $?pre $?hin_order $?pos)
;  (test (and (member$ ?muKya_vAkya $?hin_order) (member$ ?sApekRa_upavAkya $?hin_order) ))
;  (test (member$ ?jo_samAnAXikaraNa $?sen2))
;  (test (member$ ?jo_samAnAXikaraNa $?sen1))
;  (English-list $?Eng_list)
;   =>
;  (retract ?f0 ?f3)
;  (if (eq ?*debug* ON) then
;  (printout t " FIRED subject-jo_samAnAXikaraNa_rule  :: Removed jo_samAnAXikaraNa("(nth$ ?jo_samAnAXikaraNa $?Eng_list)") from muKya_vAkya and Moved jo_samAnAXikaraNa("(nth$ ?jo_samAnAXikaraNa $?Eng_list)") in sApekRa_upavAkya to the begining of the sApekRa_upavAkya "crlf)
;  (bind $?b_list (create$ $?pre $?hin_order  $?pos))
;  (printout t " Before Movement       :: ")
;  (loop-for-count (?i  1 (length$ $?b_list))
;                   (bind ?wrdid (nth$ ?i $?b_list))
;                   (bind ?word (nth$ ?wrdid $?Eng_list))
;                   (printout t ?word " " )
;                   )
;        (printout t crlf ))
;  (bind ?position (member$ (nth$ 1 $?sen2) $?hin_order) )
;  (bind $?hin_order (delete-member$ $?hin_order ?jo_samAnAXikaraNa))
;  (bind $?sen2 (delete-member$ $?sen2 ?jo_samAnAXikaraNa))
;
;  (bind ?position (member$ (nth$ 1 $?sen2) $?hin_order))
;  (if (neq ?position FALSE) then
;  (printout t ?position crlf)
;  (bind $?hin_order (insert$ $?hin_order ?position ?jo_samAnAXikaraNa )))
;  (assert (hindi_id_order $?pre $?hin_order $?pos))
;  (if (eq ?*debug* ON) then
;  (printout t " After Movement        :: ")
;  (bind ?a_list (create$  $?pre $?hin_order $?pos))
;  (loop-for-count (?i  1 (length$ $?a_list))
;                   (bind ?wrdid (nth$ ?i $?a_list))
;                   (bind ?word (nth$ ?wrdid $?Eng_list))
;                   (printout t ?word " " )
;                   )
;        (printout t crlf ))  
; )
;  

 ;---------------------------------------------------------

 (defrule kriyA-kqxanwa_viSeRaNa_rule
 (declare (salience -200))
 ?f1<-(Sentence ?Sen1 $?sen1 ?muKya_vAkya)
 ?f2<-(Sentence ?Sen2 $?sen2 ?sApekRa_upavAkya)
 ?f0<-(relation-anu_ids kriyA-kqxanwa_viSeRaNa ?muKya_vAkya ?sApekRa_upavAkya)
 ?f3<-(hindi_id_order $?pre $?hin_order $?pos)
 (current_id-group_members ?muKya_vAkya $?grp_ids)
; (pada_info (group_head_id ?muKya_vAkya)(group_cat VP)(group_ids $?grp_ids))
 (test (and (member$ ?muKya_vAkya $?hin_order) (member$ ?sApekRa_upavAkya $?hin_order) ))
 (English-list $?Eng_list)
 =>
 (retract ?f0 ?f3)
 (if (eq ?*debug* ON) then
 (printout t " FIRED kriyA-kqxanwa_viSeRaNa_rule  :: "crlf)
  (bind $?b_list (create$ $?pre $?hin_order  $?pos))
  (printout t " Before Movement       :: ")
  (loop-for-count (?i  1 (length$ $?b_list))
                   (bind ?wrdid (nth$ ?i $?b_list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t crlf ))

 (bind ?position (member$ (nth$ 1 $?grp_ids) $?hin_order))
 (bind ?len (length $?sen2))
 (bind $?hin_order (delete-member$ $?hin_order ?sApekRa_upavAkya))
 (loop-for-count (?i 1 ?len)
                 (bind ?id (nth$ ?i $?sen2))
 (bind $?hin_order (delete-member$ $?hin_order ?id))                 )
 (bind $?hin_order (insert$ $?hin_order ?position ?sApekRa_upavAkya))
 (bind $?hin_order (insert$ $?hin_order ?position $?sen2 ))
 (assert (hindi_id_order $?pre $?hin_order $?pos))
 (if (eq ?*debug* ON) then
  (printout t " After Movement        :: ")
  (bind ?a_list (create$  $?pre $?hin_order $?pos))
  (loop-for-count (?i  1 (length$ $?a_list))
                   (bind ?wrdid (nth$ ?i $?a_list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t crlf ))
 )

 (defrule sentence_conj_rule
 (declare (salience -200))
 ?f1<-(Sentence ?Sen1 $?sen1 ?s1)
 ?f2<-(Sentence ?Sen2 $?sen2 ?s2)
 (expr $?ids ?s3 ?conj ?s4 $?ids1)
 ?f3<-(hindi_id_order $?hin_order)
 (id-word ?conj and|or|if|but|that|yet|because|why|whether) ;yet added by Roja.(11-10-10)He worked hard, yet failed.
  ;because, why ,whether Added by Roja (27-11-10) I wonder whether we should go.He will not come because he is busy.He told me why he was here and what he was doing.
 (test (and (member$ ?s1 $?hin_order) (member$ ?s2 $?hin_order) ))
 (test (or (member$ ?s4 $?sen2) (eq ?s4 ?s2))) 
 (test (or (member$ ?s3 $?sen1) (eq ?s3 ?s1)))
 (test (eq (member$ ?conj $?hin_order) FALSE))
 (test (< ?s1 ?s2))
 (English-list $?Eng_list)
 =>
 (retract ?f3)
 (if (eq ?*debug* ON) then
 (printout t " FIRED sentence_conj_rule  ::  "crlf)
 (printout t " Before Movement       :: ")
 (loop-for-count (?i  1 (length$ $?hin_order))
                   (bind ?wrdid (nth$ ?i $?hin_order))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
 (bind ?position (member$ ?s1 $?hin_order))
 (bind $?hin_order (insert$ $?hin_order (+ ?position 1) ?conj))
 (assert (hindi_id_order $?hin_order))
 (if (eq ?*debug* ON) then
  (printout t " After Movement        :: ")
  (loop-for-count (?i  1 (length$ $?hin_order))
                   (bind ?wrdid (nth$ ?i $?hin_order))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t crlf ))
 )



 ;But my efforts to win his heart have failed
 (defrule wall_conjuction
 (declare (salience -200))
 ?f<-(relation-anu_ids wall_conjunction  1)
 (expr 1 $?)
 ?f1<-(hindi_id_order $?list)
 (English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (if (eq ?*debug* ON) then
 (printout t " FIRED wall_conjuction :: Inserting wall conjunction at the start of the sentence." crlf)
 (printout t " Before Movement       :: ")
               (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
 (assert (hindi_id_order 1 $?list))
 (if (eq ?*debug* ON) then
 (printout t " After Movement        :: ")
           (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
 )

 ; He made a request that there be an investigation . 
 ; usane anuroXa kiyA #ki eka wahakIkAwa ho
 ; Added by Shirisha Manju (19-01-10) (suggested by Sukhada)
 ; Moving "subj_conj_id" before "subj" pada
 (defrule kriyA-conjunction_rule1
 (declare (salience -200))
 ?f<-(relation-anu_ids kriyA-conjunction  ?sub1 ?sub_conj)
 (relation-anu_ids kriyA-dummy_subject  ?kriyA ?sub1)
 (relation-anu_ids kriyA-aBihiwa ?kriyA ?sub)
 ?f1<-(hindi_id_order $?list)
 (current_id-group_members ?sub $?grp_ids)
 (test (and (member$ ?sub_conj $?list)(member$ ?sub $?grp_ids)(member$ ?sub $?list)))
; (test (neq ?gtype English_PP))
 (not (wall_conjunction  ?sub_conj))
 (English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (if (eq ?*debug* ON) then
 (printout t " FIRED kriyA-conjunction_rule1 ::  "crlf)
  (printout t " Before Movement       :: ")
  (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t crlf ))
 (bind ?*k_list_debug*  (create$ $?list ))
 (bind $?list (delete-member$ $?list ?sub_conj))
 (bind ?pos (member$ (nth$ 1  $?grp_ids ) $?list))
 (bind $?list (insert$ $?list  ?pos  ?sub_conj))
 (assert (hindi_id_order $?list))
 (printout t "(Rule_name-before_movement-after_movement kriyA-conjunction_rule1  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?list))"))" crlf)
 (if (eq ?*debug* ON) then
  (printout t " After Movement        :: ")
  (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t crlf ))
 )

 ; Added by Shirisha Manju (19-02-10)
 ;He disputed that our program was superior .
 (defrule subject-conjunction_rule2
 (declare (salience -200))
 ?f<-(relation-anu_ids kriyA-conjunction  ?kri ?sub_conj)
 (relation-anu_ids  kriyA-subject  ?kri ?sub)
 (relation-anu_ids viSeRya-RaRTI_viSeRaNa  ?sub ?viSeRaNa)
 ?f1<-(hindi_id_order $?list)
  (current_id-group_members ?viSeRaNa $?grp_ids)
 (test (and (member$ ?sub_conj $?list)(member$ ?viSeRaNa $?grp_ids)(member$ ?viSeRaNa $?list)))
 (not (wall_conjunction  ?sub_conj))
 (English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (if (eq ?*debug* ON) then
 (printout t " FIRED subject-conjunction_rule2  ::  "crlf)
 (printout t " Before Movement       :: ")
 (loop-for-count (?i  1 (length$ $?list))
                  (bind ?wrdid (nth$ ?i $?list))
                  (bind ?word (nth$ ?wrdid $?Eng_list))
                  (printout t ?word " " )
                  )
 (printout t crlf ))

 (bind ?*k_list_debug*  (create$ $?list ))
 (bind $?list (delete-member$ $?list ?sub_conj))
 (bind ?pos (member$ (nth$ 1  $?grp_ids ) $?list))
 (bind $?list (insert$ $?list  ?pos  ?sub_conj))
 (assert (hindi_id_order $?list))
 (printout t "(Rule_name-before_movement-after_movement subject-conjunction_rule2  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?list))"))" crlf)
 (if (eq ?*debug* ON) then
  (printout t " After Movement        :: ")
  (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t crlf ))
 )



 (defrule subject-conjunction_rule
 (declare (salience -210))
 ?f<-(relation-anu_ids  kriyA-conjunction  ?kri ?sub_conj) ;modified subject-conjunction as kriyA-conjunction by Shirisha Manju
 (or (relation-anu_ids kriyA-dummy_subject ?kri ?sub)(relation-anu_ids kriyA-subject ?kri ?sub));Added by Shirisha Manju
 ?f1<-(hindi_id_order $?list)
 (current_id-group_members ?sub $?grp_ids)
 (test (member$ ?sub_conj $?list))
 (test (member$ (nth$ 1 $?grp_ids) $?list))
 (not (relation-anu_ids  wall_conjunction  ?sub_conj))
 (English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (if (eq ?*debug* ON) then
 (printout t " FIRED subject-conjunction_rule  ::  "crlf)
 (printout t " Before Movement       :: ")
 (loop-for-count (?i  1 (length$ $?list))
                  (bind ?wrdid (nth$ ?i $?list))
                  (bind ?word (nth$ ?wrdid $?Eng_list))
                  (printout t ?word " " )
                  )
 (printout t crlf ))
 (bind ?*k_list_debug*  (create$ $?list ))
 (bind $?list (delete-member$ $?list ?sub_conj))
 (bind ?pos (member$ (nth$ 1  $?grp_ids ) $?list))
 (bind $?list (insert$ $?list  ?pos  ?sub_conj))
 (assert (hindi_id_order $?list))
i (printout t "(Rule_name-before_movement-after_movement subject-conjunction_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?list))"))" crlf)
 (if (eq ?*debug* ON) then
  (printout t " After Movement        :: ")
  (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t crlf ))

 )


  ;----------------------------------------------------------------------------------------------------------------------- 
  ;substituting position for each pada.

  (defrule substitute_positions
  (declare (salience -250))
  ?f<-(ordered_group_ids $?ids)
  ?f1<-(pada_info (group_head_id ?h_id)(group_cat ?gtype)(group_ids $?grp_ids)(Hin_position 0))
  (test (neq ?gtype English_PP))
   =>
   (bind ?pos (member$ ?h_id $?ids))
   (modify ?f1 (Hin_position ?pos))
   )
  ;-----------------------------------------------------------------------------------------------------------------------
  
  ;Removing common subject in all verbs expect the first.
  ;I ate an apple and slept in my room
 
  (defrule remove_repeated_sub_ids
  (declare (salience -350))
  ?f0<-(hindi_id_order $?ids)
  ?f1<-(relation-anu_ids  kriyA-subject ?kriya ?sub_id)
  ?f2<-(relation-anu_ids  kriyA-subject ?kriya1 ?sub_id)
  (test (neq ?kriya ?kriya1))
  (test (member$ ?sub_id $?ids))
  (English-list $?Eng_list)
  =>
        (retract ?f0 ?f1 ?f2)
        (if (eq ?*debug* ON) then
        (printout t " FIRED remove_repeated_sub_ids :: Removes the suject("(nth$ ?sub_id $?Eng_list)") If a subject is common for different kriyA's expect the first ocurrence " crlf)
        (printout t " Before Movement       :: ")
                   (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
        (bind ?pos (member$ ?sub_id $?ids))
        (bind $?ids (delete-member$ $?ids ?sub_id))
        (bind $?ids (insert$ $?ids ?pos ?sub_id))
        (assert (hindi_id_order $?ids))
        (if (eq ?*debug* ON) then
        (printout t " After Movement        :: ")
         (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
          (printout t crlf ))
 )
  ;-----------------------------------------------------------------------------------------------------------------------
  ; if no complete linkage is found then take english order itself as hindi order

  (defrule id_order_for_with_no_relations
  (declare (salience -500))
  (expr $?ids)
  ?f<-(hindi_id_order)
   =>
       (retract ?f)
       (assert (hindi_id_order  $?ids ))
  )

 ;--------------------------------------------------------------------------------------------------------------------------

  (defrule Final_Order
  (declare (salience -650))
  (hindi_id_order $?ids)
  (English-list $?Eng_list)
   =>
  (if (eq ?*debug* ON) then
  (printout t " FINAL ORDER IS        :: ")
            (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
  )

