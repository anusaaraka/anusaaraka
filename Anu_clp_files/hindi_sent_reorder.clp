 (defglobal ?*DBUG* =  h_id_reorder_fp )

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))

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
 (assert (verb_type-verb-kriyA_mUla-tam))
 (assert (id-kA_vib-gen-num-case))
 (assert (id-cat-mng-gen-num-per-case-vib ))
 (assert (conj_head-left_head-right_head))
 (assert (expr))
 (assert (id-eng-src))
 (assert (id-root-category-suffix-number))
 (assert (id-tam_type))
 (assert (kriyA_id-object2_viBakwi))
 (assert (kriyA_id-object1_viBakwi))
 (assert (kriyA_id-object_viBakwi))
 (assert (kriyA_id-subject_viBakwi))
 (assert (id-H_vib_mng))
 (assert (make_verbal_noun))
 (assert (root_id-TAM-vachan))
 (assert (id-wsd_number) )
 (assert (affecting_id-affected_ids-wsd_group_root_mng))
 (assert (affecting_id-affected_ids-wsd_group_word_mng))
 (assert (id-E_tam-H_tam_mng))
 (assert (meaning_has_been_decided))
 (assert (id-wsd_root_mng))
 (assert (id-wsd_word_mng))
 (assert (id-preceeding_part_of_verb) )
 (assert (id-wsd_root))
 (assert (id-attach_emphatic))
 (assert (id-attach_eng_mng))
 (assert (id-wsd_viBakwi))
 (assert (id-domain_type))
 (assert (compound_meaning_decided))
 )
 ;============================================ Stanford Parser Rules ===================================================

 ;-------------------------------- new_word/new_id insertion rules ------------------------------------------------------
 ;If you know who did it, you should tell the teacher. 
 ;yaxi Apa jAnawe hEM, ki yaha kisane kiyA wo Apako SikRaka ko bawAnA cAhie.
 (defrule insert_wo
 (declare (salience 1100))
 (prep_id-relation-anu_ids - kriyA-vAkya_viBakwi  ?kri ?if)
 (id-word ?if if)
 (prep_id-relation-anu_ids - kriyA-vAkyakarma  ?kri ?vk)
 ?f0<-(hindi_id_order $?id ?vk $?daut)
 (not (wo_inserted ?if))
 (test (neq (length $?daut) 0)) 
 =>
	(retract ?f0)
        (assert (hindi_id_order $?id  ?vk wo $?daut))
        (assert (wo_inserted ?if))
        (printout ?*DBUG* "(Rule_Name-ids 	insert_wo	(hindi_id_order  "(implode$ (create$ $?id ?vk wo $?daut)) ")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 
 ;If John was with Lisa last night, who went to the movie with Diane. 
 ;yaxi joYna piCalI rAwa, PropN-lisa-PropN ke sAWa WA. wo PropN-diane-PropN ke sAWa calaciwra kOna gayA
 ;If you were a middle-class American without a job, who would you vote for. 
 ;yaxi Apa eka maXyama varga kAma ke binA amarIkI howe, wo Apa kisake lie mawa xewe.
 ;If we heat iron it becomes red. 
 ;yaxi hama lohA garama karawe hEM wo yaha lAla ho jAwA hE.
 ;If you use that strategy, he will wipe you out. 
 ;yaxi Apa usa raNanIwi kA upayoga karawe hEM, wo vaha Apako mitA xegA.
 
 ;If the USA were to be invaded by another country, would it really matter to you?
 ;yaxI USA para koI anya xeSa hamalA karawA hE wo usakA Apa para kyA praBAva padegA.
 ;yaxI USA para koI anya xeSa hamalA karawA hE wo usakA Apa para koI praBAva padegA.
 ;yaxI USA para koI anya xeSa hamalA karawA hE wo Apako kucCa anwara padegA.
 ;Although acceleration can vary with time, our study in this chapter will be restricted to motion with constant acceleration.
 (defrule insert_wo1
 (declare (salience 1000))
 (prep_id-relation-anu_ids - kriyA-vAkya_viBakwi  ?kri ?if)
 (id-word ?if if|although)
 ?f0<-(hindi_id_order $?ids ?kri ?id $?daut)
 (id-HM-source ?id ?mng&~waba ?);If this is your idea of a joke, then I do not find it very funny.
 (not (wo_inserted ?if))
 =>
        (retract ?f0)
        (assert (hindi_id_order $?ids  ?kri wo ?id $?daut))
        (assert (wo_inserted ?if))
        (printout ?*DBUG* "(Rule_Name-ids	insert_wo1	(hindi_id_order  "(implode$ (create$ $?ids ?kri wo ?id $?daut)) ")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;The girl you met yesterday is here. The dog I chased was black.
 (defrule insert_jo_samAnAXikaraNa
 (declare (salience 1100))
 (Parser_used Stanford-Parser|Open-Logos-Parser)
 (prep_id-relation-anu_ids ? viSeRya-jo_samAnAXikaraNa  ?  10000)
 (or (prep_id-relation-anu_ids ? kriyA-object  ?k  10000)(prep_id-relation-anu_ids ? kriyA-aXikaraNavAcI  ?k  10000))
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
 (prep_id-relation-anu_ids ? kriyA-vAkya_viBakwi  ?k 10000)
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
 ;When Mrs. Chitnis discovered that her husband was an adulterer she divorced him.
 (defrule insert_wo_when
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
; (defrule insert_wo1
; (declare (salience 1000))
; (id-word ?id if|when)
; (Head-Level-Mother-Daughters ? ? ?SBAR $?ids ?id1)
; (Node-Category ?SBAR SBAR)
; ?f0<-(hindi_id_order $?pre $?ids ?id1 ?that_id $?post)
; (id-word ?that_id ?that&~that&~then);For example, when you say that a car is moving on a road, you are describing the car with respect to a frame of reference attached to you or to the ground.
; (test (and (or (member$ ?id $?ids)(eq ?id ?id1))(neq (length $?post) 0))) ;My car broke down when I reached Lalitpur.
; (not (wo_inserted ))
; (not (prep_id-relation-anu_ids - kriyA-vAkyakarma ?id1 ?))
; =>
;        (retract ?f0)
;        (assert (hindi_id_order $?pre $?ids ?id1 wo ?that_id $?post))
;        (assert (wo_inserted ))
;        (printout ?*DBUG* "(Rule_Name-ids  insert_wo1 (hindi_id_order  "(implode$ (create$ $?pre $?ids ?id1 wo ?that_id $?post)) ")" crlf)
; )
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
 (id-HM-source ?wh_word ?hmng ?src)
 (test (eq (sub-string 1 1 ?hmng) "k")) ;My car broke down when I reached Lalitpur. When the dollar is in a free-fall, even central banks can not stop it.
 (not (prep_id-relation-anu_ids ?  kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka ?  ?wh_word)) ;Ex. How quickly did you run?
 (not (prep_id-relation-anu_ids ?  wall_conjunction ?wh_word))
 (not (prep_id-relation-anu_ids ?  viSeRaNa-viSeRaka  ? ?wh_word)) ;I wonder how big the department is .
 (not (prep_id-relation-anu_ids ?  viSeRya-jo_samAnAXikaraNa  ? ?wh_word))
 (not (id-word =(+ ?wh_word 1) long));How long will it last ?
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
 ?f1<- (id-root-category-suffix-number  ?kri tell|guess|see|think|say|know|suppose|wonder|hope|bet ? ? ?)
 (prep_id-relation-anu_ids ?  kriyA-subject ?kri  ?)
 (prep_id-relation-anu_ids ?  kriyA-subject ?kri_1 ?)
 ?f0 <-(hindi_id_order $?pre ?kri ?id $?post)
 (test (< ?kri ?kri_1))
 (id-HM-source ?id ?hmng&~kyozki ?)
 (not (hindi_id_order $?ids ?kri));The Master said , if I did not go , how would you ever see ?
 (not (prep_id-relation-anu_ids ?  kriyA-object  ?kri ?));I saw him telling her about the party. 
 (not (prep_id-relation-anu_ids ?  kriyA-vAkya_viBakwi  ?kri_1 10000));Do you think we should go to the party? 
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre ?kri ki ?id $?post))
	(assert (ki_asserted ?kri))
        (printout  ?*DBUG* "(Rule_Name-ids   rule_for_ki   (hindi_id_order  "(implode$ (create$ $?pre ?kri ki ?id $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (3-02-11)
 ;The big question on everybody's mind is who killed OJ.
 (defrule rule_for_ki_1
 (id-root-category-suffix-number  ?kri be|know ? ? ?) ;added know (25-02-11)
 ?f1<-(id-root-category-suffix-number  =(+ ?kri 1) who ? ? ?)
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
 ?f1<-(id-root-category-suffix-number  ?id guess ? ? ?)
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
 ?f1<-(id-root-category-suffix-number  ?kri tell ? ? ?)
 (prep_id-relation-anu_ids ? kriyA-subject  ?kri    ?sub)
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
 ; Added by Shirisha Manju (31-10-13)
 ; I'm fairly certain I can do the job. It is likely they will come. 
 (defrule ki_rule4
 (prep_id-relation-anu_ids  ?  kriyA-vAkyakarma  ?kri ?v_k)
 (prep_id-relation-anu_ids ? kriyA-subject|kriyA-dummy_subject  ?kri1  ?)
 (test (neq ?kri ?kri1))
 ?f0 <-(hindi_id_order $?pre ?kri1 ?id $?d ?v_k $?post)
 (not (ki_asserted ?kri1))
 (not (id-HM-source ?id ki ?));It was obvious that he would do it.
 (not (prep_id-relation-anu_ids - kriyA-vAkya_viBakwi ?v_k ?));She declared that out of love for the poor she had gotten her family to go against convention. 
  =>
        (retract ?f0)
	(assert (ki_asserted ?kri1))
        (assert (hindi_id_order  $?pre ?kri1 ki  ?id $?d ?v_k $?post))
        (printout  ?*DBUG* "(Rule_Name-ids   ki_rule4   (hindi_id_order  "(implode$ (create$ $?pre ?kri1 ki ?id $?d ?v_k $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; Added by sheetal(18-01-2010).
 ; Modified by Manju (1-02-11);replaced link names with relation and simplified the rule
 ; Do it the way you have always done it .
 ; I really like the way you do your hair .
 (defrule rule_for_jisa_prakAra_se
 (prep_id-relation-anu_ids  ? kriyA-subject  ?kri ?sub)
 ?f1<-(id-root-category-suffix-number  =(- ?sub 1) way ? ? ?)
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
 (prep_id-relation-anu_ids ?  kriyA-vAkya_viBakwi ?kri 1)
 ?f0 <-(hindi_id_order $?pre ?kri $?post)
 =>
	(retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre ?kri yaha $?post))
        (printout  ?*DBUG* "(Rule_Name-ids   rule_for_yaha   (hindi_id_order  "(implode$ (create$ $?pre ?kri  yaha $?post)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;When you stand on this rock and face the east, the waves of the bay of bengal lap your feet. 
 ;jaba Apa isa cattAna para Kade howe hEM Ora pUrva kI ora muzha karawe hEM, wo bengal kI KAdI kI lahareM Apake pAzvoM se XIre_se takarAwI hEM.
 ;In questiory type sentences 'wo' is not inserted. So added '(not (prep_id-relation-anu_ids  -    praSnAwmaka_vAkya))' by Roja (24-05-14)
 (defrule insert_wo_for_when
 (prep_id-relation-anu_ids ?  kriyA-kriyA_viSeRaNa  ?k 1)
 ?f1<-(id-word 1 when)
 (prep_id-relation-anu_ids ?  vAkya-vAkya_saMbanXI  ?k ?id)
 ?f0 <-(hindi_id_order $?pre ?id $?post)
 (not (prep_id-relation-anu_ids  -    praSnAwmaka_vAkya)) ;When will you arrive in Hyderabad? Suggested by Chaitanya Sir
 =>
	(retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre  ?id wo  $?post))
        (printout ?*DBUG* "(Rule_Name-ids   insert_wo_for_when   (hindi_id_order  "(implode$ (create$ $?pre ?id wo $?post))")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------
 ;When the dollar is in a free-fall, even central banks can not stop it. 
 ;jaba dOlara BArI girAvata meM ho, wo keMxrIya bEMka BI isako nahIM_roka sakawe hEM.
 ;In questiory type sentences 'wo' is not inserted. So added '(not (prep_id-relation-anu_ids  -    praSnAwmaka_vAkya))' by Roja (24-05-14)
 (defrule insert_wo_for_when1
 (prep_id-relation-anu_ids ?  kriyA-kriyA_viSeRaNa  ?k 1)
 ?f1<-(id-word 1 when)
 (prep_id-relation-anu_ids ?  kriyA-in_saMbanXI  ?k ?)
 ?f0 <-(hindi_id_order $?pre ?k $?post)
 (not (prep_id-relation-anu_ids  -    praSnAwmaka_vAkya)) ;When will you arrive in Hyderabad? Suggested by Chaitanya Sir
 =>
        (retract ?f0 ?f1)
 	(assert (wo_inserted 1))
        (assert (hindi_id_order  $?pre  ?k wo  $?post))
        (printout ?*DBUG* "(Rule_Name-ids   insert_wo_for_when1   (hindi_id_order  "(implode$ (create$ $?pre ?k wo $?post))")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (15-11-11)
 ;When Mrs. Chitnis discovered that her husband was an adulterer she divorced him.
 ;In questiory type sentences 'wo' is not inserted. So added '(not (prep_id-relation-anu_ids  -    praSnAwmaka_vAkya))' by Roja (24-05-14)
 (defrule insert_wo_for_when2
 ?f1<-(id-word 1 when)
 (not (wo_inserted 1))
 (prep_id-relation-anu_ids ?  kriyA-kriyA_viSeRaNa  ?k 1)
 (prep_id-relation-anu_ids ?  kriyA-vAkya_viBakwi  ?k1 ?sub)
 (test (> ?k1 ?k) )
 ?f0 <-(hindi_id_order $?pre ?k1 $?post)
 (not (prep_id-relation-anu_ids  -    praSnAwmaka_vAkya)) ;When will you arrive in Hyderabad? Suggested by Chaitanya Sir 
 =>
        (retract ?f0 ?f1)
 	(assert (wo_inserted 1))
        (assert (hindi_id_order  $?pre ?k1 wo $?post))
        (printout ?*DBUG* "(Rule_Name-ids   insert_wo_for_when2  (hindi_id_order  "(implode$ (create$ $?pre ?k1 wo $?post))")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule since_rule
 ?f1<-(id-word 1 since)  ;Modified by Meena (28-10-10) 
 (prep_id-relation-anu_ids ?  kriyA-vAkya_viBakwi  ?k 1)
 (prep_id-relation-anu_ids ?  kriyA-subject  ?kri1 ?id)
 (pada_info (group_head_id ?id)(group_ids $?grp_ids))
 ?f0 <-(hindi_id_order $?pre $?grp_ids $?post)
 (test (and (> ?kri1 ?k) (neq ?id ?k)))
 =>
        (retract ?f0 ?f1)
	(assert (hindi_id_order  $?pre isaliye $?grp_ids $?post))
	(printout ?*DBUG* "(Rule_Name-ids   since_rule  (hindi_id_order  "(implode$ (create$ $?pre isaliye $?grp_ids $?post))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (14-11-14) 
 ;[Since] the magnitude of a null vector is zero, [its] [direction] can not be specified. 
 (defrule since_rule1
 (declare (salience 10))
 ?f1<-(id-word 1 since)   
 (prep_id-relation-anu_ids ?  kriyA-vAkya_viBakwi  ?k 1)
 (prep_id-relation-anu_ids ?  kriyA-subject  ?kri1 ?id)
 (prep_id-relation-anu_ids ? viSeRya-RaRTI_viSeRaNa  ?id ?id1)
 (pada_info (group_head_id ?id1)(group_ids $?grp_ids))
 ?f0 <-(hindi_id_order $?pre $?grp_ids $?post)
 (test (and (> ?kri1 ?k) (neq ?id ?k)))
 =>
        (retract ?f0 ?f1)
	(assert (hindi_id_order  $?pre isaliye $?grp_ids $?post))
        (printout ?*DBUG* "(Rule_Name-ids   since_rule1  (hindi_id_order  "(implode$ (create$ $?pre isaliye $?grp_ids $?post))")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
  ;I can not go out until my hair is dry.
  ;"UNTIL" takes the form jaba_waka----na
  (defrule insert_nahIM
  ?f1<-(id-word ?id until)
  (id-HM-source   ?id   jaba_waka  ?)
  (prep_id-relation-anu_ids ? kriyA-vAkya_viBakwi  ?sub   ?id)
  (prep_id-relation-anu_ids ? kriyA-subject  ?kri  ?sub)
  ?f<-(hindi_id_order $?list ?id $?list1 ?kri)
  =>
  	(retract ?f ?f1)
	(assert (hindi_id_order  $?list ?id $?list1 nahIM ?kri))
  	(printout  ?*DBUG* "(Rule_Name-ids   insert_nahIM   (hindi_id_order  "(implode$ (create$ $?list  ?id $?list1 nahIM ?kri)) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (29-10-14) Suggested by Chaitanya Sir
 ;Harder your better will be the result. 
 ;jiwanA kaTora Apa uwanA behawara pariNAma hogA.
 (defrule add_vib_for_er
 (declare (salience 15))
 ?f0<-(hindi_id_order $?s_m1 ?id $?s_m2 ?id1 $?s_m3)
 (id-original_word ?id ?w)
 (id-original_word ?id1 ?w1)
 (word-morph (original_word ?w) (suffix er))
 (word-morph (original_word ?w1) (suffix er))
 (not (vib_inserted ?id1))
 => 
	(retract ?f0)
	(assert (hindi_id_order $?s_m1 jiwanA ?id $?s_m2 uwanA ?id1 $?s_m3))
	(assert (vib_inserted ?id))
	(assert (vib_inserted ?id1))
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added provisional_Database_compound_phrase_root_mng and provisional_Database_compound_phrase_word_mng in the list by Roja(20-02-14)
 ;Mary is taller than Max.
 ;Added by Shirisha Manju (03-08-13)  Suggested by Chaitanya Sir
 ;At longer wavelengths (i.e., at lower frequencies), the antennas have large physical size and they are located on or very near to the ground.
 ;In short, the greater the rate of change of momentum, the greater is the force.
 (defrule insert_aXika_for_adj_er
 (declare (salience 10))
 ?f0<-(id-root-category-suffix-number ?id ? adjective er ?)
 (not (id-eng-src ?id ? Word_mng))
 ?f<-(hindi_id_order $?list ?id $?list1)
 (not (id-HM-source ?id ? ?src&Database_compound_phrase_root_mng|Database_compound_phrase_word_mng|provisional_Database_compound_phrase_root_mng|provisional_Database_compound_phrase_word_mng));Note : Same as below but no sentence found. 
 (not (vib_inserted ?id))
 =>
        (retract ?f ?f0)
	(assert (hindi_id_order  $?list aXika ?id $?list1))
  	(printout  ?*DBUG* "(Rule_Name-ids   insert_aXika_for_adj_er   (hindi_id_order  "(implode$ (create$ $?list aXika ?id $?list1 )) ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added provisional_Database_compound_phrase_root_mng and provisional_Database_compound_phrase_word_mng in the list by Roja(20-02-14)
 ;The giraffe has the longest neck of any land mammal.
 ;Added by Shirisha Manju (18-06-12)  Suggested by Chaitanya Sir 
 (defrule insert_sabase_aXika_adj_est
 (declare (salience 10))
 ?f0<-(id-root-category-suffix-number ?id ? adjective est ?)
 (not (id-eng-src ?id ? Word_mng))
 ?f<-(hindi_id_order $?list ?id $?list1)
 (not (id-HM-source ?id ? ?src&Database_compound_phrase_root_mng|Database_compound_phrase_word_mng|provisional_Database_compound_phrase_root_mng|provisional_Database_compound_phrase_word_mng));Safety is our highest priority.
 =>
        (retract ?f ?f0)
	(assert (hindi_id_order  $?list sabase aXika ?id $?list1))
        (printout  ?*DBUG* "(Rule_Name-ids   insert_sabase_aXika_adj_est   (hindi_id_order  "(implode$ (create$ $?list sabase aXika ?id $?list1 )) ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
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
 ;Added by Shirisha Manju (13-05-13) Suggested by Chaitanya Sir
 ;The name electricity is coined from the Greek word elektron meaning amber.
 (defrule modify_order_for_phrases
 (expr  $?s_m1 ?is ?coined ?from $?s_m2 ?mng $?s_m3)
 (id-word ?is is)
 (id-word ?coined coined)
 (id-word ?from from)
 (id-word ?mng meaning)
 (id-HM-source   ?from  ?vib  ?)
 ?f0<-(hindi_id_order $?order)
 (not (modified_order))
 =>
        (retract ?f0)
	(if (eq ?vib se) then
		(assert (hindi_id_order $?s_m1 Sabxa $?s_m2 vyuwpanna huA hE jisakA arWa $?s_m3 hEM))
	else
        	(assert (hindi_id_order $?s_m1 Sabxa $?s_m2 se yuwpanna huA hE jisakA arWa $?s_m3 hEM))
	)
	(assert (modified_order))
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
