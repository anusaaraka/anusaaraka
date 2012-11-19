;This file is written by Mahalaxmi

(deffunction string_to_integer (?parser_id)
(string-to-field (sub-string 2 10000 ?parser_id)))
 
(deffunction my_string_cmp (?str1 ?str2)
   (bind ?n1 (string-to-field (sub-string 2 (length ?str1) ?str1)))
   (bind ?n2 (string-to-field (sub-string 2 (length ?str2) ?str2)))
   (> ?n1 ?n2))

;--------------------------------------------------------------------------
 ;Copying temporary facts for verb_lwg (in order to not disturb the tree structure)
 (defrule cp_facts_for_lwg
 (declare (salience 1700))
 (Head-Level-Mother-Daughters ?h ?l ?M $?daut)
 (Node-Category ?M S|SQ|VP|SBAR)
 =>
	(assert (Head-Level-Mother-Daughters_lwg ?h ?l ?M $?daut))
 )

;--------------------------------------------------------------------------
 ;asserting a control fact in order to stop replacing the "VP" having conjunction "CC"
 (defrule find_conj_head
 (declare (salience 1701))
 ?f1<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?VP1 $?pre1 ?CC $?pos1)
 ?f2<-(Node-Category ?CC CC)
 =>
	(assert (dont_replace_VP ?VP1))
 )

;--------------------------------------------------------------------------
 ;They are eating and dancing or sleeping or soring.
 ;They have been eating, drinking and sleeping.
 (defrule conjunction_rule0
 (declare (salience 1600))
 ?f<-(Head-Level-Mother-Daughters_lwg ?head ?lvl ?VP $?pre ?VP1 $?pos)
 ?f1<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?VP1 $?pre1 ?CC $?pos1)
 ?f2<-(Node-Category ?CC CC)
 (Node-Category ?VP1 VP)
 (Node-Category ?VP VP)
 =>    
	(retract ?f1 ?f)
         (bind $?verb_list (create$ $?pre1 ?CC $?pos1))
         (bind $?conjs (create$ ))
         (bind ?len (length $?verb_list))
         (loop-for-count (?i 1 ?len)
                        (bind ?j (nth$ ?i $?verb_list))
			  (if (member$ (explode$ (sub-string 1 2 ?j)) (create$ VP VB MD)) then
			      (assert (Head-Level-Mother-Daughters_lwg ?head ?lvl ?VP $?pre ?j $?pos))
                          )
         )
	 
 )
;--------------------------------------------------------------------------
;All green plants and certain bluegreen algae which can produce food by photosynthesis come under this category and are called the producers; Organisms depend on the producers either directly or indirectly for their sustenance?
 (defrule conjunction_rule1
 (declare (salience 1599))
 ?f1<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?VP1 $?pre1 ?CC $?pos1)
 ?f2<-(Node-Category ?CC CC)
 (Node-Category ?VP1 VP)
 =>
         (retract  ?f1)
         (bind $?verb_list (create$ $?pre1 ?CC $?pos1))
         (bind $?conjs (create$ ))
         (bind ?len (length $?verb_list))
         (loop-for-count (?i 1 ?len)
                        (bind ?j (nth$ ?i $?verb_list))
                          (if (member$ (explode$ (sub-string 1 2 ?j)) (create$ VP VB MD)) then
                              (assert (Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?VP1 ?j))
                          )
         )

 )

;--------------------------------------------------------------------------
 ;Replacing a VP|SQ mother whose child is again a VP .
 (defrule replace_VP
 (declare (salience 1700))
 ?f<-(Head-Level-Mother-Daughters_lwg ?head ?lvl ?Mot $?pre ?VP $?pos)
 ?f1<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?VP $?daut)
 (Node-Category ?Mot VP|SQ)
 (Node-Category ?VP VP)
 (not (dont_replace_VP ?Mot))
 (not (dont_replace_VP ?VP))
 =>
	(retract ?f ?f1)
	(assert (Head-Level-Mother-Daughters_lwg ?head1 ?lvl ?Mot $?pre $?daut  $?pos))
 )

;--------------------------------------------------------------------------
 ;Replacing a VP mother whose child is  S|SBAR|SQ on checking the head word .
 ;Ex:-A fat boy [had to eat] fruits. 
 ;Ex:-She made the girl feed the child.[made_feed]
 ;These smugglers are to be captured. Broken windows need to be replaced. 
 ;That is the way business used to be done and that is the way business needs to be done.

 (defrule replace_S
 (declare (salience 100))
 ?f<-(Head-Level-Mother-Daughters_lwg ?head ?lvl ?Mot $?pre ?S $?pos)
 (parserid-word ?head ?w&get|got|gets|getting|have|had|has|having|make|makes|making|made|need) 
 ?f1<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?S $?daut)
 (Node-Category ?Mot VP)
 (Node-Category ?S SBAR|S|SQ)
 (not (dont_replace_VP ?Mot))
 =>
        (retract ?f ?f1)
        (assert (Head-Level-Mother-Daughters_lwg ?head ?lvl ?Mot $?pre $?daut  $?pos))
 )
;--------------------------------------------------------------------------
 ;Replacing a VP mother whose child is  S|SBAR on checking the head word "Let".
 (defrule replace_S1_Let
 (declare (salience 100))
 ?f<-(Head-Level-Mother-Daughters_lwg ?head ?lvl ?Mot $?pre ?S $?pos)
 (parserid-word ?head ?w&Let|let)
 ?f1<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?S $?daut)
 (Node-Category ?Mot VP)
 (Node-Category ?S S|SBAR)
 (not (dont_replace_VP ?Mot))
 =>
        (retract ?f ?f1)
        (assert (Head-Level-Mother-Daughters_lwg ?head ?lvl ?Mot $?pre $?daut  $?pos))
 )

;--------------------------------------------------------------------------
 ;Replacing a VP mother whose child is  S on checking the head word "are|Are|is|was|were".
 ; The normal in this case is to be taken as normal to the tangent to surface at the point of incidence.
 ;;If air resistance is neglected, the object [is said to be] in free fall.
 (defrule replace_S1
 (declare (salience 100))
 ?f<-(Head-Level-Mother-Daughters_lwg ?head ?lvl ?Mot $?pre ?S $?pos)
 (parserid-word ?head ?w&are|Are|is|was|were|said)
 ?f1<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?S $?daut)
 (parserid-word ?head1 ?w1&to)
 (Node-Category ?Mot VP)
 (Node-Category ?S S)
 (not (dont_replace_VP ?Mot))
 =>
        (retract ?f ?f1)
        (assert (Head-Level-Mother-Daughters_lwg ?head ?lvl ?Mot $?pre $?daut  $?pos))
 )
;--------------------------------------------------------------------------
 (defrule get_lwg1
 (declare (salience 75))
 ?f0<-(Head-Level-Mother-Daughters_lwg ?head ?lvl ?VP ?VP1 ?VP2)
 ?f<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?VP2 $?dau)
 (Node-Category ?VP SQ)
 (Node-Category ?VP1 TO)
 =>
 	(retract ?f0 ?f)
 )
;--------------------------------------------------------------------------
 ;Creating a lwg facts for all verbs
 ;Here it look like,
 ;(root-verbchunk-tam-parser_chunkids - VBZ6 VBG8 NP10 VB14 NP15 - VBZ6 VBG8 NP10 VB14 NP15 - VBZ6 VBG8 NP10 VB14 NP15)
 (defrule get_lwg
 (declare (salience 70))
 ?f<-(Head-Level-Mother-Daughters_lwg ?head ?lvl ?VP ?VP1 $?dau)
 (Node-Category ?VP VP|SQ)
 (Node-Category ?VP1 ?cat&~TO)
 (not (dont_replace_VP ?VP))
 =>
 	(assert (root-verbchunk-tam-parser_chunkids - ?VP1 $?dau - ?VP1 $?dau - ?VP1 $?dau))
 )

;--------------------------------------------------------------------------
 ;Replacing all the nodes with there child
 ;Here it look like,
 ;(root-verbchunk-tam-parser_chunkids - is making feed - s ing 0 - P2 P3 P6)
 (defrule replace_nodes
 (declare (salience 60))
 ?f<-(root-verbchunk-tam-parser_chunkids - $?vb_chk - $?tam - $?pre ?node $?post)
 (Head-Level-Mother-Daughters ?h_id ? ?node $?child)
 (parserid-word ?h_id ?head)
 (Node-Category ?node ?cat)
 =>
	
	(retract ?f)
        (bind $?chunkid  (create$ $?pre ?node $?post))
        (bind ?pos (member$ ?node $?chunkid))
        (if (member$ ?cat (create$ VBG VBN VBD VBZ VBP VB MD TO)) then
        (bind $?chunkid (create$ (subseq$ $?chunkid 1 (- ?pos 1)) $?child (subseq$ $?chunkid (+ ?pos 1) (length $?chunkid))))
        (bind $?vb_chk (create$ (subseq$ $?vb_chk 1 (- ?pos 1)) (lowcase ?head) (subseq$ $?vb_chk (+ ?pos 1) (length $?vb_chk))))

          (if (eq ?cat VBG) then 
		    (bind $?tam (create$ (subseq$ $?tam 1 (- ?pos 1)) ing (subseq$ $?tam (+ ?pos 1) (length $?tam))))
    	      else (if (eq ?cat VBN) then 
	           (bind $?tam (create$ (subseq$ $?tam 1 (- ?pos 1)) en (subseq$ $?tam (+ ?pos 1) (length $?tam))))
    	      else (if (eq ?cat VBD) then 
	           (bind $?tam (create$ (subseq$ $?tam 1 (- ?pos 1)) ed (subseq$ $?tam (+ ?pos 1) (length $?tam))))
	      else (if (eq ?cat VBZ) then 
	  	   (bind $?tam (create$ (subseq$ $?tam 1 (- ?pos 1)) s (subseq$ $?tam (+ ?pos 1) (length $?tam))))
	      else (if (eq ?cat VBP) then 
	           (bind $?tam (create$ (subseq$ $?tam 1 (- ?pos 1)) 0 (subseq$ $?tam (+ ?pos 1) (length $?tam))))
	      else (if (eq ?cat VB) then 
	           (bind $?tam (create$ (subseq$ $?tam 1 (- ?pos 1)) 0 (subseq$ $?tam (+ ?pos 1) (length $?tam))))      
	      else  
	           (bind $?tam (create$ (subseq$ $?tam 1 (- ?pos 1)) 0 (subseq$ $?tam (+ ?pos 1) (length $?tam))))))))))
 
      else 
           (bind $?vb_chk (delete-member$ $?vb_chk ?node))
           (bind $?tam (delete-member$ $?tam ?node))
           (bind $?chunkid (delete-member$ $?chunkid ?node)));)
        (assert (root-verbchunk-tam-parser_chunkids - $?vb_chk - $?tam - $?chunkid))
 )

;--------------------------------------------------------------------------
; ;Gets conjunction lwg facts
; ;Ex:-I ate fruits, drank milk and slept.
; ;(root-verbchunk-tam-parser_chunkids - ate drank slept - ed ed ed - P2 P5 P8) ==>
; ; ===> here it creates three different facts, as below
; ;(root-verbchunk-tam-parser_chunkids - ate - ed - P2)
; ;(root-verbchunk-tam-parser_chunkids - drank - ed - P5)
; ;(root-verbchunk-tam-parser_chunkids - slept - ed - P8)
; (defrule get_conj_symmetry_facts
; (declare (salience 55))
; ?f<-(Head-Level-Mother-Daughters_lwg ? ? ? $?pre ?CC ?verb $?pos)
; ?f1<-(Head-Level-Mother-Daughters ? ? ?verb ?id)
; (conjunction-components ?CC ? $?conjs)
; ?f0<-(root-verbchunk-tam-parser_chunkids - $?vc - $?tam - $?ids)
; (test (member$ ?id $?ids))
; (not (conjuction_modified ?CC))
; =>
;         (retract ?f0)
;         (bind ?len (length $?conjs))
;         (bind ?id_len (length $?ids))
;         (bind ?new_len (- ?id_len ?len))
;         (loop-for-count (?i 1 ?len)
;			 (bind $?new_vc (create$ (subseq$ $?vc 1 ?new_len) (nth$ (+ ?i ?new_len) $?vc)))
;			 (bind $?new_tam (create$ (subseq$ $?tam 1 ?new_len) (nth$ (+ ?i ?new_len) $?tam)))
;			 (bind $?new_chunk_ids (create$ (subseq$ $?ids 1 ?new_len) (nth$ (+ ?i ?new_len) $?ids)))
;         (assert (root-verbchunk-tam-parser_chunkids - $?new_vc - $?new_tam - $?new_chunk_ids))
;         )
;          (assert (conjuction_modified ?CC))
; )
;--------------------------------------------------------------------------
 ;Gets verb_chunk and tam information
 ; (root-verbchunk-tam-parser_chunkids - has been coming - s en ing - P2 P3 P5) ==>
 ;(root-verbchunk-tam-parser_chunkids come has_been_coming has_been_ing P2 P3 P5)
 (defrule get_lwg_vc_and_tam
 (declare (salience 50))
 ?f0<-(root-verbchunk-tam-parser_chunkids  ?r  $?vc - $?tam - $?ids ?id)
 ?f1<-(parser_id-root-category-suffix-number  ?id  ?root $?)
 =>
        (retract ?f0)
        (bind $?ids (create$ $?ids ?id))
        (if (> (length $?ids) 1) then
        	(loop-for-count (?i 1 (length $?ids))      
                        (bind ?val (nth$ ?i $?vc))  
                        (if (eq ?i 1) then
                        (bind ?verb_chunk (sym-cat ?val))
                        else (if (eq ?i (length $?ids)) then
                        (bind ?tam1 (sym-cat ?verb_chunk _ (nth$ ?i $?tam)))
                        (bind ?verb_chunk (sym-cat ?verb_chunk _ ?val))
                        else
                        (bind ?tam1 (sym-cat ?verb_chunk _ ?val))
                        (bind ?verb_chunk (sym-cat ?verb_chunk _ ?val))))
        	)
	        (assert (root-verbchunk-tam-parser_chunkids ?root ?verb_chunk ?tam1 $?ids))
        else
        (assert (root-verbchunk-tam-parser_chunkids root_to_be_decided $?vc tam_to_be_decided $?ids))
       )
 )
;--------------------------------------------------------------------------
 (defrule modify_head_wrd1
 (declare (salience 49))
 ?f0<-(root-verbchunk-tam-parser_chunkids be is_said_to_be is_said_to_0 ?is ?said ?to ?be)
 ?f1<-(parser_id-root-category-suffix-number  ?said  ?root $?)
 =>
   (retract ?f0)
   (assert (root-verbchunk-tam-parser_chunkids ?root is_said_to_be is_said_to_0 ?is ?to ?be ?said ))
 )
;--------------------------------------------------------------------------
 ;Added by Shirisha Manju (28-10-11) Suggested by Sukhada
 ;Ex:-He made a mistake in [inviting] John. 
 ;Ex:-The glass house [built] on the lines of the crystal palace in london is the main attraction in this huge park.
 (defrule remove_single_VBG_and_VBN_lwg
 (declare (salience 4))
 ?f0<-(root-verbchunk-tam-parser_chunkids  ? ? ? ?id)
 (Head-Level-Mother-Daughters_lwg ? ? ?VP $?pre ?daut $?post)
 (Head-Level-Mother-Daughters ? ? ?daut ?id)
 (Node-Category ?VP VP)
 (Node-Category ?daut VBG|VBN)
 =>
                (retract ?f0)
 )
;--------------------------------------------------------------------------
 ;Identifying and modifying the TAM for QUESTIONARY sentences,
 ;Ex:-Did you take your breakfast?
 ;(root-verbchunk-tam-parser_chunkids take did_take did_0 P1 P3) ===>
 ;(root-verbchunk-tam-parser_chunkids take q_did_take ed P1 P3)
 (defrule find_q_tam
 (declare (salience 3))
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?tam ?head $?ids)
 (parser_id-root-category-suffix-number  ?head  ?root1 verb ?suf ?)
 (parserid-word ?head does|do|did|Did)
 (parserid-word P1 Does|Do|Did|Why|What|Where|Whose|How|who|When|Are|Am|Is)
 (not (q_tam_modified ?head))
 =>
        (retract ?f)
        (bind ?vrb_chunk (sym-cat q_ ?vrb_chunk))
        (assert (root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?suf ?head $?ids))
        (assert (q_tam_modified ?head))
 )

;--------------------------------------------------------------------------
 ;Asserting a control fact, to stop firing the "add_not_to_lwg" rule until all the above rule gets fired
 (defrule test
 (declare (salience -2))
 =>
 (undefrule cp_facts_for_lwg)
 (assert (cntrl_fact_for_testing_not))
 (assert (cntrl_fact_for_replacing_head_info))
 )
;--------------------------------------------------------------------------
 ;Identifying and inserting "not" to lwg 
 ;Ex:- I will not do it.
 ;(root-verbchunk-tam-parser_chunkids do will_do will_0 P2 P4) ==>
 ;(root-verbchunk-tam-parser_chunkids do will_not_do will_not_0 P2 P3 P4)
 (defrule add_not_to_lwg
 (declare (salience -10))
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?tam ?first $?ids ?last)
 (Head-Level-Mother-Daughters ?not ? ?RB ?p_id)
 (parserid-word ?not not)
 (Node-Category ?RB RB)
 (cntrl_fact_for_testing_not)
 (not (RB-checked ?RB))
 (test (and (< (string_to_integer ?first) (string_to_integer ?p_id))(< (string_to_integer ?p_id) (string_to_integer ?last))))
=>
    (retract ?f)
    (bind $?lwg (sort my_string_cmp (create$ ?p_id ?first $?ids ?last)))
    (bind ?pos (member$ ?p_id  $?lwg))
    (bind ?count 0)
    (bind ?cp_vrb_chunk ?vrb_chunk)
    (bind ?cp_tam ?tam)
    (bind ?index (str-index "_" ?vrb_chunk))
    (while (neq ?index FALSE) 
                (bind ?count (+ ?count 1))
                (if (eq ?count (- ?pos 1)) then
                    (bind ?new_vrb_chunk (sym-cat (sub-string 1 ?index ?cp_vrb_chunk) not (sub-string ?index (length ?cp_vrb_chunk) ?cp_vrb_chunk)))
                    (bind ?new_tam (sym-cat (sub-string 1 ?index ?cp_tam) not (sub-string ?index (length ?cp_tam) ?cp_tam)))
                )
               (bind ?vrb_chunk (sub-string (+ ?index 1) 1000 ?vrb_chunk)) 
               (bind ?index (str-index "_" ?vrb_chunk))
    )
    (assert (root-verbchunk-tam-parser_chunkids ?root ?new_vrb_chunk ?new_tam $?lwg))
    (assert (RB-checked ?RB))
    
 )

 ;--------------------------------------------------------------------------
 ;Identifying and modifying the TAM for IMPERATIVE sentences,
 ;Ex:- Do not shut the door. 
 ;(root-verbchunk-tam-parser_chunkids shut do_not_shut do_not_0 P1 P2 P3)===>
 ;(root-verbchunk-tam-parser_chunkids shut do_not_shut imper_not_0 P1 P2 P3)
 (defrule check_for_imper
 (declare (salience -20))
 (Head-Level-Mother-Daughters ? ? ?ROOT ?S $?)
 (and (Node-Category ?ROOT ROOT) (Node-Category ?S S))
 (Head-Level-Mother-Daughters ? ? ?S ?VP $?)
 (Head-Level-Mother-Daughters ? ? ?VP ?verb $?)
 (Head-Level-Mother-Daughters ?h ? ?verb ?first $?)
 (parserid-word ?h ~Let)
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?tam ?first $?ids)
  (not (lwgids_imper_checked ?first $?ids))
 =>
 	(retract ?f)
        (bind ?pos (length (create$ ?first $?ids)))
        (bind ?count 0)
        (bind ?cp_tam ?tam)
        (bind ?index (str-index "_" ?tam))
        (while (neq ?index FALSE)
                (bind ?count (+ ?count 1))
                (if (eq ?count 1) then
                    (bind ?new_tam (sym-cat imper (sub-string ?index (length ?cp_tam) ?cp_tam)))
                )
               (bind ?tam (sub-string (+ ?index 1) 1000 ?tam))
               (bind ?index (str-index "_" ?tam))
        )
        (if (neq (length $?ids) 0) then
                (assert (root-verbchunk-tam-parser_chunkids  ?root ?vrb_chunk ?new_tam ?first $?ids))
        else
                (assert (root-verbchunk-tam-parser_chunkids  ?root ?vrb_chunk imper ?first))
        ) 

        (assert (lwgids_imper_checked ?first $?ids))
 )
;--------------------------------------------------------------------------
 ;Identifying and modifying the TAM for IMPERATIVE sentences with conjunction,
 ;Ex:-Go straight and take a right turn.
 ;(root-verbchunk-tam-parser_chunkids root_to_be_decided go tam_to_be_decided P1)==>
 ;(root-verbchunk-tam-parser_chunkids root_to_be_decided go imper P1)
 ;root-verbchunk-tam-parser_chunkids root_to_be_decided take tam_to_be_decided P4)==>
 ;(root-verbchunk-tam-parser_chunkids root_to_be_decided take imper P4)
 (defrule check_for_CC_imper
 (declare (salience -20))
 (Head-Level-Mother-Daughters ? ? ?ROOT ?S $?)
 (and (Node-Category ?ROOT ROOT) (Node-Category ?S S))
 (Head-Level-Mother-Daughters ? ? ?S ?VP $?)
 (Head-Level-Mother-Daughters ? ? ?VP $? ?VP1 ?CC $? ?VP2 $?)
 (Node-Category ?CC CC)
 (or (Head-Level-Mother-Daughters ? ? ?VP1 ?verb $?)(Head-Level-Mother-Daughters ? ? ?VP2 ?verb $?))
 (Head-Level-Mother-Daughters ?h ? ?verb ?first $?)
 (parserid-word ?h ~Let)
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?tam ?first $?ids)
  (not (lwgids_imper_checked ?first $?ids))
 =>
        (retract ?f)
        (bind ?pos (length (create$ ?first $?ids)))
        (bind ?count 0)
        (bind ?cp_tam ?tam)
        (bind ?index (str-index "_" ?tam))
        (while (neq ?index FALSE)
                (bind ?count (+ ?count 1))
                (if (eq ?count 1) then
                    (bind ?new_tam (sym-cat imper (sub-string ?index (length ?cp_tam) ?cp_tam)))
                )
               (bind ?tam (sub-string (+ ?index 1) 1000 ?tam))
               (bind ?index (str-index "_" ?tam))
        )
        (if (neq (length $?ids) 0) then
                (assert (root-verbchunk-tam-parser_chunkids  ?root ?vrb_chunk ?new_tam ?first $?ids))
        else
                (assert (root-verbchunk-tam-parser_chunkids  ?root ?vrb_chunk imper ?first))
        )

        (assert (lwgids_imper_checked ?first $?ids))
 )

;--------------------------------------------------------------------------
 ;Identifying and modifying the TAM for IMPERATIVE sentences ,
 ;Ex:-Please enclose a curriculum vitae with your letter of application. 
 (defrule check_for_imper1 
 (declare (salience -20))
 (Head-Level-Mother-Daughters ? ? ?ROOT ?S $?)
 (and (Node-Category ?ROOT ROOT) (Node-Category ?S S))
 (Head-Level-Mother-Daughters ? ? ?S ?INTJ ?VP $?)
 (Node-Category ?INTJ INTJ|ADVP|PP|CC)
 (Head-Level-Mother-Daughters ? ? ?VP ?verb $?)
 (Head-Level-Mother-Daughters ?h ? ?verb ?first $?)
 (parserid-word ?h ~Let)
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?tam ?first $?ids)
  (not (lwgids_imper_checked ?first $?ids))
 =>
        (retract ?f)
        (bind ?pos (length (create$ ?first $?ids)))
        (bind ?count 0)
        (bind ?cp_tam ?tam)
        (printout t ?tam crlf)
        (bind ?index (str-index "_" ?tam))
        (while (neq ?index FALSE)
                (bind ?count (+ ?count 1))
                (if (eq ?count 1) then
                    (bind ?new_tam (sym-cat imper (sub-string ?index (length ?cp_tam) ?cp_tam)))
                )
               (bind ?tam (sub-string (+ ?index 1) 1000 ?tam))
               (bind ?index (str-index "_" ?tam))
        )
        (if (neq (length $?ids) 0) then
                (assert (root-verbchunk-tam-parser_chunkids  ?root ?vrb_chunk ?new_tam ?first $?ids))
        else
                (assert (root-verbchunk-tam-parser_chunkids  ?root ?vrb_chunk imper ?first))
        )
        (assert (lwgids_imper_checked ?first $?ids))
 )

;--------------------------------------------------------------------------
 ;Identifying and modifying the ROOT and TAM for CAUSITIVE sentences ,
 ;Ex:-She is making the girl feed the child. 
 ;(root-verbchunk-tam-parser_chunkids feed is_making_feed is_making_0 P2 P3 P6)===>
 ;(root-verbchunk-tam-parser_chunkids make_feed is_making_feed is_ing P2 P3 P6)
 ;(verb_type-verb-causative_verb-tam causative P3 P6 is_ing)
 (defrule check_for_causitive
 (declare (salience -20))
 ?f0<-(root-verbchunk-tam-parser_chunkids  ?  ?vc  ?tam  $?ids ?id ?id1)
 (parserid-word ?id ?w&make|made|get|making)
 ?f1<-(parser_id-root-category-suffix-number  ?id  ?root ?cat ?suf $?)
 ?f2<-(parser_id-root-category-suffix-number ?id1 ?root1 ?cat1 ?suf1 $?)
 =>
        (retract ?f0 ?f1 ?f2)
        (bind ?pos (length (create$ $?ids ?id ?id1)))
	(bind ?count 0)
	(bind ?cp_tam ?tam)
        (printout t ?tam crlf) 
    	(bind ?index (str-index "_" ?tam))
    
        (while (neq ?index FALSE)
                (bind ?count (+ ?count 1))
                (if (eq ?count (- ?pos 2)) then
                    (bind ?new_tam (sub-string 1 ?index ?cp_tam))
                )
               (bind ?tam (sub-string (+ ?index 1) 1000 ?tam))
               (bind ?index (str-index "_" ?tam))
        )
        (bind ?r (string-to-field (str-cat ?root"_"?root1)))
        (if (neq (length $?ids) 0) then
        	(bind ?new_tam (sym-cat ?new_tam ?suf))
                (assert (root-verbchunk-tam-parser_chunkids  ?r ?vc ?new_tam $?ids ?id ?id1))
                (assert (verb_type-verb-causative_verb-tam causative ?id ?id1 ?new_tam))
        else
                (assert (root-verbchunk-tam-parser_chunkids  ?r ?vc tam_to_be_decided ?id ?id1))
                (assert (verb_type-verb-causative_verb-tam causative ?id ?id1 tam_to_be_decided))
        )
 )

;--------------------------------------------------------------------------
 ;Removing auxiliary verbs
 (defrule remove_aux_and_modify_head_wrd
 (declare (salience -100))
 (cntrl_fact_for_replacing_head_info)
 (root-verbchunk-tam-parser_chunkids ?r ?v ?t $?chunk_ids ?head)
 (test (numberp (string_to_integer ?head)));In order to avoid "Function > expected argument #1 to be of type integer or float" error we have added this condition
 (not (root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?head1&:(< (string_to_integer ?head1) (string_to_integer ?head))))
 ?f<-(Head-Level-Mother-Daughters ? ? ?V ?id)
 (test (member$ ?id $?chunk_ids))
 ?f1<-(Head-Level-Mother-Daughters ?h ?l ?m $?pre ?V $?pos)
 =>
 	(retract ?f ?f1)
	(assert (Head-Level-Mother-Daughters ?head ?l ?m $?pre $?pos))
 )	
;--------------------------------------------------------------------------
 ;Modify HEAD information ([Head]-Level-Mother-Daughters)
 ;i.e; replace auxiliary_id with head_id
 (defrule modify_head_id
 (declare (salience -100))
 (cntrl_fact_for_replacing_head_info)
 (root-verbchunk-tam-parser_chunkids ?r ?v ?t $?chunk_ids ?head)
 (test (numberp (string_to_integer ?head)));In order to avoid "Function > expected argument #1 to be of type integer or float" error we have added this condition
 (not (root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?head1&:(< (string_to_integer ?head1) (string_to_integer ?head))))
 ?f<-(Head-Level-Mother-Daughters ?h ?lvl ?V $?daut)
 (test (member$ ?h $?chunk_ids) )
 =>
	(retract ?f)
	(assert (Head-Level-Mother-Daughters ?head ?lvl ?V $?daut))
 )
 
;--------------------------------------------------------------------------
 ;Removing the dummy fact in which mother VP has the only child as VP again.
 (defrule rem_VP_within_VP
 (declare (salience -150))
 ?f<-(Head-Level-Mother-Daughters ?h ?l ?Mot ?dat)
 ?f1<-(Head-Level-Mother-Daughters ?h1 ?l1 ?dat $?daut)
 (Node-Category ?Mot VP) 
 (Node-Category ?dat VP) 
 =>
	(retract ?f ?f1)
	(assert (Head-Level-Mother-Daughters ?h1 ?l1 ?Mot $?daut))
 ) 
;--------------------------------------------------------------------------
