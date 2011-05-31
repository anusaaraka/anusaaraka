 (defglobal ?*DBUG* =  h_id_reorder_fp )

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (deffacts dummy_facts 
 (No complete linkages found)
 (missing-level-id) 
 (verb_type-verb-causative_verb-tam) 
 (addition-level-word-sid) 
 (prep_id-relation-anu_ids)
 (conjunction-components)
 (hindi_id_order)
 (id-word)
 (id-last_word)
 (id-root)
 (id-cat_coarse)
 (id-cat)
 (root-verbchunk-tam-chunkids)
 (verb_type-verb-kriyA_mUla-tam)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (1-02-11)
 ;May I go outside ? Are you going? Did you take your breakfast?
 (defrule yes-no_question
 ?f1<-(id-word 1 did|do|does|may|can|could|would|will|are|is|was|were|am|shell|has|have|had|should)
 ?f0 <- (hindi_id_order  $?sent )
 (not (prep_id-relation-anu_ids ? AjFArWaka_kriyA ?kri) )
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order     kyA $?sent))
	(printout ?*DBUG* "(Rule_Name-ids  yes-no_question   kyA " $?sent crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; What colour is your shirt?
 (defrule wh_without_aux-reorder2
 (declare (salience 100))
 (pada_info (group_head_id ?kriyA)(group_cat VP))
 (pada_info (group_head_id ?vi)(group_cat PP)(group_ids $?grp_ids))
 ?f1<-(id-word ?wh_word  what)
 (prep_id-relation-anu_ids ?  kriyA-subject  ?kriyA ?vi)
 (test (member$ ?wh_word $?grp_ids))
 ?f0<-(hindi_id_order  $?start $?grp_ids $?NP ?kriyA $?end)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order $?start  $?NP $?grp_ids ?kriyA $?end))
        (printout ?*DBUG* "(Rule_Name-ids      wh_without_aux-reorder2      (hindi_id_order  "   (implode$ (create$ $?start $?NP $?grp_ids ?kriyA $?end))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;What did you eat? O/P:  you What eat.  What did you say? O/P: you What say? 
 ;What have the students done. 
 ; In third condition "have and has" are added to handle such sentences.
 ;Where did you put the milk.   
 ;I know a woman who has two children .
 (defrule wh-reorder1
 (declare (salience 200))
 (pada_info (group_head_id ?kriyA)(group_cat VP))
 ?f1<-(id-word ?wh_word  what|when|why|who|how|where)
 (id-word ?aux do|does|did|have|has)
 (not (prep_id-relation-anu_ids ?  kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka ?  ?wh_word)) ;Ex. How quickly did you run?
 (not (prep_id-relation-anu_ids ?  wall_conjunction ?wh_word)) ;When we want to hear a music programme on the radio , we have to tune the radio to the correct station .
 ?f0<-(hindi_id_order  $?start ?wh_word $?NP ?kriyA $?end)
 (test (and (neq ?wh_word 10000)(neq ?wh_word 10001)))
 =>
	(retract ?f0 ?f1)
  	(assert (hindi_id_order $?start  $?NP ?wh_word ?kriyA $?end))
	(printout ?*DBUG* "(Rule_Name-ids	wh-reorder1	 (hindi_id_order  "   (implode$ (create$ $?start $?NP ?wh_word ?kriyA $?end))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;I finally figured out why this program is so slow .
 (defrule wh_without_aux-reorder1
 (declare (salience 10))
 (pada_info (group_head_id ?kriyA)(group_cat VP))
 ?f1<-(id-word ?wh_word  what|when|why|who|how|where)
 (not (prep_id-relation-anu_ids ?  kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka ?  ?wh_word)) ;Ex. How quickly did you run?
 (not (prep_id-relation-anu_ids ?  wall_conjunction ?wh_word))
   ;When we want to hear a music programme on the radio , we have to tune the radio to the correct station .
 (not (prep_id-relation-anu_ids ?  viSeRaNa-viSeRaka  ? ?wh_word)) ;I wonder how big the department is .
 (not (prep_id-relation-anu_ids ?  viSeRya-jo_samAnAXikaraNa  ? ?wh_word))
 ?f0<-(hindi_id_order  $?start ?wh_word $?NP ?kriyA $?end)
 (not (id-word =(+ ?wh_word 1) long));How long will it last ? 
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order $?start  $?NP ?wh_word ?kriyA $?end))
        (printout ?*DBUG* "(Rule_Name-ids      wh_without_aux-reorder1      (hindi_id_order  "   (implode$ (create$ $?start $?NP ?wh_word ?kriyA $?end))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Indirect questions
 ;I asked her what she would like to eat .
 ; (id-word is used to retract the ?question_word id (without this it goes into loop)
; (defrule Indirect_question
; (link_name-link_expansion   ?QI      Q I $?)
; (link_name-lnode-rnode ?QI ?verb ?question_word)
; (kriyA-praSnavAcI  ?verb ?question_word)
; (kriyA-object  ?verb_1 ?question_word)
; ?f1<-(id-word ?question_word ?)
; ?f0 <- (hindi_id_order  $?NP ?question_word $?sent ?verb_1 $?rest)
; =>
;	(retract ?f0 ?f1)
;        (assert (hindi_id_order $?NP  ki $?sent ?question_word ?verb_1 $?rest ))
;	(printout ?*DBUG* "(Rule_Name-ids        Indirect_question   (hindi_id_order  "(implode$ (create$  $?NP  ki $?sent  ?question_word ?verb_1 $?rest  )) ")" crlf)
; )
 ;------------------------------------------------------------------------------------------------------------------
 ;Let me go to the market. O/P  #muJako - bAjAra ko jAne xo - .
 ;Let them go to the market. O/P unheM/unako - bAjAra ko jAne xo - .
 ;Let her go to the market. O/P usako/use - bAjAra ko jAne xo - .
 ;Let him go. O/P usako/use jAne xo - .
 (defrule let_me
 (prep_id-relation-anu_ids ? kriyA-object  ?kriyA ?object)
 ?f1<-(id-word ?let let)
 ?f0 <- (hindi_id_order $?pre ?object  ?let ?kriyA)
 =>
        (retract ?f0 ?f1)
	(assert (hindi_id_order  ?object $?pre ?kriyA ?let))
        (printout ?*DBUG* "(Rule_Name-ids  let_me  (hindi_id_order  "(implode$ (create$ ?object $?pre ?kriyA ?let))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; You are lucky that there is no exam today
 ; Apa #BAgyavAna hEM #ki #Aja #parIkRA #nahIM hE
 (defrule det_viSeRaNa_rule
 (prep_id-relation-anu_ids ? viSeRya-det_viSeRaNa  ?v_id ?vn_id)
 ?f1<-(id-word ?vn_id no)
 ?f0 <-(hindi_id_order $?pre ?vn_id $?mid ?v_id  $?post ?kriyA)
 =>
	(retract ?f0 ?f1)
	(assert (hindi_id_order  $?pre  $?mid $?post ?v_id ?vn_id ?kriyA))
        (printout  ?*DBUG* "(Rule_Name-ids       det_viSeRaNa_rule   (hindi_id_order  "(implode$ (create$  $?pre  $?mid $?post ?v_id ?vn_id ?kriyA)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;She is always in a hurry
 (defrule always_rule
 (prep_id-relation-anu_ids ?  kriyA-subject  ?kriya  ?sub)
 (prep_id-relation-anu_ids ?  kriyA-kriyA_viSeRaNa  ?kriyA ?id)
 (test(> ?id ?sub))
 ?f1<-(id-word ?id  always)
 ?f0 <-(hindi_id_order $?pre ?sub $?ids ?id $?post ?kriyA)
 =>
	(retract ?f0 ?f1)
	(assert (hindi_id_order $?pre ?sub ?id $?ids $?post ?kriyA))
        (printout  ?*DBUG* "(Rule_Name-ids   always_rule  (hindi_id_order  "(implode$ (create$  $?pre ?sub ?id $?ids $?post ?kriyA)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (1-02-11)
 ; I guess you are working very hard.  I suppose his criticism was fair comment .
 ; Anne told me I would almost certainly be hired .
 ; I saw you put the key in your pocket .    I did not think he would do it , but he did .
 ; I wonder how much you swim.  I hope he comes to the party tomorrow.
 (defrule rule_for_ki
 (declare (salience 10))
 (prep_id-relation-anu_ids ?  kriyA-subject ?v_id ?sub)
 (prep_id-relation-anu_ids ?  kriyA-subject ?v ?)
 ?f1<-(id-root ?v_id tell|guess|see|think|say|know|suppose|wonder|hope|bet);bet suggested my Meena(05-04-11)Ex:Alan bet me five dollars Clinton would lose the election. 
 ?f0 <-(hindi_id_order $?pre ?v_id $?post)
 (test (< ?v_id ?v))
 (not (hindi_id_order $?ids ?v_id));The Master said , if I did not go , how would you ever see ?
 (not (prep_id-relation-anu_ids ?  kriyA-conjunction ?v_id ?))
 (not (prep_id-relation-anu_ids ?  kriyA-object  ?v_id ?));I saw him telling her about the party. 
 (not (prep_id-relation-anu_ids ?  kriyA-conjunction  ?v 10000));Do you think we should go to the party? 
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre ?v_id ki $?post))
	(assert (ki_asserted ?v_id))
        (printout  ?*DBUG* "(Rule_Name-ids   rule_for_ki   (hindi_id_order  "(implode$ (create$ $?pre ?v_id ki $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (3-02-11)
 ;The big question on everybody's mind is who killed OJ.
 (defrule rule_for_ki_1
 (prep_id-relation-anu_ids  ? kriyA-subject ?v_id ?sub)
 (prep_id-relation-anu_ids  ? kriyA-subject ?v ?)
 (id-root ?v_id be|know) ;added know (25-02-11)
 ?f1<-(id-root =(+ ?v_id 1) who)
 ?f0 <-(hindi_id_order $?pre ?v_id $?post)
 (test (neq ?v_id ?v))
 (not (hindi_id_order $?ids ?v_id))
 (not (ki_asserted ?v_id))
 =>
        (retract ?f0 ?f1) 
        (assert (hindi_id_order  $?pre ?v_id ki $?post))
	(assert (ki_asserted ?v_id))
        (printout  ?*DBUG* "(Rule_Name-ids   rule_for_ki_1   (hindi_id_order  "(implode$ (create$ $?pre ?v_id ki $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (3-02-11)
 ;Guess who I saw at the party last night! 
 (defrule rule_for_ki_2
 (prep_id-relation-anu_ids ?  kriyA-subject ?v_id ?sub)
 (prep_id-relation-anu_ids ?  AjFArWaka_kriyA ?id)
 ?f1<-(id-root ?id guess )
 ?f0 <-(hindi_id_order $?pre ?id $?post)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre ?id ki $?post))
        (printout  ?*DBUG* "(Rule_Name-ids   rule_for_ki_2   (hindi_id_order  "(implode$ (create$ $?pre ?id ki $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Anne told me I would almost certainly be hired.
 (defrule rule_for_ki_3
 (prep_id-relation-anu_ids ? kriyA-subject ?v_id ?sub)
 (prep_id-relation-anu_ids ? kriyA-subject ?v ?)
 (id-root ?v_id tell)
 (prep_id-relation-anu_ids ? kriyA-object  ?v_id ?obj)
 ?f1<-(id-root ?obj ?)
 (not (ki_asserted ?v_id))
 (not (hindi_id_order $?ids ?v_id))
 ?f0 <-(hindi_id_order $?pre ?v_id $?post)
 (test (< ?v_id ?v))
 =>
   	(retract ?f0 ?f1)
   	(assert (hindi_id_order  $?pre ?v_id ki $?post))
   	(printout  ?*DBUG* "(Rule_Name-ids   rule_for_ki_3   (hindi_id_order  "(implode$ (create$ $?pre ?v_id ki $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added by sheetal(18-01-2010).
 ;Modified by Manju (1-02-11);replaced link names with relation
 ; Do it the way you have always done it .
 ; I really like the way you do your hair .
 (defrule rule_for_jisa_prakAra_se
 (prep_id-relation-anu_ids  ? kriyA-subject  ?kri ?sub)
 (or (prep_id-relation-anu_ids ? kriyA-kriyA_viSeRaNa|kriyA-object ?kri1  =(- ?sub 1))(prep_id-relation-anu_ids ? kriyA-object_2  ?kri1  ?way))
; (or (kriyA-kriyA_viSeRaNa  ?kri1  =(- ?sub 1))(kriyA-object ?kri1  =(- ?sub 1))(kriyA-object_2  ?kri1  ?way))
 ?f1<- (id-root  =(- ?sub 1) way)
 ?f0 <-(hindi_id_order $?hin_order)
 (test (member$ ?sub $?hin_order))
 =>
        (retract ?f0 ?f1)
         (bind ?sub_pos (member$ ?sub $?hin_order))
         (bind $?hin_order (insert$ $?hin_order ?sub_pos jisa_prakAra_se))
         (assert (hindi_id_order $?hin_order))
        (printout  ?*DBUG* "(Rule_Name-ids    rule_for_jisa_prakAra_se   (hindi_id_order  "(implode$ $?hin_order) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju(1-12-2009).
 ;Whether we should go to the party is the important question .
 ;instead of variable_name used 1 bcoz of the sen: I wonder whether we should go .
 (defrule rule_for_yaha
 (prep_id-relation-anu_ids ?  kriyA-conjunction ?kri 1)
 ?f1<-(id-word 1 whether)
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
 (prep_id-relation-anu_ids  ? kriyA-conjunction  ?k ?id)
 (prep_id-relation-anu_ids  ? kriyA-praSnavAcI  ?k ?p)
 (prep_id-relation-anu_ids  ? kriyA-subject ?k1 ?p)
 ?f1<-(id-word ?id if)  ;Modified by Meena (28-10-10) 
 ?f0 <-(hindi_id_order $?pre ?k1 $?post)
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
 (defrule wo_rule_for_if1
 (declare (salience 1))
 (prep_id-relation-anu_ids  ? kriyA-conjunction  ?k ?id)
 ?f1<-(id-word ?id if)  ;Modified by Meena (28-10-10) 
 ?f0 <-(hindi_id_order $?pre ?k $?post)
 (not (hindi_id_order $? ?k))
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre ?k wo $?post))  
        (printout ?*DBUG* "(Rule_Name-ids  wo_rule_for_if1  (hindi_id_order  "(implode$ (create$ $?pre ?k wo $?post))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (25-02-11) 
 ;When Mrs. Chitnis discovered that her husband was an adulterer she divorced him.
 (defrule wo_rule_for_when
 (declare (salience 1))
 (prep_id-relation-anu_ids ?  kriyA-conjunction  ?k 1)
 (prep_id-relation-anu_ids ?  kriyA-subject  ?k1 ?id)
 ?f1<-(id-word 1 when)  ;Modified by Meena (28-10-10) 
 ?f0 <-(hindi_id_order $?pre ?id $?post)
 (test (> ?k1 ?k) )
 (not (prep_id-relation-anu_ids ? viSeRya-RaRTI_viSeRaNa  ?id ?))
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre  wo ?id $?post))
        (printout ?*DBUG* "(Rule_Name-ids   wo_rule_for_when   (hindi_id_order  "(implode$ (create$ $?pre ?k1 wo $?post))")"crlf)

 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule wo_rule
 (prep_id-relation-anu_ids ?  kriyA-conjunction  ?k 1)
 (prep_id-relation-anu_ids ?  kriyA-subject  ?kri1 ?id)
 ?f1<-(id-word 1 since)  ;Modified by Meena (28-10-10) 
 ?f0 <-(hindi_id_order $?pre ?id $?post)
 (test (and (> ?kri1 ?k) (neq ?id ?k)))
 =>
        (retract ?f0 ?f1)
	(assert (hindi_id_order  $?pre isaliye ?id $?post))
        (printout ?*DBUG* "(Rule_Name-ids   wo_rule  (hindi_id_order  "(implode$ (create$ $?pre isaliye ?id $?post))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
  ;I can not go out until my hair is dry.
  ;"UNTIL" takes the form jaba_waka----na
  (defrule insert_nahIM
  ?f1<-(id-word ?id until)
  (prep_id-relation-anu_ids ? kriyA-conjunction  ?sub   ?id)
  (prep_id-relation-anu_ids ? kriyA-subject  ?kri  ?sub)
  (id-HM-source   ?id   jaba_waka  ?)
  ?f<-(hindi_id_order $?list ?id $?list1 ?kri)
  =>
  (retract ?f ?f1)
  (assert (hindi_id_order  $?list ?id $?list1 nahIM ?kri))
  (printout  ?*DBUG* "(Rule_Name-ids   insert_nahIM   (hindi_id_order  "(implode$ (create$ $?list  ?id $?list1 nahIM ?kri)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule remove_ordered_ids
 (declare (salience -500))
 ?f0<-(id-word ?id ?)
 (hindi_id_order $?ids ?id $?ids1)
 =>
   (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------------------------------
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
 ?f4<-(id-word ?id ~to)
 ?f3<-(pada_info (group_head_id ?id)(group_cat ?gtype)(group_ids $?grp_ids))
 ?f0<-(pada_info (group_head_id ?h_id1)(group_cat ?gtype1)(group_ids $?grp_ids1)(preposition ?prep_id1))
 ?f1<-(pada_info (group_head_id ?h_id2)(group_cat ?gtype2)(group_ids $?grp_ids2)(preposition ?prep_id2))
  (test (and (neq ?h_id1 ?subj_id) (neq ?h_id2 ?subj_id)))
  ?f2<-(hindi_id_order $?ids)
  (test (not (member$ ?id $?ids)))
  (test (and (neq ?id ?prep_id1)(neq ?id ?prep_id2)))
  (test (and (member$ ?h_id1 $?ids)(member$ ?h_id2 $?ids)))
  (test (and (neq ?gtype English_PP)(neq ?gtype1 English_PP)(neq ?gtype2 English_PP)))
  (not (Parser_used Stanford-Parser)) ;Added by Manju(31-05-11) restricted for stanford parser
  =>
  (retract ?f2 ?f4)
  (bind ?pos (member$ (nth$ 1 $?grp_ids1) $?ids))
  (if (neq ?pos FALSE) then
 	(bind $?ids (insert$ $?ids ?pos $?grp_ids))
  )
  (assert (hindi_id_order $?ids))
  (printout ?*DBUG* "(Rule_Name-ids default_rule (hindi_id_order " (implode$ $?ids)"))" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule rm_prep_id
 ?f<-(pada_info (preposition ?pid))
 ?f1<-(hindi_id_order  $?ids ?pid $?ids1)
 (Parser_used Stanford-Parser)
 =>
        (retract ?f ?f1)
        (assert (hindi_id_order   $?ids $?ids1))
        (printout ?*DBUG* "(Rule_Name-ids  rm_prep_id  (hindi_id_order " (implode$ $?ids)" "(implode$ $?ids1)"))" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule hi_order
 (declare (salience -700))
 (hindi_id_order  $?ids)
 =>
        (assert (hindi_id_order   $?ids))
        (printout ?*DBUG* "(Rule_Name-ids  hi_order  (hindi_id_order " (implode$ $?ids)"))" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -800))
 =>
        (close ?*DBUG*)
 )
 ;------------------------------------------------------------------------------------------------------------------
