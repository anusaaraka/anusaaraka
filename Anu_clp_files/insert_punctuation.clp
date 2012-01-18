 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 ;Added by Shirisha Manju
 ;Her mom was beautiful, talented and sweet.
 ;The main states of southern india are tamilnadu, kerala, maharashtra, andhrapradesh and karnataka. 
 (defrule punct_info_for_JJ
 (declare (salience 1200))
 (mother-punct_head-punctuation ?mot ?p_h ?punct&~P_DOT)
 (Node-Category  ?mot  JJ|NN|NNP)
 (Head-Level-Mother-Daughters ? ? ?mot ?id)
 ?f0<-(hindi_id_order $?pre ?id $?post)
 (not (punc_inserted ?p_h))
 =>
        (retract ?f0)
        (assert (hindi_id_order $?pre ?id ?punct $?post))
        (assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;He said such results should be "measurable in dollars and cents" in reducing the U.S. trade deficit with Japan.
 (defrule get_PP_group
 (declare (salience 1100))
 ?f1<-(Head-Level-Mother-Daughters ?h ?l ?PP $?d ?JJ $?d1)
 (Node-Category  ?PP  PP|WHPP|ADJP|ADVP|INTJ)
 (Node-Category  ?JJ  JJ|TO|IN|NP|DT|RB|UH|PP|CC|NNS|NN)
?f0<-(Head-Level-Mother-Daughters ? ? ?JJ $?prep)
 =>
        (retract ?f0 ?f1)
        (assert (Head-Level-Mother-Daughters ?h ?l ?PP $?d $?prep $?d1))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;Allahabad is also known for its annual magh mela (mini kumbh mela) and colorful dussehra festival.
 ;People believe it possible to fill 25 kilometers (15.5 miles) of gallery space with the works of art from mogao. 
 (defrule get_NP_group_for_PRN
 (declare (salience 1100))
 (Head-Level-Mother-Daughters ? ? ?PRN ?NP)
 (Node-Category  ?PRN  PRN)
 (Node-Category  ?NP  NP)
 ?f1<-(Head-Level-Mother-Daughters ?h ?l ?NP $?d  ?JJ $?d1)
 (Node-Category  ?JJ  NN|CD|NNS)
 ?f0<-(Head-Level-Mother-Daughters ? ? ?JJ $?prep)
 =>
        (retract ?f0 ?f1)
        (assert (Head-Level-Mother-Daughters ?h ?l ?NP $?d $?prep $?d1))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;He neither plays, nor reads. If John was with Lisa last night, who went to the movie with Diane.
 ;The Central Market, Sojati Gate, Station Road, Sardar Market, Tripolia Bazaar, Mochi Bazaar and Lakhera Bazar are some of the best shopping places in Jodhpur. 
 (defrule get_VP_group
 (declare (salience 1100))
 ?f1<-(Head-Level-Mother-Daughters ?h ?l ?PP $?d ?JJ $?d1)
 (Node-Category  ?PP  VP|NP)
 (Node-Category  ?JJ  VBZ|NN|NNP|JJ)
?f0<-(Head-Level-Mother-Daughters ? ? ?JJ $?prep)
 =>
        (retract ?f0 ?f1)
        (assert (Head-Level-Mother-Daughters ?h ?l ?PP $?d $?prep $?d1))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ; "It screwed things up," said one major specialist. 
 (defrule substitute_initial_punc
 (declare (salience 1000))
 (mother-punct_head-punctuation initial ?p_h ?punc)
 ?f0<-(hindi_id_order $?pre)
 (not (punc_inserted ?p_h))
 =>
        (retract ?f0)
        (assert (hindi_id_order ?punc $?pre))
        (assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;Allahabad is also known for its annual magh mela (mini kumbh mela) and colorful dussehra festival. 
 (defrule substitute_left_paren_punc
 (declare (salience 900))
 (mother-punct_head-punctuation ?mot ?p_h P_LB)
 (Head-Level-Mother-Daughters ? ? ?mot ?NP)
 (Head-Level-Mother-Daughters ? ? ?NP ?id $?d)
 ?f0<-(hindi_id_order $?pre ?id $?post)
 (not (punc_inserted ?p_h))
 =>
        (retract ?f0)
        (assert (hindi_id_order $?pre P_LB ?id $?post))
	(assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 (defrule substitute_rt_lt_paren_punc
 (declare (salience 900))
 (mother-punct_head-punctuation ?mot ?p_h ?)
 (Node-Category ?p_h ?p&P_LB|P_RB)
 (Head-Level-Mother-Daughters ? ? ?mot $?d)
 ?f0<-(hindi_id_order $?pre $?d $?post)
 (not (punc_inserted ?p_h))
 =>
        (retract ?f0)
	(if (eq ?p P_LB) then
		(assert (hindi_id_order $?pre P_LB $?d $?post))
		(assert (punc_inserted ?p_h))
	else
	        (assert (hindi_id_order $?pre $?d P_RB $?post))
	        (assert (punc_inserted ?p_h))
	)
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;He said such results should be "measurable in dollars and cents" in reducing the U.S. trade deficit with Japan.
 ;He told them about the accident, presumably.
 (defrule substitute_punc_for_VP
 (declare (salience 850)) 
 (mother-punct_head-punctuation ?Mot ?p_h ?punc&~P_DQ&~P_DOT)
 (Node-Category ?Mot ~VB&~VP&~VBD)
 (Head-Level-Mother-Daughters ?h ?l  ?Mot  $?d)
 (Head-Level-Mother-Daughters ? ? ?VP $?ids)
 (Node-Category ?VP VP)
 (test (member$ $?d $?ids))
 ?f0<-(hindi_id_order $?pre )
 (not (punc_inserted ?p_h))
 =>
	(retract ?f0)
        (bind ?id (nth$ 1 $?d))
        (bind ?pos (member$ ?id $?pre))
        (bind $?pre (insert$ $?pre ?pos ?punc))
        (assert (hindi_id_order $?pre))
        (assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;If John was with Lisa last night, who went to the movie with Diane. 
; (defrule substitute_punc_for_VP1
; (declare (salience 850))
; (mother-punct_head-punctuation ?Mot ?p_h ?punc&~P_DQ&~P_DOT)
; (Node-Category ?Mot ~VB&~VP&~VBD)
; (Head-Level-Mother-Daughters ?h ?l  ?Mot  $?d ?id)
; (Head-Level-Mother-Daughters ? ? ?sbar $?ids)
; (Node-Category ?sbar SBAR)
; (test (member$ ?id $?ids))
; ?f0<-(hindi_id_order $?pre $?ids $?post)
; (not (punc_inserted ?p_h))
; =>
;        (retract ?f0)
;        (assert (hindi_id_order $?pre $?ids ?punc $?post))
;        (assert (punc_inserted ?p_h))
; )
 ;---------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju
 ;From your description, I do not think I would enjoy it.
 (defrule substitute_punc_info_PP
 (declare (salience 800))
 (mother-punct_head-punctuation ?Mot ?p_h ?punc&~P_DQ&~P_DOT)
 (Node-Category ?Mot PP)
 (Head-Level-Mother-Daughters ?h ?l  ?Mot $?d ?id ?)
 ?f0<-(hindi_id_order $?pre ?id $?post)
 (not (punc_inserted ?p_h))
 =>
        (retract ?f0)
        (assert (hindi_id_order $?pre ?id ?punc $?post))
        (assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju
 ;I ate fruits, drank milk and slept. 
 (defrule substitute_punc_info
 (declare (salience 700))
 (mother-punct_head-punctuation ?Mot ?p_h ?punc&~P_DQ&~P_DOT)
 (Head-Level-Mother-Daughters ?h ?l  ?Mot $?d ?id)
 ?f0<-(hindi_id_order $?pre ?id $?post)
 (not (punc_inserted ?p_h))
 =>
        (retract ?f0)
        (assert (hindi_id_order $?pre ?id ?punc $?post))
        (assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (29-05-11)
 ; The people of Orissa are facing grave adversities due to the cyclone.
 (defrule rm_prep_id
 (declare (salience 100))
 ?f<-(pada_info (preposition $?prep_ids)(group_cat PP|infinitive))
 ?f1<-(hindi_id_order  $?ids ?pid $?ids1)
 (test (member$ ?pid $?prep_ids))
 (not (pre_id_deleted ?pid))
 =>
        (retract ?f1)
        (assert (hindi_id_order   $?ids $?ids1))
        (assert (pre_id_deleted ?pid))
 )
 ;---------------------------------------------------------------------------------------------------------------
