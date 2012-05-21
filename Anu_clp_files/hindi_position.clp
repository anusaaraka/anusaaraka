
 (defglobal ?*l_list* = (create$ ))
 (defglobal ?*r_list* = (create$ ))
 (defglobal ?*k_list* = (create$ ))
 (defglobal ?*k_list1* = (create$ ))
 (defglobal ?*final_list* = (create$ ))
 (defglobal ?*count* = 1)
 (defglobal ?*k_list_debug* = (create$ ))
 (defglobal ?*debug* = hin_pos_debug)

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0)))

 (deffunction reverse ($?a)
 (if (eq (length ?a) 0) then ?a
 else
 (create$ (reverse (rest$ ?a)) (first$ ?a))))

 (deffunction never-called ()
 (assert (prep_id-relation-anu_ids) )
 (assert (missing-level-id) )
 (assert (verb_type-verb-causative_verb-tam) )
 (assert (addition-level-word-sid) )
 (assert (verb_type-verb-kriyA_mUla-tam))
 (assert (pada_head-preposition_id))
 (assert (id-current_id))
 (assert (current_id-group_members))
 (assert (id-left_punctuation))
 (assert (id-right_punctuation))
 (assert (id-last_word) )
 (assert (verb_type-verb-causative_verb-tam))
 (assert (Sentence))
 (assert (list))
 (assert (lwg_list))
 (assert (hindi_id_order ))
 (assert (ordered_group_ids))
 (assert (id-preceeding_part_of_verb) )
 (assert (No complete linkages found))
 (assert (id-word))
 (assert (root-verbchunk-tam-chunkids))
 )
 
 ;---------------------------------------------------------------------------------------------------------------
 (defrule assert_dummy_facts
 (declare (salience 2000))
 (expr $?)
  =>
 (assert(lwg_list))
 (assert(hindi_id_order ))
 (assert(ordered_group_ids))
 (assert (comma_list_for_sent_opener))
 )
 ;--------------------------------------------------------------------------------------------------------------- 
 (defrule comma_list_for_sent_opener
 (declare (salience 1050))
 (id-right_punctuation ?id PUNCT-Comma)
 ?f<-(comma_list_for_sent_opener $?ids)
 (test (eq (member$ ?id  $?ids) FALSE))
 =>
 	(retract ?f)
 	(bind $?ids (sort > (create$ $?ids ?id)))
 	(assert (comma_list_for_sent_opener $?ids))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ; get head ids from local word grouping into lwg_list
 (defrule  lwg_list
 (declare (salience 1040))
 (root-verbchunk-tam-chunkids ? ? ? $? ?id)
 (prep_id-relation-anu_ids $?   ?rel ?id ?r_id)
 ?f<-(lwg_list $?ids)
 (not (lwg_id ?id))
  =>
	(retract ?f )
	(assert (lwg_id ?id))
    	(bind $?ids (insert$ $?ids 1 ?id))
    	(bind $?ids (sort > $?ids))
    	(assert (lwg_list $?ids))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Adding left-id  to ?*l_list* list and
 ;Adding right-id to ?*r_list* list
 (defrule rule1
 (declare (salience 1000))
 (prep_id-relation-anu_ids $?   ?rel ?l_id ?r_id)
 (test (and (neq ?rel viSeRya-det_viSeRaNa) (neq ?rel viSeRya-viSeRaNa)(neq ?rel kriyA-nA)(neq ?rel kriyA-ke_liye) (neq ?rel nAma-saMkRipwa_nAma)(neq ?rel subject-opener)(neq ?rel kriyA-ne_ke_liye)(neq ?rel viSeRya-wulanAwmaka_viSeRaNa)(neq ?rel kriyA-viXi_vAkyakarma)(neq ?rel kriyA-samAnakAlika_kriyA)(neq ?rel pUrvakAlika_kriyA-ananwarakAlika_kriyA)(neq ?rel kriyA-praSnavAcI)(neq ?rel subject-vAkyasamAnAXikarNa)(neq ?rel kriyA-samakAlika_kriyA)(neq ?rel kriyA-karwA)(neq ?rel kriyA-vAkyakarma)(neq ?rel kriyA-preraka_kriyA)))
 =>
 	(bind ?*l_list* (create$ ?*l_list* ?l_id))
 	(bind ?*r_list* (create$ ?*r_list* ?r_id))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Getting related ids of a particular finite verb
 (defrule rule3
 (declare (salience 900))
 (lwg_list ?k_id1 $?ids)
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
             		(if (eq (member$ ?n_id1 ?*k_list*) FALSE) then
				 ;If the id already present in the list it should'nt be taken again
		             (bind ?*k_list1* (create$ ?*k_list1* ?n_id1))
		             (bind ?*k_list* (create$ ?*k_list* ?n_id1))
             		)
           	)
     	)
     	(bind ?*k_list1* (delete-member$ ?*k_list1* (first$ ?*k_list1*)))
  )
  (bind ?*k_list1* (create$ ))
  (assert (list_control_fact ?k_id1))
  (bind ?*k_list* (create$ ?k_id1 ?*k_list*))
  (bind ?*k_list* (sort > ?*k_list*))
  (bind ?*k_list* (reverse  ?*k_list* ))
  (assert (list ?*k_list*))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Moving the subject to first position in the sentence.
 (defrule subject_rule
 (declare (salience 955))
 (prep_id-relation-anu_ids ?  kriyA-subject ?kriyA_id ?subj_id)
 ?f<-(list $?list)
 ?f1<-(list_control_fact ?subj_id)
 (test (and (member$ ?subj_id $?list)(member$ ?kriyA_id $?list)))
  =>
        (retract ?f ?f1)
        (bind ?*k_list_debug*  (create$ $?list))
        (bind $?list (delete-member$ $?list ?subj_id))
        (bind $?list (create$ ?subj_id $?list))
        (assert(list $?list))
	(printout ?*debug*  "(Rule_name-before_movement-after_movement  subject_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)"))" crlf)
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Moving the verb to last position in the sentence.
 (defrule verb_rule
 (declare (salience 954))
 (root-verbchunk-tam-chunkids $? ?h_id) ; To stop firing this rule in non-finite verb cases  Ex : Venus was a major Roman goddess , associated with love and beauty .
 ?f<-(list $?list)
 ?f1<-(list_control_fact ?h_id)
 (test(and (member$ ?h_id $?list)(member$ ?h_id $?list)))
  =>
        (retract ?f ?f1)
        (bind ?*k_list_debug*  (create$ $?list))
        (bind $?list (delete-member$ $?list ?h_id))
        (bind $?list (create$ $?list ?h_id))
        (assert(list $?list))
	(printout ?*debug* "(Rule_name-before_movement-after_movement  verb_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)"))" crlf)       
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Move the object to the before kriyA position in the sentence.
 (defrule object_rule
 (declare (salience 953))
 (prep_id-relation-anu_ids ?  kriyA-object|kriyA-object_2 ?kriyA ?obj_id)
 (not (prep_id-relation-anu_ids ?  kriyA-object|kriyA-object_2 ?kriyA ?obj_id2&:(> ?obj_id2 ?obj_id)))
 ?f<-(list $?list ?kriyA)
 ?f1<-(list_control_fact ?obj_id)
 (test (member$ ?obj_id $?list))
 =>
        (retract ?f ?f1)
        (bind ?*k_list_debug*  (create$ $?list ?kriyA))
        (bind $?list (delete-member$ $?list ?obj_id))
        (assert(list $?list ?obj_id ?kriyA ))
        (printout  ?*debug*  "(Rule_name-before_movement-after_movement  object_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)" "?obj_id" "?kriyA"))" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------
  ;Move the object to the before kriyA position in the sentence.(non-finite-verb)
  ;Taking that course improved the student's skills .
  (defrule object_rule1
  (declare (salience 351))
  ?f1<-(prep_id-relation-anu_ids ?  kriyA-object  ?kriyA ?obj_id)
  ?f2<-(list $?list ?h_kriyA)
  (test (and (member$ ?obj_id $?list) (member$ ?kriyA $?list)))
  =>
        (retract ?f1 ?f2)
        (bind ?*k_list_debug*  (create$ $?list ?h_kriyA))
        (bind $?list (delete-member$ $?list ?obj_id))
        (bind ?pos (member$ ?kriyA $?list))
        (bind $?list (insert$ $?list ?pos ?obj_id))
        (assert(list $?list ?h_kriyA))
  (printout ?*debug*  "(Rule_name-before_movement-after_movement  object_rule1  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)" "?h_kriyA"))" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------
 ; Moving subject/object samAnAXikaraNa before kriyA position in the sentence.
 ; The hat is too small for me .
 ; We have undertaken a project to make the city clean .
 ; Added by Shirisha Manju (22-01-11)
 (defrule sub_obj_samAnAXikaraNa_rule
 (declare (salience 350))
 (prep_id-relation-anu_ids ?  subject-subject_samAnAXikaraNa|object-object_samAnAXikaraNa ?id ?samAnAXikaraNa)
 ?f<-(list $?list ?kriyA)
 ?f1<-(list_control_fact ?samAnAXikaraNa)
 (test (member$ ?id $?list))
 =>
        (retract ?f ?f1)
        (bind ?*k_list_debug*  (create$ $?list ?kriyA))
        (bind $?list (delete-member$ $?list ?samAnAXikaraNa))
        (assert(list $?list ?samAnAXikaraNa ?kriyA))
        (printout ?*debug*  "(Rule_name-before_movement-after_movement  sub_obj_samAnAXikaraNa_rule ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)" "?samAnAXikaraNa" "?kriyA"))" crlf)
 )
 ;---------------------------------------------------------------------------------------------------------------
 ; Moving niReXaka before kriyA position in the sentence.
 ; It is not a good idea to drive for hours without a rest .   
 (defrule kriyA_niReXaka_rule
 (declare (salience 340))
 (prep_id-relation-anu_ids ?  kriyA-kriyA_niReXaka  ?kriyA ?kriyA_niReXaka)
 ?f<-(list $?list ?kriyA)
 ?f1<-(list_control_fact ?kriyA_niReXaka)
 (test (member$ ?kriyA_niReXaka $?list))
  =>
        (retract ?f ?f1)
        (bind ?*k_list_debug*  (create$ $?list ?kriyA))
        (bind $?list (delete-member$ $?list ?kriyA_niReXaka))
        (assert(list $?list ?kriyA_niReXaka ?kriyA ))
        (printout ?*debug*  "(Rule_name-before_movement-after_movement  kriyA_niReXaka_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)" "?kriyA_niReXaka" "?kriyA"))" crlf)
  )
  ;---------------------------------------------------------------------------------------------------------------------
  ;Ex:-Still in development , Google Wave is a browser-based tool that mixes e-mail , with Instant Messaging and real-time online collaboration elements .  
  ;As a protein synthesis inhibitor , it stops the growth of bacteria by disrupting their production of proteins .
  ;If for a kriyA there sentence_opener's  order of the whole clause will be same as English ,and is moved to the start of the sentence
  (defrule sentence_opener_rule
  (declare (salience 951))
  ?f<-(prep_id-relation-anu_ids ?  kriyA-sentence_opener  ?kriyA ?sen_opener)
  (not (prep_id-relation-anu_ids ?  kriyA-subject ?kriyA ?sen_opener1&:(> ?sen_opener ?sen_opener1)))
  (comma_list_for_sent_opener $?ids)
  ?f2<-(list $?list)
  (test (!= (length $?ids) 0))
  (not (kriyA-sentence_opener_movement_done ?kriyA))
  =>
  	(retract ?f2)
	(bind ?*k_list_debug*  (create$ $?list))
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
	(printout  ?*debug*  "(Rule_name-before_movement-after_movement sentence_opener_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)"))" crlf)
	(assert (kriyA-sentence_opener_movement_done ?kriyA))
  )
  ;---------------------------------------------------------------------------------------------------------------
  ;Moving  viSeRaNa before viSeRya 
  ;Passion is a must to excel and to reach your potential .
  ;Modified by Shirisha Manju :
  ;         "Added viSeRya-kqxanwa_viSeRaNa" in the list Ex:The 5 thousand people invited by Bob attended 
  ;         "Added kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka Ex:She works very carefully (24-01-11)
  ;         "Added saMjFA-saMjFA_samAnAXikaraNa  Ex :  Rama gave a book to Dasharat , the king of Ayodhya . (24-01-11)
  ;         "Added saMjFA-to_kqxanwa             Ex :  Our program is easier to use than to understand. 24-01-11)
  (defrule viSeRaNa_rule
  (declare (salience 340))
  (prep_id-relation-anu_ids ?  viSeRya-RaRTI_viSeRaNa|kriyA_viSeRaNa-viSeRaka|viSeRya-kqxanwa_viSeRaNa|kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka|saMjFA-saMjFA_samAnAXikaraNa|saMjFA-to_kqxanwa ?RaRTI_id ?RaRTI_id1)
  (not (viSeRya-RaRTI_viSeRaNa  ?RaRTI_id ?RaRTI_id2&:(> ?RaRTI_id2 ?RaRTI_id1)))
  ?f0<-(list $?list)
  (test (member$ ?RaRTI_id $?list))
  (test (member$ ?RaRTI_id1 $?list))
  (not (movement_done ?RaRTI_id))
  (not (movement_done ?RaRTI_id1))
  =>
        (retract ?f0 )
        (bind ?*k_list_debug*  (create$ $?list))
        (bind $?list (delete-member$ $?list ?RaRTI_id1))
        (bind ?pos (member$ ?RaRTI_id $?list))
        (bind $?list (insert$ $?list ?pos ?RaRTI_id1))
        (assert (list $?list))
	(printout ?*debug*  "(Rule_name-before_movement-after_movement  viSeRaNa_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)"))" crlf)
  	(assert (movement_done ?RaRTI_id)) (assert (movement_done ?RaRTI_id1))
  )
  ;---------------------------------------------------------------------------------------------------------------
  ; He lives at Chandinichok in Delhi in India . 
  ; vaha BArawa meM xillI meM \@Chandinichok meM rahawA hE
  (defrule viSeRya_viSeRaNa_rule1
  (declare (salience 351))
  ?f1<-(prep_id-relation-anu_ids ?   ?rel ?v_id ?v_id1)
  (prep_id-relation-anu_ids ?   ?rel1 ?v_id ?v_id2&:(> ?v_id2 ?v_id1))
  (not (prep_id-relation-anu_ids ?   ? ?v_id ?v_id3&:(> ?v_id3 ?v_id2)))
  (test (and (neq (str-index "-" ?rel)  FALSE)(neq (str-index "_" ?rel)  FALSE)))
  (test (and (neq (str-index "-" ?rel1)  FALSE)(neq (str-index "_" ?rel1)  FALSE)))
  (test (or (eq (sub-string 1 7 ?rel) "viSeRya")(eq (sub-string 1 7 ?rel) "kqxanwa")(eq (sub-string 1 5 ?rel) "kriyA"))) 
  (test (eq (sub-string (+ (+ (str-index "-" ?rel) 1)(- (str-index "_" ?rel)(str-index "-" ?rel))) 100 ?rel)"saMbanXI"))
  (test (or (eq (sub-string 1 7 ?rel1) "viSeRya")(eq (sub-string 1 7 ?rel1) "kqxanwa")(eq (sub-string 1 5 ?rel1) "kriyA")))
  (test (eq (sub-string (+ (+ (str-index "-" ?rel1) 1)(- (str-index "_" ?rel1)(str-index "-" ?rel1))) 100 ?rel1)"saMbanXI"))
  (test (neq (sub-string (+ (str-index "-" ?rel) 1)  (- (str-index "_" ?rel) 1) ?rel)  "to"))
  (test (neq (sub-string (+ (str-index "-" ?rel1) 1)  (- (str-index "_" ?rel) 1) ?rel1)  "to"))
  ?f0<-(list  $?id1)
  (test (member$ ?v_id $?id1))
  (test (member$  ?v_id1 $?id1))
  (not (movement_done ?v_id1))
   =>
        (retract ?f0 )
        (bind ?*k_list_debug*  (create$  $?id1))
        (bind $?id1 (delete-member$ $?id1 ?v_id1))
        (bind ?pos (member$ ?v_id $?id1))
        (bind $?id1 (insert$ $?id1 ?pos ?v_id1))
	(assert (list $?id1))
	(printout  ?*debug*  "(Rule_name-before_movement-after_movement  viSeRya_viSeRaNa_rule1  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?id1)"))" crlf)
  	(assert (movement_done ?v_id1))
  )
  ;---------------------------------------------------------------------------------------------------------------
  ;Moving viSeRaNa before viSeRya 
  ;The blacksmith made an assay of iron ore . 
  ;;Moving (of/for/.....)_saMbanXI before its viSeRya
  (defrule viSeRya_viSeRaNa_rule
  (declare (salience 350))
  ?f1<-(prep_id-relation-anu_ids ?   ?rel ?v_id ?v_id1)
  (not (prep_id-relation-anu_ids ?   ?rel ?v_id ?v_id2&:(< ?v_id2 ?v_id1)))
  (test (neq (str-index "-" ?rel)  FALSE))
  (test (neq (str-index "_" ?rel)  FALSE))
  (test (or (eq (sub-string 1 7 ?rel) "viSeRya")(eq (sub-string 1 7 ?rel) "kqxanwa")))
  (test (eq (sub-string (+ (+ (str-index "-" ?rel) 1)(- (str-index "_" ?rel)(str-index "-" ?rel))) 100 ?rel)"saMbanXI"))
  (test (neq (sub-string (+ (str-index "-" ?rel) 1)  (- (str-index "_" ?rel) 1) ?rel)  "to"))
  ?f0<-(list  $?id1)
  (test (member$ ?v_id $?id1))
  (test (member$  ?v_id1 $?id1))
   =>
        (retract ?f0 ?f1)
        (bind ?*k_list_debug*  (create$  $?id1))
        (bind $?id1 (delete-member$ $?id1 ?v_id1))
        (bind ?pos (member$ ?v_id $?id1))
        (bind $?id1 (insert$ $?id1 ?pos ?v_id1))
        (assert (list $?id1))
	(printout  ?*debug*  "(Rule_name-before_movement-after_movement  viSeRya_viSeRaNa_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?id1)"))" crlf)
  )
  ;---------------------------------------------------------------------------------------------------------------
  ;The present version of Anusaaraka provides for translation from English to Hindi .(3rd parse)
  ;Suggested by Sukadha (23-09-09)
  ;Moving to_saMbanXI after its viSeRya
  (defrule viSeRya_viSeRaNa_to_rule
  (declare (salience 351))
  ?f1<-(prep_id-relation-anu_ids ?   ?rel ?v_id ?v_id1)
  (test (neq (str-index "-" ?rel)  FALSE))
  (test (neq (str-index "_" ?rel)  FALSE))
  (test (or (eq (sub-string 1 7 ?rel) "viSeRya")(eq (sub-string 1 7 ?rel) "kqxanwa")))
  (test (eq (sub-string (+ (+ (str-index "-" ?rel) 1)(- (str-index "_" ?rel)(str-index "-" ?rel))) 100 ?rel)"saMbanXI"))
  (test (eq (sub-string (+ (str-index "-" ?rel) 1)  (- (str-index "_" ?rel) 1) ?rel)  "to"))
  ?f0<-(list  $?id1)
  (test (member$ ?v_id $?id1))
  (test (member$  ?v_id1 $?id1))
   =>
       	(retract ?f0 ?f1)
       	(bind ?*k_list_debug*  (create$  $?id1))
       	(bind $?id1 (delete-member$ $?id1 ?v_id))
       	(bind ?pos (member$ ?v_id1 $?id1))
	(bind $?id1 (insert$ $?id1 ?pos ?v_id))
      	(assert (list $?id1))
	(printout  ?*debug*  "(Rule_name-before_movement-after_movement  viSeRya_viSeRaNa_to_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?id1)"))" crlf)
  )
  ;---------------------------------------------------------------------------------------------------------------
  ; Be careful , she said .
  ; Move kriyA_mUla id before kriyA id
  (defrule kriyA_mUla_rule
  (declare (salience 350))
  ?f1<-(prep_id-relation-anu_ids ?  kriyA-kriyA_mUla  ?kriyA  ?kriyA_mUla)
  ?f0<-(list $?ids)
  (test (member$ ?kriyA $?ids))
  (test (member$  ?kriyA_mUla $?ids))
   =>
  	(retract ?f0 ?f1)
	(bind ?*k_list_debug*  (create$  $?ids))
        (bind $?ids (delete-member$ $?ids ?kriyA_mUla))
        (bind ?pos (member$ ?kriyA $?ids))
        (bind $?ids (insert$ $?ids ?pos ?kriyA_mUla))
        (assert (list $?ids))
	(printout  ?*debug* "(Rule_name-before_movement-after_movement  kriyA_mUla_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?ids)"))" crlf)
  )
  ;---------------------------------------------------------------------------------------------------------------
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
  	(printout  ?*debug*  "(Final-list  ("(implode$ ?*final_list*)"))" crlf)
  )
  ;---------------------------------------------------------------------------------------------------------------
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
  ;---------------------------------------------------------------------------------------------------------------
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
  ;---------------------------------------------------------------------------------------------------------------
  (defrule final_order1
  (declare (salience -98))
  ?f<-(Sent ?sen)
  ?f0<-(Sentence ?sen $?ids1)
  ?f1<-(hindi_id_order $?ids)
  =>
  	(retract ?f ?f1)
	(assert (hindi_id_order $?ids $?ids1))
  	(printout  ?*debug*  "(Final-list1  ("(implode$ $?ids)" "(implode$ $?ids1)"))" crlf)
  )
  ;---------------------------------------------------------------------------------------------------------------
   ;The girl who you called yesterday has arrived.
   (defrule viSeRya-jo_samAnAXikaraNa_rule
   (declare (salience -200))
   ?f0<-(prep_id-relation-anu_ids ?  viSeRya-jo_samAnAXikaraNa  ?sub ?jo_samAnAXikaraNa)
   (prep_id-relation-anu_ids ?   kriyA-subject  ?kri ?sub)
   (prep_id-relation-anu_ids ?   kriyA-subject  ?kri1&:(> ?kri ?kri1) ?sub_id)
   ?f1<-(Sentence ?Sen1 $?sen1 ?kri)
   ?f2<-(Sentence ?Sen2 $?sen2 ?kri1) 
   ?f3<-(hindi_id_order $?hin_order)
   (test (and (member$ ?kri $?hin_order) (member$ ?kri1 $?hin_order) ))
   (test (member$ ?jo_samAnAXikaraNa $?sen2))
   (test (member$ ?jo_samAnAXikaraNa $?sen1))
   =>
	(retract ?f0 ?f3)
	(bind ?*k_list_debug*  (create$ $?hin_order ))
        (bind $?hin_order (delete-member$ $?hin_order ?jo_samAnAXikaraNa))
        (bind $?sen2 (delete-member$ $?sen2 ?jo_samAnAXikaraNa))
        (bind ?position (member$ (nth$ 1 $?sen2) $?hin_order))
        (if (neq ?position FALSE) then
                (bind $?hin_order (insert$ $?hin_order ?position ?jo_samAnAXikaraNa ))
        else 	(if (eq (length$ $?sen2) 0) then
                	(bind ?position (member$  ?kri1 $?hin_order))
	                (bind $?hin_order (insert$ $?hin_order ?position ?jo_samAnAXikaraNa ))))
			(assert (hindi_id_order $?hin_order))
			(printout  ?*debug* "(Rule_name-before_movement-after_movement  viSeRya-jo_samAnAXikaraNa_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?hin_order ))"))" crlf)
   )
   ;--------------------------------------------------------------------------------------------------------------- 
   ;This is the place I live.  (subject-subject_samAnAXikaraNa)
   ;Added by Shirisha Manju (11-03-11) suggested by sukhada
   (defrule viSeRya-jo_samA_rule
   (declare (salience -200))
   ?f0<-(prep_id-relation-anu_ids ?  viSeRya-jo_samAnAXikaraNa  ?vi ?jo_s)
   (prep_id-relation-anu_ids - subject-subject_samAnAXikaraNa  ?sub ?vi)
   (prep_id-relation-anu_ids ?   kriyA-subject  ?kri ?sub)
   (prep_id-relation-anu_ids ?   kriyA-subject  ?kri1&:(> ?kri1 ?kri) ?sub_id)
   ?f1<-(Sentence ?Sen1 $?sen1 ?kri)
   ?f2<-(Sentence ?Sen2 $?sen2 ?kri1)
   ?f3<-(hindi_id_order $?hin_order)
   (test (and (member$ ?kri $?hin_order) (member$ ?kri1 $?hin_order) ))
   (test (member$ ?jo_s $?sen2))
   (test (member$ ?jo_s $?sen1))
   =>
        (retract ?f0 ?f3)
        (bind ?*k_list_debug*  (create$ $?hin_order ))
        (bind $?hin_order (delete-member$ $?hin_order ?jo_s))
        (bind $?sen2 (delete-member$ $?sen2 ?jo_s))
        (bind ?position (member$ (nth$ 1 $?sen2) $?hin_order))
        (if (neq ?position FALSE) then
                (bind $?hin_order (insert$ $?hin_order ?position ?jo_s ))
        else    (if (eq (length$ $?sen2) 0) then
                        (bind ?position (member$  ?kri1 $?hin_order))
                        (bind $?hin_order (insert$ $?hin_order ?position ?jo_s ))))
                        (assert (hindi_id_order $?hin_order))
                        (printout  ?*debug* "(Rule_name-before_movement-after_movement  viSeRya-jo_samA_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?hin_order ))"))" crlf)
   )
   ;--------------------------------------------------------------------------------------------------------------- 
   ;I gave her the present I bought for her.
   ;I saw the man who you love. The snake who swallowed the rat hissed loudly.
   ;Added by Shirisha Manju
   (defrule viSeRya-jo_samAnAXikaraNa_rule1
   (declare (salience -200))
   ?f0<-(prep_id-relation-anu_ids ?  viSeRya-jo_samAnAXikaraNa  ?sub ?jo_samAnAXikaraNa)
   (prep_id-relation-anu_ids ?   kriyA-object  ?kri ?jo_samAnAXikaraNa)
   ?f2<-(Sentence ?Sen2 $?sen2 ?kri)
   ?f3<-(hindi_id_order $?hin_order)
   (test (member$ ?kri $?hin_order) )
   (test (member$ ?jo_samAnAXikaraNa $?sen2))
   =>
        (retract ?f0 ?f3)
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
                        (printout  ?*debug* "(Rule_name-before_movement-after_movement  viSeRya-jo_samAnAXikaraNa_rule1  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?hin_order ))"))" crlf)
  )
  ;---------------------------------------------------------------------------------------------------------------
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
  =>
 	(retract ?f3)
 	(bind ?position (member$ ?s1 $?hin_order))
 	(bind $?hin_order (insert$ $?hin_order (+ ?position 1) ?conj))
 	(assert (hindi_id_order $?hin_order))
  )
  ;---------------------------------------------------------------------------------------------------------------
  ;substituting position for each pada.
  (defrule substitute_positions
  (declare (salience -250))
  ?f<-(ordered_group_ids $?ids)
  ?f1<-(pada_info (group_head_id ?h_id)(group_cat ?gtype)(group_ids $?grp_ids)(Hin_position 0))
  (test (or (neq ?gtype English_PP) (neq ?gtype aluk_RaRTI_PP)))
  =>
	(bind ?pos (member$ ?h_id $?ids))
   	(modify ?f1 (Hin_position ?pos))
  )
  ;---------------------------------------------------------------------------------------------------------------	
  ;But my efforts to win his heart have failed
  (defrule wall_conjuction
  (declare (salience -200))
  ?f<-(prep_id-relation-anu_ids ?  wall_conjunction  1)
  (expr 1 $?)
  ?f1<-(hindi_id_order $?list)
  =>
 	(retract ?f ?f1)
 	(bind ?*k_list_debug*  (create$ $?list ))
 	(if (member$ 1 $?list) then
 		(bind $?list (delete-member$ $?list 1))
	)
 	(assert (hindi_id_order 1 $?list))
 	(printout  ?*debug*  "(Rule_name-before_movement-after_movement  wall_conjuction  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ 1 $?list))"))" crlf)
  )
  ;---------------------------------------------------------------------------------------------------------------
  ; Added by Shirisha Manju (19-02-10)
  ;He disputed that our program was superior .
  (defrule kriyA-conjunction_rule1
  (declare (salience -200))
  ?f<-(prep_id-relation-anu_ids ?  kriyA-conjunction  ?kri ?sub_conj)
  (prep_id-relation-anu_ids ?   kriyA-subject  ?kri ?sub)
  (prep_id-relation-anu_ids ?  viSeRya-RaRTI_viSeRaNa  ?sub ?viSeRaNa)
  ?f1<-(hindi_id_order $?list)
  (current_id-group_members ?viSeRaNa $?grp_ids)
  (test (and (member$ ?sub_conj $?list)(member$ ?viSeRaNa $?grp_ids)(member$ ?viSeRaNa $?list)))
  (not (wall_conjunction  ?sub_conj))
  =>
 	(retract ?f ?f1)
 	(bind ?*k_list_debug*  (create$ $?list ))
 	(bind $?list (delete-member$ $?list ?sub_conj))
 	(bind ?pos (member$ (nth$ 1  $?grp_ids ) $?list))
 	(bind $?list (insert$ $?list  ?pos  ?sub_conj))
 	(assert (hindi_id_order $?list))
 	(printout ?*debug*  "(Rule_name-before_movement-after_movement kriyA-conjunction_rule1  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?list))"))" crlf)
  )
  ;---------------------------------------------------------------------------------------------------------------
  ;Modified subject-conjunction as kriyA-conjunction by Shirisha Manju
  ;Added kriyA-aBihiwa by Shirisha Manju (25-01-11)
  ;Moving "subj_conj_id" before "subj" pada
  ; He made a request that there be an investigation . 
  ; usane anuroXa kiyA #ki eka wahakIkAwa ho
  (defrule kriyA-conjunction_rule
  (declare (salience -210))
  ?f<-(prep_id-relation-anu_ids ?   kriyA-conjunction  ?kri ?sub_conj)
  (or (prep_id-relation-anu_ids ?  kriyA-dummy_subject ?kri ?sub)(prep_id-relation-anu_ids ?  kriyA-subject ?kri ?sub)(prep_id-relation-anu_ids ?  kriyA-aBihiwa ?kri ?sub) )
  ?f1<-(hindi_id_order $?list)
  (current_id-group_members ?sub $?grp_ids)
  (test (member$ ?sub_conj $?list))
  (test (member$ (nth$ 1 $?grp_ids) $?list))
  (not (prep_id-relation-anu_ids ?   wall_conjunction  ?sub_conj))
  =>
 	(retract ?f ?f1)
 	(bind ?*k_list_debug*  (create$ $?list ))
 	(bind $?list (delete-member$ $?list ?sub_conj))
 	(bind ?pos (member$ (nth$ 1  $?grp_ids ) $?list))
 	(bind $?list (insert$ $?list  ?pos  ?sub_conj))
 	(assert (hindi_id_order $?list))
	(printout ?*debug*  "(Rule_name-before_movement-after_movement kriyA-conjunction_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?list))"))" crlf)
  )
  ;---------------------------------------------------------------------------------------------------------------
  ;Removing common subject in all verbs expect the first.
  ;I ate an apple and slept in my room
  (defrule remove_repeated_sub_ids
  (declare (salience -350))
  ?f0<-(hindi_id_order $?ids)
  ?f1<-(prep_id-relation-anu_ids ?   kriyA-subject ?kriya ?sub_id)
  ?f2<-(prep_id-relation-anu_ids ?   kriyA-subject ?kriya1 ?sub_id)
  (current_id-group_members ?sub_id $?grp_ids)
  (test (neq ?kriya ?kriya1))
  (test (member$ (nth$ (length $?grp_ids) $?grp_ids) $?ids))
  =>
        (retract ?f0 ?f1 ?f2)
        (bind ?*k_list_debug*  (create$ $?ids ))
        (bind ?len (length $?grp_ids))
        (loop-for-count (?j 1 ?len)
        	(bind ?id (nth$ ?j $?grp_ids))
        	(bind ?pos (member$ ?id $?ids))
	        (bind $?ids (delete-member$ $?ids ?id))
	        (bind $?ids (insert$ $?ids ?pos ?id))
	)
        (assert (hindi_id_order $?ids))
	(printout ?*debug*  "(Rule_name-before_movement-after_movement remove_repeated_sub_ids  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?ids))"))" crlf)
  )
  ;---------------------------------------------------------------------------------------------------------------
  ; if no complete linkage is found then take english order itself as hindi order(i.e; if no relations are present)
  (defrule id_order_for_NCL_with_no_relations
  (declare (salience -500))
  (expr $?ids)
  ?f<-(hindi_id_order)
   =>
      	(retract ?f)
	(bind ?*k_list_debug*  (create$ ))
	(assert (hindi_id_order  $?ids ))
	(printout  ?*debug*  "(Rule_name-before_movement-after_movement id_order_for_NCL_with_no_relations  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?ids))"))" crlf)
  )
  ;---------------------------------------------------------------------------------------------------------------
