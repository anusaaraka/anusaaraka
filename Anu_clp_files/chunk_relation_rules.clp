
 (defrule subject_rule_NCL
 (No complete linkages found)
 (chunk-ids VP $?VP_ids)
 (chunk-ids NP $?NP_ids ?subj_head)
 (test (eq ?subj_head (- (nth$ 1 $?VP_ids) 1)))
 =>
	(printout chnk_rel_fp  "(using-chunk-ids kriyA-subject  " (nth$ (length $?VP_ids) $?VP_ids) " "?subj_head ")" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule object_rule_NCL
 (No complete linkages found)
 (chunk-ids VP $?VP_ids)
 (chunk-ids NP $?NP_ids)
 (test (eq (nth$ 1 $?NP_ids) (+ (nth$ (length $?VP_ids) $?VP_ids) 1)))
 =>
	 (printout chnk_rel_fp  "(using-chunk-ids kriyA-object   " (nth$ (length $?VP_ids) $?VP_ids) " "(nth$ (length $?NP_ids) $?NP_ids) ")" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule viSeRya-viSeRaNa_rule_NCL
 (No complete linkages found)
 (chunk-ids NP $?NP_ids)
 (test (> (length $?NP_ids) 1))
  =>
 	(loop-for-count (?i 1 (- (length $?NP_ids) 1))
              (bind ?id (nth$ ?i $?NP_ids))
	      (printout chnk_rel_fp  "(using-chunk-ids viSeRya-viSeRaNa  "(nth$ (length $?NP_ids) $?NP_ids) " " ?id" )" crlf)
  	)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule subject-subject_samAnAXikaraNa_rule_NCL
 (No complete linkages found)
 (chunk-ids VP $?VP_ids)
 (chunk-ids NP $?NP_ids ?subj_head)
 (chunk-ids ADJP ?ADJP&:(+ (nth$ (length $?VP_ids) $?VP_ids) 1))
 (test (eq ?subj_head (- (nth$ 1 $?VP_ids) 1)))
 (test (eq ?ADJP (+ (nth$ (length $?VP_ids) $?VP_ids) 1)))
 =>
	 (printout chnk_rel_fp  "(using-chunk-ids subject-subject_samAnAXikaraNa  " ?subj_head " "?ADJP ")" crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------

