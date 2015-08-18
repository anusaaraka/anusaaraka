;This file is written by Shirisha Manju (9-05-12)
; Generates pada using praxiniXi

 (deffunction never-called ()
 (assert (verb_type-verb-causative_verb-tam))
 (assert (verb_type-verb-kriyA_mUla-tam))
 (assert (root-verbchunk-tam-chunkids))
 )

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (defglobal ?*pada_file* = pada_fp)
 (defglobal ?*agmt_cntrl_file* = agmt_cntrl_fp)
 (defglobal ?*pada_cntrl_file* = pada_cntrl_fp)
 (defglobal ?*hmng_fp1* = hmng_fp1)
 (defglobal ?*open-word1* = open-word1)
 (defglobal ?*pada_debug_file* = pada_debug_fp)
 ;====================================== Generate multiple prep fact  =====================================================
 (defrule get_eng_word_list
 (declare (salience 5000))
 (id-word ?id ?word)
 ?f1<-(index ?id)
 ?f<-(English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (assert (English-list $?Eng_list ?word))
 (bind ?id (+ ?id 1))
 (assert (index ?id))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule chk_for_prep
 (declare (salience 4900))
 ?f<-(English-list $?Eng_list)
 (index ?id)
 =>
        (bind ?len (length $?Eng_list))
        (loop-for-count (?i 1 ?len)
                (bind ?flag 1)
                (loop-for-count (?j ?i ?len)
                        (bind ?k (nth$ ?j $?Eng_list))
                        (if (numberp ?k) then (bind ?k (implode$ (create$ ?k))))
                        (if (eq ?flag 1) then
                                (bind ?str ?k)
                                (bind $?grp_ids (create$ ?j))
                                (bind ?flag 0)
                        else
                                (bind ?str (str-cat ?str "_" ?k))
                                (bind $?grp_ids (create$ $?grp_ids ?j)))
                                (bind ?lkup (gdbm_lookup "preposition.gdbm"  ?str))
                                (if (neq ?lkup "FALSE") then
	 				(if (> (length $?grp_ids) 1) then
                                        	(assert (prep_ids $?grp_ids))
					)
                                )
                )
        )
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule chk_for_largest_match
 (declare (salience 4850))
 ?f<-(prep_ids  $?grp_ids )
 ?f1<-(prep_ids $?grp_ids1 )
 (test (neq (length $?grp_ids) (length $?grp_ids)))
 (test (or (member$ $?grp_ids $?grp_ids1)(member$ $?grp_ids1 $?grp_ids)))
 =>
        (if (> (length $?grp_ids) (length $?grp_ids1)) then
                (retract ?f1)
        else
                (retract ?f)
        )
 )
 ;==================================== Generate pada using prawiniXi info ================================================
 (defrule get_conj_group
 (declare  (salience 4850))
 (head_id-prawiniXi_id-grp_ids ?np_head ?np_id $?d ?cc $?d1)
 (prawiniXi_id-node-category ?cc ?CC CC)
 (head_id-prawiniXi_id-grp_ids ?wid ?cc ?)
 (id-word ?wid and|or)
 (not (modified_head ?np_id $?))
 =>
	(printout ?*pada_debug_file* "(rule_name-mode_of_pada - get_conj_group  Creation"crlf )
        (assert (pada_info (group_head_id ?np_id)(group_cat PP) (group_ids $?d ?cc $?d1)))
        (printout ?*pada_debug_file* "	(pada_info (group_head_id "?np_id")(group_cat PP) (group_ids "(implode$ $?d)" "?cc" "(implode$ $?d1)")))" crlf)
       	(assert (conj_head-conj_id-components ?np_id ?cc $?d $?d1))
	(assert (generated_conj_pada ?np_id))
	(bind ?lh (nth$ 1 $?d))
	(bind ?rh (nth$ (length $?d1) $?d1))
	(assert (conj-lt_head-rt_head ?CC ?lh ?rh))
	(assert (conj_last_id ?rh))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule get_pada_group
 (declare  (salience 4800))
 (head_id-prawiniXi_id-grp_ids ?np_head ?np_id $?grp_ids ?last_node)
 (prawiniXi_id-node-category ?np_id ?NP ?node)
 (to_be_included_in_paxa ?np_head)
 (test (neq (str-index "." (implode$ (create$ ?last_node))) FALSE))
 (test (neq (str-index "." (implode$ (create$ ?np_id))) FALSE))
 (not (modified_head ?np_id $?))
 (not (generated_conj_pada ?np_id))
 =>
        (printout ?*pada_debug_file* "(rule_name-mode_of_pada - get_pada_group Creation"crlf )
	(assert (pada_info (group_head_id ?np_id)(group_cat PP) (group_ids $?grp_ids ?last_node)(pada_head ?last_node)))
	(printout ?*pada_debug_file* "		(pada_info (group_head_id "?np_id")(group_cat PP) (group_ids "(implode$ $?grp_ids)" "?last_node") (pada_head "?last_node"))" crlf)
        (bind ?np_id (implode$ (create$ ?np_id)))
        (bind ?str_index (str-index "." ?np_id))
        (bind ?val (string-to-field (sub-string (+ ?str_index 1) (length ?np_id) ?np_id)))
        (if (eq ?val 1) then
                (bind ?np_id (string-to-field ?np_id ))
                (assert (id-grp_ids ?np_id $?grp_ids ?last_node ))
        )
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; The people of Orissa are facing grave adversities due to the cyclone.
 ;They served a wonderful meal to more than fifty delegates.
 ;Along with ordering the MSRTC to pay the compensation the Tribunal said that the insurance company should not pay anything as the car belonged to Jichkar himself. 
 (defrule multiple_prep_rule
 (declare (salience 4700))
 (prep_ids $?ids ?prep)
 (not (prep_id_decided ?prep))
 (head_id-prawiniXi_id-grp_ids ? ?prep_id ?prep)
 ?f0<-(head_id-prawiniXi_id-grp_ids ?hid ?pp $? ?prep_id ?np_id)
 (prawiniXi_id-node-category ?pp ?PP PP|WHPP|QP)
 (prawiniXi_id-node-category ?np_id ?NP NP|WHNP|S)
 (head_id-prawiniXi_id-grp_ids ?np_head ?np_id $?grp_ids ?last_node)
?f1<-(pada_info (group_head_id ?np_id)(preposition 0))
 (root-verbchunk-tam-chunkids ? ? ? $? ?vid) ;I am depending on you to keep your promise.
 (test (eq (member$ ?vid $?ids) FALSE))
 =>
        (printout ?*pada_debug_file* "(rule_name-mode_of_pada - multiple_prep_rule Modification"crlf )
        (printout ?*pada_debug_file* "		Before :: (pada_info (group_head_id "?np_id")(preposition 0))" crlf)
        (modify ?f1  (preposition  $?ids ?prep))
        (printout ?*pada_debug_file* "		After  :: (pada_info (group_head_id "?np_id")(preposition "(implode$ $?ids)" "?prep"))" crlf)
	(assert (prep_id_decided ?prep))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;She declared that out of love for the poor she had gotten her family to go against convention.
 (defrule multiple_prep_rule1
 (declare (salience 4600))
 (prep_ids $?ids ?prep)
 (not (prep_id_decided ?prep))
 (head_id-prawiniXi_id-grp_ids ? ?prep_id ?prep)
 (head_id-prawiniXi_id-grp_ids ? ?PP $?  ?prep_id ?NP)
 (prawiniXi_id-node-category ?PP ?pp PP)
 (prawiniXi_id-node-category ?NP ?np NP)
 (head_id-prawiniXi_id-grp_ids ? ?NP ?NP1 $?)
 (prawiniXi_id-node-category ?NP1 ?np1 NP)
 (head_id-prawiniXi_id-grp_ids ?np_head ?NP1 $?grp_ids ?last_node)
 ?f1<-(pada_info (group_head_id ?NP1)(preposition 0))
 (not (conj_head-conj_id-components ?NP $?))
  =>
        (printout ?*pada_debug_file* "(rule_name-mode_of_pada - multiple_prep_rule1 Modification"crlf )
        (printout ?*pada_debug_file* "		Before :: (pada_info (group_head_id "?NP1")(preposition 0))" crlf)
        (modify ?f1  (preposition  $?ids ?prep))
        (printout ?*pada_debug_file* "		After  :: (pada_info (group_head_id "?NP1")(preposition "(implode$ $?ids)" "?prep"))" crlf)
	(loop-for-count (?i 1 (length $?ids)) do
                (bind ?j (nth$ ?i $?ids))
                (assert (has_been_included_in_paxa ?j))
        )
	(assert (prep_id_decided ?prep))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;But, today's rapidly changing business environment has forced the accountants to reassess their roles and functions both within the organization and the society.
 (defrule get_single_prep
 (declare  (salience 4600))
 (or (head_id-prawiniXi_id-grp_ids ?hid ?pp ?prep_id ?np_id)(head_id-prawiniXi_id-grp_ids ?hid ?pp ? ?prep_id ?np_id))
 (prawiniXi_id-node-category ?pp ?PP PP|WHPP)
 (prawiniXi_id-node-category ?np_id ?NP NP|S|WHNP|ADJP) ;The game of life is played for winning. In short, the greater the rate of change of momentum, the greater is the force. 
 (head_id-prawiniXi_id-grp_ids ? ?prep_id ?prep)
 (id-word ?prep ?w&~per);The limiting speed is about 11.2 kilometres per second.
 (not (prep_ids $?ids ?prep $?))
 (head_id-prawiniXi_id-grp_ids ?np_head ?np_id $?grp_ids ?last_node)
 ?f0<-(pada_info (group_head_id ?np_id)(preposition 0))
 ?f2<-(id-grp_ids ?pp $?)
 =>
	(retract ?f0 ?f2)
        (printout ?*pada_debug_file* "(rule_name-mode_of_pada - get_single_prep Modification"crlf )
        (printout ?*pada_debug_file* "		Before :: (pada_info (group_head_id "?np_id")(preposition 0))" crlf)
	(bind ?str_index (str-index "." (implode$ (create$ ?last_node))))
	(bind ?pre_str (sub-string 1 (- ?str_index 1) (implode$ (create$ ?last_node))))
	(bind ?post_str (string-to-field (sub-string (+ ?str_index 1) (length (implode$ (create$ ?last_node))) (implode$ (create$ ?last_node)))))
        (bind ?post_str (+ ?post_str 1))
 	(bind ?new_head (string-to-field (str-cat  ?pre_str "." ?post_str)))
	(assert (pada_info (group_head_id ?np_id)(group_cat PP) (group_ids $?grp_ids ?last_node) (preposition ?prep)(pada_head ?new_head)))
        (printout ?*pada_debug_file* "		After  :: (pada_info (group_head_id "?np_id") (group_cat PP) (group_ids "(implode$ $?grp_ids)" "?last_node") (preposition "?prep")(pada_head "?new_head")))" crlf)
 ) 
 ;-----------------------------------------------------------------------------------------------------------------------
 ; Where did the car come from? But where will you get them from. 
 (defrule stranded_prep_rule
 (declare (salience 4500))
 (head_id-prawiniXi_id-grp_ids ? ?pp ?prep_id)
 (prawiniXi_id-node-category ?pp ?PP PP)
 (head_id-prawiniXi_id-grp_ids ?prep ?prep_id ?)
 (id-last_word ?prep ?)
 (head_id-prawiniXi_id-grp_ids ? ?vp $? ?pp $?)
 (prawiniXi_id-node-category ?vp ?VP VP)
 (head_id-prawiniXi_id-grp_ids ? ?sq $? ?vp $?)
 (prawiniXi_id-node-category ?sq ?SQ SQ|S)
 (head_id-prawiniXi_id-grp_ids ? ? $? ?wh ?sq)
 (prawiniXi_id-node-category ?wh ?WHADVP WHADVP|WHNP)
 (head_id-prawiniXi_id-grp_ids ? ?wh ?wh_id)
 ?f1<-(pada_info (group_head_id ?wh)(preposition 0))
 ?f0<-(pada_info (group_head_id ?pp)(group_ids ?prep_id))
 ?f<-(to_be_included_in_paxa ?prep)
 ?f2<-(id-grp_ids ?pp $?)
  =>
        (retract ?f ?f0 ?f2)
	(printout ?*pada_debug_file* "(rule_name-mode_of_pada - standard_prep_rule Modification"crlf )
        (printout ?*pada_debug_file* "		Before :: (pada_info (group_head_id "?wh")(preposition 0))" crlf)
        (modify ?f1 (preposition ?prep))
        (printout ?*pada_debug_file* "		After  :: (pada_info (group_head_id "?wh")(preposition "?prep"))" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule share_conj_prep
 (declare (salience 4300))
 (pada_info (group_head_id ?con_h)(preposition $?prep))
 ?f<-(conj_head-conj_id-components ?con_h ?cid $?d ?id)
 ?f0<-(pada_info (group_head_id ?id)(preposition 0))
 (test (neq (str-index "." (implode$ (create$ ?id))) FALSE))
 (not (shared_conj_for_pada_id ?id))
 =>
	(printout ?*pada_debug_file* "(rule_name-mode_of_pada - share_conj_prep Modification"crlf )
        (printout ?*pada_debug_file* "          Before :: (pada_info (group_head_id "?id")(preposition 0))" crlf)
	(modify ?f0 (preposition $?prep))
	(assert (shared_conj_for_pada_id ?id))
        (printout ?*pada_debug_file* "		After  :: (pada_info (group_head_id "?id")(preposition "(implode$ $?prep)"))" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; She is ugly and fat.
 (defrule get_zero_level_conj_pada
 (declare (salience 4250))
 (pada_info (group_head_id ?con_h)(preposition $?prep))
 ?f<-(conj_head-conj_id-components ?con_h ?cid $?d ?id $?d1 ?last_id)
 (head_id-prawiniXi_id-grp_ids ?hid ?id ?no)
 (not (shared_conj_for_pada_id ?id))
 (test (neq (str-index "." (implode$ (create$ ?con_h)))  FALSE))
 (test (eq (string-to-field (sub-string (+ (str-index "." (implode$ (create$ ?con_h))) 1) (length (implode$ (create$ ?con_h))) (implode$ (create$ ?con_h)))) 1))
 =>
	(assert (shared_conj_for_pada_id ?id))
	(bind ?head (string-to-field (sym-cat ?hid ".1")))
        (printout ?*pada_debug_file* "(rule_name-mode_of_pada - get_zero_level_conj_pada_Creation"crlf )
	(assert (pada_info (group_head_id ?head) (group_cat PP)(group_ids ?id)))
        (printout ?*pada_debug_file* "		(pada_info (group_head_id "?head")(group_cat PP) (group_ids "?id") ))" crlf)
	(assert (id-grp_ids ?head ?id))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;Physicists try to discover the rules that are operating in nature, on the basis of observations, experimentation and analysis
 ;Equation (6SYMBOL-DOT1) can be extended to curved surfaces and nonuniform fields.
 ;Rainwear is a must if you are visiting between june and september.
 (defrule get_zero_level_prep
 (declare (salience 4240))
 (conj_last_id ?id)
 (pada_info (group_head_id ?con_h)(preposition $?prep) (group_ids $? ?id))
 ?f<-(conj_head-conj_id-components ?con_h $?d)
 (head_id-prawiniXi_id-grp_ids ?hid ?id ?no)
 (not (shared_conj_for_pada_id ?id))
 =>
        (assert (shared_conj_for_pada_id ?id))
        (bind ?head (string-to-field (sym-cat ?hid ".1")))
        (printout ?*pada_debug_file* "(rule_name-mode_of_pada - get_zero_level_prep Creation"crlf )
        (assert (pada_info (group_head_id ?head) (group_cat PP)(group_ids ?id)(preposition $?prep)))
        (printout ?*pada_debug_file* "         (pada_info (group_head_id "?head")(group_cat PP) (group_ids "?id") (preposition "(implode$ $?prep)")))" crlf)
        (assert (id-grp_ids ?head ?id))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Mohan fell from the top of the house.
 ;It turns out that this symmetry of nature with respect to translation (i.e. displacement) in time is equivalent to the law of conservation of energy.
 (defrule get_prep
 (declare (salience 4000))
 (pada_info (group_head_id ?hid)(group_ids ?np $?) (preposition $?prep))
 (test (eq (member$ 0 $?prep) FALSE))
 (prawiniXi_id-node-category ?np ?NP NP|VP)
 ?f0<-(pada_info (group_head_id ?np)(preposition  0))
 (not (conj-lt_head-rt_head ? ?np ?));Heat transfer takes place between the system and the surrounding medium.
 =>
        (retract ?f0)
	(printout ?*pada_debug_file* "(rule_name-mode_of_pada - get_prep Modification"crlf )
        (printout ?*pada_debug_file* "		Before :: (pada_info (group_head_id "?np")(preposition 0))" crlf)
        (modify ?f0 (preposition $?prep))
        (printout ?*pada_debug_file* "		After  :: (pada_info (group_head_id "?np")(preposition "(implode$ $?prep)"))" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule save_praxiniWi_info
 (declare (salience 4000))
 (initial-fact)
 =>
	(save-facts "pada_prawiniXi_info.dat" local  pada_info)
 )
 ;========================================== Generate pada info ==========================================================
 (deffunction print_pada_info (?rule_name ?hid ?cat ?prep $?grp_ids)
	(assert (pada_info (group_head_id ?hid)(group_cat ?cat)(group_ids $?grp_ids)(preposition ?prep)))
        (printout ?*pada_file* "(pada_info (group_head_id  "?hid")(group_cat "?cat")(group_ids "(implode$ $?grp_ids)")(preposition "?prep")(vibakthi 0) (gender 0) (number 0) (case 0) (person 0) (H_tam 0) (tam_source 0) (preceeding_part_of_verb 0) )" crlf)
        (printout ?*pada_debug_file* "(rule_name-mode_of_pada - "?rule_name" Creation"crlf )
        (printout ?*pada_debug_file* "		(pada_info (group_head_id "?hid")(group_cat "?cat") (group_ids "(implode$ $?grp_ids)") (preposition "?prep")))" crlf)

 )
 ;----------------------------------------------------------------------------------------------------------------------
 (deffunction print_in_ctrl_fact_files (?paxa_head)
        (printout       ?*agmt_cntrl_file*      "(agmt_control_fact     "       ?paxa_head      ")"     crlf)
        (printout       ?*pada_cntrl_file*      "(pada_control_fact     "       ?paxa_head      ")"     crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule retract_cntrl_fact
 (declare (salience 3000))
 (has_been_included_in_paxa ?id)
 ?f<-(to_be_included_in_paxa ?id)
 (head_id-prawiniXi_id-grp_ids ? ?p_id ?id)
 ?f0<-(id-grp_ids ? $? ?p_id $?)
 =>
        (retract ?f ?f0)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;The dog I chased was black. 
 (defrule assert_10000_pada
 (declare (salience 2500))
 (head_id-prawiniXi_id-grp_ids ? ?sbar ?s)
 (prawiniXi_id-node-category ?sbar ?SBAR SBAR)
 (prawiniXi_id-node-category ?s ?S S)
 =>
        (print_in_ctrl_fact_files   10000)
	(print_pada_info assert_10000_pada 10000 PP 0 10000)
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;If the object is released from rest, the initial potential energy is completely converted into the kinetic energy of the object just before it hits the ground.
 ;Suggested by Sukhada (22nd Jan 13)
 (defrule assert_10001_pada
 (declare (salience 2400))
 (prep_ids $?ids ?prep)
 (not (prep_id_decided ?prep))
 (head_id-prawiniXi_id-grp_ids ? ?prep_id ?prep)
 ?f0<-(head_id-prawiniXi_id-grp_ids ?hid ?sbar $? ?prep_id ?s_id)
 (prawiniXi_id-node-category ?sbar ?SBAR SBAR)
 (prawiniXi_id-node-category ?s_id ?S S)
 ?f1<-(id-grp_ids ?sbar $?)
 =>
	(retract ?f1)
	(print_in_ctrl_fact_files   10001)
	(bind $?p (create$ $?ids ?prep))
	(assert (pada_info (group_head_id 10001)(group_cat PP)(group_ids 10001)(preposition $?p)))
        (printout ?*pada_file* "(pada_info (group_head_id  10001)(group_cat PP)(group_ids 10001)(preposition "(implode$ $?p)")(vibakthi 0) (gender 0) (number 0) (case 0) (person 0) (H_tam 0) (tam_source 0) (preceeding_part_of_verb 0) )" crlf)
	(printout ?*hmng_fp1* "(id-HM-source  10001   yaha      Sentence_conj_using_pada)"crlf)
	(printout ?*open-word1* "(id-word  10001   this )" crlf)
	(printout ?*pada_debug_file* "(rule_name-mode_of_pada - assert_10001_pada   Creation"crlf )
        (printout ?*pada_debug_file* "		(pada_info (group_head_id 10001)(group_cat PP)(group_ids 10001)(preposition (implode$ $?p))(vibakthi 0) (gender 0) (number 0) (case 0) (person 0)))" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule verb_pada
 (declare  (salience 2000))
 (root-verbchunk-tam-chunkids ? ? ? $?ids ?h)
 ?f<-(to_be_included_in_paxa ?h)
 (head_id-prawiniXi_id-grp_ids ? ?p_h ?h)
 ?f0<-(id-grp_ids ?h_id $?a ?p_h $?a1) ; He is not related to me => here "not" is not part of verb
 ?f1<-(pada_info (group_head_id ?h_id)(group_ids $?d ?p_h $?d1))
 =>
        (retract ?f ?f0 ?f1)
	(assert (id-grp_ids ?h_id $?a $?a1))
	(modify ?f1 (group_ids $?d  $?d1))
	(bind $?grp_ids (create$ $?ids ?h))
	(print_pada_info verb_pada ?h VP 0 $?grp_ids)
 	(print_in_ctrl_fact_files ?h)
        (loop-for-count (?i 1 (length $?ids)) do
                (bind ?j (nth$ ?i $?ids))
                (assert (has_been_included_in_paxa ?j))
        )
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule get_RaRTI_viSeRaNa_pada
 (declare  (salience 1500))
 (head_id-prawiniXi_id-grp_ids ?np_head ?np_id $?d ?prp $?d1)
 (prawiniXi_id-node-category ?np_id ?NP NP)
 (prawiniXi_id-node-category ?prp ?PRP PRP$)
 (head_id-prawiniXi_id-grp_ids ?h ?prp ?)
 ?f1<-(id-grp_ids ?head_id $?a ?prp $?a1)
 =>
        (retract ?f1)
        (assert (id-grp_ids ?head_id $?a $?a1))
	(print_pada_info get_RaRTI_viSeRaNa_pada ?h PP 0 ?h)
        (print_in_ctrl_fact_files  ?h)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Suggested by Sukhada (29-05-12)
 ; Share to id with conj VP to generate infinitive pada
 ;"One kind of response from the earliest times has been to observe the physical environment carefully, look for any meaningful patterns and relations in natural phenomena, and build and use new tools to interact with nature ".
 (defrule get_multiple_infinitive
 (declare (salience 1200))
 (head_id-prawiniXi_id-grp_ids ? ? ?to ?conj_h)
 (prawiniXi_id-node-category ?to ?TO TO)
 (head_id-prawiniXi_id-grp_ids ?to_id ?to ?)
 (conj_head-conj_id-components ?conj_h $?)
 (pada_info (group_head_id ?conj_h) (group_ids $?d ?id $?d1))
 ?f0<-(id-grp_ids ?id ?v_h $?)
 (prawiniXi_id-node-category ?v_h ? VB)
 (head_id-prawiniXi_id-grp_ids ?v_id ?v_h ?)
 =>
	(retract ?f0)
	(bind $?grp_ids (create$ ?to_id ?v_id))
        (print_pada_info get_multiple_infinitive ?v_id infinitive 0 $?grp_ids)
        (print_in_ctrl_fact_files  ?v_id)
	(assert (inf_id-to_id ?id ?to_id))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;"One kind of response from the earliest times has been to observe the physical environment carefully, look for any meaningful patterns and relations in natural phenomena, and build and use new tools to interact with nature ".
 (defrule get_multiple_infinitive1
 (declare (salience 1100))
 ?f0<-(inf_id-to_id ?inf_id ?to_id)
 (conj_head-conj_id-components ?inf_id $?)
 (pada_info (group_head_id ?inf_id) (group_ids $?d ?id $?d1))
 (prawiniXi_id-node-category ?id ?VB VB)
 (head_id-prawiniXi_id-grp_ids ?v_id ?id ?)
 (not (pada_info (group_head_id ?v_id)(group_cat infinitive)))
 ?f<-(id-grp_ids ?h $?a ?id $?a1)
 =>
	(retract ?f)
	(bind $?grp_ids (create$ ?to_id ?v_id))
        (print_pada_info get_multiple_infinitive1 ?v_id infinitive 0 $?grp_ids)
        (print_in_ctrl_fact_files  ?v_id)
	(assert (id-grp_ids ?h $?a $?a1))
 )	
 ;----------------------------------------------------------------------------------------------------------------------
 ;He wasted his golden opportunity [to play] in the national team.
 ;The company said it made the purchase in order [to] locally [produce] hydraulically operated shovels. 
 (defrule get_infinitive_pada
 (declare  (salience 1000))
 ?f0<-(id-grp_ids ? ?to ?vp)
 (prawiniXi_id-node-category ?to ?TO TO)
 (head_id-prawiniXi_id-grp_ids ?to_id ?to ?)
 (prawiniXi_id-node-category ?vp ?VP Inf_VP)
 ?f1<-(id-grp_ids ?vp $?p ?verb $?po)
 ;?f1<-(id-grp_ids ?vp ?verb $?)
 (head_id-prawiniXi_id-grp_ids ?verb_id ?verb ?)
 (prawiniXi_id-node-category ?verb ? VB)
 =>
        (retract ?f0 ?f1)
	(bind $?grp_ids (create$ ?to_id ?verb_id))
	(print_pada_info get_infinitive_pada ?verb_id infinitive 0 $?grp_ids) 
        (print_in_ctrl_fact_files  ?verb_id)
	(assert (id-grp_ids ?vp $?p $?po))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;A big, black, ugly dog chased me.  I do not have very much money. Look how blue it is.
 ; Expand adjp in NP
 (defrule get_adjp_group
 (declare (salience 950))
 ?f0<-(head_id-prawiniXi_id-grp_ids ?h ?p_id $?d ?adjp $?d1)
 (prawiniXi_id-node-category ?p_id ?NP NP|WHNP|WHADVP)
 (prawiniXi_id-node-category ?adjp ?ADJP ADJP|WHADJP)
 ?f1<-(head_id-prawiniXi_id-grp_ids ? ?adjp ?id $?daut)
 (not (adjp_head ?adjp))
 =>
	(retract ?f0 ?f1 )
	(assert (head_id-prawiniXi_id-grp_ids ?h ?p_id $?d ?id $?daut $?d1))
	(assert (modified_head ?p_id $?d ?id $?daut $?d1))
	(assert (adjp_head ?adjp))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;I do not have very much money.
 (defrule rm_expanded_adjp_ids
 (declare (salience 940))
 ?f0<-(modified_head ?hid $?d ?id $?d1)
 ?f1<-(id-grp_ids $?a ?id $?a1)
 (not (asserted_adjp_fact ?hid))
 =>
	(retract ?f1)
	(assert (id-grp_ids $?a $?a1))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;I do not have very much money.
 ;[A fat ugly boy] had to eat [too many fruits] to lose his weight.
 (defrule get_modified_adjp_fact
 (declare (salience 930))
 (head_id-prawiniXi_id-grp_ids ? ?id $?ids)
 (modified_head ?id $?)
 ?f1<-(id-grp_ids ?id $? ?a $? )
 (not (asserted_adjp_fact ?id))
 =>
        (retract ?f1 )
        (assert (id-grp_ids ?id $?ids))	
	(assert (asserted_adjp_fact ?id))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;How many people did you see? 
 (defrule get_modified_adjp_fact1
 (declare (salience 930))
 (head_id-prawiniXi_id-grp_ids ? ?id $?ids)
 (modified_head ?id $?)
 (not (id-grp_ids ?id $?))
 (not (asserted_adjp_fact ?id))
 =>
        (assert (id-grp_ids ?id $?ids))
        (assert (asserted_adjp_fact ?id))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;I read about the train robbery in today's paper.
 (defrule get_pos_pada
 (declare (salience 920))
 (id-word ?pos ?word)
 (test (neq (str-index "'" ?word) FALSE))
 (head_id-prawiniXi_id-grp_ids ?pos ?pos_id ?)
 (head_id-prawiniXi_id-grp_ids ? ?pos_h $? ?pos_id $?)
 (head_id-prawiniXi_id-grp_ids ? ?p_id $? ?pos_h $?)
 ?f0<-(pada_info (group_head_id ?p_id)(group_ids $?d ?pos_h $?d1))
 ?f1<-(id-grp_ids ?p_id $?a ?pos_h $?a1)
 =>
        (retract ?f0 ?f1)
        (printout ?*pada_debug_file* "(rule_name-mode_of_pada - get_pos_pada Modification"crlf )
        (printout ?*pada_debug_file* "		Before :: (pada_info (group_head_id "?p_id")(group_ids "(implode$ $?d)" "?pos_h" "(implode$ $?d1)"))" crlf)
        (modify ?f0 (group_ids $?d $?d1))
        (printout ?*pada_debug_file* "		After  :: (pada_info (group_head_id "?p_id")(preposition "(implode$ $?d)" "(implode$ $?d1)"))" crlf)
        (assert (id-grp_ids ?p_id $?a $?a1))
	(assert (id-grp_ids ?pos_h ?pos_id))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule get_pada
 (declare (salience 800))
 ?f0<-(index ?)
 =>
        (assert (get_pada))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule rem_pada_with_zero_daut
 (declare (salience 1000))
 (get_pada)
 ?f0<-(id-grp_ids ?hid)
 =>
	(retract ?f0)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; Drop the S node which is not at zero level
 ;Going from this intuitive notion to the proper scientific concept of force is not a trivial matter.
 ;;He is not related to me. (Drop PP as head)
 (defrule rm_sen_or_prep_from_pada
 (declare (salience 950))
 (get_pada)
 ?f0<-(id-grp_ids ?hid $?ids ?s_id) 
 (prawiniXi_id-node-category ?s_id ?S S|FromToPP|PP)
 =>
	(retract ?f0)
	(assert (id-grp_ids ?hid $?ids))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule rm_repeated_head_node
 (declare (salience 950))
 (get_pada)
 ?f0<-(id-grp_ids ?id $?d ?pp_id $?d1)
 (id-grp_ids ?pp_id $?ids)
 =>
	(retract ?f0)
	(assert (id-grp_ids ?id $?d $?d1))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule del_prep_in_pada_fact
 (declare (salience 910))
 (get_pada)
 (pada_info (preposition $?d ?id $?d1))
 (head_id-prawiniXi_id-grp_ids ? ?hid ?id)
 ?f0<-(id-grp_ids $?a ?hid $?a1 )
 (not (id_deleted ?id))
 =>
        (retract ?f0)
        (assert (id-grp_ids $?a $?a1))
	(assert (id_deleted ?id))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule del_verb_fact
 (declare (salience 850))
 (get_pada)
 ?f0<-(id-grp_ids ?id ?id1)
 (prawiniXi_id-node-category ?id ?VP VP)
 (prawiniXi_id-node-category ?id1 ?NP NP|VP)
 =>
        (retract ?f0)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule del_to_inf_id
 (declare (salience 850))
 (get_pada)
 (inf_id-to_id ? ?to_id)
 (head_id-prawiniXi_id-grp_ids ?to_id ?to_h ?)
 ?f0<-(id-grp_ids ?id $?d ?to_h $?d1)
 =>
	(retract ?f0)
	(assert (id-grp_ids ?id $?d $?d1))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; Physicists try to discover the rules that are operating in nature, on the basis of observations, experimentation and analysis.
 (defrule replace_conj_daut1
 (declare (salience 810))
 (get_pada)
 ?f0<-(conj_head-conj_id-components ?h ?conj_id $?d ?id $?d1)
 (shared_conj_for_pada_id ?id)
 ?f1<-(id-grp_ids ?g_h ?id)
 (head_id-prawiniXi_id-grp_ids ? ?id ?id1)
 =>
        (retract ?f0 ?f1)
        (assert (conj_head-conj_id-components ?h ?conj_id $?d ?id1 $?d1))
	(assert (id-grp_ids ?g_h ?id1))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule rm_2nd_level_info_from_zero_level
 (declare (salience 840))
 (get_pada)
 ?f0<-(id-grp_ids $?ids ?id)
 (test (neq (str-index "." (implode$ (create$ ?id))) FALSE))
 (test (neq (string-to-field (sub-string (+ (str-index "." (implode$ (create$ ?id))) 1) (length (implode$ (create$ ?id))) (implode$ (create$ ?id)))) 0))
 =>
	(retract ?f0)
	(assert (id-grp_ids $?ids))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule replace_daut1
 (declare (salience 800))
 (get_pada)
 ?f0<-(id-grp_ids ?hid $?pre ?node $?post)
 (head_id-prawiniXi_id-grp_ids ? ?node ?id)
 =>
        (retract ?f0)
        (assert (id-grp_ids ?hid $?pre ?id $?post ))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
; A fat ugly boy and a fat girl came here.
 (defrule replace_conj_daut
 (declare (salience 760))
 (get_pada)
?f0<-(conj_head-conj_id-components ?h ?conj_id $?d ?id $?d1)
 (id-grp_ids ?id $?dau)
 =>
	(retract ?f0)
	(assert (conj_head-conj_id-components ?h ?conj_id $?d $?dau $?d1))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule modify_pada
 (declare (salience 750))
 (get_pada)
 (id-grp_ids ?h_id $?grp_ids ?last_id)
 ?f0<-(pada_info (group_head_id ?h_id))
 (not (id_decided ?h_id))
 =>
	(retract ?f0)
        (printout ?*pada_debug_file* "(rule_name-mode_of_pada - modify_pada Modification"crlf )
        (printout ?*pada_debug_file* "		Before :: (pada_info (group_head_id "?h_id"))" crlf)
	(modify ?f0  (group_head_id ?last_id)(group_ids $?grp_ids ?last_id))
        (printout ?*pada_debug_file* "		After  :: (pada_info (group_head_id "?last_id")(group_ids "(implode$ $?grp_ids)" "?last_id")))" crlf)
	(assert (id_decided ?h_id))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;He neither plays, nor reads.
 (defrule get_conj_pada
 (declare (salience 700))
 (get_pada)
 (head_id-prawiniXi_id-grp_ids ? ?p_id $? ?cc $?)
 (prawiniXi_id-node-category ?cc ?CC CC)
 (head_id-prawiniXi_id-grp_ids ?h ?cc ?)
 (id-word ?h and|or|but|nor)
 =>
	(print_pada_info get_conj_pada ?h PP 0 ?h)	
	(print_in_ctrl_fact_files  ?h)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;The white marbled moti masjid or the pearl mosque was the private mosque for aurangzeb. 
 (defrule get_or_verb_agmt_fact
 (declare (salience 650))
 (get_pada)
 (conj-lt_head-rt_head ?CC ?lh ?rh)
 (prawiniXi_id-node-category ?c_h ?CC CC)
 (conj_head-conj_id-components ? ?c_h $?daut)
 (head_id-prawiniXi_id-grp_ids ?conj_id ?c_h ?)
 (id-grp_ids ?lh $? ?left_head)
 (id-grp_ids ?rh $? ?right_head)
 (not (agreement_decided ?conj_id))
 =>
        (assert (agreement_decided ?conj_id))
        (printout ?*pada_file* "(conj_head-left_head-right_head  " ?conj_id"   "?left_head"   "?right_head ")" crlf)
	(printout ?*pada_file* "(conj_head-components " ?conj_id "  "(implode$ $?daut) ")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; She is ugly and fat.
 (defrule get_or_verb_agmt_fact_for_zero_lvl
 (declare (salience 640))
 (get_pada)
 (conj-lt_head-rt_head ?CC ?lh ?rh)
 (prawiniXi_id-node-category ?c_h ?CC CC)
 (conj_head-conj_id-components ? ?c_h $?daut)
 (head_id-prawiniXi_id-grp_ids ?conj_id ?c_h ?)
 (head_id-prawiniXi_id-grp_ids ?left_head ?lh ?)
 (head_id-prawiniXi_id-grp_ids ?right_head ?rh ?)
 (id-grp_ids ? $? ?left_head)
 (id-grp_ids ? $? ?right_head)
 (not (agreement_decided ?conj_id))
 =>
        (assert (agreement_decided ?conj_id))
        (printout ?*pada_file* "(conj_head-left_head-right_head  " ?conj_id"   "?left_head"   "?right_head ")" crlf)
	(printout ?*pada_file* "(conj_head-components " ?conj_id "  "(implode$ $?daut) ")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule print_pada
 (declare (salience 100))
 (get_pada)
 ?f0<-(id-grp_ids $? ?hid)
 (pada_info (group_head_id ?hid)(group_cat ?cat)(group_ids $?grp_ids)(preposition $?prep))
 =>
	(retract ?f0)
	(printout ?*pada_file* "(pada_info (group_head_id "?hid")(group_cat "?cat")(group_ids  "(implode$ $?grp_ids)")(preposition  "(implode$ $?prep)")(vibakthi 0) (gender 0) (number 0) (case 0) (person 0) (H_tam 0) (tam_source 0) (preceeding_part_of_verb 0) )" crlf)
 ;       (printout  ?*pada_debug_file* "(pada_info (group_head_id "?hid")(group_cat "?cat")(group_ids  "(implode$ $?grp_ids)")(preposition  "(implode$ $?prep)")(vibakthi 0) (gender 0) (number 0) (case 0) (person 0) (H_tam 0) (tam_source 0) (preceeding_part_of_verb 0) )" crlf)
        (print_in_ctrl_fact_files   ?hid)
 )	
 ;-----------------------------------------------------------------------------------------------------------------------
 ;Suggested by Chaitanya Sir (6-11-14)
 (defrule get_tam_type
 (declare (salience 10))
 (pada_info (group_head_id  ?id)(group_cat VP))
 (root-verbchunk-tam-chunkids ? ? ?tam $?ids ?id)
 (test (eq (integerp (member$ ?tam (create$ am_en are_en being_en is_en was_en were_en is_not_en was_not_en were_not_en are_to_be_en am_being_en are_being_en is_to_be_en was_being_en would_be_en))) TRUE))
 =>
	(assert (id-tam_type ?id passive))
 )
  
 
