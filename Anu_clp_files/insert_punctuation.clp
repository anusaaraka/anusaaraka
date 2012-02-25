 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 ;Added by Shirisha Manju
 ;I showed them how they should do it.
 (defrule get_last_punc_with_S
 (declare (salience 1200))
 ?f0<-(mother-punct_head-right_punctuation S2|SQ2|SINV2 ?p_h ?punc)
 (hindi_id_order $? ?id)
 =>
	(retract ?f0)
	(assert (hid-right_punctuation ?id ?punc))
;	(assert (hid-punc_head-right_punctuation ?id ?p_h ?punc))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju 
 ;A slow, balmy breeze from the south engulfed everyone in the audience. No, it was not Black Monday.
 ;The main states of southern india are tamilnadu, kerala, maharashtra, andhrapradesh and karnataka.
 (defrule punct_info_for_JJ
 (declare (salience 1150))
 (or (mother-punct_head-right_punctuation ?mot ?p_h ?punc)(mother-punct_head-punctuation ?mot ?p_h ?punc))
 (Node-Category  ?mot  JJ|UH|NN|NNP|PP|ADVP)
 (not (Node-Category ?p_h P_DOT))
 (Head-Level-Mother-Daughters ? ? ?mot ?id)
 ?f0<-(hindi_id_order $?pre ?id $?post)
 (not (punc_inserted ?p_h))
 =>
;	(assert (hid-punc_head-right_punctuation ?id ?p_h ?punc))
	(assert (hid-right_punctuation ?id ?punc))
        (assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju 
 ; During the 'state of siege', political opponents were imprisoned (and many of them 'disappeared'), censorship was systematic and all non-government political activity banned. 
 (defrule left_punct_for_JJ
 (declare (salience 1150))
 (mother-punct_head-left_punctuation  ?mot ?p_h ?punc)
 (Node-Category  ?mot  JJ|UH|NN|NNP|PP|ADVP|CD)
 (Head-Level-Mother-Daughters ? ? ?mot ?id)
 ?f0<-(hindi_id_order $?pre ?id $?post)
 (not (punc_inserted ?p_h))
 =>
;	(assert (hid-punc_head-left_punctuation ?id ?p_h ?punc))
        (assert (hid-left_punctuation ?id ?punc))
        (assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju 
 ;Allahabad is also known for its annual magh mela (mini kumbh mela) and colorful dussehra festival.
 ;He said such results should be "measurable in dollars and cents" in reducing the U.S. trade deficit with Japan. 
 (defrule substitute_left_paren
 (declare (salience 1150))
 (mother-punct_head-left_punctuation ?mot ?p_h ?punc)
 (Node-Category  ?p_h P_LB|P_DQT|P_DSH|P_COM)
 (Head-Level-Mother-Daughters ? ? ?mot ?id $?)
 ?f0<-(hindi_id_order $?pre ?id $?post)
 (not (punc_inserted ?p_h))
 =>
;	(assert (hid-punc_head-left_punctuation ?id ?p_h ?punc))
        (assert (hid-left_punctuation ?id ?punc))
        (assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju 
 ;A big, black, ugly dog chased me. From your description, I do not think I would enjoy it. No, it was not Black Monday.
 ;He neither plays, nor reads.Allahabad is also known for its annual magh mela (mini kumbh mela) and colorful dussehra festival.He said such results should be "measurable in dollars and cents" in reducing the U.S. trade deficit with Japan. 
 ;"We have been very disappointed in the performance of natural gas prices," said Mr. Cox, Phillips's president. 
 (defrule get_phrase_group
 (declare (salience 1100))
 (or (mother-punct_head-punctuation ?PP ?p_h ?punc)(mother-punct_head-right_punctuation ?PP ?p_h ?punc)(mother-punct_head-left_punctuation ?PP ?p_h ?punc))
 (Node-Category  ?PP  ADJP|PP|NP|ADVP|INTJ|VP|QP)
 ?f1<-(Head-Level-Mother-Daughters ?h ?l ?PP $?d ?JJ $?d1)
 (Node-Category  ?JJ  JJ|IN|PRP$|PRP|NN|RB|UH|VBZ|NP|NNS|CC|NNP|RP|PP|CD|FW|DT|VBN) 
?f0<-(Head-Level-Mother-Daughters ? ? ?JJ $?prep)
 =>
        (retract ?f0 ?f1)
        (assert (Head-Level-Mother-Daughters ?h ?l ?PP $?d $?prep $?d1))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (23-01-12)
 ;I did not think he would do it, but he did. 
 (defrule punc_for_S_grp
 (declare (salience 1150))
 (mother-punct_head-punctuation ?Mot ?p_h ?punc)
 ?f1<-(Head-Level-Mother-Daughters ?h ?l ?Mot $?d ?id $?d1)
 (Node-Category  ?Mot  S)
 ?f2<-(Head-Level-Mother-Daughters ?h1 ?l1 ?Sbar $?d1)
 (Node-Category  ?Sbar  SBAR)
 (hindi_id_order $?pre ?id $?post)
 (not (punc_inserted ?p_h))
 =>
;	(assert (hid-punc_head-right_punctuation ?id ?p_h ?punc))
	(assert (hid-right_punctuation ?id ?punc))
        (assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju 
 ;From your description, I do not think I would enjoy it.
 ;Because of its unusual geography, chile has a hugely varied climate ranging from the world's driest desert in the north, through a mediterranean climate in the centre, to a snow-prone alpine climate in the south.
 (defrule punc_for_PP_grp
 (declare (salience 1000))
 (or (mother-punct_head-punctuation ?Mot ?p_h ?punc)(mother-punct_head-right_punctuation ?Mot ?p_h ?punc))
 (Node-Category  ?Mot  PP)
 ?f1<-(Head-Level-Mother-Daughters ?h ?l ?Mot $?d ?id ?prep)
 (hindi_id_order $?pre ?id $?post)
 (not (punc_inserted ?p_h))
 =>
;	(assert (hid-punc_head-right_punctuation ?id ?p_h ?punc))
	(assert (hid-right_punctuation ?id ?punc))
        (assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju
 ;I ate fruits, drank milk and slept.
 (defrule substitute_punc_info
 (declare (salience 1110))
 (or (mother-punct_head-punctuation ?Mot ?p_h ?punc)(mother-punct_head-right_punctuation ?Mot ?p_h ?punc))
 (Head-Level-Mother-Daughters ?h ?l  ?Mot $?d ?id)
 ?f0<-(hindi_id_order $?pre ?id $?post)
 (not (punc_inserted ?p_h))
 =>
;	(assert (hid-punc_head-right_punctuation ?id ?p_h ?punc))
	(assert (hid-right_punctuation ?id ?punc))
        (assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;The interpreter will print a blurb about your Python version; simply check that you are running Python 2.4 or greater (here it is 2.5.1):
 (defrule get_s_grp
 (declare (salience 650))
 (or (mother-punct_head-left_punctuation ?S $?)(mother-punct_head-punctuation ?S $?))
 (Node-Category ?S S)
 ?f1<-(Head-Level-Mother-Daughters ?h ?l ?S $?d ?VP $?d1)
 (Node-Category  ?VP  VP|VBZ|ADVP|RB)
 ?f0<-(Head-Level-Mother-Daughters ? ? ?VP $?dau)
 =>
        (retract ?f0 ?f1)
        (assert (Head-Level-Mother-Daughters ?h ?l ?S $?d $?dau $?d1))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;"This is good." she said.
 (defrule combine_multiple_right_punc
 (declare (salience 600))
 ?f0<-(hid-right_punctuation ?id  ?p)
 ?f1<-(hid-right_punctuation ?id  ?p1)
 (test (neq ?p ?p1))
 =>
	(retract ?f0 ?f1)
	(bind ?punc (string-to-field (str-cat ?p ?p1)))
	(assert (hid-right_punctuation ?id ?punc))
 )	
 ;--------------------------------------------------------------------------------------------------------------- 
 ;Added by Shirisha Manju
 (defrule combine_multiple_left_punc
 (declare (salience 600))
 ?f0<-(hid-left_punctuation ?id  ?p)
 ?f1<-(hid-left_punctuation ?id  ?p1)
 (test (neq ?p ?p1))
 =>
        (retract ?f0 ?f1)
	(bind ?punc (string-to-field (str-cat ?p ?p1)))
        (assert (hid-left_punctuation ?id ?punc))
 )
 ;---------------------------------------------------------------------------------------------------------------
