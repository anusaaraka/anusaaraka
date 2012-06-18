
 ; Added by shirisha Manju (22-02-12) Suggested by Chaitanya sir
 ; In the "computing with language" sections we will take on some linguistically-motivated programming tasks without necessarily understanding how they work.
; (defrule create_new_node_for_lt_rt_punct
; (declare (salience 100))
; ?f<-(Head-Level-Mother-Daughters ?punc_id ?l ?Mot $?d ?P ?s ?s1 $?d1 ?P1 $?d2)
; (Node-Category ?P    ?punc&P_DQT|P_SQT|P_LB)
; (Node-Category ?P1   ?punc1&P_DQT|P_SQT|P_LB)
; (Node-Category ?Mot ?m)
; (not (Node-Category ?s1 P_COM|P_DQT|P_SQT|P_LB|P_DSH))
; (parserid-word  ?punc_id  ?h)
; (not (head ?h))
; =>
;	(retract ?f)
;	(assert (Head-Level-Mother-Daughters ?h ?l ?Mot $?d ?s ?s1 $?d1 $?d2))
;	(bind ?node (explode$ (str-cat ?Mot "c")))
;	(assert (Head-Level-Mother-Daughters ?h ?l ?node ?P ?Mot ?P1))
;	(assert (Node-Category ?node ?m))
;	(assert (head ?h))
; )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule get_P_Dot_punc
 (declare (salience 90)) 
 ?f0<-(Head-Level-Mother-Daughters ?h ?l ?m $?d ?Mot ?P)
 (Node-Category ?P ?punc&P_DOT|P_QES|P_DQ|P_CLN)
 ?f1<-(Head-Level-Mother-Daughters ?punc_id ? ?P ?id)
 (parserid-word  ?punc_id  ?p_h)
 =>
	(retract ?f0 ?f1)
	(assert (mother-punct_head-right_punctuation ?m ?P ?p_h))
	(assert (Head-Level-Mother-Daughters ?h ?l ?m $?d ?Mot))
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ; "We have been very disappointed in the performance of natural gas prices," said Mr. Cox, Phillips's president. 
 (defrule get_lt_rt_punc
 (declare (salience 80))
 ?f<-(Head-Level-Mother-Daughters ?h ?l ?Mot $?d ?P_H ?s ?s1 $?d1 ?P_H1 $?d2)
 (Node-Category ?P_H    ?p&P_DQT|P_SQT|P_LB)
 (Node-Category ?P_H1   ?p1&P_DQT|P_SQT|P_LB)
 (Node-Category ?s1 P_COM|P_DQT|P_SQT|P_LB|P_DSH)
 ?f0<-(Head-Level-Mother-Daughters ?punc_id ? ?P_H ?)
 ?f1<-(Head-Level-Mother-Daughters ?punc_id1 ? ?P_H1 ?)
 (parserid-word  ?punc_id  ?punc)
 (parserid-word  ?punc_id1  ?punc1)
 =>
        (retract ?f ?f0 ?f1)
        (assert (Head-Level-Mother-Daughters ?h ?l ?Mot $?d ?s ?s1 $?d1 $?d2))
	(assert (mother-punct_head-left_punctuation ?s ?P_H ?punc))
	(assert (mother-punct_head-right_punctuation ?s ?P_H1 ?punc1))
 )
 ;Because of its unusual geography, chile has a hugely varied climate ranging from the world's driest desert in the north, through a mediterranean climate in the centre, to a snow-prone alpine climate in the south.
 ; He said such results should be "measurable in dollars and cents" in reducing the U.S. trade deficit with Japan. 
 ; Allahabad is also known for its annual magh mela (mini kumbh mela) and colorful dussehra festival. 
 ; Added by shirisha Manju
 (defrule get_left_right_punc
 (declare (salience 4))
 ?f<-(Head-Level-Mother-Daughters ?h ?lvl ?Mot $?pre ?PUNC ?head  ?PUNC1 $?post)
 (Node-Category ?PUNC    ?p&P_DQT|P_SQT|P_LB|P_DSH)
 (Node-Category ?PUNC1   ?p1&P_DQT|P_SQT|P_RB|P_DSH)
 ?f1<-(Head-Level-Mother-Daughters ?punc_id1 ?lvl1 ?PUNC ?child)
 ?f2<-(Head-Level-Mother-Daughters ?punc_id2 ?lvl2 ?PUNC1 ?child1)
 (parserid-word  ?punc_id1  ?h1)
 (parserid-word  ?punc_id2  ?h2)
  =>
        (retract ?f ?f1 ?f2)
        (assert (mother-punct_head-left_punctuation ?head ?PUNC ?h1))
        (assert (mother-punct_head-right_punctuation ?head ?PUNC1 ?h2))
        (assert (Head-Level-Mother-Daughters ?h ?lvl ?Mot $?pre ?head $?post))
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ; Added by shirisha Manju (08-02-12)
 ;Revenue totaled $5 million. 
 (defrule get_left_punc
 (declare (salience 3))
 ?f<-(Head-Level-Mother-Daughters ?h ?lvl ?Mot $?pre ?PUNC ?head $?post)
 (Node-Category ?PUNC    ?p&P_DQT|P_SQT|P_LB|P_DOL|P_DSH)
 ?f1<-(Head-Level-Mother-Daughters ?punc_id ?lvl1 ?PUNC ?child)
 (parserid-word  ?punc_id  ?h1)
 =>
        (retract ?f ?f1)
        (assert (mother-punct_head-left_punctuation ?head ?PUNC ?h1))
        (assert (Head-Level-Mother-Daughters ?h ?lvl ?Mot $?pre ?head $?post))
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule map_cons1
 (declare (salience 1))
 ?f<-(Head-Level-Mother-Daughters ?h ?lvl ?Mot $?pre ?head ?PUNC $?post)
 (Node-Category ?PUNC    ?p&P_COM|P_DOT|P_QES|P_DQ|P_DQT|P_SEM|P_LB|P_RB|P_SQT|P_CLN|P_DSH|P_EXM|P_DOL)
 ?f1<-(Head-Level-Mother-Daughters ?punc_id ?lvl1 ?PUNC ?child)
 (parserid-word  ?punc_id  ?h2)
 (not (Node-Category ?head P_COM));"But we would not go into them alone," and Canadian Utilities equity stake would be small, he said.
  =>
        (retract ?f ?f1)
        (assert (mother-punct_head-punctuation ?head ?PUNC ?h2))
        (assert (Head-Level-Mother-Daughters ?h ?lvl ?Mot $?pre ?head $?post))
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ; Added by shirisha Manju
 ;"But we would not go into them alone," and Canadian Utilities equity stake would be small, he said. 
 (defrule map_cons2
 (declare (salience 2))
 ?f<-(Head-Level-Mother-Daughters ?h ?lvl ?Mot $?pre ?PUNC $?post)
 (Node-Category ?PUNC    P_DQT)
 ?f1<-(Head-Level-Mother-Daughters ?punc_id ?lvl1 ?PUNC P1)
 (parserid-word  ?punc_id  ?h2)
  =>
        (retract ?f ?f1)
        (assert (mother-punct_head-left_punctuation ?Mot ?PUNC ?h2))
        (assert (Head-Level-Mother-Daughters ?h ?lvl ?Mot $?pre $?post))
 )

 ;-------------------------------------------------------------------------------------------------------------------
 ; Added by shirisha Manju
 ; Allahabad is also known for its annual magh mela (mini kumbh mela) and colorful dussehra festival. 
 (defrule map_cons3
 ?f<-(Head-Level-Mother-Daughters ?h ?lvl ?Mot $?pre ?PUNC $?post)
 (Node-Category ?PUNC   ?p&P_COM|P_DOT|P_QES|P_DQ|P_DQT|P_SEM|P_LB|P_RB|P_SQT|P_CLN|P_DSH|P_EXM|P_DOL)
 ?f1<-(Head-Level-Mother-Daughters ?punc_id ?lvl1 ?PUNC ?)
 (parserid-word  ?punc_id  ?h2)
  =>
        (retract ?f ?f1)
        (assert (mother-punct_head-punctuation ?Mot ?PUNC ?h2))
        (assert (Head-Level-Mother-Daughters ?h ?lvl ?Mot $?pre $?post))
 )
; (watch facts)
; (watch rules) 
