 
 (defglobal ?*lwg_debug_file* = lwg_db_fp)
 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))

 (deffunction never-called ()
 (assert (link_name-link_expansion))
 (assert (link_name-link_lnode-link_rnode))
 (assert (parserid-word))
 (assert (parser_id-root))
 (assert (parser_id-root-category-suffix-number))
 (assert (No complete linkages found))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; checks whether I is "not" present in the S link expansion.
 ; generates Non_interogative_sentence fact 
 (defrule Non_interogative_sent_rule
 (declare (salience 1050))
 (link_name-link_expansion ?sub S $?ids)
 (link_name-link_lnode-link_rnode ?sub  ?sl_node  ?sr_node)
 (test (and (not (member$ I $?ids))(not (member$ J $?ids)) ))
 =>
  (assert (Non_interogative_sentence ?sl_node ?sr_node))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; generates Relative_clause_sentence  fact
 (defrule Relative_clause_sent_rule
 (declare (salience 1050))
 (link_name-link_expansion ?sub R S $?ids)
 (link_name-link_lnode-link_rnode ?sub  ?sl_node  ?sr_node)
 =>
  (assert (Relative_clause_sentence ?sl_node ?sr_node))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; checks whether I is present in the S link expansion.
 ; generates Interogative_sentence fact 
 (defrule Interogative_sent_rule
 (declare (salience 1050))
 (link_name-link_expansion ?sub S $?ids)
 (link_name-link_lnode-link_rnode ?sub  ?sl_node  ?sr_node)
 (test (member$ I $?ids) )
 =>
  (assert (Interogative_sentence ?sl_node ?sr_node))
 )

 ;******************************* Subjenctive rules ***************************************

 ; They were asked that he be allowed to go. (TS I Pv) 
 (defrule TS_I_Pv_rule
 (declare (salience 1000))
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_expansion  ?I   I ? j)
 (link_name-link_lnode-link_rnode TS  ?tl_node  ?sl_node)
 (link_name-link_lnode-link_rnode ?I ?sl_node ?Irnode)
 (link_name-link_lnode-link_rnode Pv ?Irnode ?Pvr_node)
 (parserid-word ?Irnode ?Iword)
 (parserid-word ?Pvr_node ?Pvword)
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G5_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids  " ?root " " ?Iword"_"?Pvword"  "?Iword"_en "  ?Irnode " " ?Pvr_node ")" crlf)
  (assert (grouped_id ?sl_node)) 
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  TS_I_Pv_rule " ?Irnode " "?Pvr_node ")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;connects certain verbs that can take subjunctive clauses as complements 
 ;I suggested that  he go
 (defrule TS_I_rule
 (declare (salience 900))
 (link_name-link_expansion ?I I ? j)
 (link_name-link_lnode-link_rnode TS  ?tl_node  ?tr_node)
 (link_name-link_lnode-link_rnode ?I ?tr_node ?Irnode)
 (parserid-word  ?Irnode ?Iword )
 (parser_id-root-category-suffix-number  ?Irnode  ?root verb ?suf ?)
 (not (grouped_id ?tr_node))
 =>
  (assert (G1_NI_id_to_be_retracted ?Irnode))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids  " ?root " "  ?Iword"  subj " ?Irnode ")" crlf)
  (assert (grouped_id ?Irnode))
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids TS_I_rule	" ?Irnode ")" crlf)
 )


; ***************************** Rules for non interrogative sentences  ***********************************************
; ----------------------------------------- ( S  PP TO  I   Pv) (suf - en) -----------------------------------------------
 ;They had got to be eaten. 
 (defrule S_PP_TO_I_Pv_rule
 (declare (salience 1000))
 (link_name-link_expansion  ?PP  P P $?)
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?PP   ?sr_node ?PPr_node)
 (link_name-link_lnode-link_rnode ?TO   ?PPr_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?Ir_node ?Pvr_node )
 (link_name-link_lnode-link_rnode ?TO   ?TOl_node  ?TOr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?PPr_node ?PPword )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?TOl_node has|had|have|need|was|were|be )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G5_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?PPword"_"?Tword"_"?Iword"_"?Pvword " "?sword"_"?PPword"_"?Tword"_"?Iword"_en  " ?sr_node " " ?PPr_node" " ?TOr_node " "?Ir_node " "  ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_PP_TO_I_Pv_rule " ?sr_node " " ?PPr_node" " ?TOr_node " "?Ir_node " "  ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule S_PP_TO_I_Pv_be_is_rule
 (declare (salience 1000))
 (link_name-link_expansion  ?PP  P P $?)
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?PP   ?sr_node ?PPr_node)
 (link_name-link_lnode-link_rnode ?TO   ?PPr_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?Ir_node ?Pvr_node )
 (link_name-link_lnode-link_rnode ?TO   ?TOl_node  ?TOr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?PPr_node ?PPword )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?TOl_node are|is )
 (parserid-word  ?Ir_node  be )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 =>
   (assert (G5_NI_id_to_be_retracted ?sr_node))
   (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?PPword"_"?Tword"_be_"?Pvword " "?sword"_"?PPword"_"?Tword"_be_en  " ?sr_node " " ?PPr_node" " ?TOr_node " "?Ir_node " "  ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_PP_TO_I_Pv_be_is_rule " ?sr_node " " ?PPr_node" " ?TOr_node " "?Ir_node " "  ?Pvr_node  ")" crlf)
 )

; ----------------------------------------- (S I PP Pg Pv) (suf - en) -----------------------------------------------

 (defrule S_I_PP_Pgstarb_Pv_rule
 (declare (salience 1000))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?PP  P P $?)
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?PP   ?Ir_node ?PPr_node)
 (link_name-link_lnode-link_rnode ?Pg   ?PPr_node ?Pgr_node)
 (link_name-link_lnode-link_rnode  Pv|Pvf ?Pgr_node ?Pvr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?PPr_node  ?PPword )
 (parserid-word  ?Pgr_node  ?Pgword )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 =>
   (assert (G5_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "?root" "  ?sword"_" ?Iword"_"?PPword"_"?Pgword"_"?Pvword "  " ?sword"_" ?Iword"_"?PPword"_"?Pgword"_en " ?sr_node " " ?Ir_node  " "?PPr_node" "  ?Pgr_node " "  ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids	S_I_PP_Pgstarb_Pv_rule   "?sr_node " " ?Ir_node  " "?PPr_node" "  ?Pgr_node " "  ?Pvr_node  ")" crlf) 
 )

; -----------------------------------------  ( S I TO I Pv) (suf - en) -------------------------------------------------

 ;They did have to be eaten
 (defrule S_I_TO_I_Pv_rule
 (declare (salience 1000))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I2  I $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?TO   ?Ir_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I2   ?TOr_node  ?I2r_node)
 (link_name-link_lnode-link_rnode  Pv|Pvf ?I2r_node ?Pvr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?TOl_node has|had|have|need|was|were|be )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?I2r_node ?I2word )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G5_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_" ?Iword"_"?Tword"_"?I2word"_"?Pvword "  " ?sword"_" ?Iword"_"?Tword"_"?I2word"_en  "?sr_node " " ?Ir_node " "?TOr_node  " "  ?I2r_node " " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_I_TO_I_Pv_rule  "?sr_node " " ?Ir_node " "?TOr_node  " "  ?I2r_node " " ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule S_I_TO_I_Pv_is_be_rule
 (declare (salience 1000))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I2  I $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?TO   ?Ir_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I2   ?TOr_node  ?I2r_node)
 (link_name-link_lnode-link_rnode  Pv|Pvf ?I2r_node ?Pvr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?TOl_node are|is )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?I2r_node  be )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G5_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_" ?Iword"_"?Tword"_be_"?Pvword "  " ?sword"_" ?Iword"_"?Tword"_be_en  "?sr_node " " ?Ir_node " "?TOr_node  " "  ?I2r_node " " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_I_TO_I_Pv_rule  "?sr_node " " ?Ir_node " "?TOr_node  " "  ?I2r_node " " ?Pvr_node  ")" crlf)
 )

;------------------------------------------- retract sub_id G5 ------------------------------------------------------------
 (defrule retract_id_5
 (declare (salience 901))
 (G5_NI_id_to_be_retracted ?id)
 ?f0<-(Non_interogative_sentence ? ?id)
 =>
  (retract ?f0)
 ) 
; -----------------------------------------  ( S I TO I ) (suf - 0) -----------------------------------------------------
 ;They did have to eat. They would have to eat.  
 (defrule S_I_TO_I_rule
 (declare (salience 900))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?TO T $?v ~o) ;You do not need magic to use energy wisely .
 (link_name-link_expansion  ?I2 I $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?TO   ?Ir_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I2   ?TOr_node  ?I2r_node )
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?TOl_node has|had|have|need|are|is|was|were|be )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?I2r_node  ?I2word )
 (parser_id-root ?I2r_node ?root)
 =>
  (assert (G4_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "?root" " ?sword"_" ?Iword"_"?Tword"_"?I2word "  "?sword"_" ?Iword"_"?Tword"_0  " ?sr_node " " ?Ir_node " "?TOr_node  " "  ?I2r_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_I_TO_I_rule "?sr_node " " ?Ir_node " "?TOr_node  " "  ?I2r_node  ")" crlf)
 )
; -----------------------------------------  ( S I PP Pv ) (suf - en) -----------------------------------------------------
 ;They may have been eaten
 (defrule S_I_PP_Pv_rule
 (declare (salience 900))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?PP  P P $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?PP   ?Ir_node ?PPr_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?PPr_node ?Pvr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?PPr_node ?PPword )
 (parserid-word  ?Pvr_node  ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G4_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "?root " " ?sword"_" ?Iword"_"?PPword"_"?Pvword "  " ?sword"_" ?Iword"_"?PPword"_en  "?sr_node " " ?Ir_node  " "?PPr_node " " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_I_PP_Pv_rule  "?sr_node " " ?Ir_node  " "?PPr_node " " ?Pvr_node  ")" crlf)
 )
; -----------------------------------------  ( S I PP Pg ) (suf - ing) ----------------------------------------------------
 ;They may have been eating 
 (defrule S_I_PP_Pgstarb_rule
 (declare (salience 900))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?PP  P P $?)
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?PP   ?Ir_node ?PPr_node)
 (link_name-link_lnode-link_rnode ?Pg   ?PPr_node ?Pgr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?PPr_node ?PPword )
 (parserid-word  ?Pgr_node ?Pgword )
 (parser_id-root ?Pgr_node ?root)
 =>
  (assert (G4_NI_id_to_be_eetracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "?root " " ?sword"_" ?Iword"_"?PPword"_"?Pgword "  " ?sword"_" ?Iword"_"?PPword"_ing  " ?sr_node " " ?Ir_node  " "?PPr_node" "  ?Pgr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_I_PP_Pgstarb_rule "?sr_node " " ?Ir_node  " "?PPr_node" "  ?Pgr_node  ")" crlf)
 )
 ; -----------------------------------------  ( S Pg TO I) (suf - 0) -----------------------------------------------------
 ; I am going to remarry when you die (to be grouped). 
 ; He was going to eat( not_to_grouped)
 (defrule S_Pgstarb_TO_I_rule
 (declare (salience 900))
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?Pg   ?sr_node  ?Pgr_node)
 (link_name-link_lnode-link_rnode ?TO   ?Pgr_node ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node ?Ir_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Pgr_node ?Pgword )
 (parserid-word  ?TOl_node has|had|have|need|are|is|was|were|be )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?Ir_node  ?Iword )
 (parser_id-root ?Ir_node ?root)
 =>
  (assert (G4_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_" ?Pgword"_"?Tword"_"?Iword "  "?sword"_" ?Pgword"_"?Tword"_0  " ?sr_node " "?Pgr_node " "?TOr_node " "?Ir_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_Pgstarb_TO_I_rule  "?sr_node " "?Pgr_node " "?TOr_node " "?Ir_node  ")" crlf)
 )
 ; -----------------------------------------  ( S Pa TO I ) (suf - 0) -----------------------------------------------------
 ;He is able to go there. Internet Explorer is unable to open Office documents from an SSL Web site .
 (defrule S_Pa_TO_I_rule
 (declare (salience 900))
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode Pa    ?sr_node  ?Par_node)
 (link_name-link_lnode-link_rnode ?TO   ?Par_node ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node ?Ir_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Par_node ?Paword )
 (parserid-word  ?TOl_node ?Tlword&able|unable )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?Ir_node  ?Iword )
 (parser_id-root ?Ir_node ?root)
 =>
  (assert (G4_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?Tlword"_"?Tword"_"?Iword "  "?sword"_"?Tlword"_"?Tword"_0  " ?sr_node " "?Par_node " "?TOr_node " "?Ir_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_Pa_TO_I_rule  " ?sr_node " "?Par_node " "?TOr_node " "?Ir_node  ")" crlf)
 )
  
 ; --------------------------------------  ( S TO I Pa|Pg ) (suf - ing) ---------------------------------------------------
 ; You have to keep trying until you find a solution for your problem .
 ; I have to keep running until I reach the destination. 
 (defrule S_TO_I_Pg_or_pa_rule
 (declare (salience 900))
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?TO   ?sr_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode Pa|Pg ?Ir_node ?Pr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Pr_node ?Pword )
 (parserid-word  ?TOl_node has|had|have|need|are|is|was|were|be )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?Ir_node  keep )
 (word-morph (original_word  ?Pword)(root  ?root)(suffix ing))
 =>
  (assert (G4_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "?root" " ?sword"_"?Tword"_keep_"?Pword"   " ?sword"_"?Tword"_keep_ing  " ?sr_node " "?TOr_node  " "  ?Ir_node "  " ?Pr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_TO_I_Pv_rule  "?sr_node " "?TOr_node  " "  ?Ir_node "  " ?Pr_node  ")" crlf)
 )
 ; -----------------------------------------  ( S TO I Pv ) (suf - en) -----------------------------------------------------
 ;They were to be eaten
 (defrule S_TO_I_Pv_rule
 (declare (salience 900))
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?TO   ?sr_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?Ir_node ?Pvr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Pvr_node ?Pvword )
 (parserid-word  ?TOl_node has|had|have|need|was|were|be )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?Ir_node  ?Iword )
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G4_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "?root" " ?sword"_"?Tword"_"?Iword"_"?Pvword"   " ?sword"_"?Tword"_"?Iword"_en  " ?sr_node " "?TOr_node  " "  ?Ir_node "  " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_TO_I_Pv_rule  "?sr_node " "?TOr_node  " "  ?Ir_node "  " ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; All these fruits are to be eaten
 (defrule S_TO_I_Pv_is_be_rule
 (declare (salience 900))
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?TO   ?sr_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?Ir_node ?Pvr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Pvr_node ?Pvword )
 (parserid-word  ?TOl_node are|is )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?Ir_node be ) ; consider only "be" to be grouped
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G4_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "?root" " ?sword"_"?Tword"_be_"?Pvword"   " ?sword"_"?Tword"_be_en  " ?sr_node " "?TOr_node  " "  ?Ir_node "  " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_TO_I_Pv_is_be_rule  "?sr_node " "?TOr_node  " "  ?Ir_node "  " ?Pvr_node  ")" crlf)
 )


 ; -----------------------------------------  ( S TO I PP ) (suf - en) -----------------------------------------------------
 ;They ought to have eaten 
 (defrule S_TO_I_PP_rule
 (declare (salience 900))
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?PP  P P $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?TO   ?sr_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?PP   ?Ir_node ?PPr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?TOl_node has|had|have|need|was|were|be )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?PPr_node ?PPword )
 (parser_id-root ?PPr_node ?root)
 =>
  (assert (G4_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "  ?root " "?sword"_"?Tword"_"?Iword"_"?PPword "  "?sword"_"?Tword"_"?Iword"_en  " ?sr_node " "?TOr_node  " "  ?Ir_node " " ?PPr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_TO_I_PP_rule  "?sr_node " "?TOr_node  " "  ?Ir_node " " ?PPr_node  ")" crlf)
 ) 
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule S_TO_I_PP_is_be_rule
 (declare (salience 900))
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?PP  P P $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?TO   ?sr_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?PP   ?Ir_node ?PPr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?TOl_node are|is )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?Ir_node  be )
 (parserid-word  ?PPr_node ?PPword )
 (parser_id-root ?PPr_node ?root)
 =>
  (assert (G4_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "  ?root " "?sword"_"?Tword"_be_"?PPword "  "?sword"_"?Tword"_be_en  " ?sr_node " "?TOr_node  " "  ?Ir_node " " ?PPr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_TO_I_PP_is_be_rule  "?sr_node " "?TOr_node  " "  ?Ir_node " " ?PPr_node  ")" crlf)
 )

 ; -----------------------------------------  ( S TO I Pg ) (suf - ing) ---------------------------------------------------
 (defrule S_TO_I_Pgstarb_rule
 (declare (salience 900))
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?TO   ?sr_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?Pg   ?Ir_node ?Pgr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?TOl_node has|had|have|need|are|is|was|were|be )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?Pgr_node ?Pgword )
 (parser_id-root ?Pgr_node ?root)
 =>
  (assert (G4_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "  ?root " "?sword"_"?Tword"_"?Iword"_"?Pgword "  "?sword"_"?Tword"_"?Iword"_ing  " ?sr_node " "?TOr_node  " "  ?Ir_node " " ?Pgr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_TO_I_Pgstarb_rule   "?sr_node" "?TOr_node"  "?Ir_node"  "?Pgr_node ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule S_TO_I_Pgstarb_is_be_rule
 (declare (salience 900))
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?TO   ?sr_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?Pg   ?Ir_node ?Pgr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?TOl_node are|is )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?Ir_node  be )
 (parserid-word  ?Pgr_node ?Pgword )
 (parser_id-root ?Pgr_node ?root)
 =>
  (assert (G4_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "  ?root " "?sword"_"?Tword"_be_"?Pgword "  "?sword"_"?Tword"_be_ing  " ?sr_node " "?TOr_node  " "  ?Ir_node " " ?Pgr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_TO_I_Pgstarb_is_be_rule   "?sr_node" "?TOr_node"  "?Ir_node"  "?Pgr_node ")" crlf)
 )

;------------------------------------------- retract sub_id G4 ------------------------------------------------------------
 (defrule retract_id_4
 (declare (salience 801))
 (G4_NI_id_to_be_retracted ?id)
 ?f0<-(Non_interogative_sentence ? ?id)
 =>
 (retract ?f0)
 )
;------------------------------------------- (  S  Pg  Pv )  (suf - en) ----------------------------------------------------
 ;I am being eaten 
 (defrule S_Pgstarb_Pv_rule
 (declare (salience 800))
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?Pg   ?sr_node  ?Pgr_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?Pgr_node ?Pvr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Pgr_node ?Pgword )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G3_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?Pgword"_"?Pvword "  " ?sword"_"?Pgword"_en  "?sr_node " " ?Pgr_node " " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_Pgstarb_Pv_rule  " ?sr_node " " ?Pgr_node " " ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------- ( S  PP  Pg ) (suf - ing) ---------------------------------------------------
 ; They had been eating
 ; He has been frequently coming.
 (defrule S_PP_Pgstarb_rule
 (declare (salience 800))
 (link_name-link_expansion  ?PP  P P $?)
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?PP   ?sr_node  ?PPr_node)
 (link_name-link_lnode-link_rnode ?Pg   ?PPr_node ?Pgr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?PPr_node ?PPword )
 (parserid-word  ?Pgr_node ?Pgword )
 (parser_id-root ?Pgr_node ?root)
 =>
  (assert (G3_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?PPword"_"?Pgword "  "?sword"_"?PPword"_ing  " ?sr_node " " ?PPr_node " " ?Pgr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_PP_Pgstarb_rule  "?sr_node " " ?PPr_node " " ?Pgr_node  ")" crlf)
 )
 ;------------------------------------------- ( S  PP  Pv ) (suf - en) ---------------------------------------------------
 ;They had been eaten 
 (defrule S_PP_Pv_rule
 (declare (salience 800))
 (link_name-link_expansion  ?PP  P P $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?PP   ?sr_node  ?PPr_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?PPr_node ?Pvr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?PPr_node ?PPword )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 =>
 (assert (G3_NI_id_to_be_retracted ?sr_node))
 (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?PPword"_"?Pvword "  " ?sword"_"?PPword"_en  "?sr_node " " ?PPr_node " " ?Pvr_node  ")" crlf)
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_PP_Pv_rule  "?sr_node " " ?PPr_node " " ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------- ( S  Pg  I ) (suf - en) ---------------------------------------------------
 ;She is making the girl feed the child ( S Pg I*j)
 (defrule S_Pgstarb_I_rule
 (declare (salience 800))
 (link_name-link_expansion  ?PG   P g ? b $?)
 (link_name-link_expansion  ?I   I * ?var&~j)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?PG   ?sr_node  ?PGr_node)
 (link_name-link_lnode-link_rnode ?I    ?PGr_node ?Ir_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?PGr_node ?PGword )
 (parserid-word  ?Ir_node ?Iword )
 (parser_id-root ?Ir_node ?root)
 =>
  (assert (G3_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?PGword"_"?Iword "  " ?sword"_"?PGword"_en  "?sr_node " " ?PGr_node " " ?Ir_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_Pgstarb_I_rule  "?sr_node " " ?PGr_node " " ?Ir_node  ")" crlf)
 )
;------------------------------------------- ( S  I  Pg*b ) (suf - ing) ---------------------------------------------------
 ;They might be eating
 (defrule S_I_Pgstarb_rule
 (declare (salience 800))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?Pg   ?Ir_node  ?Pgr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Ir_node ?Iword )
 (parserid-word  ?Pgr_node ?Pgword )
 (parser_id-root ?Pgr_node ?root)
 =>
  (assert (G3_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?Iword"_"?Pgword "  " ?sword"_"?Iword"_ing  " ?sr_node " " ?Ir_node  " "  ?Pgr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_I_Pgstarb_rule   "?sr_node " " ?Ir_node  " "  ?Pgr_node  ")" crlf)
 ) 
 ;------------------------------------------- ( S  I  Pg ) (suf - ing) ---------------------------------------------------
 ; I will keep on trying .
 (defrule S_I_Pg_rule
 (declare (salience 800))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?ID  I D $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?ID  ?idl_node ?Ir_node)
 (link_name-link_lnode-link_rnode Pg   ?Ir_node  ?Pgr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Ir_node ?Iword )
 (parserid-word  ?Pgr_node ?Pgword )
 (parserid-word  ?idl_node ?IDword&keep|kept )
 (parser_id-root ?Pgr_node ?root)
 =>
  (assert (G3_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?IDword"_"?Iword"_"?Pgword "  " ?sword"_"?IDword"_"?Iword"_ing  " ?sr_node " "?idl_node" " ?Ir_node  " "  ?Pgr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_I_Pg_rule  " ?sr_node " "?idl_node" " ?Ir_node  " "  ?Pgr_node  ")" crlf)
 )
;------------------------------------------- ( S  I  Pv ) (suf - en) ---------------------------------------------------
 ;This table will be made up of wood.
 (defrule S_I_Pv_ID_rule
 (declare (salience 801))
 (link_name-link_expansion  ?I  I $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?Ir_node ?Pvr_node)
 (link_name-link_expansion  ?ID  I D $?id_vars)
 (link_name-link_lnode-link_rnode  ?ID  ?ID_node   ?Pvr_node)
 =>
 ; (assert (grouped_id ?Pvr_node ))
 )
 ;------------------------------------------- ( S  I  Pv ) (suf - en) ---------------------------------------------------
 ;They will be eaten 
 (defrule S_I_Pv_rule
 (declare (salience 800))
 (link_name-link_expansion  ?I  I $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?Ir_node ?Pvr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Ir_node ?Iword )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 (not (grouped_id ?Pvr_node))
 =>
  (assert (G3_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "?root" " ?sword"_"?Iword"_"?Pvword "  "?sword"_"?Iword"_en  " ?sr_node " " ?Ir_node  " " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_I_Pv_rule  " ?sr_node " " ?Ir_node  " " ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------- ( S  I  PP ) (suf - en) ---------------------------------------------------
 ; They may have eaten
 ; They may have eaten fruits.
 (defrule S_I_PP_rule
 (declare (salience 800))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?PP  P P $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?PP   ?Ir_node  ?PPr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Ir_node ?Iword )
 (parserid-word  ?PPr_node ?PPword )
 (parser_id-root ?PPr_node ?root)
 =>
  (assert (G3_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root " " ?sword"_"?Iword"_"?PPword "  "  ?sword"_"?Iword"_en  " ?sr_node " " ?Ir_node  " "?PPr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_I_PP_rule  "?sr_node " " ?Ir_node  " "?PPr_node  ")" crlf)
 )
 ;------------------------------------------- ( S I VJ ) (suf 0)  ---------------------------------------------------
 ; Teddy will go home and study.
 (defrule S_I_VJ_rule
 (declare (salience 800))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?Vl  V J l $?)
 (link_name-link_expansion  ?Vr  V J r $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?Vr   ?Ir_node  ?Vr_node)
 (link_name-link_lnode-link_rnode ?Vl   ?Vl_node  ?Ir_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Vr_node ?Vrword )
 (parserid-word  ?Vl_node ?Vlword )
 (parser_id-root ?Vr_node ?root)
 (parser_id-root ?Vl_node ?root1)
 =>
  (assert (G3_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root " " ?sword"_"?Vrword "  "  ?sword"_0  " ?sr_node " " ?Vr_node  ")" crlf)
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root1 " " ?sword"_"?Vlword "  "  ?sword"_0  " ?sr_node " " ?Vl_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_I_VJ_rule  "?sr_node " " ?Vr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_I_VJ_rule  "?sr_node " " ?Vl_node  ")" crlf)
 )

 ;------------------------------------------- ( S  TO  I ) (suf - 0) ---------------------------------------------------
 ;He was to eat  They were to eat.
 ; Groups only if TO link left node word is has|had|have|need
 ; One of the best ways of improving your English is to read the language.  (dont group "is to read" bcoz "is" is main verb)
 ; A fat ugly boy had to eat fruits.  
 ; He has to do work hard.
 (defrule S_TO_I_rule
 (declare (salience 800))
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?TO   ?sr_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node ?Ir_node)
 (parserid-word   ?sr_node ?sword&has|had|have|need )
 (parserid-word   ?Ir_node ?Iword )
 (parserid-word   ?TOr_node ?Tword )
 (parser_id-root ?Ir_node ?root)
 =>
  (assert (G3_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root "  "?sword"_"?Tword"_"?Iword "  "?sword"_"?Tword"_0  " ?sr_node " "?TOr_node  " "  ?Ir_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_TO_I_rule   "?sr_node " "?TOr_node  " "  ?Ir_node  ")" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;suggested by Meenaji (20-01-11) .She used to live in Glasgow.
 (defrule S_TO_I_rule_for_used
 (declare (salience 801))
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?TO   ?sr_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node ?Ir_node)
 (parserid-word   ?sr_node ?sword&used )
 (parserid-word   ?Ir_node ?Iword )
 (parserid-word   ?TOr_node ?Tword )
 (parser_id-root ?Ir_node ?root)
 (link_name-link_lnode-link_rnode ?lname ?sr_node )
 (test (and (neq (sub-string 1 1 (implode$ (create$ ?lname))) "O")(neq ?lname ?TO))) ;They used force to open the jammed door. (22-01-11)
 =>
  (assert (G3_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root "  "?sword"_"?Tword"_"?Iword "  "?sword"_"?Tword"_0  " ?sr_node " "?TOr_node  " "  ?Ir_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_TO_I_rule_for_used   "?sr_node " "?TOr_node  " "  ?Ir_node  ")" crlf)
 )
 ;------------------------------------------- ( RS  PP  Pv ) (suf - en) ---------------------------------------------------
 ; Mark the items which have been checked
 (defrule RS_PP_Pv_rule
 (declare (salience 800))
 (Relative_clause_sentence ?sl_node  ?sr_node)
 (link_name-link_expansion  ?PP  P P $?)
 (link_name-link_lnode-link_rnode ?PP   ?sr_node  ?PPr_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?PPr_node ?Pvr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?PPr_node ?PPword )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G3_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?PPword"_"?Pvword "  " ?sword"_"?PPword"_en  "?sr_node " " ?PPr_node " " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   RS_PP_Pv_rule  " ?sr_node " " ?PPr_node " " ?Pvr_node  ")" crlf)
 )
;------------------------------------------- retract sub_id G3 ------------------------------------------------------------
 (defrule retract_id_3
 (declare (salience 750))
 (G3_NI_id_to_be_retracted ?id)
 ?f0<-(Non_interogative_sentence ? ?id)
 =>
  (retract ?f0)
 )
;------------------------------------------- retract sub_id(RS) G3 --------------------------------------------------------
 (defrule retract_rcid
 (declare (salience 750))
 (G3_NI_id_to_be_retracted ?id)
 ?f0<-(Relative_clause_sentence ?  ?id)
 =>
  (retract ?f0)
 )
 ;------------------------------------------- (S Pv )  (suf - en) ----------------------------------------------------------
 ;This table is made up of wood.
 (defrule S_Pv1_rule
 (declare (salience 701))
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?sr_node ?Pvr_node)
 (link_name-link_expansion  ?ID  I D $?id_vars)
 (link_name-link_lnode-link_rnode  ?ID  ?ID_node   ?Pvr_node)
 =>
  (assert (grouped_id ?Pvr_node ))
 )
 ;------------------------------------------- (S Pv )  (suf - en) --------------------------------------------------------- 
 ; I am eaten. The job is done.
 ; Protoplasm is known as the physical basis for life . The book was read by Meera .
 (defrule S_Pv_rule
 (declare (salience 700))
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?sr_node ?Pvr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 (not (grouped_id ?Pvr_node))
 =>
  (assert (G2_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?Pvword "  "?sword"_en  "  ?sr_node " " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_Pv_rule "?sr_node " " ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------- (S  Pg  VJ )   --------------------------------------------------------
 ;The little ones are hopping and jumping merrily.
 (defrule S_Pg_VJ_rule
 (declare (salience 701))
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (link_name-link_lnode-link_rnode ?Pg   ?sr_node  ?Pgr_node)
 (link_name-link_expansion  ?Vl  V J l g)
 (link_name-link_lnode-link_rnode ?Vl   ?Vl_node  ?Pgr_node)
 (link_name-link_expansion  ?Vr  V J r g)
 (link_name-link_lnode-link_rnode ?Vr   ?Pgr_node  ?Vr_node)
 (parserid-word  ?Vr_node ?Vrword )
 (parserid-word  ?Vl_node ?Vlword )
 (parserid-word  ?sr_node ?sword )
 (parser_id-root ?Pgr_node ?root)
 =>
  (assert (G2_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?Vlword " "?sword"_ing  " ?sr_node " " ?Vl_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_Pg_VJ_rule  "?sr_node " " ?Vl_node  ")" crlf)
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?Vrword " "?sword"_ing  " ?sr_node " " ?Vr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_Pg_VJ_rule  "?sr_node " " ?Vr_node  ")" crlf)
  (assert (grouped_id ?sr_node )) (assert (grouped_id ?Pgr_node))
 )
 ;------------------------------------------- (S  Pg ) (suf ing )--------------------------------------------------------

 ; I am eating
 ; She is sleeping. All are going to school.
 (defrule S_Pgstarb_rule
 (declare (salience 700))
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?Pg   ?sr_node  ?Pgr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Pgr_node ?Pgword )
 (parser_id-root ?Pgr_node ?root)
 (test (neq ?sword on))
 (not (grouped_id ?sr_node))
 =>
  (assert (G2_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?Pgword " "?sword"_ing  " ?sr_node " " ?Pgr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_Pgstarb_rule  "?sr_node " " ?Pgr_node  ")" crlf)
 )
 ;------------------------------------------- (S I )  (suf - 0) ----------------------------------------------------------
 ; They can eat
 ; I will give up smoking.  I do not go out as much now .
 ; I link with only aux verbs (not to handle I helped make some changes in the program.)
 ; I cannot go home today. (Roja 17-10-11)
 (defrule S_I_rule
 (declare (salience 700))
 (link_name-link_expansion  ?I  I $?vars)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sr_node  ?Ir_node)
 (not (link_name-link_expansion  ?I  I * j|f))
 (parserid-word  ?sr_node ?sword&will|would|shall|should|must|may|can|could|might|do|does|did|cannot) ;Added cannot by Roja.
 (parserid-word  ?Ir_node ?Iword )
 (parser_id-root ?Ir_node ?root)
 =>
 (assert (G2_NI_id_to_be_retracted ?sr_node))
 (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root " " ?sword"_"?Iword "  " ?sword"_0  "  ?sr_node " " ?Ir_node  ")" crlf)
 (assert (grouped_id ?sr_node )) (assert (grouped_id ?Ir_node))
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_I_rule   "?sr_node " " ?Ir_node  ")" crlf)
 )
 ;------------------------------------------- (S PP )  (suf - en) ---------------------------------------------------------
 ;They had eaten.
 ; We had wasted our journey. 
 (defrule S_PP_rule
 (declare (salience 700))
 (link_name-link_expansion  ?PP  P P $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?PP   ?sr_node  ?PPr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?PPr_node ?PPword )
 (parser_id-root ?PPr_node ?root)
 =>
  (assert (G2_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root " " ?sword"_"?PPword "  " ?sword"_en  "   ?sr_node " " ?PPr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_PP_rule    S_PP_rule   "?sr_node " " ?PPr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;They are born in Patna .
 (defrule S_Pa_rule
 (declare (salience 700))
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode P a  ?sr_node  ?Par_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Par_node ?Paword )
 (parser_id-root ?Par_node ?root)
 (word-morph (original_word  ?Paword)(suffix en))
 =>
  (assert (G2_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root " " ?sword"_"?Paword "  " ?sword"_en  "   ?sr_node " " ?Par_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_Pa_rule    S_Pa_rule   "?sr_node " " ?Par_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;I made it clear that I was angry .
 (defrule S_Pa_star_rule
 (declare (salience 700))
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_expansion ?Pa P a $? j)
 (link_name-link_lnode-link_rnode ?Pa  ?sr_node  ?Par_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Par_node ?Paword )
 (parser_id-root ?sr_node ?root)
 (parser_id-root-category-suffix-number  ?sr_node  ?root ? ?suf ?)
 =>
  (assert (G2_NI_id_to_be_retracted ?Par_node))
  (printout lwg_fp "(Eng_kriyA_mUla_root-verbchunk-chunkids "?root"_"?Paword" "?Paword" "?Par_node " "?sr_node ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  S_Pa_star_rule    "?Par_node " " ?sr_node  ")" crlf)
 )

 ;------------------------------------------- (Wi I ) (suf - 0) ----------------------------------------------------------
  ;Do not work too hard too soon.   Do not waste electricity.    
  ; Go fetch the ball .
 (defrule Wi_I_rule
 (declare (salience 700))
 (link_name-link_expansion  ?sub  W i)
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_lnode-link_rnode ?sub  ?sl_node  ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sr_node  ?Ir_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?Ir_node ?Iword )
 (parser_id-root ?Ir_node ?root)
 (not (grouped_id ?Ir_node))
 =>
  (assert (G2_NI_id_to_be_retracted ?sr_node))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root " " ?sword"_"?Iword "   imper_0 "  ?sr_node " " ?Ir_node  ")" crlf)
  (assert (grouped_id ?sr_node )) (assert (grouped_id ?Ir_node))
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   Wi_I_rule  " ?sr_node " " ?Ir_node  ")" crlf)
 )
 ;------------------------------------------- (RS Pg ) (suf - ing) --------------------------------------------------------
 ;The boy plucked the flower which was running in the garden. 
 (defrule RS_Pgstarb_rule
 (declare (salience 701))
 (Relative_clause_sentence ?rsl_node  ?rsr_node)
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (link_name-link_lnode-link_rnode ?Pg    ?rsr_node  ?Pgr_node)
 (parserid-word  ?rsr_node ?rsword )
 (parserid-word  ?Pgr_node ?Pgword )
 (parser_id-root ?Pgr_node ?root)
 =>
  (assert (G2_NI_id_to_be_retracted ?rsr_node))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root " " ?rsword"_"?Pgword "  " ?rsword"_ing  "   ?rsr_node " " ?Pgr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   RS_Pgstarb_rule  " ?rsr_node " " ?Pgr_node  ")" crlf)
 )
 ;------------------------------------------- (RS PP ) (suf - en) --------------------------------------------------------
 ; Many Croats who had fled their homes are now returning to them.
 (defrule RS_PP_rule
 (declare (salience 701))
 (Relative_clause_sentence ?rsl_node  ?rsr_node)
 (link_name-link_lnode-link_rnode  PP    ?rsr_node  ?PPr_node)
 (parserid-word  ?rsr_node ?rsword )
 (parserid-word  ?PPr_node ?PPword )
 (parser_id-root ?PPr_node ?root)
 =>
  (assert (G2_NI_id_to_be_retracted ?rsr_node))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root " " ?rsword"_"?PPword "  " ?rsword"_en  "   ?rsr_node " " ?PPr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   RS_PP_rule   "?rsr_node " " ?PPr_node  ")" crlf)
 )
 ;------------------------------------------- (RS Pv ) (suf - en) --------------------------------------------------------
 ; The snake which was injured hissed loudly .
 (defrule RS_Pv_rule
 (declare (salience 701))
 (Relative_clause_sentence ?rsl_node  ?rsr_node)
 (link_name-link_lnode-link_rnode  Pv    ?rsr_node  ?PPr_node)
 (parserid-word  ?rsr_node ?rsword )
 (parserid-word  ?PPr_node ?PPword )
 (parser_id-root ?PPr_node ?root)
 =>
  (assert (G2_NI_id_to_be_retracted ?rsr_node))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root " " ?rsword"_"?PPword "  " ?rsword"_en  "   ?rsr_node " " ?PPr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   RS_Pv_rule   "?rsr_node " " ?PPr_node  ")" crlf)
 )
 ;------------------------------------------- (RS I ) (suf - 0) ---------------------------------------------------------
 ; Students who can develop independent learning skills often achieve good academic results
 (defrule RS_I_rule
 (declare (salience 701))
 (Relative_clause_sentence ?rsl_node  ?rsr_node)
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_lnode-link_rnode  ?I  ?rsr_node  ?Ir_node)
 (parserid-word  ?rsr_node ?rsword )
 (parserid-word  ?Ir_node ?Iword )
 (parser_id-root ?Ir_node ?root)
 =>
  (assert (G2_NI_id_to_be_retracted ?rsr_node))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root " " ?rsword"_"?Iword "  " ?rsword"_0  "?rsr_node " " ?Ir_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  RS_I_rule    "?rsr_node " " ?Ir_node  ")" crlf) 
 )
 ;------------------------------------------- retract sub_id (S) G2 -----------------------------------------------------
 (defrule retract_id_2
 (declare (salience 601))
 (G2_NI_id_to_be_retracted ?id)
 ?f0<-(Non_interogative_sentence ? ?id)
 =>
 (retract ?f0)
 )
 ;------------------------------------------- retract sub_id (RS) G2 -----------------------------------------------------
 (defrule retract_rcid_2
 (declare (salience 601))
 (G2_NI_id_to_be_retracted ?id)
 ?f0<-(Relative_clause_sentence ? ?id)
 =>
 (retract ?f0)
 )
 ;------------------------------------------- ( S ) -----------------------------------------------------------------------
 ; I finally figured out why this program is so slow .
 ; tam is idiom becoz we have to take idiom  word tam  
 (defrule S_ID_rule
 (declare (salience 200))
 (link_name-link_expansion ?ID I D $?vars)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?ID ?idl_node ?sr_node)
 (parserid-word  ?sr_node ?sword )
 (parserid-word  ?idl_node ?idword )
 (parser_id-root ?idl_node ?root)
 =>
   (assert (G1_NI_id_to_be_retracted ?sr_node))
   (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids  root_to_be_decided  "?idword"_"?sword " idiom " ?idl_node" "?sr_node ")" crlf)
   (assert (grouped_id ?sr_node ))
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_ID_rule  " ?idl_node" "?sr_node ")" crlf)
 )
 ;--------------------------------------( S VJ VJ) ------------------------------------------------------------------------
 ;I ate fruits, drank milk and slept.
 (defrule S_VJ_VJ_rule
 (declare (salience 201))
 (and (link_name-link_expansion  ?Vl  V J l $?)(link_name-link_expansion  ?Vl1  V J l $?l))
 (and (link_name-link_expansion  ?Vr  V J r $?)(link_name-link_expansion  ?Vr1  V J r $?r))
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?Vl   ?Vl_node  ?sr_node)
 (link_name-link_lnode-link_rnode ?Vr   ?sr_node  ?Vr_node)
 (link_name-link_lnode-link_rnode ?Vl1  ?vl1_node ?Vr_node)
 (link_name-link_lnode-link_rnode ?Vr1  ?Vr_node  ?vr1_node) 
 (parserid-word  ?vr1_node ?Vrword )
 (parserid-word  ?Vl_node ?Vlword )
 (parserid-word  ?vl1_node ?Vl1word )
  =>
   (assert (G1_NI_id_to_be_retracted ?sr_node))
   (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids  root_to_be_decided  "?Vlword " tam_to_be_decided " ?Vl_node ")" crlf)
   (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids  root_to_be_decided  "?Vrword " tam_to_be_decided " ?vr1_node ")" crlf)
   (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids  root_to_be_decided  "?Vl1word " tam_to_be_decided " ?vl1_node ")" crlf)
  (assert (grouped_id ?sr_node ))
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_VJ_VJ_rule  " ?Vl_node ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_VJ_VJ_rule  " ?vr1_node ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_VJ_VJ_rule  " ?vl1_node ")" crlf)
 )
 ;--------------------------------------( S VJ ) ------------------------------------------------------------------------
 ;Petu ran fast but missed the bus.
 (defrule S_VJ_rule
 (declare (salience 200))
 (link_name-link_expansion  ?Vl  V J l|n $?) ;He neither plays nor reads.
 (link_name-link_expansion  ?Vr  V J r $?)
 (Non_interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?Vl   ?Vl_node  ?sr_node)
 (link_name-link_lnode-link_rnode ?Vr   ?sr_node  ?Vr_node)
 (parserid-word  ?Vr_node ?Vrword )
 (parserid-word  ?Vl_node ?Vlword )
 (not (grouped_id ?sr_node))
  =>
   (assert (G1_NI_id_to_be_retracted ?sr_node))
   (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids  root_to_be_decided  "?Vlword " tam_to_be_decided " ?Vl_node ")" crlf)
   (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids  root_to_be_decided  "?Vrword " tam_to_be_decided " ?Vr_node ")" crlf)
   (assert (grouped_id ?sr_node ))
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_VJ_rule  " ?Vl_node ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_VJ_rule  " ?Vr_node ")" crlf)
 )
 ;------------------------------------------- ( S ) -----------------------------------------------------------------------
 ; The boy saw an elephant in the forest . 
 ; In saw case there is an ambigious for root and tam so for this assert root as root_to_be_decided and tam as 
 ; tam_to_be_decided
 ; They eat. He eats. He attacked the enemy.
 (defrule S_rule
 (declare (salience 50))
 (Non_interogative_sentence ?sl_node ?sr_node)
 (parserid-word  ?sr_node ?sword )
 (not (grouped_id ?sr_node))
 (test (and (neq ?sword on)(neq ?sword but)));Petu ran fast but missed the bus.
 =>
   (assert (G1_NI_id_to_be_retracted ?sr_node))
   (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids  root_to_be_decided  "?sword " tam_to_be_decided "?sr_node  ")" crlf)
   (assert (grouped_id ?sr_node )) 
   (printout ?*lwg_debug_file* "(rule_name-grouped_ids   S_rule  " ?sr_node  ")" crlf)
 )

 ;-----------------------------------------  ( Wi )---------------------------------------------------------------------
 ;Mark the items which have been checked .  Be careful , she said . 
 (defrule Wi_rule
 (declare (salience 100))
 (link_name-link_expansion  ?sub  W i)
 ?f0<-(link_name-link_lnode-link_rnode ?sub  ?sl_node  ?sr_node)
 (parserid-word  ?sr_node ?sword )
 (parser_id-root-category-suffix-number  ?sr_node  ?root verb ?suf ?)
 (not (grouped_id ?sr_node))
 =>
   (assert (G1_NI_id_to_be_retracted ?sr_node))
   (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "?root " " ?sword"  imper  "  ?sr_node  ")" crlf)
   (assert (grouped_id ?sr_node )) 
   (printout ?*lwg_debug_file* "(rule_name-grouped_ids   Wi_rule   "  ?sr_node  ")" crlf)
 )
 ;-----------------------------------------  ( RS )---------------------------------------------------------------------
 (defrule RS_rule
 (declare (salience 100))
 (Relative_clause_sentence ?rsl_node  ?rsr_node)
 (parserid-word  ?rsr_node ?rsword )
 (parser_id-root-category-suffix-number  ?rsr_node  ?root verb ?suf  ?)
 =>
  (assert (G1_NI_id_to_be_retracted ?rsr_node))
  (if (eq ?suf en) then
     (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "?root " " ?rsword"  ed  "  ?rsr_node  ")" crlf)
  else
     (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "?root " " ?rsword" "?suf " "  ?rsr_node  ")" crlf)
  )
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  RS_rule   "  ?rsr_node  ")" crlf)
 )
 ;-----------------------------------------  ( I*j )--------------------------------------------------------------------
 ;She is making the girl feed the child. 
 (defrule I_star_J_rule
 (declare (salience 100))
 (or (link_name-link_expansion   ?I   I * j) (link_name-link_expansion   ?I   I f j))
 (link_name-link_lnode-link_rnode ?I  ?Il_node  ?Ir_node)
 (parserid-word  ?Il_node ?Iword )
 (parserid-word  ?Ir_node ?Iword1 )
 (parser_id-root-category-suffix-number  ?Il_node ?root&get|make|have verb ?suf ?)
 (parser_id-root-category-suffix-number  ?Ir_node  ?root1 verb ?suf1 ?)
 (not (grouped_id ?Ir_node))
  =>
	(assert (G1_NI_id_to_be_retracted ?Ir_node))
	(printout lwg_fp "(modified_root-verbchunk-chunkids "?root"_"?Iword1" "?Iword1" "?Il_node " "?Ir_node ")" crlf)
        (printout ?*lwg_debug_file* "(rule_name-grouped_ids   I_star_J_rule  " ?Ir_node ")" crlf)
 )

;  ******************* Rules for interrogative sentences  *************************************************************

 ;Will you be able to take the weight of the sacks . (SI I Pa TO I) (suf - 0)
 (defrule SI_I_Pa_TO_I_rule
 (declare (salience 1000))
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?I2  I $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I   ?sl_node ?Ir_node)
 (link_name-link_lnode-link_rnode Pa   ?Ir_node ?Par_node)
 (link_name-link_lnode-link_rnode ?TO   ?Par_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I2    ?TOr_node  ?I2r_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?Par_node able )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?I2r_node  ?I2word )
 (parser_id-root ?I2r_node ?root)
 =>
  (assert (G5_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?Iword"_able_"?Tword"_"?I2word" "?sword"_"?Iword"_able_"?Tword"_0  " ?sl_node " " ?Ir_node " " ?Par_node" " ?TOr_node " "?I2r_node ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_I_Pa_TO_I_rule  " ?sl_node " " ?Ir_node " " ?Par_node" " ?TOr_node " "?I2r_node ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;They had got to be eaten. ( S  PP TO  I   Pv) (suf - en)
 (defrule SI_PP_TO_I_Pv_rule
 (declare (salience 1000))
 (link_name-link_expansion  ?PP  P P $?)
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?PP   ?sl_node ?PPr_node)
 (link_name-link_lnode-link_rnode ?TO   ?PPr_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?Ir_node ?Pvr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?PPr_node ?PPword )
 (parserid-word  ?TOl_node has|had|have|need|are|is|was|were|be )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G5_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?PPword"_"?Tword"_"?Iword"_"?Pvword " "?sword"_"?PPword"_"?Tword"_"?Iword"_en  " ?sl_node " " ?PPr_node" " ?TOr_node " "?Ir_node " "  ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   SI_PP_TO_I_Pv_rule   " ?sl_node " " ?PPr_node" " ?TOr_node " "?Ir_node " "  ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule SI_PP_TO_I_Pv_is_be_rule
 (declare (salience 1000))
 (link_name-link_expansion  ?PP  P P $?)
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?PP   ?sl_node ?PPr_node)
 (link_name-link_lnode-link_rnode ?TO   ?PPr_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?Ir_node ?Pvr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?PPr_node ?PPword )
 (parserid-word  ?TOl_node are|is )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?Ir_node  be )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G5_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?PPword"_"?Tword"_be_"?Pvword " "?sword"_"?PPword"_"?Tword"_be_en  " ?sl_node " " ?PPr_node" " ?TOr_node " "?Ir_node " "  ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   SI_PP_TO_I_Pv_is_be_rule   " ?sl_node " " ?PPr_node" " ?TOr_node " "?Ir_node " "  ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;He does have to be eaten (S I PP Pg Pv) (suf - en)
 (defrule SI_I_PP_Pgstarb_Pv_rule
 (declare (salience 1000))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?PP  P P $?)
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sl_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?PP   ?Ir_node ?PPr_node)
 (link_name-link_lnode-link_rnode ?Pg   ?PPr_node ?Pgr_node)
 (link_name-link_lnode-link_rnode  Pv|Pvf ?Pgr_node ?Pvr_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?PPr_node  ?PPword )
 (parserid-word  ?Pgr_node  ?Pgword )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G5_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids "?root" "  ?sword"_" ?Iword"_"?PPword"_"?Pgword"_"?Pvword "  " ?sword"_" ?Iword"_"?PPword"_"?Pgword"_en " ?sl_node " " ?Ir_node  " "?PPr_node" "  ?Pgr_node " "  ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_I_PP_Pgstarb_Pv_rule   " ?sl_node " " ?Ir_node  " "?PPr_node" "  ?Pgr_node " "  ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;They did have to be eaten ( S  I   TO  I   Pv)(suf - en)
 (defrule SI_I_TO_I_Pv_rule
 (declare (salience 1000))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I2  I $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sl_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?TO   ?Ir_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I2   ?TOr_node  ?I2r_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?I2r_node ?Pvr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?TOl_node has|had|have|need|are|is|was|were|be )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?I2r_node  ?I2word )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G5_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_" ?Iword"_"?Tword"_"?I2word"_"?Pvword "  " ?sword"_" ?Iword"_"?Tword"_"?I2word"_en  " ?sl_node " " ?Ir_node " "?TOr_node  " "  ?I2r_node " " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_I_TO_I_Pv_rule  " ?sl_node " " ?Ir_node " "?TOr_node  " "  ?I2r_node " " ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule SI_I_TO_I_Pv_is_be_rule
 (declare (salience 1000))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I2  I $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sl_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?TO   ?Ir_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I2   ?TOr_node  ?I2r_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?I2r_node ?Pvr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?TOl_node are|is )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?I2r_node  be )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G5_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_" ?Iword"_"?Tword"_be_"?Pvword "  " ?sword"_" ?Iword"_"?Tword"_be_en  " ?sl_node " " ?Ir_node " "?TOr_node  " "  ?I2r_node " " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_I_TO_I_Pv_is_be_rule  " ?sl_node " " ?Ir_node " "?TOr_node  " "  ?I2r_node " " ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule retract_id5
 (declare (salience 901))
 (G5_I_id_to_be_retracted ?id)
 ?f0<-(Interogative_sentence ?id ? )
 =>
 (retract ?f0)
 )
 ;-------------------------------------------(S  I   TO  I) (suf - 0) ------------------------------------------------------
 (defrule SI_I_TO_I_rule
 (declare (salience 900))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I2  I $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sl_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?TO   ?Ir_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I2   ?TOr_node  ?I2r_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?TOl_node has|had|have|need|are|is|was|were|be )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?I2r_node  ?I2word)
 (parser_id-root ?I2r_node ?root)
 =>
 (assert (G4_I_id_to_be_retracted ?sl_node))
 (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids "?root" " ?sword"_" ?Iword"_"?Tword"_"?I2word "  "?sword"_" ?Iword"_"?Tword"_0  " ?sl_node " " ?Ir_node " "?TOr_node  " "  ?I2r_node  ")" crlf)
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids   SI_I_TO_I_rule  " ?sl_node " " ?Ir_node " "?TOr_node  " "  ?I2r_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;They may have been eaten (S  I   PP  Pv)(suf - en)
 (defrule SI_I_PP_Pv_rule
 (declare (salience 900))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?PP  P P $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sl_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?PP   ?Ir_node ?PPr_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?PPr_node ?Pvr_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?PPr_node ?PPword )
 (parserid-word  ?Pvr_node  ?Pvword )
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G4_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids "?root " " ?sword"_" ?Iword"_"?PPword"_"?Pvword "  " ?sword"_" ?Iword"_"?PPword"_en  " ?sl_node " " ?Ir_node  " "?PPr_node " " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   SI_I_PP_Pv_rule   " ?sl_node " " ?Ir_node  " "?PPr_node " " ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;They may have been eating (S  I   PP  Pg) (suf - ing)
 (defrule SI_I_PP_Pgstarb_rule
 (declare (salience 900))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?PP  P P $?)
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sl_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?PP   ?Ir_node ?PPr_node)
 (link_name-link_lnode-link_rnode ?Pg   ?PPr_node ?Pgr_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?PPr_node ?PPword )
 (parserid-word  ?Pgr_node ?Pgword )
 (parser_id-root ?Pgr_node ?root)
 =>
 (assert (G4_I_id_to_be_retracted ?sl_node))
 (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids "?root " " ?sword"_" ?Iword"_"?PPword"_"?Pgword "  " ?sword"_" ?Iword"_"?PPword"_ing  " ?sl_node " " ?Ir_node  " "?PPr_node" "  ?Pgr_node  ")" crlf)
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids   SI_I_PP_Pgstarb_rule   " ?sl_node " " ?Ir_node  " "?PPr_node" "  ?Pgr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;He was going to eat (S  Pg  TO  I) (suf - 0)
 (defrule SI_Pgstarb_TO_I_rule
 (declare (salience 900))
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?Pg   ?sl_node  ?Pgr_node)
 (link_name-link_lnode-link_rnode ?TO   ?Pgr_node ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node ?Ir_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?Pgr_node ?Pgword)
 (parserid-word  ?TOl_node has|had|have|need|are|is|was|were|be)
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?Ir_node  ?Iword )
 (parser_id-root ?Ir_node ?root)
 =>
  (assert (G4_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_" ?Pgword"_"?Tword"_"?Iword "  "?sword"_" ?Pgword"_"?Tword"_0  " ?sl_node " "?Pgr_node " "?TOr_node " "?Ir_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   SI_Pgstarb_TO_I_rule  "?sl_node " "?Pgr_node " "?TOr_node " "?Ir_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;They were to be eaten ( S  TO  I   Pv ) (suf - en)
 (defrule SI_TO_I_Pv_rule
 (declare (salience 900))
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?TO   ?sl_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?Ir_node ?Pvr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?Pvr_node ?Pvword )
 (parserid-word  ?TOl_node has|had|have|need|are|is|was|were|be )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?Ir_node  ?Iword )
 (parser_id-root ?Ir_node ?root)
 =>
  (assert (G4_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids "?root" " ?sword"_"?Tword"_"?Iword"_"?Pvword"   " ?sword"_"?Tword"_"?Iword"_en  " ?sl_node " "?TOr_node  " "  ?Ir_node "  " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_TO_I_Pv_rule  "?sl_node " "?TOr_node  " "  ?Ir_node "  " ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule SI_TO_I_Pv_is_be_rule
 (declare (salience 900))
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?TO   ?sl_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?Ir_node ?Pvr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?Pvr_node ?Pvword)
 (parserid-word  ?TOl_node are|is )
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?Ir_node  be )
 (parser_id-root ?Ir_node ?root)
 =>
  (assert (G4_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids "?root" " ?sword"_"?Tword"_be_"?Pvword"   " ?sword"_"?Tword"_be_en  " ?sl_node " "?TOr_node  " "  ?Ir_node "  " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_TO_I_Pv_is_be_rule  "?sl_node " "?TOr_node  " "  ?Ir_node "  " ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;They ought to have eaten (S  TO  I   PP ) (suf - en)
 (defrule SI_TO_I_PP_rule
 (declare (salience 900))
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?PP  P P $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?TO   ?sl_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?PP   ?Ir_node ?PPr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?TOl_node has|had|have|need|are|is|was|were|be )
 (parserid-word  ?TOr_node ?Tword)
 (parserid-word  ?Ir_node  ?Iword )
 (parserid-word  ?PPr_node ?PPword )
 (parser_id-root ?PPr_node ?root)
 =>
  (assert (G4_I_id_to_be_retracted ?sl_node))
 (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids "  ?root " "?sword"_"?Tword"_"?Iword"_"?PPword "  "?sword"_"?Tword"_"?Iword"_en  " ?sl_node " "?TOr_node  " "  ?Ir_node " " ?PPr_node  ")" crlf)
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_TO_I_PP_rule  "?sl_node " "?TOr_node  " "  ?Ir_node " " ?PPr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule SI_TO_I_PP_is_be_rule
 (declare (salience 900))
 (link_name-link_expansion  ?TO T O $?)
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?PP  P P $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?TO   ?sl_node  ?TOr_node)
 (link_name-link_lnode-link_rnode ?I    ?TOr_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?PP   ?Ir_node ?PPr_node)
 (link_name-link_lnode-link_rnode ?TO  ?TOl_node ?TOr_node)
 (parserid-word  ?sl_node ?sword)
 (parserid-word  ?TOl_node are|is)
 (parserid-word  ?TOr_node ?Tword )
 (parserid-word  ?Ir_node  be )
 (parserid-word  ?PPr_node ?PPword)
 (parser_id-root ?PPr_node ?root)
 =>
  (assert (G4_I_id_to_be_retracted ?sl_node))
 (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids "  ?root " "?sword"_"?Tword"_be_"?PPword "  "?sword"_"?Tword"_be_en  " ?sl_node " "?TOr_node  " "  ?Ir_node " " ?PPr_node  ")" crlf)
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_TO_I_PP_is_be_rule  "?sl_node " "?TOr_node  " "  ?Ir_node " " ?PPr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule retract_id4
 (declare (salience 801))
 (G4_I_id_to_be_retracted ?id)
 ?f0<-(Interogative_sentence ?id ?)
 =>
  (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;I am being eaten (  S  Pg  Pv )  (suf - en)
 (defrule SI_Pgstarb_Pv_rule
 (declare (salience 800))
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?Pg   ?sl_node ?Pgr_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?Pgr_node ?Pvr_node)
 (parserid-word  ?sl_node ?sword)
 (parserid-word  ?Pgr_node ?Pgword)
 (parserid-word  ?Pvr_node ?Pvword)
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G3_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?Pgword"_"?Pvword "  " ?sword"_"?Pgword"_en  " ?sl_node " " ?Pgr_node " " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_Pgstarb_Pv_rule  "?sl_node " " ?Pgr_node " " ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; Has he been coming?  ( S  PP  Pg) (suf - ing)
 (defrule SI_PP_Pgstarb_rule
 (declare (salience 800))
 (link_name-link_expansion  ?PP  P P $?)
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?PP   ?sl_node ?PPr_node)
 (link_name-link_lnode-link_rnode ?Pg   ?PPr_node ?Pgr_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?PPr_node ?PPword)
 (parserid-word  ?Pgr_node ?Pgword)
 (parser_id-root ?Pgr_node ?root)
 =>
  (assert (G3_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?PPword"_"?Pgword "  "?sword"_"?PPword"_ing  " ?sl_node " " ?PPr_node " " ?Pgr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_PP_Pgstarb_rule  "?sl_node " " ?PPr_node " " ?Pgr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;They had been eaten ( S  PP  Pv) (suf - en)
 (defrule SI_PP_Pv_rule
 (declare (salience 800))
 (link_name-link_expansion  ?PP  P P $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?PP   ?sl_node ?PPr_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?PPr_node ?Pvr_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?PPr_node ?PPword)
 (parserid-word  ?Pvr_node ?Pvword)
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G3_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?PPword"_"?Pvword "  " ?sword"_"?PPword"_en  " ?sl_node " " ?PPr_node " " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   SI_PP_Pv_rule  "  ?sl_node " " ?PPr_node " " ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; Will I be going to the market .(S  I   Pg) (suf - ing)
 (defrule SI_I_Pgstarb_rule
 (declare (salience 800))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sl_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?Pg   ?Ir_node ?Pgr_node)
 (parserid-word  ?sl_node ?sword )
 (parserid-word  ?Ir_node ?Iword )
 (parserid-word  ?Pgr_node ?Pgword)
 (parser_id-root ?Pgr_node ?root)
 =>
  (assert (G3_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?Iword"_"?Pgword "  " ?sword"_"?Iword"_ing  " ?sl_node " " ?Ir_node  " "  ?Pgr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_I_Pgstarb_rule  "?sl_node " " ?Ir_node  " "  ?Pgr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;They will be eaten ( S  I   Pv) (suf - en)
 (defrule SI_I_Pv_rule
 (declare (salience 800))
 (link_name-link_expansion  ?I  I $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sl_node  ?Ir_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?Ir_node ?Pvr_node)
 (parserid-word  ?sl_node ?sword)
 (parserid-word  ?Ir_node ?Iword )
 (parserid-word  ?Pvr_node ?Pvword )
 (parser_id-root ?Pvr_node ?root)
  =>
  (assert (G3_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids "?root" " ?sword"_"?Iword"_"?Pvword "  "?sword"_"?Iword"_en  " ?sl_node " " ?Ir_node  " " ?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_I_Pv_rule   "?sl_node " " ?Ir_node  " " ?Pvr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;They may have eaten ( S  I   PP) (suf - en)
 (defrule SI_I_PP_rule
 (declare (salience 800))
 (link_name-link_expansion  ?I  I $?)
 (link_name-link_expansion  ?PP  P P $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sl_node  ?Ir_node)
 (link_name-link_lnode-link_rnode ?PP   ?Ir_node ?PPr_node)
 (parserid-word  ?sl_node ?sword)
 (parserid-word  ?Ir_node ?Iword)
 (parserid-word  ?PPr_node ?PPword)
 (parser_id-root ?PPr_node ?root)
 =>
  (assert (G3_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp  "(root-verbchunk-tam-parser_chunkids "?root " " ?sword"_"?Iword"_"?PPword "  "  ?sword"_"?Iword"_en  " ?sl_node " " ?Ir_node  " "?PPr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids    SI_I_PP_rule   "?sl_node " " ?Ir_node  " "?PPr_node  ")" crlf)
 )
;------------------------------------------------------------------------------------------------------------------------
;Let me go to the market. 
;Let him go to the market.
;Let her go to the market.
;Let them go to the market. 
(defrule Wi_O_let_obj
(declare (salience 800))
(link_name-link_lnode-link_rnode  Wi  ?wall ?let)
(link_name-link_expansion  ?O  O $?)
(link_name-link_lnode-link_rnode ?O    ?let  ?object)
(link_name-link_lnode-link_rnode I ?let ?kriyA)
(parserid-word  ?kriyA ?word)
(parser_id-root  ?let  let)
(parser_id-root  ?kriyA  ?root)
(not (grouped_id ?let))
=>
 (assert (G3_I_id_to_be_retracted ?kriyA))
 (assert (grouped_id ?kriyA)) (assert (grouped_id ?let)) ; Added by shirisha Manju (07-12-09)
 (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root "  let_"?word "  "  let_0" " ?let" "?kriyA")" crlf)
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids  Wi_O_let_obj " ?let" "?kriyA")" crlf)
)
;Added by Sukhada
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule retract_id3
 (declare (salience 701))
 (G3_I_id_to_be_retracted ?id)
 ?f0<-(Interogative_sentence ?id ?)
 =>
 (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Where is the figure taken from (  S  Pv ) (suf - en)
 (defrule SI_Pv_rule
 (declare (salience 700))
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode Pv|Pvf ?sl_node ?Pvr_node)
 (parserid-word  ?sl_node ?sword)
 (parserid-word  ?Pvr_node ?Pvword)
 (parser_id-root ?Pvr_node ?root)
 =>
  (assert (G2_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?Pvword "  "?sword"_en  " ?sl_node " "?Pvr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_Pv_rule  " ?sl_node " "?Pvr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Where are you coming from ? (  S  Pg ) (suf - ing)
 (defrule  SI_Pgstarb_rule
 (declare (salience 700))
 (link_name-link_expansion  ?Pg  P g ? b $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?Pg  ?sl_node ?Pgr_node)
 (parserid-word  ?sl_node ?sword) 
 (parserid-word  ?Pgr_node ?Pgword)
 (parser_id-root ?Pgr_node ?root)
 =>
  (assert (G2_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids " ?root " "?sword"_"?Pgword " "?sword"_ing  " ?sl_node " " ?Pgr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_Pgstarb_rule "?sl_node " " ?Pgr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Would there be a party today .
 ;Did you put the milk in the refrigerator .( S I ) (suf - 0)
 (defrule  SI_I_rule
 (declare (salience 700))
 (link_name-link_expansion  ?I  I $?)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I    ?sl_node  ?Ir_node)
 (not (link_name-link_expansion  ?I  I * j|f))
 (parserid-word  ?sl_node ?sword)
 (parserid-word  ?Ir_node ?Iword)
 (parser_id-root ?Ir_node ?root)
 (parser_id-root-category-suffix-number  ?sl_node  ? verb ?tam  ?)
 =>
  (assert (G2_I_id_to_be_retracted ?sl_node))
  (if (or(eq ?sword does)(eq ?sword do)(eq ?sword did)) then
    (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root " "q_ ?sword"_"?Iword "  "?tam"  " ?sl_node " "?Ir_node  ")" crlf)
  else
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root " " ?sword"_"?Iword "  " ?sword"_0  " ?sl_node " "?Ir_node  ")" crlf)
  )
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids SI_I_rule "?sl_node " "?Ir_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;They had eaten.( S PP ) (suf - en)
 (defrule  SI_PP_rule
 (declare (salience 700))
 (link_name-link_expansion  ?PP  P P)
 (Interogative_sentence ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?PP   ?sl_node ?PPr_node)
 (parserid-word  ?sl_node ?sword)
 (parserid-word  ?PPr_node ?PPword)
 (parser_id-root ?PPr_node ?root)
 =>
  (assert (G2_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root " " ?sword"_"?PPword "  " ?sword"_en   " ?sl_node " " ?PPr_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_PP_rule  "?sl_node " " ?PPr_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Also recommended in the report was a new initiative to combat crime 
 ; (PF SI ) (suf - en)
 (defrule  PF_SI_rule
 (declare (salience 700))
 (link_name-link_lnode-link_rnode MVp|TO ?lnode ?rnode)
 (link_name-link_lnode-link_rnode PF ?lnode ?pf_rnode)
 (Interogative_sentence ?pf_rnode ?sr_node)
 (parserid-word  ?lnode ?lword )
 (parserid-word  ?pf_rnode ?rword )
 (parser_id-root ?lnode ?root)
 =>
  (assert (G2_I_id_to_be_retracted ?pf_rnode))
  (printout lwg_fp "(root-verbchunk-tam-parser_chunkids "?root " " ?rword"_"?lword "  " ?rword"_en   " ?pf_rnode" "?lnode  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  PF_SI_rule  "?pf_rnode" "?lnode  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule retract_id2
 (declare (salience 601))
 (G2_I_id_to_be_retracted ?id)
 ?f0<-(Interogative_sentence ?id ?)
 =>
  (retract ?f0)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;  Having written the book, she went to school. (subject is shared)
 (defrule PP_rule
 (declare (salience 100))
 (link_name-link_expansion  ?pp  P P)
 (link_name-link_lnode-link_rnode ?pp  ?ppl_node  ?ppr_node)
 (parserid-word ?ppl_node having )
 (parserid-word ?ppr_node ?word )
 (parser_id-root ?ppl_node ?root)
 =>
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids "?root " having_"?word" having_en " ?ppl_node" "?ppr_node ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  PP_rule "?ppl_node" "?ppr_node ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;I suggested he go to the party .
 (defrule  SI_I_star_J_rule
 (declare (salience 100))
 (link_name-link_expansion ?sub S I ? j) 
 (link_name-link_expansion ?I I * j)
 (link_name-link_lnode-link_rnode ?sub ?sl_node ?sr_node)
 (link_name-link_lnode-link_rnode ?I ?sl_node ?Ir_node)
 (parserid-word ?Ir_node ?Iword)
 (parser_id-root  ?Ir_node ?root)
 =>
    (printout lwg_fp "(root-verbchunk-tam-parser_chunkids root_to_be_decided " ?Iword" tam_to_be_decided " ?Ir_node ")" crlf)
    (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_without_that " ?sl_node  ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;They eat. He eats.( S )
 ; dont consider that as a verb
 ; Are a dog and a cat here ?
 (defrule  SI_without_that
 (declare (salience 50))
 (Interogative_sentence ?sl_node ?sr_node)
 (parserid-word  ?sl_node ?sword&~that)
 (parser_id-root ?sl_node ?root)
 (not (grouped_id ?sl_node))
 =>
  (assert (G1_I_id_to_be_retracted ?sl_node))
  (printout lwg_fp   "(root-verbchunk-tam-parser_chunkids root_to_be_decided " ?sword" tam_to_be_decided "  ?sl_node  ")" crlf)
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids  SI_without_that " ?sl_node  ")" crlf)
 )

