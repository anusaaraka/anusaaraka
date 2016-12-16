 ;This file is written by Mahalaxmi
 (defglobal ?*lwg_debug_file* = lwg_db_fp)

 (deffunction string_to_integer (?parser_id)
 (string-to-field (sub-string 2 10000 ?parser_id)))
 
 (deffunction my_string_cmp (?str1 ?str2)
   (bind ?n1 (string-to-field (sub-string 2 (length ?str1) ?str1)))
   (bind ?n2 (string-to-field (sub-string 2 (length ?str2) ?str2)))
   (> ?n1 ?n2))

 (defrule print_for_debugging1
 (declare (salience 1710))
 =>
 (printout ?*lwg_debug_file* " Copying temporary VP_facts for verb_grouping (In order to preserve the tree structure, and performing the lwg operations on copied facts)" crlf)
 (printout ?*lwg_debug_file* " ==============================================================================================================================" crlf crlf)
 )
;--------------------------------------------------------------------------
 ;Copying temporary facts for verb_lwg (in order to not disturb the tree structure)
 (defrule cp_facts_for_lwg
 (declare (salience 1701))
 (Head-Level-Mother-Daughters ?h ?l ?M $?daut)
 (Node-Category ?M S|SQ|VP|SBAR|and-VB|or-VB|and-MD|and-VBD|SINV);Added and-VB|or-VB|and-MD|and-VBD|SINV in the list by Manju
 (Head-Level-Mother-Daughters ? ? ?Mot $? ?M $?);Added by Manju (29-07-13)
 (not (Node-Category ?Mot Inf_VP));The Republic of Ireland has introduced a blanket ban on smoking to protect public health and reduce illness. 
 =>
	(assert (Head-Level-Mother-Daughters_lwg ?h ?l ?M $?daut))
        (printout ?*lwg_debug_file* "	Head-Level-Mother-Daughters "?h" "?l" "?M" "(implode$ $?daut)"	---->	Head-Level-Mother-Daughters_lwg "?h" "?l" "?M" "(implode$ $?daut) crlf)
 )

;--------------------------------------------------------------------------
 ;asserting a control fact in order to stop replacing the "VP" having conjunction "CC"
 (defrule find_conj_head
 (declare (salience 1702))
 ?f1<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?VP1 $?pre1 ?CC $?pos1)
 ?f2<-(Node-Category ?CC CC)
 =>
	(assert (dont_replace_VP ?VP1))
 )

 ;asserting a control fact in order to stop replacing the "VP" having conjunction ","
 ;Cancer can not be caused, can not be prevented. [(VP5 VP6 VP14)]
 ;In 1676, he presented his law of elasticity, now called Hooke's law.
 (defrule find_conj_head1
 (declare (salience 1702))
 ?f1<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?VP1 ?VP2 $?pos1)
 ?f3<-(Node-Category ?VP2 VP)
 (Node-Category ?VP1 VP) ; added by manju counter ex :Keep doing light physical activities.
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
 (Node-Category ?VP1 VP|and-VB|or-VB|and-MD|and-VBD);Added and-VB|or-VB|and-MD|and-VBD in the list by Manju
 (Node-Category ?VP VP)
 =>    
	(retract ?f1 ?f)
         (bind $?verb_list (create$ $?pre1 ?CC $?pos1))
         (bind $?conjs (create$ ))
         (bind ?len (length $?verb_list))
         (printout ?*lwg_debug_file* "(rule_name - conjunction_rule0 "crlf )
         (loop-for-count (?i 1 ?len)
                        (bind ?j (nth$ ?i $?verb_list))
			  (if (member$ (explode$ (sub-string 1 2 ?j)) (create$ VP VB MD)) then
			      (assert (Head-Level-Mother-Daughters_lwg ?head ?lvl ?VP $?pre ?j $?pos))
                                       (printout ?*lwg_debug_file* "(Head-Level-Mother-Daughters_lwg "?head" "?lvl" "?VP" "(implode$ $?pre)" "?j" "(implode$ $?pos)")" crlf)
                          )
         )
	 
 )
;--------------------------------------------------------------------------
;All green plants and certain bluegreen algae which can produce food by photosynthesis come under this category and are called the producers; Organisms depend on the producers either directly or indirectly for their sustenance?
 (defrule conjunction_rule1
 (declare (salience 1599))
 ?f1<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?VP1 $?pre1 ?CC $?pos1)
 ?f2<-(Node-Category ?CC CC)
 (Node-Category ?VP1 VP|and-VB|or-VB|and-MD|and-VBD);Added and-VB|or-VB|and-MD|and-VBD in the list by Manju
 =>
         (retract  ?f1)
         (bind $?verb_list (create$ $?pre1 ?CC $?pos1))
         (bind $?conjs (create$ ))
         (bind ?len (length $?verb_list))
         (printout ?*lwg_debug_file* "(rule_name - conjunction_rule0 "crlf )
         (loop-for-count (?i 1 ?len)
                        (bind ?j (nth$ ?i $?verb_list))
                          (if (member$ (explode$ (sub-string 1 2 ?j)) (create$ VP VB MD)) then
                              (assert (Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?VP1 ?j))
                              (printout ?*lwg_debug_file* "(Head-Level-Mother-Daughters_lwg "?head1" "?lvl1" "?VP1"  "?j")" crlf)
                          )
         )

 )
;--------------------------------------------------------------------------
 (defrule print_for_debugging2
 (declare (salience 1701))
 =>
 (printout ?*lwg_debug_file* crlf "  Replacing Daughter nodes with child nodes " crlf)
 (printout ?*lwg_debug_file* "  =========================================================================================" crlf crlf)
 )

;--------------------------------------------------------------------------
 ;Replacing a VP|SQ mother whose child is again a VP .
 ;SINV EX: Had you met Rohit anywhere before?
 (defrule replace_VP
 (declare (salience 1700))
 ?f<-(Head-Level-Mother-Daughters_lwg ?head ?lvl ?Mot $?pre ?VP $?pos)
 ?f1<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?VP $?daut)
 (Node-Category ?Mot VP|SQ|SINV)
 (Node-Category ?VP VP)
 (not (dont_replace_VP ?Mot))
 (not (dont_replace_VP ?VP))
 =>
	(retract ?f ?f1)
	(assert (Head-Level-Mother-Daughters_lwg ?head1 ?lvl ?Mot $?pre $?daut  $?pos))
        (printout ?*lwg_debug_file* "	(rule_name - replace_VP" crlf
                         "              	Before    - "?head" "?lvl" "?Mot" "(implode$ $?pre)" "?VP" "(implode$ $?pos)")" crlf
                         "              	After     - "?head1" "?lvl" "?Mot" "(implode$ $?pre)" "(implode$ $?daut)" "(implode$ $?pos)")" crlf)
 )

 ;--------------------------------------------------------------------------
 ;Added by Shirisha Manju (Suggested by Chaitanya Sir (12-06-13)
 ;According to this view, for example, an arrow shot from a bow [keeps flying] since the air behind the arrow [keeps pushing] it.
; (defrule replace_VP1
; (declare (salience 1600))
; ?f<-(Head-Level-Mother-Daughters_lwg ?head ?lvl ?Mot ?pre ?S)
; (parser_id-root-category-suffix-number ?head keep $?)
; (Node-Category ?Mot VP)
; (Node-Category ?S S)
; ?f1<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?S ?VP)
; (Node-Category ?VP VP)
; ?f2<-(Head-Level-Mother-Daughters_lwg ?h ?l ?VP ?node $?daut)
; (test (neq (length $?daut) 0))I like running. I have started working
; (not (Node-Category ?node TO))Jumma masjid is considered to be one of the most beautiful mosques in western india.
; (not (dont_replace_VP ?Mot))
; (not (dont_replace_VP ?VP))
; =>
;        (retract ?f ?f1 ?f2)
;        (assert (Head-Level-Mother-Daughters_lwg ?head1 ?lvl ?Mot ?pre ?node $?daut ))
;        (printout ?*lwg_debug_file* "   (rule_name - replace_VP1" crlf
;	                 "                      Before    - "?head" "?lvl" "?Mot" "?pre" "?S ")" crlf
;                         "                      After     - "?head1" "?lvl" "?Mot" "?pre"  "?node" "(implode$ $?daut)")" crlf)
; )
;--------------------------------------------------------------------------
 ;Modified the rule to check root instead of word by Shirisha Manju (26-07-16).
 ;Added 'keep' in the list by Shirisha Manju (26-07-16) Ex: Keep doing light physical activities. 
 ;Replacing a VP mother whose child is  S|SBAR|SQ on checking the head word .
 ;Ex:-A fat boy [had to eat] fruits. 
 ;Ex:-She made the girl feed the child.[made_feed]
 ;These smugglers are to be captured. Broken windows need to be replaced. 
 ;That is the way business used to be done and that is the way business needs to be done.
 ;Positive thinking needs to be inculcated. [needs]
 ;Modified the rule to check prev_node of 'SBAR|S|SQ' is verb. Ex: He got so drunk that he passed out.
 (defrule replace_S
 (declare (salience 100))
 ?f<-(Head-Level-Mother-Daughters_lwg ?head ?lvl ?Mot $?pre ?prev_node ?S $?pos)
 (parser_id-root-category-suffix-number ?head ?r&get|have|had|has|having|make|need|keep $?)
 (Node-Category ?S SBAR|S|SQ)
 (Node-Category ?Mot VP)
 ?f1<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?S $?daut)
 (parserid-word ?head1 ?word&~that);As they drew near the bungalow they could make out that something important had happened. 
 (parserid-word ?head ~keeping); There is no better solution but to eat fish for keeping eyes healthy if you are a non-vegetarian.
 (Node-Category ?pre_node VBG|VBN|VBD|VBZ|VBP|VB|MD|TO|AUX|AUXG)
 (not (dont_replace_VP ?Mot))
 (not (dont_replace_VP ?S)) ; You may keep your teeth clean and breath fresh by the help of some easy tips given here.
 =>
        (retract ?f ?f1)
        (assert (Head-Level-Mother-Daughters_lwg ?head ?lvl ?Mot $?pre ?prev_node $?daut  $?pos))
        (printout ?*lwg_debug_file* "	(rule_name - replace_S" crlf
                         "              	Before    - "?head" "?lvl" "?Mot" "(implode$ $?pre)" "?prev_node" "?S" "(implode$ $?pos)")" crlf
                         "              	After     - "?head" "?lvl" "?Mot" "(implode$ $?pre)" "?prev_node" "(implode$ $?daut)" "(implode$ $?pos)")" crlf)
	(assert (dont_replce_S))
 )
;--------------------------------------------------------------------------
 ;Replacing a VP mother whose child is  S|SBAR on checking the head word "Let".
 ;Modified the rule to check prev_node of 'SBAR|S|SQ' is verb.
 (defrule replace_S1_Let
 (declare (salience 100))
 ?f<-(Head-Level-Mother-Daughters_lwg ?head ?lvl ?Mot $?pre ?prev_node ?S $?pos)
 (parserid-word ?head ?w&Let|let)
 ?f1<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?S $?daut)
 (parserid-word ?head1 ~that)
 (Node-Category ?Mot VP)
 (Node-Category ?S S|SBAR)
 (Node-Category ?pre_node VBG|VBN|VBD|VBZ|VBP|VB|MD|TO|AUX|AUXG)
 (not (dont_replace_VP ?Mot))
 =>
        (retract ?f ?f1)
        (assert (Head-Level-Mother-Daughters_lwg ?head ?lvl ?Mot $?pre ?prev_node $?daut  $?pos))
        (printout ?*lwg_debug_file* "	(rule_name - replace_S1_Let" crlf
                         "              	Before    - "?head" "?lvl" "?Mot" "(implode$ $?pre)" "?prev_node" "?S" "(implode$ $?pos)")" crlf
                         "              	After     - "?head" "?lvl" "?Mot" "(implode$ $?pre)" "?prev_node" "(implode$ $?daut)" "(implode$ $?pos)")" crlf)

 )

;--------------------------------------------------------------------------
 ;Replacing a VP mother whose child is  S on checking the head word "are|Are|is|was|were".
 ; The normal in this case is to be taken as normal to the tangent to surface at the point of incidence.
 ;;If air resistance is neglected, the object [is said to be] in free fall.
 ;Modified the rule to check prev_node of 'SBAR|S|SQ' is verb.
 ;Added 'used' in the list by Shirisha Manju (13-02-14) Ex: Asutosh himself frequently presided over the "moot courts" and he also used to deliver lectures to the Law students.
 ;Added 'ought' Ex:  We ought to love our youngers
 (defrule replace_S1
 (declare (salience 100))
 ?f<-(Head-Level-Mother-Daughters_lwg ?head ?lvl ?Mot $?pre ?prev_node ?S $?pos)
 (parser_id-root-category-suffix-number ?head ?r&be|say|use|ought $?)
 ?f1<-(Head-Level-Mother-Daughters_lwg ?head1 ?lvl1 ?S $?daut)
 (parserid-word ?head1 ?w1&to)
 (Node-Category ?Mot VP)
 (Node-Category ?S S)
 (Node-Category ?pre_node VBG|VBN|VBD|VBZ|VBP|VB|MD|TO|AUX|AUXG)
 (not (dont_replace_VP ?Mot))
 =>
        (retract ?f ?f1)
        (assert (Head-Level-Mother-Daughters_lwg ?head ?lvl ?Mot $?pre ?prev_node $?daut  $?pos))
        (printout ?*lwg_debug_file* "	(rule_name - replace_S1" crlf
                         "              	Before    - "?head" "?lvl" "?Mot" "(implode$ $?pre)" "?prev_node " "?S" "(implode$ $?pos)")" crlf
                         "              	After     - "?head" "?lvl" "?Mot" "(implode$ $?pre)" "?prev_node " "(implode$ $?daut)" "(implode$ $?pos)")" crlf)
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
 (defrule print_for_debugging3
 (declare (salience 76))
 =>
 (printout ?*lwg_debug_file* crlf "  Creating LWG facts " crlf)
 (printout ?*lwg_debug_file* "  =========================================================================================" crlf crlf)
 )

;--------------------------------------------------------------------------
 ;SINV EX: Had you met Rohit anywhere before?
 ;Creating a lwg facts for all verbs
 ;Here it look like,
 ;(root-verbchunk-tam-parser_chunkids - VBZ6 VBG8 NP10 VB14 NP15 - VBZ6 VBG8 NP10 VB14 NP15 - VBZ6 VBG8 NP10 VB14 NP15)
 (defrule get_lwg
 (declare (salience 70))
 ?f<-(Head-Level-Mother-Daughters_lwg ?head ?lvl ?VP ?VP1 $?dau)
 (Node-Category ?VP VP|SQ|SINV)
 (Node-Category ?VP1 ?cat&~TO)
 (not (dont_replace_VP ?VP))
 =>
 	(assert (root-verbchunk-tam-parser_chunkids - ?VP1 $?dau - ?VP1 $?dau - ?VP1 $?dau))
        (printout ?*lwg_debug_file* "	(rule_name - get_lwg" crlf 
                         "			(root-verbchunk-tam-parser_chunkids - "?VP1" "(implode$ $?dau)" - "?VP1" "(implode$ $?dau)" - "?VP1" "(implode$ $?dau)")" crlf)
                                      
)
 ;--------------------------------------------------------------------------
 (defrule print_for_debugging4
 (declare (salience 69))
 =>
 (printout ?*lwg_debug_file* crlf "  Retrieving tam information (getting verb , suffix , and parser_id for every node )" crlf)
 (printout ?*lwg_debug_file* " =========================================================================================" crlf crlf)
 )

 (defrule test_nodes_for_verbs
 (declare (salience 60))
 ?f<-(root-verbchunk-tam-parser_chunkids - $?vb_chk - $?tam - $?pre ?node $?post)
 (Node-Category ?node ?cat)
 (test (eq (member$ ?cat (create$ VBG VBN VBD VBZ VBP VB MD TO AUX AUXG)) FALSE)) 
 =>
 (retract ?f)
 (bind $?vb_chk (delete-member$ $?vb_chk ?node))
 (bind $?tam (delete-member$ $?tam ?node))
 (assert (root-verbchunk-tam-parser_chunkids - $?vb_chk - $?tam - $?pre $?post))
 )
 
 ;--------------------------------------------------------------------------
 ;Replacing all the nodes with there child
 ;Here it look like,
 ;(root-verbchunk-tam-parser_chunkids - is making feed - s ing 0 - P2 P3 P6)
 ;Used root to check words insted of word by Shirisha Manju (26-07-16)
 (defrule replace_nodes_for_aux
 (declare (salience 60))
 ?f<-(root-verbchunk-tam-parser_chunkids - $?vb_chk - $?tam - $?pre ?node $?post ?main_verb)
 (Head-Level-Mother-Daughters ?h_id ? ?node $?child)
 (parserid-word ?h_id ?head)
 (Node-Category ?node ?cat)
 (parser_id-root-category-suffix-number  ?h_id  ?root ? ?suf ?)
 =>
	
	(retract ?f)(printout t "node :: "?node "---  head:: "?head crlf)
        (printout ?*lwg_debug_file* "	(rule_name - replace_nodes_for_aux" crlf
                         "			Before    - (root-verbchunk-tam-parser_chunkids - "(implode$ $?vb_chk)" - "(implode$ $?tam)" - "(implode$ $?pre)" "?node" "(implode$ $?post)" "?main_verb ")" crlf)

        (bind $?chunkid  (create$ $?pre ?node $?post))
        (bind ?pos (member$ ?node $?chunkid))
        (bind ?head (lowcase ?head))
;        (if (and (member$ ?head (create$ make made get making let am being do does doing need can could ought might must should been had may will be is are has shall would were was did to have used use keeps keep)) (member$ ?cat (create$ VBG VBN VBD VBZ VBP VB MD TO AUX AUXG))) then
        (if (and (member$ ?root (create$ make get let do need ought may might must can could would should be been had has have will shall to use keep)) (member$ ?cat (create$ VBG VBN VBD VBZ VBP VB MD TO AUX AUXG))) then
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
	      else (if (eq ?cat AUX) then ;Added for bllip parser. Ex: The recent advertising campaign has had a marked effect on sales.  
	           (bind $?tam (create$ (subseq$ $?tam 1 (- ?pos 1)) ?suf (subseq$ $?tam (+ ?pos 1) (length $?tam))))      
	      else  
	           (bind $?tam (create$ (subseq$ $?tam 1 (- ?pos 1)) 0 (subseq$ $?tam (+ ?pos 1) (length $?tam)))))))))))
 
      else 
           (bind $?vb_chk (delete-member$ $?vb_chk ?node))
           (bind $?tam (delete-member$ $?tam ?node))
	   (printout t $?tam "   "$?vb_chk crlf)
           (bind $?chunkid (delete-member$ $?chunkid ?node)));)
        (assert (root-verbchunk-tam-parser_chunkids - $?vb_chk - $?tam - $?chunkid ?main_verb))
        (printout ?*lwg_debug_file* "			After     - (root-verbchunk-tam-parser_chunkids - "(implode$ $?vb_chk)" - "(implode$ $?tam)" - "(implode$ $?chunkid)" "?main_verb" )" crlf)
 )

 (defrule replace_nodes_for_main_verb
 (declare (salience 59))
 ?f<-(root-verbchunk-tam-parser_chunkids - $?vb_chk - $?tam - $?pre ?node)
 (Head-Level-Mother-Daughters ?h_id ? ?node $?child)
 (parserid-word ?h_id ?head)
 (Node-Category ?node ?cat)
 (parser_id-root-category-suffix-number  ?h_id  ? ? ?suf ?)
 =>

        (retract ?f)(printout t "node :: "?node "---  head:: "?head crlf)
        (printout ?*lwg_debug_file* "   (rule_name - replace_nodes_for_main_verb" crlf
                         "                      Before    - (root-verbchunk-tam-parser_chunkids - "(implode$ $?vb_chk)" - "(implode$ $?tam)" - "(implode$ $?pre)" "?node" )" crlf)

        (bind $?chunkid  (create$ $?pre ?node))
        (bind ?pos (member$ ?node $?chunkid))
        (if (member$ ?cat (create$ VBG VBN VBD VBZ VBP VB MD TO AUX AUXG)) then
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
              else (if (eq ?cat AUX) then ;Added for bllip parser. Ex: The recent advertising campaign has had a marked effect on sales.  
                   (bind $?tam (create$ (subseq$ $?tam 1 (- ?pos 1)) ?suf (subseq$ $?tam (+ ?pos 1) (length $?tam))))
              else
                   (bind $?tam (create$ (subseq$ $?tam 1 (- ?pos 1)) 0 (subseq$ $?tam (+ ?pos 1) (length $?tam)))))))))))

      else
           (bind $?vb_chk (delete-member$ $?vb_chk ?node))
           (bind $?tam (delete-member$ $?tam ?node))
           (printout t $?tam "   "$?vb_chk crlf)
           (bind $?chunkid (delete-member$ $?chunkid ?node)));)
        (assert (root-verbchunk-tam-parser_chunkids - $?vb_chk - $?tam - $?chunkid))
        (printout ?*lwg_debug_file* "                   After     - (root-verbchunk-tam-parser_chunkids - "(implode$ $?vb_chk)" - "(implode$ $?tam)" - "(implode$ $?chunkid)")" crlf)
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
 (defrule print_for_debugging5
 (declare (salience 51))
 =>
 (printout ?*lwg_debug_file* crlf "  Get root , verb_chunk and tam information " crlf)
 (printout ?*lwg_debug_file* " =========================================================================================" crlf crlf)
 )
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
        (printout ?*lwg_debug_file* "	(rule_name - get_lwg_vc_and_tam" crlf
                         "			Before    - (root-verbchunk-tam-parser_chunkids - "?r"  "(implode$ $?vc)" - "(implode$ $?tam)" - "(implode$ $?ids)" "?id")" crlf)

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
        (printout ?*lwg_debug_file* "			After     - (root-verbchunk-tam-parser_chunkids  "?root"  "?verb_chunk"  "?tam1"  "(implode$ $?ids)")" crlf)
        else
        (assert (root-verbchunk-tam-parser_chunkids root_to_be_decided $?vc tam_to_be_decided $?ids))
        (printout ?*lwg_debug_file* "			After   - (root-verbchunk-tam-parser_chunkids  root_to_be_decided  "(implode$ $?vc)"  tam_to_be_decided  "(implode$ $?ids)")" crlf)
       )
 )

;--------------------------------------------------------------------------
 (defrule modify_head_wrd1
 (declare (salience 49))
 ?f0<-(root-verbchunk-tam-parser_chunkids be is_said_to_be is_said_to_0 ?is ?said ?to ?be)
 ?f1<-(parser_id-root-category-suffix-number  ?said  ?root $?)
 =>
   (retract ?f0)
   (printout ?*lwg_debug_file* crlf " Modifying the root and head_id for \"IS_SAID_TO_BE\" verb_chunk " crlf)
   (printout ?*lwg_debug_file* " =========================================================================================" crlf crlf) 
   (printout ?*lwg_debug_file* "	(rule_name - modify_head_wrd1" crlf
                    "				Before    - (root-verbchunk-tam-parser_chunkids - be  is_said_to_be - is_said_to_0 - "?is" "?said" "?to" "?be")" crlf)
   (assert (root-verbchunk-tam-parser_chunkids ?root is_said_to_be is_said_to_0 ?is ?to ?be ?said ))
   (printout ?*lwg_debug_file* "			After   - (root-verbchunk-tam-parser_chunkids - "?root" is_said_to_be - is_said_to_0 - "?is" "?to" "?be" "?said")" crlf)
 )
;--------------------------------------------------------------------------
 (defrule print_for_debugging6
 (declare (salience 5))
 =>
 (printout ?*lwg_debug_file* crlf " Removing lwg fact in case of verb_chunk formed by single VBG and VBN node" crlf)
 (printout ?*lwg_debug_file* " =========================================================================================" crlf crlf)
 )

;--------------------------------------------------------------------------
 ;Added by Shirisha Manju (28-10-11) Suggested by Sukhada
 ;Ex:-He made a mistake in [inviting] John. 
 ;Ex:-The glass house [built] on the lines of the crystal palace in london is the main attraction in this huge park.
 (defrule remove_single_VBG_and_VBN_lwg
 (declare (salience 4))
 ?f0<-(root-verbchunk-tam-parser_chunkids  ?r ?v ?t ?id)
 (Head-Level-Mother-Daughters_lwg ? ? ?VP $?pre ?daut $?post)
 (Head-Level-Mother-Daughters ? ? ?daut ?id)
 (Node-Category ?VP VP)
 (Node-Category ?daut VBG|VBN)
 =>
                (retract ?f0)
		(printout ?*lwg_debug_file* "	(root-verbchunk-tam-parser_chunkids  "?r" "?v" "?t" "?id")" crlf)
 )

;--------------------------------------------------------------------------
 (defrule print_for_debugging7
 (declare (salience 3))
 =>
 (printout ?*lwg_debug_file* crlf " Identifying and Modifying the tam information for QUESTIONARY , IMPERATIVE , CAUSITIVE and NEGATION verbs" crlf)
 (printout ?*lwg_debug_file* " ==============================================================================================================" crlf crlf)
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
        (printout ?*lwg_debug_file* "	(rule_name - find_q_tam" crlf
                    	 "			Before    - (root-verbchunk-tam-parser_chunkids - "?root" "?vrb_chunk" "?tam" "?head" "(implode$ $?ids)")" crlf)
        (bind ?vrb_chunk (sym-cat q_ ?vrb_chunk))
        (assert (root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?suf ?head $?ids))
        (printout ?*lwg_debug_file* "			After   - (root-verbchunk-tam-parser_chunkids - "?root" "?vrb_chunk" "?suf" "?head" "(implode$ $?ids)")" crlf)
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
 ;They also [do not attract] or repel other light objects as they did on being electrified
 ;(root-verbchunk-tam-parser_chunkids do will_do will_0 P2 P4) ==>
 ;(root-verbchunk-tam-parser_chunkids do will_not_do will_not_0 P2 P3 P4)
 (defrule add_not_to_lwg
 (declare (salience -10))
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?tam ?first $?ids ?last)
 (Head-Level-Mother-Daughters ?not ? ?RB ?p_id)
 (parserid-word ?not not|n't) ;You did n't even notice.
 (Node-Category ?RB RB)
 (cntrl_fact_for_testing_not)
 (test (eq (member$ ?p_id $?ids) FALSE))
 (test (and (< (string_to_integer ?first) (string_to_integer ?p_id))(< (string_to_integer ?p_id) (string_to_integer ?last))))
=>
    (retract ?f)
    (printout ?*lwg_debug_file* "(rule_name - add_not_to_lwg" crlf
                     "			Before    - (root-verbchunk-tam-parser_chunkids - "?root" "?vrb_chunk" "?tam" "?first" "(implode$ $?ids)" "?last")" crlf)
    (bind $?lwg (sort my_string_cmp (create$ ?p_id ?first $?ids ?last)))
    (bind ?new_vrb_chunk "")
    (bind ?new_tam "")
    (bind ?index1 0)
    (bind ?pos (member$ ?p_id  $?lwg))
    (bind ?count 0)
    (bind ?cp_vrb_chunk ?vrb_chunk)
    (bind ?cp_tam ?tam)
    (bind ?index (str-index "_" ?cp_vrb_chunk))
    (while (neq ?index FALSE) 
                (bind ?index1 (+ ?index1 ?index))
                (bind ?count (+ ?count 1))
                (if (eq ?count (- ?pos 1)) then
                    (bind ?new_vrb_chunk (sym-cat (sub-string 1 ?index1 ?cp_vrb_chunk) "not" (sub-string ?index1 (length ?cp_vrb_chunk) ?cp_vrb_chunk)))
                 
		   (printout t  ?index1 ?cp_tam)
                    (bind ?new_tam (sym-cat (sub-string 1 ?index1 ?cp_tam) "not" (sub-string ?index1 (length ?cp_tam) ?cp_tam)))
               )
;               (printout t " new_vrb_chunk " ?new_vrb_chunk " new_tam " ?new_tam " " ?index " " ?count " " ?pos " " ?index1 crlf)
               (bind ?vrb_chunk (sub-string (+ ?index 1) 1000 ?vrb_chunk)) 
               (bind ?index (str-index "_" ?vrb_chunk))
    )
    (assert (root-verbchunk-tam-parser_chunkids ?root ?new_vrb_chunk ?new_tam $?lwg))
    (printout ?*lwg_debug_file* "			After   - (root-verbchunk-tam-parser_chunkids - "?root" "?new_vrb_chunk" "?new_tam" "(implode$ $?lwg)")" crlf)
 )

 ;--------------------------------------------------------------------------
 ;Identifying and modifying the TAM for IMPERATIVE sentences,
 ;SINV Ex: Do not feed children fast food, kurkure, ice-cream.
 ;Ex:- Do not shut the door. 
 ;(root-verbchunk-tam-parser_chunkids shut do_not_shut do_not_0 P1 P2 P3)===>
 ;(root-verbchunk-tam-parser_chunkids shut do_not_shut imper_not_0 P1 P2 P3)
 (defrule check_for_imper
 (declare (salience -20))
 (Head-Level-Mother-Daughters ? ? ?ROOT ?S $?)
 (and (Node-Category ?ROOT ROOT) (Node-Category ?S S|SINV))
 (Head-Level-Mother-Daughters ? ? ?S ?VP $?)
 (Head-Level-Mother-Daughters ? ? ?VP ?verb $?)
 (Head-Level-Mother-Daughters ?h ? ?verb ?first $?)
 (parserid-word ?h ?w&~Let&~May&~Can) ;May I come in Sir? 
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?tam ?first $?ids)
  (not (lwgids_imper_checked ?first $?ids))
 =>
 	(retract ?f)
        (printout ?*lwg_debug_file* "	(rule_name - check_for_imper" crlf
                         "			Before    - (root-verbchunk-tam-parser_chunkids - "?root" "?vrb_chunk" "?tam" "?first" "(implode$ $?ids)")" crlf)
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
    		(printout ?*lwg_debug_file* "			After   - (root-verbchunk-tam-parser_chunkids - "?root" "?vrb_chunk" "?new_tam" "?first" "(implode$ $?ids)")" crlf)
        else
                (assert (root-verbchunk-tam-parser_chunkids  ?root ?vrb_chunk imper ?first))
		(printout ?*lwg_debug_file* "			After   - (root-verbchunk-tam-parser_chunkids - "?root" "?vrb_chunk " imper "?first")" crlf)
        ) 

        (assert (lwgids_imper_checked ?first $?ids))
 )
;--------------------------------------------------------------------------
 ;Identifying and modifying the TAM for IMPERATIVE sentences with conjunction,
 ;SBAR EX: If fever is more than 100 [give] a pill of paracetamol and [take] suggestions from a medicine specialist doctor. 
 ;Ex:-Go straight and take a right turn.
 ;(root-verbchunk-tam-parser_chunkids root_to_be_decided go tam_to_be_decided P1)==>
 ;(root-verbchunk-tam-parser_chunkids root_to_be_decided go imper P1)
 ;root-verbchunk-tam-parser_chunkids root_to_be_decided take tam_to_be_decided P4)==>
 ;(root-verbchunk-tam-parser_chunkids root_to_be_decided take imper P4)
 (defrule check_for_CC_imper
 (declare (salience -20))
 (Head-Level-Mother-Daughters ? ? ?ROOT ?S $?)
 (and (Node-Category ?ROOT ROOT) (Node-Category ?S S))
 (or (Head-Level-Mother-Daughters ? ? ?S ?VP $?)
     (and (Head-Level-Mother-Daughters ? ? ?S ?SBAR ?VP $?)(Node-Category ?SBAR SBAR)))
 (Head-Level-Mother-Daughters ? ? ?VP $? ?VP1 ?CC $? ?VP2 $?)
 (Node-Category ?CC CC)
 (or (Head-Level-Mother-Daughters ? ? ?VP1 ?verb $?)(Head-Level-Mother-Daughters ? ? ?VP2 ?verb $?))
 (Head-Level-Mother-Daughters ?h ? ?verb ?first $?)
 (parserid-word ?h ~Let)
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?tam ?first $?ids)
  (not (lwgids_imper_checked ?first $?ids))
 =>
        (retract ?f)
        (printout ?*lwg_debug_file* "   (rule_name - check_for_CC_imper" crlf
                         "                      Before    - (root-verbchunk-tam-parser_chunkids - "?root" "?vrb_chunk" "?tam" "?first" "(implode$ $?ids)")" crlf)

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
		(printout ?*lwg_debug_file* "			After   - (root-verbchunk-tam-parser_chunkids - "?root" "?vrb_chunk" "?new_tam" "?first" "(implode$ $?ids)")" crlf)
        else
                (assert (root-verbchunk-tam-parser_chunkids  ?root ?vrb_chunk imper ?first))
		(printout ?*lwg_debug_file* "			After   - (root-verbchunk-tam-parser_chunkids - "?root" "?vrb_chunk" imper "?first")" crlf)
        )

        (assert (lwgids_imper_checked ?first $?ids))
 )

;--------------------------------------------------------------------------
 ;Identifying and modifying the TAM for IMPERATIVE sentences ,
 ;INTJ Ex: Please enclose a curriculum vitae with your letter of application. 
 ;	   Thank you, Please get it repaired fast.
 ;SBAR Ex: When they go out shut the door.
 ;S    Ex: Taking a spoon of salt pour three to four drops of lemon juice in that. 
 (defrule check_for_imper1 
 (declare (salience -20))
 (Head-Level-Mother-Daughters ? ? ?ROOT ?S $?)
 (and (Node-Category ?ROOT ROOT) (Node-Category ?S S))
 (or (Head-Level-Mother-Daughters ? ? ?S ?INTJ ?VP $?)
     (and (Head-Level-Mother-Daughters ? ? ?S ? ?INTJ ?VP $?)(Node-Category ?INTJ INTJ)))
 (Node-Category ?INTJ INTJ|ADVP|PP|CC|SBAR|S)
 (Head-Level-Mother-Daughters ? ? ?VP ?verb $?)
 (Head-Level-Mother-Daughters ?h ? ?verb ?first $?)
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?tam ?first $?ids)
 (parserid-word ?first ?w&~Let&~let);Now let her see.
 (parser_id-root-category-suffix-number ?first ?w verb ? ?) ; counter example for not imperative : But knew it was not possible. 
 (not (lwgids_imper_checked ?first $?ids))
 =>
        (retract ?f)
	(printout ?*lwg_debug_file* "   (rule_name - check_for_CC_imper1" crlf
                         "                      Before    - (root-verbchunk-tam-parser_chunkids - "?root" "?vrb_chunk" "?tam" "?first" "(implode$ $?ids)")" crlf)
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
		(printout ?*lwg_debug_file* "			After   - (root-verbchunk-tam-parser_chunkids - "?root" "?vrb_chunk" "?new_tam" "?first" "(implode$ $?ids)")" crlf)
        else
                (assert (root-verbchunk-tam-parser_chunkids  ?root ?vrb_chunk imper ?first))
		(printout ?*lwg_debug_file* "			After   - (root-verbchunk-tam-parser_chunkids - "?root" "?vrb_chunk" imper "?first")" crlf)

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
 (declare (salience -21))
 ?f0<-(root-verbchunk-tam-parser_chunkids  ?R  ?vc  ?tam  $?ids ?id ?id1)
 (parserid-word ?id ?w&make|made|get|making|Get)
 ?f1<-(parser_id-root-category-suffix-number  ?id  ?root ?cat ?suf $?)
 ?f2<-(parser_id-root-category-suffix-number ?id1 ?root1 ?cat1 ?suf1 $?)
 =>
        (retract ?f0 ?f1 ?f2)
        (printout ?*lwg_debug_file* "   (rule_name - check_for_causitive" crlf
                         "                      Before    - (root-verbchunk-tam-parser_chunkids - "?R" "?vc" "?tam" "(implode$ $?ids)" "?id" "?id1")" crlf)
        (bind ?pos (length (create$ $?ids ?id ?id1)))
	(bind ?count 0)
	(bind ?cp_tam ?tam)
	(bind ?new_tam ?tam)
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
		(printout ?*lwg_debug_file* "			After   - (root-verbchunk-tam-parser_chunkids - "?r" "?vc" "?new_tam"  "(implode$ $?ids)" "?id" "?id1")" crlf)
                (assert (verb_type-verb-causative_verb-tam causative ?id ?id1 ?new_tam))
		(printout ?*lwg_debug_file* "			After   - (verb_type-verb-causative_verb-tam causative "?id" "?id1" "?new_tam")" crlf)
        else
		(if (or (eq ?cp_tam imper_ed)(eq ?cp_tam imper_en)) then
			(assert (root-verbchunk-tam-parser_chunkids  ?r ?vc imper ?id ?id1))
		else
	                (assert (root-verbchunk-tam-parser_chunkids  ?r ?vc tam_to_be_decided ?id ?id1))
			(printout ?*lwg_debug_file* "			After   - (root-verbchunk-tam-parser_chunkids - "?r" "?vc" tam_to_be_decided "?id" "?id1")" crlf)
		)
                (assert (verb_type-verb-causative_verb-tam causative ?id ?id1 tam_to_be_decided))
		(printout ?*lwg_debug_file* "			After   - (verb_type-verb-causative_verb-tam causative "?id" "?id1" tam_to_be_decided)" crlf)
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
 ;Eg sen:: Bohr's second postulate of quantisation [(Eq. (12.11)] says that the allowed values of angular momentum are integral multiples of h/2 π.
 ;(root-verbchunk-tam-parser_chunkids - VBD15 - VBD15 - VBD15)
 ;Remove fact containg nodes
 (defrule rem_fact_with_nodes
 (declare (salience 3))
 ?f<-(root-verbchunk-tam-parser_chunkids - $? ?node $? - $? - $?)
 (Node-Category ?node ?)
 =>
 (retract ?f)
 (printout t "Warning: LWG node not mapped ," ?node " is not replaced with verb_chunk. " crlf)
 )
;--------------------------------------------------------------------------
 


