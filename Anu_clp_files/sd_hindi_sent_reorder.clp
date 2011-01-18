 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

 (defglobal ?*DBUG* =  h_id_reorder_fp )

 (defrule hi_order
 (hindi_id_order  $?ids)
 =>
        (assert (hindi_id_order   $?ids))
        (printout ?*DBUG* "(Rule_Name-ids  hi_order  (hindi_id_order " (implode$ $?ids)"))" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -600))
 =>
        (close ?*DBUG*)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju
 ;May I go outside .
 ;Will I be going to the market ?
 (defrule yes-no_question
 (rel_name-ids  aux|cop ? 1)
 ?f1<-(id-word 1 may|can|could|would|will|do|did|does|has|have|are)
 ?f0 <- (hindi_id_order  $?sent )
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order     kyA $?sent))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju
 ;She is always in a hurry
 (defrule always_rule
 (kriyA-subject  ?kriya  ?sub)
 ?f1<-(id-word ?id  always)
 ?f0 <-(hindi_id_order ?sub $?ids ?id $?post ?kriyA)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  ?sub ?id $?ids $?post ?kriyA))
        (printout  ?*DBUG* "(Rule_Name-ids   always_rule  (hindi_id_order  "(implode$ (create$  $ ?sub ?id $?ids $?post ?kriyA)) ")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
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
 (not (kriyA_viSeRaNa-viSeRaka ?  ?wh_word)) ;Ex. How quickly did you run?
 (not (wall_conjunction ?wh_word)) ;When we want to hear a music programme on the radio , we have to tune the radio to the correct station .
 (not (viSeRaNa-viSeRaka  ? ?wh_word)) ;I wonder how big the department is .
 ?f0<-(hindi_id_order  $?start ?wh_word $?NP ?kriyA $?end)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order $?start  $?NP ?wh_word ?kriyA $?end))
        (printout ?*DBUG* "(Rule_Name-ids       wh-reorder1      (hindi_id_order  "   (implode$ (create$ $?start $?NP ?wh_word ?kriyA $?end))")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;I finally figured out why this program is so slow .
 (defrule wh_without_aux-reorder1
 (pada_info (group_head_id ?kriyA)(group_cat VP))
 ?f1<-(id-word ?wh_word  what|when|why|who|how|where)
 (not (kriyA_viSeRaNa-viSeRaka ?  ?wh_word)) ;Ex. How quickly did you run?
 (not (wall_conjunction ?wh_word))
 ;When we want to hear a music programme on the radio , we have to tune the radio to the correct station .
 (not  (muKya_vAkya-sApekRa_upavAkya  ? ?))
 ?f0<-(hindi_id_order  $?start ?wh_word $?NP ?kriyA $?end)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order $?start  $?NP ?wh_word ?kriyA $?end))
        (printout ?*DBUG* "(Rule_Name-ids      wh_without_aux-reorder1      (hindi_id_order  "   (implode$ (create$ $?start $?NP ?wh_word ?kriyA $?end))")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ; Added by Manju
 ; You are lucky that there is no exam today
 ; Apa #BAgyavAna hEM #ki #Aja #parIkRA #nahIM hE
 (defrule det_viSeRaNa_rule
 (viSeRya-det_viSeRaNa  ?v_id ?vn_id)
 ?f1<-(id-word ?vn_id no)
 ?f0 <-(hindi_id_order $?pre ?vn_id $?mid ?v_id  $?post ?kriyA)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre  $?mid $?post ?v_id ?vn_id ?kriyA))
        (printout  ?*DBUG* "(Rule_Name-ids       det_viSeRaNa_rule   (hindi_id_order  "(implode$ (create$  $?pre  $?mid $?post ?v_id ?vn_id ?kriyA)) ")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju
 ; I guess you are working very hard.  I suppose his criticism was fair comment .
 ; Anne told me I would almost certainly be hired .
 ; I saw you put the key in your pocket .
 ; I did not think he would do it , but he did .
 (defrule rule_for_ki
 (kriyA-subject ?v_id ?sub)
 (kriyA-subject ?v ?)
 (id-cat_coarse ?v_id verb)
 ?f1<-(id-root ?v_id tell|guess|see|think|say|know|suppose)
 ?f0 <-(hindi_id_order $?pre ?v_id $?post)
 (test (neq ?v_id ?v))
 (not (hindi_id_order $?ids ?v_id));The Master said , if I did not go , how would you ever see ?
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre ?v_id ki $?post))
        (printout  ?*DBUG* "(Rule_Name-ids   rule_for_ki   (hindi_id_order  "(implode$ (create$ $?pre ?v_id ki $?post)) ")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
  ; Added by Manju (1-12-09)
 (defrule yaha_rule
 (kriyA-conjunction  ?sub ?v_id)
 (kriyA-subject  ?kri ?sub)
 ?f0 <-(hindi_id_order $?pre ?kri $?post) 
 ?f1 <-(id-word ?v_id whether)
 =>
 	(retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre ?kri yaha $?post))
        (printout  ?*DBUG* "(Rule_Name-ids   yaha_rule  (hindi_id_order  "(implode$ (create$ $?pre ?kri  yaha $?post)) ")" crlf)
 )
 ;Whether we should go to the party is the important question .
 ;--------------------------------------------------------------------------------------------------------------------
 ; Added by Manju (14-12-09)
 (defrule wo_rule
 (kriyA-conjunction  ?sub ?v_id)
 (kriyA-subject  ?kri ?sub)
 ?f0 <-(hindi_id_order $?pre ?kri $?post)
 ?f1 <-(id-word ?v_id if)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order  $?pre ?kri wo $?post))
        (printout  ?*DBUG* "(Rule_Name-ids   wo_rule  (hindi_id_order  "(implode$ (create$ $?pre ?kri  wo $?post)) ")" crlf)
 )
;Ex:  If you use that strategy , he will wipe you out .
 ;--------------------------------------------------------------------------------------------------------------------
 ; Added by Manju (06-012-09)
 (defrule usa_rule
 (declare (salience 100))
 (kriyA-object  ?kri ?obj)
 (viSeRya-jo_samAnAXikaraNa ?obj ?who)
 ?f2<- (id-root ?kri see)
 ?f1<-(id-word ?who who)
 ?f0 <-(hindi_id_order $?hin_order)
 (test (member$ ?obj $?hin_order))
 =>
        (retract ?f0 ?f1 ?f2)
        (bind ?obj_pos (member$ ?obj $?hin_order))
        (bind $?hin_order (insert$ $?hin_order ?obj_pos usa))
        (assert (hindi_id_order $?hin_order))
        (printout  ?*DBUG* "(Rule_Name-ids    usa_rule   (hindi_id_order  "(implode$ $?hin_order) ")" crlf)
 )
;I saw the man who you love.
  ;--------------------------------------------------------------------------------------------------------------------
  (defrule default_rule
  (declare (salience -500))
  (or (kriyA-subject ? ?subj_id) (kriyA-dummy_subject ? ?subj_id))
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
  =>
  (retract ?f2 ?f4)
  (bind ?pos (member$ (nth$ 1 $?grp_ids1) $?ids))
  (if (neq ?pos FALSE) then
        (bind $?ids (insert$ $?ids ?pos $?grp_ids))
  )
  (assert (hindi_id_order $?ids))
  (printout ?*DBUG* "(Rule_Name-ids default_rule (hindi_id_order " (implode$ $?ids)"))" crlf)
 )

