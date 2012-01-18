  (deffacts dummy_sd_pada_facts
  (to_be_included_in_paxa)
  (Head-Level-Mother-Daughters)
  (Node-Category)
  (root-verbchunk-tam-chunkids)
  (verb_type-verb-causative_verb-tam)
  (id-last_word)
  (id-word) 
  (id-left_punctuation)
  (id-right_punctuation)  
  (conjunction-components)
  (prep_id-relation-anu_ids)
  )

  (defglobal ?*debug* = pada_info_debug)
  (defglobal ?*agmt_cntrl_file* = agmt_cntrl_fp)
  (defglobal ?*pada_cntrl_file* = pada_cntrl_fp) 

 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 ;----------------------------------------------------------------------------------------------------------------------
 (deffunction print_in_ctrl_fact_files (?paxa_head)
        (printout       ?*agmt_cntrl_file*      "(agmt_control_fact     "       ?paxa_head      ")"     crlf)
        (printout       ?*pada_cntrl_file*      "(pada_control_fact     "       ?paxa_head      ")"     crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (05-11-11)
 (defrule retract_cntrl_fact
 (declare (salience 2000))
 (has_been_included_in_paxa ?id)
 ?f<-(to_be_included_in_paxa ?id)
 =>
        (retract ?f)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;  I like dogs as well as cats
 (defrule get_CONJP_group
 (declare (salience 1500))
 ?f1<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre ?RB $?pos)
 (Node-Category  ?Mot CONJP)
 (Node-Category  ?RB RB|IN)
 ?f2<-(Head-Level-Mother-Daughters ? ? ?RB ?id)
 =>
	(retract ?f1 ?f2)
	(assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre ?id $?pos))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (05-11-11)
 ;The painted doors look great.A big, black, ugly dog chased me. By going there you can earn more money. 
 ;Three quarters of a million people in this city have no health insurance. They threw him in the swimming pool.
 ;She is beautiful and intelligent.
 (defrule get_NP_group
 (declare (salience 1500))
 ?f1<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre ?NP $?pos)
 ?f2<-(Head-Level-Mother-Daughters ?h ? ?NP $?daut)
 (Node-Category  ?Mot    NP|WHNP|ADJP|PRT|ADVP|NX) 
 (Node-Category  ?NP     NN|DT|JJ|JJS|JJR|NNS|VBN|ADJP|NNP|PDT|RBS|RB|EX|CD|WDT|VBG|QP|FW|NX|PRN) ;Added NX by Roja for latest stanford version-2011-12-22. Ex : He could hear a faint sound from the bushes.
 =>
	(retract ?f1 ?f2)
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre $?daut $?pos))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (07-11-11)
 ;Are a dog and a cat here?  I like dogs as well as cats
 ;CityFed's president and chief executive officer, John Atherton, said the loss stems from several factors.
 (defrule get_and_NP_group
 (declare (salience 1410))
 ?f1<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre ?NP $?pos ?CC $?p1 ?NP1 $?p2)
 (Node-Category  ?Mot    NP|ADJP|PRT|ADVP|NX)
 (Node-Category  ?NP    NP|NX)
 (Node-Category  ?NP1   NP|NX)
 (Node-Category  ?CC    CC|CONJP)
 ?f2<-(Head-Level-Mother-Daughters ? ? ?NP $?daut)
 ?f3<-(Head-Level-Mother-Daughters ? ? ?NP1 $?daut1)
 ?f4<-(Head-Level-Mother-Daughters ? ? ?CC $? ?c)
 =>
        (retract ?f1 ?f2 ?f3 )
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre $?daut $?pos ?CC $?p1 $?daut1 $?p2))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (09-11-11)
 ;Uttar pradesh is a land of cultural and geographical diversity, which is blessed by an innumerable perennial rivers, dense forests, and fertile soil. 
 ;By Road Agra is connected to Mathura (56 kms), Delhi (203 kms), Gwalior (118 kms), Jaipur (237 kms) and several other major cities.
 (defrule get_and_NP_group1
 (declare (salience 1300))
 ?f1<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre ?NP $?pos ?CC $?d)
 (Node-Category  ?Mot    NP|ADJP|PRT|ADVP|NX)
 (Node-Category  ?NP    NP|NX)
 (Node-Category  ?CC    CC|CONJ)
 ?f2<-(Head-Level-Mother-Daughters ?w&~'s ? ?NP $?daut) ;SOUTH AFRICA FREED the ANC's Sisulu and seven other political prisoners. 
 ?f3<-(Head-Level-Mother-Daughters ? ? ?CC $?con ?c)
 =>
        (retract ?f1 ?f2)
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre $?daut $?pos ?CC $?d))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (08-11-11)
 ; He stopped killing of animals and birds throughout his kingdom.  I like dogs as well as cats
 (defrule get_and_NP_group2
 (declare (salience 1200))
 ?f1<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?id ?CC $?id1 )
 (Node-Category  ?Mot    NP|ADJP|PRT|ADVP|NX)
 (Node-Category  ?CC    CC|CONJP)
 ?f2<-(Head-Level-Mother-Daughters and|or|well ? ?CC $?con ?c)
 =>
        (retract ?f1 ?f2 )
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?id $?con ?c $?id1))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (07-11-11)
 ;This is the way to go.  The game of life is played for winning. 
 (defrule get_non_finite_kri_group
 (declare (salience 1100))
 ?f1<-(Head-Level-Mother-Daughters ?h ?l ?VP $?pre ?VP1 $?pos)
 (Node-Category  ?VP  VP)
 ?f2<-(Head-Level-Mother-Daughters ? ? ?VP1 ?d)
 (Node-Category  ?VP1    VB|VBG|VBN)
 =>
        (retract ?f1 ?f2)
        (assert (Head-Level-Mother-Daughters ?h ?l ?VP $?pre ?d $?pos))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (22-11-11)
 ;It is true that you are my friend but I can not go along with you on this issue.
 (defrule get_prt_group
 (declare (salience 1100))
 ?f0<-(Head-Level-Mother-Daughters ?h ?l ?Mot $?d ?RP $?d1)
 (Node-Category  ?Mot  PRT)
 (Node-Category  ?RP  RP)
 ?f1<-(Head-Level-Mother-Daughters ? ?  ?RP ?id)
  =>
        (retract ?f0 ?f1)
        (assert (Head-Level-Mother-Daughters ?h ?l ?Mot $?d ?id $?d1))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (22-11-11)
 ;The people of Orissa are facing grave adversities due to the cyclone.
 ;The book is in between War and Peace and The Lord of the Rings.
 ;We have very different ideas about disciplining children.
 (defrule get_PP_group
 (declare (salience 1100))
 ?f1<-(Head-Level-Mother-Daughters ?h ?l ?PP $?d ?JJ $?d1 ?NP)
 (Node-Category  ?PP  PP|WHPP)
 (Node-Category  ?JJ  JJ|TO|IN)
 (Node-Category  ?NP  NP|S|WHNP)
?f0<-(Head-Level-Mother-Daughters ? ? ?JJ ?prep)
 =>
 	(retract ?f0 ?f1)
	(assert (Head-Level-Mother-Daughters ?h ?l ?PP $?d ?prep $?d1 ?NP))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (05-11-11)
 ;Generating finite kriyA pada
 (defrule kriyA_pada
 (declare (salience 1000))
 (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri)
 ?f<-(to_be_included_in_paxa ?kri)
  =>
        (retract ?f)
        (print_in_ctrl_fact_files  ?kri)
        (assert (pada_info (group_head_id ?kri) (group_cat VP) (group_ids $?ids ?kri)(pada_head ?kri)))
        (bind ?len (length $?ids))
        (loop-for-count (?i 1 ?len)
                (bind ?j (nth$ ?i $?ids))
                (assert (has_been_included_in_paxa ?j))
        )
	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    kriyA_pada  "?kri"   VP   " (implode$  $?ids) " " ?kri ")" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (07-11-11)
 ;This is the way to go. I gave a book to him.
 (defrule to_infinitive_pada
 (declare (salience 900))
 (Head-Level-Mother-Daughters  ?  ?  $? ?TO ?VP)
 (Node-Category ?TO TO)
 (Node-Category ?VP VP)
 (Head-Level-Mother-Daughters  ? ? ?TO ?to)
 (Head-Level-Mother-Daughters ? ? ?VP ?inf $?)
 ?f<-(to_be_included_in_paxa ?to)
 ?f1<-(to_be_included_in_paxa ?inf)
 =>
        (retract ?f ?f1)
         (print_in_ctrl_fact_files  ?inf)
        (assert (pada_info (group_head_id ?inf)(group_cat infinitive)(group_ids ?to ?inf)(pada_head ?inf)))
	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids   to-infinitive_pada  " ?inf"  infinitive  " ?to "  " ?inf ")"  crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (05-11-11)
 ;The painted doors look great.She is beautiful and intelligent.
 (defrule PP_pada
 (declare (salience 800))
 (Head-Level-Mother-Daughters  ?  ? ?PP $?ids ?id)
 (Node-Category ?PP NP|NNP|NNPS|RB|RBS|PRP|NNS|PRP$|WP|CC|JJ|JJS|VP|WRB|CD|WDT|WHNP|ADJP|PRT|ADVP|NX)
 ?f<-(to_be_included_in_paxa ?id)
  =>
	(retract ?f)
	(bind $?gids (create$ ))
	(bind ?len (length $?ids))
	(print_in_ctrl_fact_files  ?id)
        (loop-for-count (?i 1 ?len)
                (bind ?j (nth$ ?i $?ids))
		(if (numberp ?j) then
			(assert (has_been_included_in_paxa ?j))
			(bind $?gids (create$ $?gids ?j))
		)
        )
	(assert (pada_info (group_head_id ?id) (group_cat PP) (group_ids  $?gids ?id)(pada_head ?id)))
	(printout ?*debug* "(Rule_name-group_head_id-pada_type-gids   PP_pada  "?id"   PP  "(implode$ $?gids)" "?id ")" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (07-11-11)
 ;Mary promised the instructor to take that course. But my efforts to win his heart have failed. 
 ;He made a mistake in inviting John. 
 ;He said such results should be "measurable in dollars and cents" in reducing the U.S. trade deficit with Japan. 
 ;The hat is too small for me.(ADJP grp)
 (defrule PP_pada1
 (declare (salience 700))
 (Head-Level-Mother-Daughters  ?  ? ?PP $?ids ?id $?S)
 (Node-Category ?PP NP|VP|ADJP|PRT|ADVP|NX)
 ?f<-(to_be_included_in_paxa ?id)
  =>
        (retract ?f)
        (bind $?gids (create$ ))
        (bind ?len (length $?ids))
        (print_in_ctrl_fact_files  ?id)
        (loop-for-count (?i 1 ?len)
                (bind ?j (nth$ ?i $?ids))
                (if (numberp ?j) then
                        (assert (has_been_included_in_paxa ?j))
                        (bind $?gids (create$ $?gids ?j))
                )
        )
        (assert (pada_info (group_head_id ?id) (group_cat PP) (group_ids  $?gids ?id)(pada_head ?id)))
	(printout ?*debug* "(Rule_name-group_head_id-pada_type-gids   PP_pada1  "?id"  PP  "(implode$ $?gids)" "?id ")" crlf)
 )
 ;---------------------------------------------------------------------------------------------------------------------- 
 ; Added by Shirisha Manju (23-11-11)
 ; Where did they go to? I will give up smoking. Please enclose a curriculum vitae with your letter of application
 (defrule PP_pada2
 (declare (salience 650))
 (Head-Level-Mother-Daughters  ?  ? ?PP ?id)
; (Node-Category ?PP PRT|TO|INTJ|UH|IN|RBR|JJ)
 (Node-Category ?PP PRT|TO|INTJ)
 ?f<-(to_be_included_in_paxa ?id)
  =>
        (retract ?f)
        (print_in_ctrl_fact_files  ?id)
        (assert (pada_info (group_head_id ?id) (group_cat PP) (group_ids ?id)(pada_head ?id)))
        (printout ?*debug* "(Rule_name-group_head_id-pada_type-gids   PP_pada2  "?id"   PP  "?id ")" crlf)
 )
 ;---------------------------------------------------------------------------------------------------------------------- 
 ; Added by Shirisha Manju (22-11-11)
 ; It is true that you are my friend but I can not go along with you on this issue. 
 (defrule multiple_prep
 (declare (salience 650))
 (Head-Level-Mother-Daughters ? ? $?d ?PRT ?PP $?d1)
 (Node-Category ?PRT PRT) 
 (Node-Category ?PP PP)
 (Head-Level-Mother-Daughters ? ? ?PRT ?id)
 (Head-Level-Mother-Daughters ? ? ?PP ?id1 ?NP $?)
 (Node-Category ?NP NP)
 (Head-Level-Mother-Daughters ? ? ?NP ?NP1 $?)
 (Node-Category ?NP1 NP|NNP|VP|PRP)
 (Head-Level-Mother-Daughters ? ? ?NP1 $? ?head $?)
 ?f1<-(pada_info (group_head_id ?head)(preposition 0))
 ?f<-(to_be_included_in_paxa ?id)
 ?f2<-(to_be_included_in_paxa ?id1)
  =>
        (retract ?f ?f2)
	(modify ?f1 (preposition ?id ?id1))
        (printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    multiple_prep    "?head " "?id "  "?id1")" crlf)
  )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (22-11-11)
 ;The people of Orissa are facing grave adversities due to the cyclone.
 (defrule multiple_prep1
 (declare (salience 650))
 (Head-Level-Mother-Daughters ? ? ?PP $?d ?NP)
 (Node-Category ?PP PP)
 (Node-Category ?NP NP)
 (Head-Level-Mother-Daughters ? ? ?NP $? ?head $?)
 ?f1<-(pada_info (group_head_id ?head)(preposition 0))
 (test (neq (length $?d) 1))
  =>
        (bind $?p_ids (create$ ))
        (bind ?len (length $?d))
        (loop-for-count (?i 1 ?len)
                (bind ?j (nth$ ?i $?d))
                (if (numberp ?j) then
                        (assert (has_been_included_in_paxa ?j))
                        (bind $?p_ids (create$ $?p_ids ?j))
                )
        )
        (modify ?f1 (preposition $?p_ids))
        (printout ?*debug* "(Rule_name-group_head_id-pada_type-gids   multiple_prep1 "?head"   "(implode$ $?p_ids)  ")" crlf)
 )
  ;----------------------------------------------------------------------------------------------------------------------
  ;Added by Shirisha Manju (22-11-11)
  ;This is a sample sentence for Anusaraka. The game of life is played for winning. I gave a book to him. 
  (defrule single_prep
  (declare (salience 600))
  (Head-Level-Mother-Daughters ? ? ?PP ?prep ?NP)
  (Node-Category ?PP PP|WHPP)
  (Node-Category ?NP NP|S)
  (Head-Level-Mother-Daughters ? ? ?NP ?NP1 $?)
  (Node-Category ?NP1 NP|NNP|VP|PRP)
  (Head-Level-Mother-Daughters ? ? ?NP1 $? ?id $?)
  ?f1<-(pada_info (group_head_id ?id)(preposition 0))
  ?f<-(to_be_included_in_paxa ?prep)
  =>
        (retract ?f)
        (modify ?f1 (preposition ?prep))
        (printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    single_prep    "?id " "?prep ")" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------------
  ;Added by Shirisha Manju (22-11-11)
  ;Mohan fell from the top of the house.
  (defrule single_prep1
  (declare (salience 600))
  (Head-Level-Mother-Daughters ? ? ?PP ?prep ?NP)
  (Node-Category ?PP PP|WHPP)
  (Node-Category ?NP NP|WHNP)
  (Head-Level-Mother-Daughters ? ? ?NP $? ?id)
  ?f1<-(pada_info (group_head_id ?id)(preposition 0))
  ?f<-(to_be_included_in_paxa ?prep)
  =>
        (retract ?f)
        (modify ?f1 (preposition ?prep))
        (printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    single_prep1    "?id " "?prep ")" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------------
  ; Added by Shirisha Manju (07-11-11) Suggested by Sukhada
  ; Where did they come from? Where are you coming from?
  ; Can you tell us where those strange ideas came from? But where will you get them from?
  ; Added  "SBAR" and "WHADVP" in rule part to handle standard prep ; Modified by Shirisha Manju (15-11-11) 
  (defrule prep_rule
  (declare (salience 400))
  (Head-Level-Mother-Daughters ? ? ?PP ?IN)
  (Node-Category ?PP PP)
  (Node-Category ?IN IN)
  (Head-Level-Mother-Daughters ? ? ?IN ?prep)
  (id-last_word ?prep ?)  
  (Head-Level-Mother-Daughters ? ? ?S $? ?WH $?)
  (Node-Category ?S SBARQ|SBAR)
  (Node-Category ?WH WHADVP)
  (Head-Level-Mother-Daughters ? ? ?WH $? ?W $?)
  (Node-Category ?W WRB)
  (Head-Level-Mother-Daughters ? ? ?W ?id)
  ?f1<-(pada_info (group_head_id ?id)(preposition 0))
  ?f<-(to_be_included_in_paxa ?prep)
  =>
        (retract ?f)
        (modify ?f1 (preposition ?prep))
	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    prep_rule    "?id " "?prep ")" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------------
  ;Added by Shirisha Manju (07-11-11)
  ;Are a dog and a cat here?  I like dogs as well as cats
  (defrule pada_for_and
  (declare (salience 300))
  ?f<-(id-word ?id and|or|well)
  ?f1<-(pada_info (group_head_id ?h) (group_cat PP) (group_ids $?pre ?id $?post ) (pada_head ?h))
  =>
	(retract ?f ?f1)
	(print_in_ctrl_fact_files  ?id)
	(modify ?f1 (group_head_id ?id)(pada_head ?id))
  )
  ;----------------------------------------------------------------------------------------------------------------------
  ;The consortium was put together by Hoare Govett, the London-based investment banking company that is a subsidiary of Security Pacific Corp.
  (defrule pada_for_comma
  (declare (salience 300))
  (prep_id-relation-anu_ids   -   saMjFA-saMjFA_samAnAXikaraNa  ?saMjFA ?samA)
  ?f0<-(pada_info (group_head_id ?saMjFA) (group_cat PP) (group_ids $?id ) (preposition ?prep))
  ?f1<-(pada_info (group_head_id ?samA) (group_cat PP) (group_ids $?id1)) 
  =>
	(retract ?f0 ?f1)
        (print_in_ctrl_fact_files  ?samA)
        (modify ?f1 (group_ids $?id $?id1)(preposition ?prep))
	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    pada_for_comma    "?samA"  PP	"(implode$ $?id)" "(implode$ $?id1)"  "?prep ")" crlf)
  )	
  ;----------------------------------------------------------------------------------------------------------------------
  ;Added by Shirisha Manju (09-11-11)
  ;The girl you met yesterday is here. The dog I chased was black.
  (defrule assert_10000_pada
  (declare (salience 800))
  (Head-Level-Mother-Daughters ? ? ?sbar ?S)
  (Node-Category ?sbar SBAR)
  (Node-Category ?S S)
  =>
        (print_in_ctrl_fact_files   10000)
        (assert (pada_info (group_head_id 10000)(group_cat PP)(group_ids 10000)(pada_head 10000)))
	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    assert_10000_pada    10000    10000)" crlf)
  )
  ;---------------------------------------------------------------------------------------------------------------------
  (defrule end_pada_file
  (declare (salience -10))
  =>
	(close ?*debug* )
  )
  ;---------------------------------------------------------------------------------------------------------------------
