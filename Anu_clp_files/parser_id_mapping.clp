 (deffunction never-called ()
 (assert (missing-level-id))
 (assert (id-original_word))
 (assert (id-number-src))
 (assert (verb_type-verb-causative_verb-tam))
 (assert (addition-level-word-sid) )
 (assert (conjunction-components))
 (assert (id-original_word))
 (assert (using-chunk-ids))
 (assert (parserid-wordid ))
 (assert (id-cat))
 (assert (parser_id-cat_coarse))
 (assert (prep_id-relation-parser_ids))
 (assert (parser_id-root))
 (assert (No complete linkages found))
 (assert (parser_id-root-category-suffix-number))
 (assert (root-verbchunk-tam-parser_chunkids))
 (assert (lwg_root-verbchunk-tam-chunkids))
 (assert (verb_type-verb-causative_verb-tam))
 (assert (verb_type-verb-kriyA_mUla-tam))
 (assert (link_id-idiom_word_mng))
 (assert (link_id-idiom_root_mng))
 (assert (meaning_has_been_decided_for_linkid))
 (assert (parser_id-number-src))
 )
 (defglobal ?*cat_cons-file* = cat_cons_fp) 
 (defglobal ?*mng_dcd-file* = mng_dcd_fp)
 (defglobal ?*id_expr-file* = id_expr_fp)
 (defglobal ?*root-file* = root_fp)
 (defglobal ?*morph-file* = pre_morph_fp)
 (defglobal ?*lwg-file* = lwg_fp)
 (defglobal ?*rel-file* = file)
 (defglobal ?*rel-file1* = file1)
 (defglobal ?*l_rel-file* = l_rel_fp)
 (defglobal ?*num-file* = num_fp)
 (defglobal ?*e_cons-file* = e_cons_fp)

 (deffunction string_to_integer (?parser_id); [Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))
  
 ;================================   RULES FOR MAPPING RELATIONS =================================================
 (defrule map-rel
 (declare (salience 1001))
 (prep_id-relation-parser_ids - ?rel)
 =>
        (printout ?*rel-file* "("?rel")"crlf)
        (printout ?*rel-file1* "(prep_id-relation-anu_ids  -    " ?rel")"crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule map-rel_1
 (declare (salience 1000))
 (prep_id-relation-parser_ids -  ?rel ?l_id_1)
 (parserid-wordid  ?l_id_1 ?id1)
 =>
        (printout ?*rel-file* "("?rel"  "?id1")"crlf)
        (printout ?*rel-file1* "(prep_id-relation-anu_ids    -   " ?rel"  "?id1")"crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;We had wasted our journey.
 (defrule map-rel_2
 (declare (salience 1000))
 ?f0<-(prep_id-relation-parser_ids  -  ?rel ?l_id_1 ?l_id_2)
 (parserid-wordid  ?l_id_1 ?id1)
 (parserid-wordid  ?l_id_2 ?id2)
 =>
        (retract ?f0)
        (printout ?*rel-file* "("?rel"  "?id1" "?id2")"crlf)
        (printout ?*rel-file1* "(prep_id-relation-anu_ids   -   "?rel"  "?id1" "?id2")"crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;Ex. She was asked about the pay increase but made no comment.
 ;The cat sat on a mat and scratched itself loudly .(2nd-parse)
 (defrule map-rel_10001
 (declare (salience 910))
 (prep_id-relation-parser_ids  -  ?rel  ?l_id 10001)
 (parserid-wordid  ?l_id ?id)
 (id-original_word 10001 ?word)
 =>
       (printout ?*rel-file* "("?rel"  "?id"  10001)"crlf)
       (printout ?*rel-file1* "(prep_id-relation-anu_ids  - "?rel "   "?id"  10001)"crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (05-03-11)
 ;They are having a party in front of the building.
 ;The boy you called yesterday has arrived. 
 (defrule map-rel_10000
 (declare (salience 910))
 (prep_id-relation-parser_ids -  ?rel ?pid 10000)
 (parserid-wordid  ?pid ?id)
 (id-original_word 10000 ?)
 =>
       (printout ?*rel-file* "("?rel"  "?id"  10000)"crlf)
       (printout ?*rel-file1* "(prep_id-relation-anu_ids  -     "?rel"  "?id"  10000)"crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;Added by Roja (22-02-11)
 ;Ex: Your house and garden are very attractive. 
 (defrule map-conj
 (declare (salience 910))
 ?f<-(conjunction-components $?ids ?id $?ids1)
 (parserid-wordid ?id ?wid)
 =>
      (retract ?f)
      (assert  (conjunction-components $?ids ?wid $?ids1))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Added by Roja (22-02-11)
 ;Ex: Your house and garden are very attractive.
 (defrule write-conj
 (declare (salience 900))
 (conjunction-components $?ids)
 =>
       (printout ?*rel-file* "(conjunction-components  "(implode$ $?ids)")" crlf)
       (printout ?*rel-file1* "(conjunction-components  "(implode$ $?ids)")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map-rel_prep
 (declare (salience 910))
 ?f0<-(prep_id-relation-parser_ids  $?ids ?prep_id $?ids1 ?rel ?x ?y)
 (parserid-wordid  ?prep_id ?id)
 (test (neq ?prep_id -))
 =>
        (retract ?f0)
        (assert (prep_id-relation-parser_ids $?ids ?id $?ids1 ?rel ?x  ?y))
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule write-rel_prep
 (declare (salience 900))
 ?f0<-(prep_id-relation-parser_ids  $?ids ?rel ?l_id_1 ?l_id_2)
 (parserid-wordid  ?l_id_1 ?id1)
 (parserid-wordid  ?l_id_2 ?id2)
 =>
        (retract ?f0)
        (printout ?*rel-file* "("?rel"  "?id1" "?id2")"crlf)
        (printout ?*rel-file1* "(prep_id-relation-anu_ids   "(implode$ $?ids)"  "?rel"  "?id1" "?id2")"crlf)
 )
 
 ;======================================  RULES TO MAP CATEGORY   ====================================================

 (defrule map_cat
 (declare (salience 850))
 (id-cat $?var)
 =>
	(printout ?*cat_cons-file* "(id-cat " (implode$ $?var) ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule map_cat_coarse
 (declare (salience 800))
 (parser_id-cat_coarse ?p_id ?var)
 (parserid-wordid  ?p_id ?wid)
 =>
	(printout ?*cat_cons-file* "(id-cat_coarse "?wid" "?var")" crlf)
 )
 ;======================================  RULES TO MAP NUMBER   ====================================================
 (defrule map_number
 (declare (salience 700))
 (parser_id-number-src ?pid ?num ?src)
 (parserid-wordid  ?pid ?wid)
 =>
        (printout ?*num-file* "(id-number-src "?wid" "?num" "?src ")" crlf)
 )
 ;================================   MAPPING CHUNK RELATIONS   =====================================================
 (defrule map_chunk_rel
 (declare (salience 650))
 (using-chunk-ids ?rel $?ids)
 =>
        (printout ?*rel-file* "("?rel " " (implode$ $?ids)")"crlf)
 )
 ;==============================  RULES FOR MAPPING ROOT  ===========================================================
 (defrule map_root
 (declare (salience 600))
 (parserid-wordid  ?pid ?wid)
 (parser_id-root ?pid ?root)
 =>
	(printout  ?*root-file* "(id-root " ?wid " " ?root ")" crlf)
 )
 ;================================== RULES FOR MAPPING PREFERRED MORPH    ==========================================
 (defrule map_morph
 (declare (salience 550))
 (parserid-wordid  ?pid ?wid)
 (parser_id-root-category-suffix-number  ?pid $?vars)
 =>
 	(printout ?*morph-file* "(id-root-category-suffix-number "  ?wid " " (implode$ $?vars) ")" crlf)
 )
 ;=================================== RULES FOR MAPPING LWG ========================================================
 (defrule map_lwg
 (declare (salience 500))
 ?f0<-(root-verbchunk-tam-parser_chunkids  ?rt ?vb_chnk ?tam $?start ?pid $?end)
 (parserid-wordid  ?pid ?wid)
 =>
	(assert (root-verbchunk-tam-parser_chunkids  ?rt ?vb_chnk ?tam $?start ?wid $?end ))
	(retract ?f0)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule map_lwg1
 (declare (salience 450))
 ?f0<-(root-verbchunk-tam-parser_chunkids  $?vars)
 =>
 	(printout ?*lwg-file* "(root-verbchunk-tam-chunkids "  (implode$ $?vars) ")" crlf)
	(retract ?f0)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule map_cau_lwg
 (declare (salience 400))
 ?f0<-(verb_type-verb-causative_verb-tam  ?vrb_typ ?pid ?pid1 ?tam)
 (parserid-wordid  ?pid ?wid)
 (parserid-wordid  ?pid1 ?wid1)
 =>
	(assert (verb_type-verb-causative_verb-tam  ?vrb_typ ?wid ?wid1 ?tam))
	(retract ?f0)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule map_cau_lwg1
 (declare (salience 350))
 ?f0<-(verb_type-verb-causative_verb-tam  $?vars)
 =>
	(printout ?*lwg-file* "(verb_type-verb-causative_verb-tam "  (implode$ $?vars) ")" crlf)
	(retract ?f0)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule map_kri_mUl_lwg
 (declare (salience 350))
 ?f0<-(verb_type-verb-kriyA_mUla-tam  ?vrb_typ ?pid ?pid1 ?tam)
 (parserid-wordid  ?pid ?wid)
 (parserid-wordid  ?pid1 ?wid1)
 =>
        (assert (verb_type-verb-kriyA_mUla-tam  ?vrb_typ ?wid ?wid1 ?tam))
        (retract ?f0)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule map_kri_mUl_lwg1
 (declare (salience 300))
 ?f0<-(verb_type-verb-kriyA_mUla-tam  $?vars)
 =>
        (printout ?*lwg-file* "(verb_type-verb-kriyA_mUla-tam "  (implode$ $?vars) ")" crlf)
        (retract ?f0)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule map_lwg4
 (declare (salience 250))
 ?f0<-(lwg_root-verbchunk-tam-chunkids  $?vars)
 =>
	(printout ?*lwg-file* "(root-verbchunk-tam-chunkids "  (implode$ $?vars) ")" crlf)
	(retract ?f0)
 )
 ;=================================== RULES FOR MAPPING IDIOMS  ======================================================
 (defrule map_idiom_word
 (declare (salience 200))
 (link_id-idiom_word_mng    ?pid     ?mng)
 (parserid-wordid    ?pid  ?wid)
 => 
	(printout ?*id_expr-file* "(id-idiom_word_mng " ?wid "	"?mng ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 (defrule map_idiom_root
 (declare (salience 200))
 (link_id-idiom_root_mng    ?pid     ?mng)
 (parserid-wordid    ?pid  ?wid)
 =>
	(printout ?*id_expr-file* "(id-idiom_root_mng " ?wid "  "?mng ")" crlf)
 )
 ;====================================================================================================================
 (defrule map_mng_decided
 (declare (salience 150))
 (meaning_has_been_decided_for_linkid ?pid)
 (parserid-wordid    ?pid  ?wid)
 =>
	(printout ?*mng_dcd-file* "(meaning_has_been_decided  " ?wid ")" crlf)
 )

 (defrule map_constituents
 (declare (salience 150))
 ?f<-(Head-Level-Mother-Daughters  ?head  ?lvl  ?Mot $?pre ?pid $?pos)
 (parserid-wordid    ?pid  ?wid)
 =>
 	(retract ?f)
        (assert (Head-Level-Mother-Daughters  ?head  ?lvl  ?Mot $?pre ?wid $?pos))
 )

 (defrule map_constituents_head_id
 (declare (salience 150))
 ?f<-(Head-Level-Mother-Daughters  ?pid  ?lvl  ?Mot $?daut)
 (parserid-wordid    ?pid  ?wid)
 =>
 (retract ?f)
        (assert (Head-Level-Mother-Daughters  ?wid  ?lvl  ?Mot $?daut))
 )

 (defrule print_constituents
 (declare (salience 100))
 ?f<-(Head-Level-Mother-Daughters  ?head  ?lvl  ?Mot $?dau)
 =>
	(printout ?*e_cons-file* "(Head-Level-Mother-Daughters  "?head"  "?lvl"  "?Mot"  "(implode$ $?dau)")" crlf)
 )
 ;====================================================================================================================
 (defrule end
 (declare (salience -10))
 =>
	(close ?*cat_cons-file*)
	(close ?*root-file*)
	(close ?*morph-file*)
	(close ?*lwg-file*)
	(close ?*rel-file*)
	(close ?*rel-file1*)
	(close ?*l_rel-file*) 
	(close ?*id_expr-file*)
	(close ?*mng_dcd-file*)
	(close ?*num-file*)
        (close ?*e_cons-file*)
 )
 ;-------------------------------------------------------------------------------------------------------------------
