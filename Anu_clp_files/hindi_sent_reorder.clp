 (defglobal ?*DBUG* =  h_id_reorder_fp )

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (deffunction never-called ()
 (assert (No complete linkages found))
 (assert (missing-level-id) )
 (assert (verb_type-verb-causative_verb-tam) )
 (assert (addition-level-word-sid) )
 (assert (prep_id-relation-anu_ids))
 (assert (conjunction-components))
 (assert (hindi_id_order))
 (assert (id-word))
 (assert (id-last_word))
 (assert (id-root))
 (assert (id-cat_coarse))
 (assert (id-cat))
 (assert (root-verbchunk-tam-chunkids))
 (assert (verb_type-verb-kriyA_mUla-tam))
 (assert (id-kA_vib-gen-num-case))
 (assert (id-cat-mng-gen-num-per-case-vib ))
 (assert (conj_head-left_head-right_head))
 )
 ;============================================ Stanford Parser Rules ===================================================

 ;-------------------------------- new  word/id  insertion rules ------------------------------------------------------------
 ;The girl you met yesterday is here. The dog I chased was black.
 (defrule insert_jo_samAnAXikaraNa
 (declare (salience 1100))
 (Parser_used Stanford-Parser|Open-Logos-Parser)
 (prep_id-relation-anu_ids ? viSeRya-jo_samAnAXikaraNa  ?  10000)
 (or (prep_id-relation-anu_ids ? kriyA-object  ?k  10000)(prep_id-relation-anu_ids ? kriyA-aXikaraNavAcI_avyaya  ?k  10000))
 (prep_id-relation-anu_ids ? kriyA-subject  ?k ?sub)
 ?f0<-(hindi_id_order $?id ?sub $?id1 ?k $?daut)
 (not (jo_samAn_id_inserted ))
  =>
        (retract ?f0)
        (assert (hindi_id_order $?id 10000 ?sub $?id1 ?k $?daut))
        (assert (jo_samAn_id_inserted ))
        (printout ?*DBUG* "(Rule_Name-ids insert_jo_samAnAXikaraNa  (hindi_id_order  "(implode$ (create$ $?id 10000 ?sub $?id1 ?k $?daut)) ")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (13-08-11) 
 ; Do you think we should go to the party? 
 (defrule insert_conjunction
 (declare (salience 1100))
 (prep_id-relation-anu_ids ? kriyA-conjunction  ?k 10000)
 (prep_id-relation-anu_ids ? kriyA-subject  ?k  ?sub)
 (Head-Level-Mother-Daughters ? ? ?NP $?ids)
 (Node-Category ?NP NP)
 ?f0<-(hindi_id_order $?id $?ids $?id1 ?k $?daut)
 (not (conj_id_inserted ))
 (test (member$ ?sub $?ids))
 =>
        (retract ?f0)
        (assert (hindi_id_order $?id 10000 $?ids $?id1 ?k $?daut))
        (assert (conj_id_inserted ))
        (printout ?*DBUG* "(Rule_Name-ids  insert_conjunction  (hindi_id_order  "(implode$ (create$ $?id 10000 $?ids $?id1 ?k $?daut)) ")"  crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (22-12-11) Suggested by Sukhada
 ; If the USA were to be invaded by another country, would it really matter?
 (defrule insert_wo_for_yes_no_question
 (declare (salience 1150))
 (id-word ?id if|when)
 (Head-Level-Mother-Daughters ? ? ?SBAR $?ids)
 (Node-Category ?SBAR SBAR)
 (Head-Level-Mother-Daughters ? ? ?SQ $?ids $?sq_ids)
 (Node-Category ?SQ SQ)
 ?f0<-(hindi_id_order $?pre $?ids $?sq_ids $?post)
 (not (wo_inserted ))
 =>
        (retract ?f0)
        (assert (hindi_id_order $?pre $?ids wo kyA $?sq_ids $?post))
        (assert (wo_inserted ))
        (printout ?*DBUG* "(Rule_Name-ids   insert_wo_for_yes_no_question   (hindi_id_order  "(implode$ (create$ $?pre $?ids wo kyA $?sq_ids $?post)) ")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (22-12-11) Suggested by Sukhada
 ;When Mrs. Chitnis discovered that her husband was an adulterer she divorced him.
 (defrule insert_wo
 (declare (salience 1100))
 (id-word ?id when)
 (sbar-mother-dau ?sbar ?SBAR-dau)
 (Node-Category ?sbar SBAR)
 (Node-Category ?SBAR-dau SBAR)
 (Head-Level-Mother-Daughters ? ? ?sbar $?m_ids)
 (Head-Level-Mother-Daughters ? ? ?SBAR-dau $?ids)
 ?f0<-(hindi_id_order $?pre $?ids $?post)
 (test (member$ ?id $?m_ids))
 (not (wo_inserted ))
 =>
        (retract ?f0)
        (assert (hindi_id_order $?pre $?ids wo $?post))
        (assert (wo_inserted ))
        (printout ?*DBUG* "(Rule_Name-ids  insert_wo (hindi_id_order  "(implode$ (create$ $?pre $?ids wo $?post)) ")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (22-12-11) Suggested by Sukhada
 ;When the dollar is in a free-fall, even central banks can not stop it.
 (defrule insert_wo1
 (declare (salience 1000))
 (id-word ?id if|when)
 (Head-Level-Mother-Daughters ? ? ?SBAR $?ids)
 (Node-Category ?SBAR SBAR)
 ?f0<-(hindi_id_order $?pre $?ids ?that_id $?post)
 (id-word ?that_id ?that&~that&~then);For example, when you say that a car is moving on a road, you are describing the car with respect to a frame of reference attached to you or to the ground.
 (test (and (member$ ?id $?ids)(neq (length $?post) 0))) ;My car broke down when I reached Lalitpur.
 (not (wo_inserted ))
 =>
        (retract ?f0)
        (assert (hindi_id_order $?pre $?ids wo ?that_id $?post))
        (assert (wo_inserted ))
        (printout ?*DBUG* "(Rule_Name-ids  insert_wo1 (hindi_id_order  "(implode$ (create$ $?pre $?ids wo ?that_id $?post)) ")" crlf)
 )
 ;====================================  id movement rules ===============================================================
 ; I finally figured out why this program is so slow .
 ; Modified by Shirisha Manju (09-11-11) Suggested by Sukhada -- instead of moving wh word move the whole pada
 ; What colour is your shirt? What did you eat? O/P:  you What eat.  What did you say? O/P: you What say? 
 ; What have the students done. 
 ; Where did you put the milk.  ;I know a woman who has two children .
 (defrule wh_without_aux-reorder1
 (declare (salience 10))
 ?f1<-(id-word ?wh_word  what|when|why|who|how|where)
 (pada_info (group_head_id ?kriyA)(group_cat VP))
 (pada_info (group_cat PP|infinitive)(group_ids ?wh_word $?d))
 ?f0<-(hindi_id_order  $?start ?wh_word $?d  $?ids ?kriyA $?end)
 (not (prep_id-relation-anu_ids ?  kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka ?  ?wh_word)) ;Ex. How quickly did you run?
 (not (prep_id-relation-anu_ids ?  wall_conjunction ?wh_word))
 (not (prep_id-relation-anu_ids ?  viSeRaNa-viSeRaka  ? ?wh_word)) ;I wonder how big the department is .
 (not (prep_id-relation-anu_ids ?  viSeRya-jo_samAnAXikaraNa  ? ?wh_word))
 (not (id-word =(+ ?wh_word 1) long));How long will it last ?
 (not (prep_id-relation-anu_ids - niReXawmaka_vAkya));When the dollar is in a free-fall, even central banks can not stop it.
 (not (wh_movement_done ?wh_word))
 =>
        (retract ?f0 )
        (assert (wh_movement_done ?wh_word))
        (assert (hindi_id_order $?start  $?ids ?wh_word $?d  ?kriyA $?end))
        (printout ?*DBUG* "(Rule_Name-ids      wh_without_aux-reorder1      (hindi_id_order  "   (implode$ (create$ $?start $?ids ?wh_word $?d ?kriyA $?end))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Let me go to the market. O/P  #muJako - bAjAra ko jAne xo - .
 ;Let them go to the market. O/P unheM/unako - bAjAra ko jAne xo - .
 ;Let her go to the market. O/P usako/use - bAjAra ko jAne xo - .
 ;Let him go. O/P usako/use jAne xo - .
 (defrule let_me
 ?f1<-(id-word ?let let)
 (prep_id-relation-anu_ids ? kriyA-object  ?kriyA ?object)
 ?f0 <- (hindi_id_order $?pre ?object ?let ?kriyA)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  ?object $?pre ?kriyA ?let))
        (printout ?*DBUG* "(Rule_Name-ids  let_me  (hindi_id_order  "(implode$ (create$ ?object $?pre ?kriyA ?let))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju, Suggested by Sukhada 30-11-11
 ;I have no money, still I can help you. 
 (defrule det_viSeRaNa_rule1
 (declare (salience 10))
 (prep_id-relation-anu_ids ? viSeRya-det_viSeRaNa  ?v_id ?vn_id)
 ?f1<-(id-word ?vn_id no)
 (prep_id-relation-anu_ids ?  ?  ?kriyA ?v_id)
 (id-cat_coarse ?kriyA verb)
 ?f0 <-(hindi_id_order $?pre ?vn_id $?mid ?v_id  $?post ?kriyA $?p)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre  $?mid $?post ?v_id ?vn_id ?kriyA $?p))
        (printout  ?*DBUG* "(Rule_Name-ids       det_viSeRaNa_rule1   (hindi_id_order  "(implode$ (create$  $?pre  $?mid $?post ?v_id ?vn_id ?kriyA $?p)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; You are lucky that there is no exam today .
 ; Apa #BAgyavAna hEM #ki #Aja #parIkRA #nahIM hE 
 (defrule det_viSeRaNa_rule
 (prep_id-relation-anu_ids ? viSeRya-det_viSeRaNa  ?v_id ?vn_id)
 (prep_id-relation-anu_ids ? ?  ?kriyA ?v_id)
 ?f1<-(id-word ?vn_id no)
 ?f0 <-(hindi_id_order $?pre ?vn_id $?mid ?v_id  $?post ?kriyA)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre  $?mid $?post ?v_id ?vn_id ?kriyA ))
        (printout  ?*DBUG* "(Rule_Name-ids       det_viSeRaNa_rule   (hindi_id_order  "(implode$ (create$  $?pre  $?mid $?post ?v_id ?vn_id ?kriyA )) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;She is always in a hurry
 (defrule always_rule
 ?f1<-(id-word ?id  always)
 (prep_id-relation-anu_ids ?  kriyA-subject  ?kriyA  ?sub)
 (prep_id-relation-anu_ids ?  kriyA-kriyA_viSeRaNa  ?kriyA ?id)
 (test(> ?id ?sub))
 ?f0 <-(hindi_id_order $?pre ?sub $?ids ?id $?post ?kriyA)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order $?pre ?sub ?id $?ids $?post ?kriyA))
        (printout  ?*DBUG* "(Rule_Name-ids   always_rule  (hindi_id_order  "(implode$ (create$  $?pre ?sub ?id $?ids $?post ?kriyA)) ")" crlf)
 )

 ;------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju.  Suggested by Sukhada (30-11-11)
 ;Hyderabad is also famous for pearls and pearl jewellery.
 (defrule move_adv_b4_sub_sama
 (prep_id-relation-anu_ids ? kriyA-subject ?kriyA ?sub)
 (prep_id-relation-anu_ids ? subject-subject_samAnAXikaraNa  ?sub ?sub_sama)
 (pada_info (group_head_id ?sub_sama)(group_ids $?ids))
 (prep_id-relation-anu_ids ? viSeRya-viSeRaka  ?sub_sama ?advp)
 ?f0 <-(hindi_id_order $?pre $?ids $?post ?advp ?kriyA)
 (id-cat_coarse ?advp adverb)
 (id-word ?advp ?w&~thus)
 =>
	(retract ?f0)
	(assert (hindi_id_order $?pre ?advp $?ids $?post ?kriyA))
        (printout  ?*DBUG* "(Rule_Name-ids   move_adv_b4_sub_sama  (hindi_id_order  "(implode$ (create$  $?pre ?advp $?ids $?post ?kriyA)) ")" crlf)
 )

 ;======================================== New word insertion rules =======================================================
 ;Added by Shirisha Manju (1-02-11)
 ;May I go outside ? Are you going? Did you take your breakfast?
 (defrule yes-no_question
 ?f1<-(id-word 1 did|do|does|may|can|could|would|will|are|is|was|were|am|shall|has|have|had|should)
 ?f0 <- (hindi_id_order  $?sent )
 (not (prep_id-relation-anu_ids ? AjFArWaka_kriyA ?kri) )
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order     kyA $?sent))
	(printout ?*DBUG* "(Rule_Name-ids  yes-no_question   kyA " $?sent crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (1-02-11)
 ; I guess you are working very hard.  I suppose his criticism was fair comment .
 ; Anne told me I would almost certainly be hired .
 ; I saw you put the key in your pocket .    I did not think he would do it , but he did .
 ; I wonder how much you swim.  I hope he comes to the party tomorrow.
 ; bet in the list suggested my Meena(05-04-11) Ex:Alan bet me five dollars Clinton would lose the election. 
 (defrule rule_for_ki
 (declare (salience 10))
 ?f1<-(id-root ?kri tell|guess|see|think|say|know|suppose|wonder|hope|bet)
 (prep_id-relation-anu_ids ?  kriyA-subject ?kri  ?)
 (prep_id-relation-anu_ids ?  kriyA-subject ?kri_1 ?)
 ?f0 <-(hindi_id_order $?pre ?kri $?post)
 (test (< ?kri ?kri_1))
 (not (hindi_id_order $?ids ?kri));The Master said , if I did not go , how would you ever see ?
 (not (prep_id-relation-anu_ids ?  kriyA-object  ?kri ?));I saw him telling her about the party. 
 (not (prep_id-relation-anu_ids ?  kriyA-conjunction  ?kri_1 10000));Do you think we should go to the party? 
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre ?kri ki $?post))
	(assert (ki_asserted ?kri))
        (printout  ?*DBUG* "(Rule_Name-ids   rule_for_ki   (hindi_id_order  "(implode$ (create$ $?pre ?kri ki $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (3-02-11)
 ;The big question on everybody's mind is who killed OJ.
 (defrule rule_for_ki_1
 (id-root ?kri be|know) ;added know (25-02-11)
 ?f1<-(id-root =(+ ?kri 1) who)
 (prep_id-relation-anu_ids  ? kriyA-subject  ?kri    ?)
 (prep_id-relation-anu_ids  ? kriyA-subject  ?kri_1  ?)
 ?f0 <-(hindi_id_order $?pre ?kri  $?post)
 (test (neq ?kri ?kri_1))
 (not (hindi_id_order $?ids ?kri))
 (not (ki_asserted ?kri))
 =>
        (retract ?f0 ?f1) 
        (assert (hindi_id_order  $?pre ?kri ki $?post))
	(assert (ki_asserted ?kri))
        (printout ?*DBUG* "(Rule_Name-ids   rule_for_ki_1   (hindi_id_order  "(implode$ (create$ $?pre ?kri $?post))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (3-02-11)
 ;Guess who I saw at the party last night! 
 (defrule rule_for_ki_2
 ?f1<-(id-root ?id guess )
 (prep_id-relation-anu_ids ?  AjFArWaka_kriyA ?id)
 ?f0 <-(hindi_id_order $?pre ?id $?post)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre ?id ki $?post))
        (printout  ?*DBUG* "(Rule_Name-ids   rule_for_ki_2   (hindi_id_order  "(implode$ (create$ $?pre ?id ki $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Anne told me I would almost certainly be hired.
 (defrule rule_for_ki_3
 ?f1<-(id-root ?kri tell)
 (prep_id-relation-anu_ids ? kriyA-subject  ?kri    ?sub)
 (prep_id-relation-anu_ids ? kriyA-object   ?kri    ?obj)
 (prep_id-relation-anu_ids ? kriyA-subject  ?kri_1  ?)
 ?f0 <-(hindi_id_order $?pre ?kri $?post)
 (test (< ?kri ?kri_1))
 (not (ki_asserted ?kri))
 (not (hindi_id_order $?ids ?kri))
 =>
   	(retract ?f0 ?f1)
   	(assert (hindi_id_order  $?pre ?kri ki $?post))
   	(printout  ?*DBUG* "(Rule_Name-ids   rule_for_ki_3   (hindi_id_order  "(implode$ (create$ $?pre ?kri ki $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; Added by sheetal(18-01-2010).
 ; Modified by Manju (1-02-11);replaced link names with relation and simplified the rule
 ; Do it the way you have always done it .
 ; I really like the way you do your hair .
 (defrule rule_for_jisa_prakAra_se
 (prep_id-relation-anu_ids  ? kriyA-subject  ?kri ?sub)
 ?f1<- (id-root  =(- ?sub 1) way)
 (or (prep_id-relation-anu_ids ? kriyA-kriyA_viSeRaNa|kriyA-object ?kri1  =(- ?sub 1))(prep_id-relation-anu_ids ? kriyA-object_2  ?kri1  ?way))
 ?f0 <-(hindi_id_order $?d ?sub $?d1)
 =>
        (retract ?f0 ?f1)
	(assert (hindi_id_order $?d jisa_prakAra_se ?sub $?d1))
	(printout  ?*DBUG* "(Rule_Name-ids    rule_for_jisa_prakAra_se   (hindi_id_order  "(implode$ $?d)"  jisa_prakAra_se  "?sub " "(implode$ $?d1) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju(1-12-2009).
 ;Whether we should go to the party is the important question .
 ;instead of variable_name used 1 bcoz of the sen: I wonder whether we should go .
 (defrule rule_for_yaha
 ?f1<-(id-word 1 whether)
 (prep_id-relation-anu_ids ?  kriyA-conjunction ?kri 1)
 ?f0 <-(hindi_id_order $?pre ?kri $?post)
 =>
	(retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre ?kri yaha $?post))
        (printout  ?*DBUG* "(Rule_Name-ids   rule_for_yaha   (hindi_id_order  "(implode$ (create$ $?pre ?kri  yaha $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju(25-02-2011).
 ; If you know who did it, you should tell the teacher.
 (defrule wo_rule_for_if
 (declare (salience 2))
 ?f1<-(id-word ?id if)  ;Modified by Meena (28-10-10) 
 (prep_id-relation-anu_ids  ? kriyA-conjunction  ?k ?id)
 (prep_id-relation-anu_ids  ? kriyA-praSnavAcI  ?k ?p)
 (prep_id-relation-anu_ids  ? kriyA-subject ?k1 ?p)
 ?f0 <-(hindi_id_order $?pre ?k1 $?post)
 (not (wo_inserted ))
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre ?k1 wo $?post))
        (printout ?*DBUG* "(Rule_Name-ids  wo_rule_for_if  (hindi_id_order  "(implode$ (create$ $?pre ?k1 wo $?post))")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju(09-12-2009).--- Suggested by Sheetal
 ; If John was with Lisa last night, who went to the movie with Diane. 
 ; If you were a middle-class American without a job , who would you vote for .
 ; If we heat iron it becomes red .
 ; If you use that strategy , he will wipe you out .
 ; Although acceleration can vary with time, our study in this chapter will be restricted to motion with constant acceleration.
 (defrule wo_rule_for_if1
 (declare (salience 1))
 ?f1<-(id-word ?id ?word&if|although)  ;Modified by Meena (28-10-10) 
 (not (wo_inserted )) ;restricted for Stanford Parser bcoz "wo" is generated using constituents.
 (prep_id-relation-anu_ids  ? kriyA-conjunction  ?k ?id)
 ?f0 <-(hindi_id_order $?pre ?k $?post)
 (not (hindi_id_order $? ?k))
 =>
        (retract ?f0 ?f1)
	(if (eq ?word if) then
	        (assert (hindi_id_order  $?pre ?k wo $?post))  
		(printout ?*DBUG* "(Rule_Name-ids  wo_rule_for_if1  (hindi_id_order  "(implode$ (create$ $?pre ?k wo $?post))")" crlf)
	else
		(assert (hindi_id_order  $?pre ?k paranwu $?post))
	        (printout ?*DBUG* "(Rule_Name-ids  wo_rule_for_if1  (hindi_id_order  "(implode$ (create$ $?pre ?k paranwu $?post))")" crlf)
	)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (25-02-11) 
 ;When Mrs. Chitnis discovered that her husband was an adulterer she divorced him.
 (defrule wo_rule_for_when
 (declare (salience 15))
 ?f1<-(id-word 1 when)  ;Modified by Meena (28-10-10) 
 (not (wo_inserted )) ;restricted for Stanford Parser bcoz "wo" is generated using constituents.
 (prep_id-relation-anu_ids ?  kriyA-conjunction  ?k 1)
 (prep_id-relation-anu_ids ?  kriyA-subject  ?k1 ?id)
 ?f0 <-(hindi_id_order $?pre ?id $?post)
 (test (> ?k1 ?k) )
 (not (prep_id-relation-anu_ids ? viSeRya-RaRTI_viSeRaNa  ?id ?))
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre  wo ?id $?post))
        (printout ?*DBUG* "(Rule_Name-ids   wo_rule_for_when   (hindi_id_order  "(implode$ (create$ $?pre ?k1 wo $?post))")"crlf)

 )
 ;-------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (15-11-11)
 ;When Mrs. Chitnis discovered that her husband was an adulterer she divorced him.
 (defrule wo_rule_for_when1
 (declare (salience 2))
 ?f1<-(id-word 1 when)
 (not (wo_inserted )) ;restricted for Stanford Parser bcoz "wo" is generated using constituents.
 (prep_id-relation-anu_ids ?  kriyA-kriyA_viSeRaNa  ?k 1)
 (prep_id-relation-anu_ids ?  kriyA-conjunction  ?k1 ?sub)
 (test (> ?k1 ?k) )
 ?f0 <-(hindi_id_order $?pre ?k1 $?post)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre ?k1 wo $?post))
        (printout ?*DBUG* "(Rule_Name-ids   wo_rule_for_when1  (hindi_id_order  "(implode$ (create$ $?pre ?k1 wo $?post))")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (22-12-11)
 ; When the dollar is in a free-fall, even central banks can not stop it.
 ; When you stand on this rock and face the east, the waves of the bay of bengal lap your feet.
 (defrule wo_rule_for_when2
 (declare (salience 1))
 ?f1<-(id-word 1 when)
 (not (wo_inserted ))   
 (prep_id-relation-anu_ids ?  kriyA-kriyA_viSeRaNa  ?k 1)
 (prep_id-relation-anu_ids ?  kriyA-subject  ?k1 ?id)
 (pada_info (group_head_id ?id) (group_cat PP) (group_ids $?d))
 ?f0 <-(hindi_id_order $?pre $?d $?post)
 (test (> ?k1 ?k) )
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre wo $?d $?post))
        (printout ?*DBUG* "(Rule_Name-ids   wo_rule_for_when2  (hindi_id_order  "(implode$ (create$ $?pre wo $?d $?post))")"crlf)

 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule since_rule
 ?f1<-(id-word 1 since)  ;Modified by Meena (28-10-10) 
 (prep_id-relation-anu_ids ?  kriyA-conjunction  ?k 1)
 (prep_id-relation-anu_ids ?  kriyA-subject  ?kri1 ?id)
 ?f0 <-(hindi_id_order $?pre ?id $?post)
 (test (and (> ?kri1 ?k) (neq ?id ?k)))
 =>
        (retract ?f0 ?f1)
	(assert (hindi_id_order  $?pre isaliye ?id $?post))
        (printout ?*DBUG* "(Rule_Name-ids   since_rule  (hindi_id_order  "(implode$ (create$ $?pre isaliye ?id $?post))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
  ;I can not go out until my hair is dry.
  ;"UNTIL" takes the form jaba_waka----na
  (defrule insert_nahIM
  ?f1<-(id-word ?id until)
  (id-HM-source   ?id   jaba_waka  ?)
  (prep_id-relation-anu_ids ? kriyA-conjunction  ?sub   ?id)
  (prep_id-relation-anu_ids ? kriyA-subject  ?kri  ?sub)
  ?f<-(hindi_id_order $?list ?id $?list1 ?kri)
  =>
  	(retract ?f ?f1)
	(assert (hindi_id_order  $?list ?id $?list1 nahIM ?kri))
  	(printout  ?*DBUG* "(Rule_Name-ids   insert_nahIM   (hindi_id_order  "(implode$ (create$ $?list  ?id $?list1 nahIM ?kri)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju(7-11-12) Suggested by Chaitanya Sir
 ; Free fall is thus a case of motion with uniform acceleration. 
 (defrule mv_thus_to_sent_start
 (declare (salience -450))
 ?f0<-(hindi_id_order $?pre ?id $?post)
 ?f1<-(id-word ?id thus)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order ?id $?pre $?post))
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule remove_ordered_ids
 (declare (salience -500))
 ?f0<-(id-word ?id ?)
 (hindi_id_order $?ids ?id $?ids1)
 =>
   	(retract ?f0)
 )
 ;----------------------------------------------- missing id rules -------------------------------------------------
  ;He neither plays, nor reads.
  (defrule neither_nor_rule
  (declare (salience -550))
  ?f1<-(id-word ?id nor|or)
  ?f2<-(id-word ?id1 neither|either)
  ?f3<-(pada_info (group_head_id ?id)(group_cat ?gtype)(group_ids $?grp_ids))
  ?f4<-(pada_info (group_head_id ?id1)(group_cat ?gtype1)(group_ids $?grp_id))
  ?f5<-(pada_info (group_head_id ?h_id1)(group_cat VP)(group_ids $?grp_ids1)(preposition ?prep_id1)(Hin_position ?h_pos1))
  ?f6<-(pada_info (group_head_id ?h_id2)(group_cat VP)(group_ids $?grp_ids2)(preposition ?prep_id2)(Hin_position ?h_pos2))
  ?f7<-(hindi_id_order $?ids $?x  ?h_id1  ?h_id2 $?y)
  =>
  	(retract ?f1 ?f7)
  	(assert (hindi_id_order $?ids  $?x ?id1 ?h_id1  ?id  ?h_id2 $?y))
  	(printout ?*DBUG* "(Rule_Name-ids neither_nor_rule (hindi_id_order " (implode$ (create$ $?ids  $x ?id1 ?h_id1 ?id ?h_id2 $?y))"))" crlf)
  )
 ;------------------------------------------------------------------------------------------------------------------
 ;Our program is easier to use than to understand .
 (defrule default_rule
 (declare (salience -600))
 (prep_id-relation-anu_ids  ? kriyA-subject|kriyA-dummy_subject ? ?subj_id)
 (not (Parser_used Stanford-Parser|Open-Logos-Parser)) ;Added by Manju(31-05-11) restricted for stanford parser
 ?f3<-(pada_info (group_head_id ?id)(group_cat PP|infinitive|VP)(group_ids $?grp_ids))
 ?f4<-(id-word ?id ~to)
 ?f0<-(pada_info (group_head_id ?h_id1)(group_cat PP|infinitive|VP)(group_ids $?grp_ids1)(preposition ?prep_id1))
 ?f2<-(hindi_id_order $?ids)
 (test (and (neq ?h_id1 ?subj_id)(member$ ?h_id1 $?ids)))
 (test (and (neq ?id ?prep_id1)(not (member$ ?id $?ids))))
 =>
  	(retract ?f2 ?f4)
  	(bind ?pos (member$ (nth$ 1 $?grp_ids1) $?ids))
	(if (neq ?pos FALSE) then
 		(bind $?ids (insert$ $?ids ?pos $?grp_ids))
  	)
  	(assert (hindi_id_order $?ids))
  	(printout ?*DBUG* "(Rule_Name-ids default_rule (hindi_id_order " (implode$ $?ids)"))" crlf)
 )
 ;------------------------------------------- remove repeated "ki" -----------------------------------------------
 ; Added by Shirisha Manju (21-06-11)
 ; to delete repeated ki in hindi sentence 
 ; Ex: He thought that she may have missed the train. I did not think he would do it, but he did.
 ; We know that the translational motion of a system of particles is the motion of its center of mass.
 (defrule rm_repeated_ki
 (declare (salience -650))
 ?f0<-(hindi_id_order $?var ki ?con $?var1)
 (id-HM-source  ?con  paranwu|ki  ?)
 =>
        (retract ?f0)
        (assert (hindi_id_order $?var ?con $?var1))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;It is true that you are my friend but I can not go along with you on this issue. 
 ; Added by Shirisha Manju (21-06-11)
 (defrule rm_ki_if_sent_first
 (declare (salience -650))
 ?f0<-(hindi_id_order ?id $?var1)
 (id-HM-source  ?id  ki  ?)
 =>
        (retract ?f0)
        (assert (hindi_id_order $?var1))
 )
 ;----------------------------------------------- final order -----------------------------------------------------
 (defrule hi_order
 (declare (salience -700))
 (hindi_id_order  $?ids)
 =>
        (assert (hindi_id_order   $?ids))
        (printout ?*DBUG* "(Rule_Name-ids  hi_order  (hindi_id_order " (implode$ $?ids)"))" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -800))
 =>
        (close ?*DBUG*)
 )
 ;------------------------------------------------------------------------------------------------------------------
