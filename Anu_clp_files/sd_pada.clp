;This file is added by Shirisha Manju (9-05-12)
 (deffunction never-called ()
 (assert (verb_type-verb-causative_verb-tam))
 (assert (verb_type-verb-kriyA_mUla-tam))
 (assert (root-verbchunk-tam-chunkids))
 )

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (defglobal ?*pada_file* = pada_fp)
 (defglobal ?*agmt_cntrl_file* = agmt_cntrl_fp)
 (defglobal ?*pada_cntrl_file* = pada_cntrl_fp)
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
                                (bind $?grp_ids ?j)
                                (bind ?flag 0)
                        else
                                (bind ?str (str-cat ?str "_" ?k))
                                (bind $?grp_ids (create$ $?grp_ids ?j)))
                                (bind ?lkup (gdbm_lookup "preposition.gdbm"  ?str))
                                (if (neq ?lkup "FALSE") then
                                        (assert (prep_ids $?grp_ids))
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
 ;==================================== Generate pada prawiniXi info ===================================================
 (defrule get_pada_group
 (declare  (salience 4800))
 (head_id-prawiniXi_id-grp_ids ?np_head ?np_id $?grp_ids ?last_node)
 (prawiniXi_id-node-category ?np_id ?NP ?node)
 (to_be_included_in_paxa ?np_head)
 (test (neq (str-index "." (implode$ (create$ ?last_node))) FALSE))
 (not (modified_head ?np_id))
 =>
        (assert (pada_info (group_head_id ?np_id)(group_cat PP) (group_ids $?grp_ids ?last_node)(pada_head ?last_node)))
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
 (defrule multiple_prep_rule
 (declare (salience 4700))
 (prep_ids $?ids ?prep)
 (not (prep_id_decided ?prep))
 (head_id-prawiniXi_id-grp_ids ? ?prep_id ?prep)
 ?f0<-(head_id-prawiniXi_id-grp_ids ?hid ?pp $? ?prep_id ?np_id)
 (prawiniXi_id-node-category ?pp ?PP PP|WHPP)
 (prawiniXi_id-node-category ?np_id ?NP NP|WHNP)
 (head_id-prawiniXi_id-grp_ids ?np_head ?np_id $?grp_ids ?last_node)
?f1<-(pada_info (group_head_id ?np_id)(pada_head ?last_node)(preposition 0))
 =>
        (modify ?f1  (preposition  $?ids ?prep))
 )
 ;----------------------------------------------------------------------------------------------------------------------
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
  =>
        (modify ?f1  (preposition  $?ids ?prep))
	(loop-for-count (?i 1 (length $?ids)) do
                (bind ?j (nth$ ?i $?ids))
                (assert (has_been_included_in_paxa ?j))
        )
	(assert (prep_id_decided ?prep))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule get_single_prep
 (declare  (salience 4600))
 (head_id-prawiniXi_id-grp_ids ?hid ?pp ?prep_id ?np_id)
 (prawiniXi_id-node-category ?pp ?PP PP|WHPP)
 (prawiniXi_id-node-category ?np_id ?NP NP|S|WHNP) ;The game of life is played for winning. 
 (head_id-prawiniXi_id-grp_ids ? ?prep_id ?prep)
 (head_id-prawiniXi_id-grp_ids ?np_head ?np_id $?grp_ids ?last_node)
 ?f0<-(pada_info (group_head_id ?np_id)(preposition 0))
 ?f2<-(id-grp_ids ?pp $?)
 =>
	(retract ?f0 ?f2)
	(bind ?str_index (str-index "." (implode$ (create$ ?last_node))))
	(bind ?pre_str (sub-string 1 (- ?str_index 1) (implode$ (create$ ?last_node))))
	(bind ?post_str (string-to-field (sub-string (+ ?str_index 1) (length (implode$ (create$ ?last_node))) (implode$ (create$ ?last_node)))))
        (bind ?post_str (+ ?post_str 1))
 	(bind ?new_head (string-to-field (str-cat  ?pre_str "." ?post_str)))
	(assert (pada_info (group_head_id ?np_id)(group_cat PP) (group_ids $?grp_ids ?last_node) (preposition ?prep)(pada_head ?new_head)))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; Where did the car come from? But where will you get them from. 
 (defrule standard_prep_rule
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
 (prawiniXi_id-node-category ?wh ?WHADVP WHADVP)
 (head_id-prawiniXi_id-grp_ids ? ?wh ?wh_id)
 ?f1<-(pada_info (group_head_id ?wh)(preposition 0))
 ?f0<-(pada_info (group_head_id ?pp)(group_ids ?prep_id))
 ?f<-(to_be_included_in_paxa ?prep)
 ?f2<-(id-grp_ids ?pp $?)
  =>
        (retract ?f ?f0 ?f2)
        (modify ?f1 (preposition ?prep))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;I read about the train robbery in today's paper.
 (defrule get_pos_pada
 (declare (salience 4400))
 (id-word ?pos ?word)
 (test (neq (str-index "'" ?word) FALSE))
 (head_id-prawiniXi_id-grp_ids ?pos ?pos_id ?)
 (head_id-prawiniXi_id-grp_ids ? ?pos_h $? ?pos_id $?)
 (head_id-prawiniXi_id-grp_ids ? ?p_id $? ?pos_h $?)
 ?f0<-(pada_info (group_head_id ?p_id)(group_ids $?d ?pos_h $?d1))
 ?f1<-(id-grp_ids ?p_id $?a ?pos_h $?a1)
 =>
        (retract ?f0 ?f1)
        (modify ?f0 (group_ids $?d $?d1))
        (assert (id-grp_ids ?p_id $?a $?a1))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;He stopped killing of animals and birds throughout his kingdom. 
 ;Actress Whoopi Goldberg and singer Michael Jackson attended the ceremony. 
 (defrule get_con_prep_zero_level
 (declare (salience 4300))
 ?f<-(pada_info (group_head_id ?hid)(group_ids $?d ?lt ?cc $?d1 ?rt) (preposition ?prep))
 (prawiniXi_id-node-category ?cc ?CC CC)
 ?f0<-(id-grp_ids ?hid $?d ?lt ?cc $?d1 ?rt)
 (head_id-prawiniXi_id-grp_ids ?lid ?lt ?)
 (head_id-prawiniXi_id-grp_ids ?rid ?rt ?)
 =>
        (retract ?f ?f0)
        (bind ?lh (sym-cat ?lid ".1"))
        (bind ?rh (sym-cat ?rid ".1"))
        (assert (pada_info (group_head_id ?lh) (group_cat PP)(group_ids $?d ?lt)(preposition ?prep)))
        (assert (pada_info (group_head_id ?rh) (group_cat PP)(group_ids $?d1 ?rt)(preposition ?prep)))
        (assert (id-grp_ids ?lh $?d ?lt))
        (assert (id-grp_ids ?rh $?d1 ?rt))
        (assert (conj-level ?CC 0))
        (assert (conj-lt_head-rt_head ?CC ?lh ?rh))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;We can broadly describe physics as a study of the basic laws of nature and their manifestation in different natural phenomena .
 (defrule get_con_prep
 (declare (salience 4200))
 (pada_info (group_head_id ?hid)(group_ids ?lt ?cc ?rt) (preposition ?prep))
 (prawiniXi_id-node-category ?cc ?CC CC)
 (head_id-prawiniXi_id-grp_ids ?h ?cc ?)
 (pada_info (group_head_id ?lt)(group_ids ?np ?) )
 (prawiniXi_id-node-category ?np ?NP NP)
 (pada_info (group_head_id ?rt)(group_ids ?np1 ?) )
 (prawiniXi_id-node-category ?np1 ?NP1 NP)
 ?f0<-(pada_info (group_head_id ?np)(preposition 0))
 ?f1<-(pada_info (group_head_id ?np1)(preposition 0))
 (not (conj_modified ?cc))
 =>
        (retract ?f0 ?f1)
        (modify ?f0 (preposition ?prep))
        (modify ?f1 (preposition ?prep))
 ;       (assert (pada_info (group_head_id ?cc)(group_ids ?h)))
        (assert (conj-lt_head-rt_head ?CC ?np ?np1))
        (assert (conj_modified ?cc))
  ;      (printout ?*pada_file* "(pada_info (group_head_id  "?cc")(group_cat PP)(group_ids  "?h")(vibakthi 0) (gender 0) (number 0) (case 0) (person 0) (H_tam 0) (tam_source 0) (preceeding_part_of_verb 0) )" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;He was an exotic creature with short red hair and brilliant green eyes. 
 (defrule get_con_prep1
 (declare (salience 4100))
 (pada_info (group_head_id ?hid)(group_ids ?lt ?cc ?rt) (preposition ?prep))
 (prawiniXi_id-node-category ?cc ?CC CC)
 (head_id-prawiniXi_id-grp_ids ?h ?cc ?)
 ?f0<-(pada_info (group_head_id ?lt)(preposition 0))
 ?f1<-(pada_info (group_head_id ?rt)(preposition 0))
 (not (conj_modified ?cc))
 =>
        (retract ?f0 ?f1)
        (modify ?f0 (preposition ?prep))
        (modify ?f1 (preposition ?prep))
   ;     (assert (pada_info (group_head_id ?cc)(group_ids ?h)))
        (assert (conj-lt_head-rt_head ?CC ?lt ?rt))
    ;    (printout ?*pada_file* "(pada_info (group_head_id  "?cc")(group_cat PP)(group_ids  "?h")(vibakthi 0) (gender 0) (number 0) (case 0) (person 0) (H_tam 0) (tam_source 0) (preceeding_part_of_verb 0) )" crlf)
        (assert (conj_modified ?cc))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule get_prep
 (declare (salience 4000))
 (pada_info (group_head_id ?hid)(group_ids ?np $?) (preposition ?prep))
 (test (neq ?prep 0))
 (prawiniXi_id-node-category ?np ?NP NP|VP)
 ?f0<-(pada_info (group_head_id ?np)(preposition  0))
 =>
        (retract ?f0)
        (modify ?f0 (preposition ?prep))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule save_praxiniWi_info
 (declare (salience 4000))
 =>
	(save-facts "pada_prawiniXi_info.dat" local  pada_info)
 )
 ;========================================== Generate pada info ==========================================================
 (deffunction print_pada_info (?hid ?cat ?prep $?grp_ids)
	(assert (pada_info (group_head_id ?hid)(group_cat ?cat)(group_ids $?grp_ids)(preposition ?prep)))
        (printout ?*pada_file* "(pada_info (group_head_id  "?hid")(group_cat "?cat")(group_ids "(implode$ $?grp_ids)")(preposition "?prep")(vibakthi 0) (gender 0) (number 0) (case 0) (person 0) (H_tam 0) (tam_source 0) (preceeding_part_of_verb 0) )" crlf)
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
	(print_pada_info 10000 PP 0 10000)
 )
 ;---------------------------------------------------------------------------------------------------------------------
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
	(print_pada_info ?h VP 0 $?grp_ids)
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
	(print_pada_info ?h PP 0 ?h)
        (print_in_ctrl_fact_files  ?h)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;He wasted his golden opportunity to play in the national team.
 (defrule get_infinitive_pada
 (declare  (salience 1000))
 ?f0<-(id-grp_ids ? ?to ?vp)
 (prawiniXi_id-node-category ?to ?TO TO)
 (head_id-prawiniXi_id-grp_ids ?to_id ?to ?)
 (prawiniXi_id-node-category ?vp ?VP VP)
 ?f1<-(id-grp_ids ?vp ?verb $?)
 (head_id-prawiniXi_id-grp_ids ?verb_id ?verb ?)
 =>
        (retract ?f0 ?f1)
	(bind $?grp_ids (create$ ?to_id ?verb_id))
	(print_pada_info ?verb_id infinitive 0 $?grp_ids) 
        (print_in_ctrl_fact_files  ?verb_id)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;A big, black, ugly dog chased me
 ; Expand adjp in NP
 (defrule get_adjp_group
 (declare (salience 950))
 ?f0<-(head_id-prawiniXi_id-grp_ids ?h ?p_id $?d ?adjp $?d1)
 (prawiniXi_id-node-category ?p_id ?NP NP|WHNP)
 (prawiniXi_id-node-category ?adjp ?ADJP ADJP|WHADJP)
 ?f1<-(head_id-prawiniXi_id-grp_ids ? ?adjp ?id $?daut)
 =>
	(retract ?f0 ?f1 )
	(assert (head_id-prawiniXi_id-grp_ids ?h ?p_id $?d ?id $?daut $?d1))
	(assert (modified_head ?p_id))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ; modify adjp grp_ids
 (defrule modify_grp_ids
 (declare (salience 900))
 (modified_head ?p_id)
 (head_id-prawiniXi_id-grp_ids ?h1 ?p_id $?d ?id $?d1)
 ?f0<-(id-grp_ids ?h $? ?id $?)
 (not (id_modified ?h1))
 =>
	(retract ?f0 )
	(assert (id-grp_ids ?h $?d ?id $?d1))
	(assert (id_modified ?h1))
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
 (defrule rm_sen_from_pada
 (declare (salience 950))
 (get_pada)
 ?f0<-(id-grp_ids ?hid $?ids ?s_id) 
 (prawiniXi_id-node-category ?s_id ?S S)
 =>
	(retract ?f0)
	(assert (id-grp_ids ?hid $?ids))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule rm_repeated_head_node
 (declare (salience 950))
 (get_pada)
 ?f0<-(id-grp_ids ?id $?ids ?pp_id)
 (id-grp_ids ?pp_id $?d)
 =>
	(retract ?f0)
	(assert (id-grp_ids ?id $?ids))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;He is not related to me.
 (defrule del_prep_with_pada_head
 (declare (salience 900))
 (get_pada)
 ?f0<-(id-grp_ids ?id $?ids ?pp_id)
 (prawiniXi_id-node-category ?pp_id ?PP PP)
 ?f1<-(pada_info (group_head_id ?pp_id) )
 =>
	(retract ?f0 ?f1)
	(assert (id-grp_ids ?id $?ids ))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule del_verb_fact
 (declare (salience 850))
 (get_pada)
 ?f0<-(id-grp_ids ?id ?id1)
 (prawiniXi_id-node-category ?id ?VP VP)
 (prawiniXi_id-node-category ?id1 ?NP NP)
 =>
        (retract ?f0)
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
 (defrule modify_pada
 (declare (salience 750))
 (get_pada)
 (id-grp_ids ?h_id $?grp_ids ?last_id)
 ?f0<-(pada_info (group_head_id ?h_id))
 (not (id_decided ?h_id))
 =>
	(retract ?f0)
	(modify ?f0  (group_head_id ?last_id)(group_ids $?grp_ids ?last_id))
	(assert (id_decided ?h_id))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule get_conj_pada
 (declare (salience 700))
 (get_pada)
 (head_id-prawiniXi_id-grp_ids ? ?p_id $? ?cc $?)
 (prawiniXi_id-node-category ?cc ?CC CC)
 (head_id-prawiniXi_id-grp_ids ?h ?cc ?)
 (not (id-grp_ids ?p_id $?))
 =>
	(print_pada_info ?h PP 0 ?h)	
	(print_in_ctrl_fact_files  ?h)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;The white marbled moti masjid or the pearl mosque was the private mosque for aurangzeb. 
 ; She is ugly and fat.
 (defrule get_or_verb_agmt_fact
 (declare (salience 650))
 (get_pada)
 (conj-lt_head-rt_head ?CC ?lh ?rh)
 (prawiniXi_id-node-category ?c_h ?CC CC)
 (head_id-prawiniXi_id-grp_ids ?conj_id ?c_h ?)
 (id-grp_ids ?lh $? ?left_head)
 (id-grp_ids ?rh $? ?right_head)
 (not (agreement_decided ?conj_id))
 =>
        (assert (agreement_decided ?conj_id))
        (printout ?*pada_file* "(conj_head-left_head-right_head  " ?conj_id"   "?left_head"   "?right_head ")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;He stopped killing of animals and birds throughout his kingdom
 (defrule get_zero_level_conj_padas
 (declare (salience 600))
 (get_pada)
 ?f0<-(conj-level ?CC 0)
 (conj-lt_head-rt_head ?CC ?lh ?rh)
 (id-grp_ids ?lh ? )
 (id-grp_ids ?rh ? )
 =>
	(retract ?f0)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule get_zero_level_lt_conj_padas
 (declare (salience 550))
 (get_pada)
 (conj-level ?CC 0)
 (conj-lt_head-rt_head ?CC ?lh ?rh)
 ?f1<-(id-grp_ids ?lh $?d ?id $?d1)
 ?f0<-(pada_info (group_cat ?cat) (group_ids $?d ?id $?d1))
 =>
	(if (and (eq (length $?d) 0) (eq (length $?d1) 0))then
                (retract ?f1 ?f0)
		(print_pada_info ?id ?cat 0 ?id)
		(print_in_ctrl_fact_files   ?id)
        else
		(retract ?f1)
                (modify ?f0 (group_ids $?d $?d1))
		(assert (id-grp_ids ?lh $?d $?d1))
		(print_pada_info ?id ?cat 0 ?id)
                (print_in_ctrl_fact_files   ?id)
        )
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule get_zero_level_rt_conj_padas
 (declare (salience 500))
 (get_pada)
 (conj-level ?CC 0)
 (conj-lt_head-rt_head ?CC ?lh ?rh)
 ?f1<-(id-grp_ids ?rh $?d ?id $?d1 ?last_id)
 ?f0<-(pada_info (group_cat ?cat) (group_ids $?d ?id $?d1 ?last_id)(preposition ?prep))
 =>
        (if (and (eq (length $?d) 0) (eq (length $?d1) 0))then
                (retract ?f1 ?f0)
		(print_pada_info ?id ?cat 0 ?id)
		(print_pada_info ?last_id ?cat ?prep ?last_id)
		(print_in_ctrl_fact_files   ?id)
		(print_in_ctrl_fact_files   ?last_id)
        else
		(retract ?f1)
                (modify ?f0 (group_ids $?d $?d1 ?last_id))        
                (assert (id-grp_ids ?rh $?d $?d1 ?last_id))
		(print_pada_info ?id ?cat 0 ?id)
                (print_in_ctrl_fact_files   ?id)
        )
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
;	(print_pada_info ?hid ?cat $?prep $?grp_ids)
        (print_in_ctrl_fact_files   ?hid)
 )	
 ;-----------------------------------------------------------------------------------------------------------------------
