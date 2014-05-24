 (deffunction never-called ()
 (assert (conjunction-components))
 (assert (prep_id-relation-parser_ids))
 )
 ;--------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (17-08-13) Suggested by Sukhada
 ;Standing in the middle of the great epic like a lighthouse, it illuminates the whole of the epic.
 (defrule change_obj_head
 ?f0<-(prep_id-relation-parser_ids ?p kriyA-object  ?kri ?obj)
 ?f<-(prep_id-relation-parser_ids ? viSeRya-of_saMbanXI  ?obj ?new_obj)
 (parserid-word ?obj whole|number|most|sort|some)
  =>
        (retract ?f0 ?f)
	(assert (prep_id-relation-parser_ids  ?p kriyA-object  ?kri ?new_obj))
	(assert (prep_id-relation-parser_ids - viSeRya-viSeRaNa ?new_obj ?obj))
 )
 ;--------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (17-08-13) Suggested by Sukhada
 ;Teaching is considered an apt calling for women.
 (defrule make_subject_karma
 ?f0<-(prep_id-relation-parser_ids ?p kriyA-subject  ?kri ?sub)
 (root-verbchunk-tam-parser_chunkids ? ? is_en|was_en|were_en|are_en  $?ids)
 (test (member$ ?kri $?ids))
 =>
;	(retract ?f0)
	(assert (prep_id-relation-parser_ids ?p kriyA-karma ?kri ?sub))
 )
 ;--------------------------------------------------------------------------------------------
 ;Added by Sukhada 22-05-14.
 ;When will the race end? 
 (defrule q_sentence_type
 (Head-Level-Mother-Daughters ?h ? ?sbarq ?  ?)
 (Node-Category ?sbarq SBARQ|SQ)
 =>
 	 (assert (prep_id-relation-parser_ids	-	praSnAwmaka_vAkya))
 )
 ;--------------------------------------------------------------------------------------------
