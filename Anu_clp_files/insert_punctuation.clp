 ;Added by Shirisha Manju
 ;I showed them how they should do it.
 (defrule get_last_punc_with_S
 (declare (salience 1200))
 ?f0<-(mother-punct_head-right_punctuation S2|SQ2|SINV2|SBARQ2 ?p_h ?punc)
 (hindi_id_order $? ?id)
 =>
	(retract ?f0)
	(assert (hid-punc_head-right_punctuation ?id ?p_h ?punc))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju 
 ;A slow, balmy breeze from the south engulfed everyone in the audience. No, it was not Black Monday.
 ;The main states of southern india are tamilnadu, kerala, maharashtra, andhrapradesh and karnataka.
 (defrule substitute_right_punc
 (declare (salience 1150))
 (or (mother-punct_head-right_punctuation ?mot ?p_h ?punc)(mother-punct_head-punctuation ?mot ?p_h ?punc))
 (Head-Level-Mother-Daughters ? ? ?mot ?id)
 ?f0<-(hindi_id_order $?pre ?id $?post)
 (not (punc_inserted ?p_h))
 =>
	(assert (hid-punc_head-right_punctuation ?id ?p_h ?punc))
        (assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju 
 ; During the 'state of siege', political opponents were imprisoned (and many of them 'disappeared'), censorship was systematic and all non-government political activity banned. 
 (defrule substitute_left_punct
 (declare (salience 1150))
 (mother-punct_head-left_punctuation  ?mot ?p_h ?punc)
 (Head-Level-Mother-Daughters ? ? ?mot ?id)
 ?f0<-(hindi_id_order $?pre ?id $?post)
 (not (punc_inserted ?p_h))
 =>
	(assert (hid-punc_head-left_punctuation ?id ?p_h ?punc))
        (assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju 
 ;Allahabad is also known for its annual magh mela (mini kumbh mela) and colorful dussehra festival.
 ;He said such results should be "measurable in dollars and cents" in reducing the U.S. trade deficit with Japan. 
 (defrule substitute_left_punct_for_group
 (declare (salience 1140))
 (mother-punct_head-left_punctuation ?mot ?p_h ?punc)
 (Head-Level-Mother-Daughters ? ? ?mot ?id $?)
 ?f0<-(hindi_id_order $?pre ?id $?post)
 (not (punc_inserted ?p_h))
 =>
	(assert (hid-punc_head-left_punctuation ?id ?p_h ?punc))
        (assert (punc_inserted ?p_h))
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
	(assert (hid-punc_head-right_punctuation ?id ?p_h ?punc))
        (assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju
 ;I ate fruits, drank milk and slept.
 (defrule substitute_right_punc_for_group
 (declare (salience 1000))
 (or (mother-punct_head-punctuation ?Mot ?p_h ?punc)(mother-punct_head-right_punctuation ?Mot ?p_h ?punc))
 (Head-Level-Mother-Daughters ?h ?l  ?Mot $?d ?id)
 ?f0<-(hindi_id_order $?pre ?id $?post)
 (not (punc_inserted ?p_h))
 =>
	(assert (hid-punc_head-right_punctuation ?id ?p_h ?punc))
        (assert (punc_inserted ?p_h))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju 
 ;A big, black, ugly dog chased me. From your description, I do not think I would enjoy it. No, it was not Black Monday.
 ;He neither plays, nor reads.Allahabad is also known for its annual magh mela (mini kumbh mela) and colorful dussehra festival.He said such results should be "measurable in dollars and cents" in reducing the U.S. trade deficit with Japan. 
 ;"We have been very disappointed in the performance of natural gas prices," said Mr. Cox, Phillips's president. 
 (defrule get_phrase_group
 (declare (salience 900))
 (or (mother-punct_head-punctuation ?PP ?p_h ?punc)(mother-punct_head-right_punctuation ?PP ?p_h ?punc)(mother-punct_head-left_punctuation ?PP ?p_h ?punc))
 (Node-Category  ?PP  NP|S|PP|ADJP|INTJ|ADVP|VP|FRAG|PRT|PRN)
 ?f1<-(Head-Level-Mother-Daughters ?h ?l ?PP $?d ?JJ $?d1)
 (Node-Category  ?JJ  CD|NN|NNS|NNP|VBG|DT|JJ|JJS|JJR|UH|RB|VBZ|PRP|PRP$|VBD|FW|VBN|VB|VBP|IN|UCP|RP)
?f0<-(Head-Level-Mother-Daughters ? ? ?JJ $?prep)
 =>
        (retract ?f0 ?f1)
        (assert (Head-Level-Mother-Daughters ?h ?l ?PP $?d $?prep $?d1))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ; High gate cemetery's most famous resident must surely be karl marx( 1818-1883) , the communist revolutionary. 
 ;Periyar national park in kerala covers an area of about 5, 500 hectares of land.
 (defrule get_phrase_group1
 (declare (salience 850))
 (or (mother-punct_head-punctuation ?PP ?p_h ?punc)(mother-punct_head-right_punctuation ?PP ?p_h ?punc)(mother-punct_head-left_punctuation ?PP ?p_h ?punc))
 (Node-Category  ?PP  PP|NP|ADJP|ADVP|VP|FRAG|UCP|PRN)
 ?f1<-(Head-Level-Mother-Daughters ?h ?l ?PP $?d ?JJ $?d1)
 (Node-Category  ?JJ  PRN|NP|NN|PP|TO|QP|ADJP|ADVP|VP|S|COMP_PH)
?f0<-(Head-Level-Mother-Daughters ? ? ?JJ $?prep)
 (not (punc_inserted ?p_h))
 =>
        (retract ?f0 ?f1)
        (assert (Head-Level-Mother-Daughters ?h ?l ?PP $?d $?prep $?d1))
 )
 ;---------------------------------------------------------------------------------------------------------------
 ;The interpreter will print a blurb about your Python version; simply check that you are running Python 2.4 or greater (here it is 2.5.1): The lavish entertainment of their friends, 'the marlborough house set' was legendary.
 (defrule get_s_grp
 (declare (salience 650))
 (or (mother-punct_head-left_punctuation ?S $?)(mother-punct_head-punctuation ?S $?))
 (Node-Category ?S S)
 ?f1<-(Head-Level-Mother-Daughters ?h ?l ?S $?d ?VP $?d1)
 (Node-Category  ?VP  VP|VBZ|ADVP|RB|VBN|NP|PP|ADJP)
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
	(bind ?punc (string-to-field (str-cat ?p1 ?p)))
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
