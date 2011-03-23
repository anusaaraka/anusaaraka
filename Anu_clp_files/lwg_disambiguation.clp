 (defglobal ?*ol_rel_fp* = ol_rel )
 (defglobal ?*ol_lwg_f* = ol_lwg_fp )
 
 (deffacts dummy_facts
 (parser_id-root)
 (verb_type-verb-causative_verb-tam)
 (prep_id-relation-parser_ids )
 (ol_res_id-word_id-word)
 (root-verbchunk-tam-parser_chunkids)
 (current_id-group_members)
 (addition-level-word-sid)
 (split_tranlevel-ptype-headid-grpids)
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
 ;I am quite excited about next week.
 (defrule head_transfer_3
 (declare (salience 1502))
 (root-verbchunk-tam-parser_chunkids ?root ?xcited ?tam  ?v ?s)
 (prep_id-relation-parser_ids  - kriyA-subject  ?s    ?sub)
 (ol_res_id-word_id-word ?v     ?i      ?am)
 (ol_res_id-word_id-word ?s     ?a      excited|worried)
 =>
 	(printout       ?*ol_rel_fp*    "(prep_id-relation-parser_ids  - subject-subject_samAnAXikaraNa  "?sub" "?s")"crlf)
 )
 ;---------------------------------------------------------------------------------------------------------
 ;I am quite excited about next week.
 (defrule head_transfer_4
 (declare (salience 1502))
 (root-verbchunk-tam-parser_chunkids ?root ?am_excited ?tam  ?v ?s)
 ?f<-(prep_id-relation-parser_ids  - kriyA-kriyA_viSeRaNa  ?s    ?vi)
 (ol_res_id-word_id-word ?v     ?i      ?am)
 (ol_res_id-word_id-word ?s     ?a      excited|worried)
 =>
	(retract ?f)
	(printout       ?*ol_rel_fp*    "(prep_id-relation-parser_ids  - viSeRaNa-viSeRaka  "?s" "?vi")"crlf)
 )
 ;---------------------------------------------------------------------------------------------------------
 ;I am quite excited about next week.
 (defrule head_transfer_1
 (declare (salience 150))
 (root-verbchunk-tam-parser_chunkids ?root ?am_excited ?tam  ?v ?s)
 ?f<-(prep_id-relation-parser_ids  ?p ?rel ?s ?l)
 (ol_res_id-word_id-word ?v     ?i      ?am)
 (ol_res_id-word_id-word ?s     ?a      excited|worried)
 =>
	(retract ?f)
	(printout       ?*ol_rel_fp*    "(prep_id-relation-parser_ids  "?p"   "?rel" "?v" "?l")"crlf)
 )
 ;---------------------------------------------------------------------------------------------------------
 ;A fat ugly boy had to eat fruits.
 (defrule write_rels
 (prep_id-relation-parser_ids  ?p ?rel $?ids)
 =>
	(printout       ?*ol_rel_fp*    "(prep_id-relation-parser_ids  "?p"   "?rel" "(implode$ (create$ $?ids))")"crlf)
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
