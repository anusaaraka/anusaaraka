 (defglobal ?*ol_rel_fp* = ol_rel )
 (defglobal ?*ol_lwg_f* = ol_lwg_fp )
 
 (deffunction never-called ()
 (assert (parser_id-root))
 (assert (verb_type-verb-causative_verb-tam))
 (assert (prep_id-relation-parser_ids ))
 (assert (ol_res_id-word_id-word))
 (assert (root-verbchunk-tam-parser_chunkids))
 (assert (current_id-group_members))
 (assert (addition-level-word-sid))
 (assert (split_tranlevel-ptype-headid-grpids))
 )
 ;---------------------------------------------------------------------------------------------------------
 ;;I am quite excited about next week. 
 (defrule head_transfer
 (declare (salience 1))
 ?f<-(root-verbchunk-tam-parser_chunkids root_to_be_decided ?excited tam_to_be_decided  ?v ?s)
 (ol_res_id-word_id-word	?v	?i	?am)
 (ol_res_id-word_id-word	?s	?a	excited|worried)
 =>
	(retract ?f)
	(printout       ?*ol_lwg_f*    "(root-verbchunk-tam-parser_chunkids be "?am" 0 "?v")"crlf)
 )
 ;---------------------------------------------------------------------------------------------------------
 ;The book was read by Meera.
 (defrule head_transfer_7
 ?f<-(root-verbchunk-tam-parser_chunkids root_to_be_decided ?v_c tam_to_be_decided  ?v ?s)
 (ol_res_id-word_id-word ?v     ?i      ?be)
 (parser_id-root ?v ?root)
 (ol_res_id-word_id-word ?s     ?a    ?wrd)
 (parser_id-root ?s ?root_head)
 =>
	(retract ?f)
	(bind ?t(string-to-field (str-cat ?be "_en"))) 
	(printout       ?*ol_lwg_f*    "(root-verbchunk-tam-parser_chunkids "?root_head" "?v_c" " ?t"  "?v" " ?s")"crlf)
 )
 ;---------------------------------------------------------------------------------------------------------
 ;He has been frequently coming.
 (defrule head_transfer_6
 (declare (salience -900))
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?v  ?tam $?ids)
 =>
	(retract ?f)
	(printout       ?*ol_lwg_f*    "(root-verbchunk-tam-parser_chunkids  "?root" "?v" "?tam" "(implode$  (create$ $?ids))")"crlf)
 )
 ;---------------------------------------------------------------------------------------------------------
 (defrule write_remaining_lwg
 (verb_type-verb-causative_verb-tam causative $?ids)
 =>
	(printout       ?*ol_lwg_f*    "(verb_type-verb-causative_verb-tam    causative   "(implode$ (create$ $?ids))")"crlf)
 )
 ;---------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -9000))
 =>
        (close ?*ol_rel_fp*)
        (close ?*ol_lwg_f*)
 )
 ;---------------------------------------------------------------------------------------------------------
