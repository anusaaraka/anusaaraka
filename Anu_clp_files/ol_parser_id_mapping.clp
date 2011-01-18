 (defglobal ?*cat_cons-file* = cat_cons_fp)
 (defglobal ?*mng_dcd-file* = mng_dcd_fp)
 (defglobal ?*id_expr-file* = id_expr_fp)
 (defglobal ?*root-file* = root_fp)
 (defglobal ?*morph-file* = pre_morph_fp)
 (defglobal ?*lwg-file* = lwg_fp)
 (defglobal ?*rel-file* = file)
 (defglobal ?*rel-file1* = file1)
 (defglobal ?*rel-debug* = rel_debug)
 (defglobal ?*link_rel-file* = link_fp)
 (defglobal ?*l_rel-file* = l_rel_fp)
 (defglobal ?*sd-rel-file* = sd_rel_fp)
 (defglobal ?*num-file* = num_fp)



 (deffacts dummy_facts
 (relation-anu_ids) 
 (id-original_word) 
 (parser_id-number)
 (conjunction-components)
 (id-original_word)
 (id-last_word)
 (using-chunk-ids)
 (parserid-wordid )
 (id-cat)
 (parser_id-cat_coarse)
 (relation-parser_ids)
 (parser_id-root)
 (parser_id-root-category-suffix-number)       
 (root-verbchunk-tam-parser_chunkids)
 (lwg_root-verbchunk-tam-chunkids)
 (verb_type-verb-causative_verb-tam)
 (verb_type-verb-kriyA_mUla-tam)
 (ol_res_id-word_id-word)
 (current_id-group_members)
 )

 

 (deffunction string_to_integer (?parser_id); [Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))


;======================================  RULES TO MAP CATEGORY   ====================================================


 (defrule map_cat_consis
 (declare (salience 900))
 (id-cat $?var)
 =>
	(printout ?*cat_cons-file* "(id-cat " (implode$ $?var) ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------- 
 (defrule modify_cat
 (declare (salience 950))
 (relation-parser_ids  kriyA-kqxanwa_kriyA_viSeRaNa ?k ?P) 
 ?f<- (parser_id-cat_coarse ?P  verbal_noun)
 =>
 (retract ?f)
 (assert (parser_id-cat_coarse ?P  verb))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map_cat_consis1
 (declare (salience 850))
 (parser_id-cat_coarse ?pid ?var)
 (parserid-wordid  ?pid ?wid)
 =>
	(printout ?*cat_cons-file* "(id-cat_coarse "?wid" "?var")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map_cat_consis2
 (declare (salience 850))
 (parser_id-cat_coarse ?pid ?var)
 (parserid-wordid  ?pid ?wid ?wid1)
 =>
        (printout ?*cat_cons-file* "(id-cat_coarse "?wid" "?var")" crlf)
        (printout ?*cat_cons-file* "(id-cat_coarse "?wid1" "?var")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Added by Roja (11-11-10)
 ;Some people take a lot of time to acclimatize themselves to the new environment.
 (defrule map_cat_consis3
 (declare (salience 850))
 (parser_id-cat_coarse ?pid ?var)
 (parserid-wordid  ?pid ?wid ?wid1 ?wid2)
 =>
        (printout ?*cat_cons-file* "(id-cat_coarse "?wid" "?var")" crlf)
        (printout ?*cat_cons-file* "(id-cat_coarse "?wid1" "?var")" crlf)
        (printout ?*cat_cons-file* "(id-cat_coarse "?wid2" "?var")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Added by Roja (11-11-10)
 ;He gave up his lucrative law practice for the sake of the country.
 (defrule map_cat_consis4
 (declare (salience 850))
 (parser_id-cat_coarse ?pid ?var)
 (parserid-wordid  ?pid ?wid ?wid1 ?wid2 ?wid3)
 =>
        (printout ?*cat_cons-file* "(id-cat_coarse "?wid" "?var")" crlf)
        (printout ?*cat_cons-file* "(id-cat_coarse "?wid1" "?var")" crlf)
        (printout ?*cat_cons-file* "(id-cat_coarse "?wid2" "?var")" crlf)
        (printout ?*cat_cons-file* "(id-cat_coarse "?wid3" "?var")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Added by Roja (11-11-10)
 ;Keep on the right side of the road.
 (defrule map_cat_consis5
 (declare (salience 850))
 (parser_id-cat_coarse ?pid ?var)
 (parserid-wordid  ?pid ?wid ?wid1 ?wid2 ?wid3 ?wid4)
 =>
        (printout ?*cat_cons-file* "(id-cat_coarse "?wid" "?var")" crlf)
        (printout ?*cat_cons-file* "(id-cat_coarse "?wid1" "?var")" crlf)
        (printout ?*cat_cons-file* "(id-cat_coarse "?wid2" "?var")" crlf)
        (printout ?*cat_cons-file* "(id-cat_coarse "?wid3" "?var")" crlf)
        (printout ?*cat_cons-file* "(id-cat_coarse "?wid4" "?var")" crlf)
 )
 
 ;================================   MAPPING CHUNK RELATIONS   ====================================================

 (defrule map_chunk_rel
 (declare (salience 901))
 (using-chunk-ids ?rel $?ids)
 =>
        (printout ?*rel-file* "("?rel " " (implode$ $?ids)")"crlf)
 )

 ;================================   RULES FOR MAPPING RELATIONS =================================================
 
 (defrule map-id
 (declare (salience 901))
 (relation-parser_ids  ?rel)
 =>
	(printout ?*rel-file* "("?rel")"crlf)
        (printout ?*rel-file1* "(relation-anu_ids   " ?rel")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map-rel1
 (declare (salience 900))
 (relation-parser_ids  ?rel ?l_id_1)
 (parserid-wordid  ?l_id_1 ?id1)
 (id-word ?id1 ?word)
 =>
        (printout ?*rel-file* "("?rel"  "?id1")"crlf)
        (printout ?*rel-file1* "(relation-anu_ids   " ?rel"  "?id1")"crlf)
        (printout ?*rel-debug* "(rule-rel_name-ids  map-rel1   relation-parser_ids   " ?rel"  "?id1")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
;I saw a bus, volvo, the king of traffic jam. How much money did you earn?
 (defrule map_samAsa
 (declare (salience 990))
 ?f<- (relation-parser_ids  samAsa ?l_id)
 (ol_res_id-word_id-word ?l_id  ?id1 $?wrds)
 (current_id-group_members ?id1 	$?wrd_ids)
 =>
 (retract ?f)
	(bind ?ids (sort < $?wrd_ids))
        (printout ?*rel-file* "(samAsa  "(implode$ ?ids)")"crlf)
        (printout ?*rel-file1* "(relation-anu_ids   samAsa  " (implode$ ?ids)")"crlf)
        (printout ?*rel-debug* "(rule-rel_name-ids   map_samAsa  relation-parser_ids   samAsa  " (implode$ ?ids)")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;I saw a bus, volvo, the king of traffic jam. How much money did you earn?
 (defrule map_samAsa_1
 (declare (salience 999))
 ?f<- (relation-parser_ids  samAsa ?l_id)
 (relation-parser_ids ?rel ?l_vi ?l_id)
 (ol_res_id-word_id-word ?l_id  ?id1 $?wrds)
 (ol_res_id-word_id-word ?l_vi  ?vi_id ?wrd)
 (current_id-group_members ?id1    $?wrd_ids ?head)
 =>
        (printout ?*rel-file* "("?rel "  "?vi_id "  "?head")"crlf)
        (printout ?*rel-file1* "(relation-anu_ids   "?rel "  "?vi_id "  "?head")"crlf)
        (printout ?*rel-debug* "(rule-rel_name-ids  map_samAsa_1  relation-parser_ids   "?rel "  "?vi_id "  "?head")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ; SOME fruit JUICES are very acidic. High income taxes are important.
 (defrule map_samAsa_viS-det_vi
 (declare (salience 1990))
 ?f<- (relation-parser_ids  samAsa ?l_id)
 (relation-parser_ids ?viSeRya-det_viSeRaNa  ?l_id  ?vi)
 (ol_res_id-word_id-word ?l_id  ?id1 $?wrds)
 (ol_res_id-word_id-word ?vi  ?vi_id ?wrd)
 (current_id-group_members ?id1    $?wrd_ids ?head)
 =>
        (printout ?*rel-file* "("?viSeRya-det_viSeRaNa"  "?head"  "?vi_id")"crlf)
        (printout ?*rel-file1* "(relation-anu_ids  " ?viSeRya-det_viSeRaNa"  "?head"  "?vi_id")"crlf)
        (printout ?*rel-debug* "(rule-rel_name-ids  map_samAsa_viS-det_vi  relation-parser_ids  "?viSeRya-det_viSeRaNa"  "?head"  "?vi_id")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Geeta and Reeta were born at the same time. (This is just a sample sentence, The object relation between 'born' and 'at the same time' is not correct for this sentence 26-09-10) 
 (defrule map_rel_x
 (declare (salience 1990))
 ?f<- (relation-parser_ids  ?rel ?id1 ?id2)
 (ol_res_id-word_id-word ?id1  ?i ?wrd)
 (ol_res_id-word_id-word ?id2  ?i2 $?wrds)
 (current_id-group_members ?i2    $?wrd_ids ?head)
 (test (>=  (length $?wrd_ids) 2))
 =>
        (printout ?*rel-file* "("?rel "  "?i"  "?head")"crlf)
        (printout ?*rel-file1* "(relation-anu_ids  " ?rel"  "?i"  "?head")"crlf)
        (printout ?*rel-debug* "(rule-rel_name-ids  map_rel_x  relation-parser_ids  "?rel"  "?i"  "?head")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;
 (defrule map_rel_y
 (declare (salience 1990))
 ?f<- (relation-parser_ids  ?rel ?id2 ?id1)
 (ol_res_id-word_id-word ?id1  ?i ?wrd)
 (ol_res_id-word_id-word ?id2  ?i2 $?wrds)
 (current_id-group_members ?i2    $?wrd_ids ?head)
 (test (>=  (length $?wrd_ids) 2))
 =>
        (printout ?*rel-file* "("?rel "  "?head"  "?i")"crlf)
        (printout ?*rel-file1* "(relation-anu_ids  " ?rel"  "?head"  "?i")"crlf)
        (printout ?*rel-debug* "(rule-rel_name-ids  map_rel_y  relation-parser_ids  "?rel"  "?head"  "?i")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;The book I was reading is wonderful
 (defrule map_10000_vi_jo
 (declare (salience 1990))
 (relation-parser_ids ?rel ?l_id P10000)
 (ol_res_id-word_id-word ?l_id  ?id1 $?wrds)
 =>
        (printout ?*rel-file* "("?rel"  "?id1  " 10000)"crlf)
        (printout ?*rel-file1* "(relation-anu_ids   "?rel" "?id1  " 10000)"crlf)
        (printout ?*rel-debug* "(rule-rel_name-ids  map_10000_vi_jo  relation-parser_ids   "?rel" "?id1  " 10000)"crlf)
 ) 
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map-rel
 (declare (salience 900))
 (relation-parser_ids  ?rel ?l_id_1 ?l_id_2)
 (parserid-wordid  ?l_id_1 ?id1)
 (parserid-wordid  ?l_id_2 ?id2)
 (id-word ?id1 ?word)
 (id-word ?id2 ?word1)
 =>
	(printout ?*rel-file* "("?rel"  "?id1" "?id2")"crlf)
        (printout ?*rel-file1* "(relation-anu_ids   "?rel"  "?id1" "?id2")"crlf)
        (printout ?*rel-debug* "(rule-rel_name-ids  map-rel  relation-parser_ids   "?rel"  "?id1" "?id2")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map-rel2
 (declare (salience 900))
 (relation-parser_ids  ?rel ?l_id_1 ?id)
 (relation-parser_ids  viSeRya-jo_samAnAXikaraNa ?l_id_2 ?id)
 (parserid-wordid  ?l_id_1 ?id1)
 (parserid-wordid  ?l_id_2 ?id2)
 (id-word ?id1 ?word)
 (id-word ?id2 ?word1)
 (id-HM-source ?id ?hmng Relative_clause)
 =>
       (printout ?*rel-file* "("?rel"  "?id1"  "?id")"crlf)
       (printout ?*rel-file* "(viSeRya-jo_samAnAXikaraNa  "?id2"  "?id")"crlf)
       (printout ?*rel-file1* "(relation-anu_ids   "?rel"  "?id1"  "?id")"crlf)
       (printout ?*rel-debug* "(rule-rel_name-ids map-rel2   relation-parser_ids   "?rel"  "?id1"  "?id")"crlf)
       (printout ?*rel-file1* "(relation-anu_ids   viSeRya-jo_samAnAXikaraNa  "?id2"  "?id")"crlf)
       (printout ?*rel-debug* "(rule-rel_name-ids map-rel2   relation-parser_ids   viSeRya-jo_samAnAXikaraNa  "?id2"  "?id")"crlf)
 ) 
 ;--------------------------------------------------------------------------------------------------------------------
 ;Ex. She was asked about the pay increase but made no comment.
 ;The cat sat on a mat and scratched itself loudly .(2nd-parse)
 (defrule map-rel3
 (declare (salience 900))
 (relation-parser_ids  kriyA-subject ?l_id 10001)
 (parserid-wordid  ?l_id ?id)
 (id-original_word 10001 ?word)
 =>
       (printout ?*rel-file* "(kriyA-subject  "?id"  10001)"crlf)
       (printout ?*rel-file1* "(relation-anu_ids   kriyA-subject  "?id"  10001)"crlf)
       (printout ?*rel-debug* "(rule-rel_name-ids map-rel3   relation-parser_ids   kriyA-subject  "?id"  10001)"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map-rel4
 (declare (salience 900))
; (relation-parser_ids   conjunction-components ?conj ?s1 ?s2)
 (conjunction-components ?conj ?s1 ?s2)
 (parserid-wordid ?s1 ?S1)
 (parserid-wordid  ?s2 ?S2)
 (parserid-wordid ?conj ?CONJ)
 ?f<-(id-original_word ?s1 ?wrd)
 ?f1<-(id-original_word ?s2 ?wrd1)
 ?f2<-(id-original_word ?conj ?wrd2)
  =>
       (retract ?f ?f1 ?f2)       
       (printout ?*rel-file* "(conjunction-components  "?CONJ"  "?S1" " ?S2")"crlf)
       (printout ?*rel-file1* "(conjunction-components  "?CONJ"  "?S1" " ?S2")"crlf)
       (printout ?*rel-debug* "(rule-rel_name-ids map-rel4  relation-parser_ids   conjunction-components  "?CONJ"  "?S1" " ?S2")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Sanal spent his summer studying basic mathematics, writing and reading comprehension.
 (defrule map-rel5
 (declare (salience 900))
 (conjunction-components ?conj ?l10 ?l12)
 (parserid-wordid ?l12 $?S1 ?head)
 (parserid-wordid  ?l10 ?S2)
 (parserid-wordid ?conj ?CONJ)
 =>
       (printout ?*rel-file* "(conjunction-components  "?CONJ"  "?S2" " ?head")"crlf)
       (printout ?*rel-file1* "(conjunction-components  "?CONJ"  "?S2" " ?head")"crlf)
       (printout ?*rel-debug* "(rule-rel_name-ids map-rel5  relation-parser_ids   conjunction-components  "?CONJ"  "?S2" " ?head")"crlf)
 )

 ;==============================  RULES FOR MAPPING ROOT    ===================================================

 ;Added newly for ol
 (defrule map_ol_root
 (declare (salience 1000))
 (ol_res_id-word_id-word   ?pid  ?wid ?wrd)
 (parser_id-root ?pid ?root)
 =>
        (printout  ?*root-file* "(id-root " ?wid " " ?root ")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;The blacksmith made an assay of iron ore.
 (defrule map_root_1
 (declare (salience 100))
 (parser_id-root ?pid ?root1 ?root2)
 (ol_res_id-word_id-word       ?pid    ?id   $?words)
 (current_id-group_members     ?id     ?id1   ?id2)
 =>
        (printout  ?*root-file* "(id-root " ?id1 " " ?root1")" crlf)
        (printout  ?*root-file* "(id-root " ?id2 " " ?root2 ")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Some people take a lot of time to acclimatize themselves to the new environment.
 (defrule map_root_2
 (declare (salience 100))
 (parser_id-root ?pid ?root1 ?root2 ?root3)
 (ol_res_id-word_id-word       ?pid      ?id   $?words)
 (current_id-group_members     ?id    ?id1   ?id2   ?id3)
 =>
        (printout  ?*root-file* "(id-root " ?id1 " " ?root1")" crlf)
        (printout  ?*root-file* "(id-root " ?id2 " " ?root2")" crlf)
        (printout  ?*root-file* "(id-root " ?id3 " " ?root3")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;He gave up his lucrative law practice for the sake of the country.
 (defrule map_root_3
 (declare (salience 100))
 (parser_id-root ?pid ?root1 ?root2 ?root3 ?root4)
 (ol_res_id-word_id-word       ?pid      ?id   $?words)
 (current_id-group_members     ?id    ?id1   ?id2   ?id3  ?id4)
 =>
        (printout  ?*root-file* "(id-root " ?id1 " " ?root1")" crlf)
        (printout  ?*root-file* "(id-root " ?id2 " " ?root2")" crlf)
        (printout  ?*root-file* "(id-root " ?id3 " " ?root3")" crlf)
        (printout  ?*root-file* "(id-root " ?id4 " " ?root4")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Keep on the right side of the road.
 (defrule map_root_4
 (declare (salience 100))
 (parser_id-root ?pid ?root1 ?root2 ?root3 ?root4 ?root5)
 (ol_res_id-word_id-word       ?pid      ?id   $?words)
 (current_id-group_members     ?id    ?id1   ?id2   ?id3  ?id4  ?id5)
 =>
        (printout  ?*root-file* "(id-root " ?id1 " " ?root1")" crlf)
        (printout  ?*root-file* "(id-root " ?id2 " " ?root2")" crlf)
        (printout  ?*root-file* "(id-root " ?id3 " " ?root3")" crlf)
        (printout  ?*root-file* "(id-root " ?id4 " " ?root4")" crlf)
        (printout  ?*root-file* "(id-root " ?id5 " " ?root5")" crlf)
 )

 ;================================== RULES FOR MAPPING PREFERRED MORPH    =========================================

 (defrule map_morph
 (declare (salience 900))
 (parserid-wordid  ?pid ?wid)
 (parser_id-root-category-suffix-number  ?pid $?vars)
 =>
 	(printout ?*morph-file* "(id-root-category-suffix-number "  ?wid " " (implode$ $?vars) ")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Added newly for ol.
 ;The blacksmith made an assay of iron ore.
 (defrule map_morph1
 (declare (salience 800))
 (ol_res_id-word_id-word	?P	?id   $?words)
 (current_id-group_members	?id	?id1   ?id2)
 (parser_id-root-category-suffix-number  ?P ?r1 ?r2 ?c ?s ?n)
 =>
        (printout ?*morph-file* "(id-root-category-suffix-number "?id1" "?r1" "?c" "?s" "?n")" crlf)
        (printout ?*morph-file* "(id-root-category-suffix-number "?id2" "?r2" "?c" "?s" "?n")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Some people take a lot of time to acclimatize themselves to the new environment.
 (defrule map_morph2
 (declare (salience 800))
 (ol_res_id-word_id-word        ?P      ?id   $?words)
 (current_id-group_members      ?id     ?id1  ?id2   ?id3)
 (parser_id-root-category-suffix-number  ?P  ?r1  ?r2  ?r3  ?c  ?s  ?n)
 =>
        (printout ?*morph-file* "(id-root-category-suffix-number "?id1" "?r1" "?c" "?s" "?n")" crlf)
        (printout ?*morph-file* "(id-root-category-suffix-number "?id2" "?r2" "?c" "?s" "?n")" crlf)
        (printout ?*morph-file* "(id-root-category-suffix-number "?id3" "?r3" "?c" "?s" "?n")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;He gave up his lucrative law practice for the sake of the country.
 (defrule map_morph3
 (declare (salience 900))
 (ol_res_id-word_id-word        ?P      ?id   $?words)
 (current_id-group_members      ?id     ?id1  ?id2  ?id3  ?id4)
 (parser_id-root-category-suffix-number  ?P  ?r1  ?r2  ?r3  ?r4  ?c  ?s  ?n)
 =>
        (printout ?*morph-file* "(id-root-category-suffix-number "?id1" "?r1" "?c" "?s" "?n")" crlf)
        (printout ?*morph-file* "(id-root-category-suffix-number "?id2" "?r2" "?c" "?s" "?n")" crlf)
        (printout ?*morph-file* "(id-root-category-suffix-number "?id3" "?r3" "?c" "?s" "?n")" crlf)
        (printout ?*morph-file* "(id-root-category-suffix-number "?id4" "?r3" "?c" "?s" "?n")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Keep on the right side of the road.
 (defrule map_morph4
 (declare (salience 900))
 (ol_res_id-word_id-word        ?P      ?id   $?words)
 (current_id-group_members      ?id     ?id1  ?id2  ?id3  ?id4  ?id5)
 (parser_id-root-category-suffix-number  ?P  ?r1  ?r2  ?r3  ?r4  ?r5  ?c  ?s  ?n)
 =>
        (printout ?*morph-file* "(id-root-category-suffix-number "?id1" "?r1" "?c" "?s" "?n")" crlf)
        (printout ?*morph-file* "(id-root-category-suffix-number "?id2" "?r2" "?c" "?s" "?n")" crlf)
        (printout ?*morph-file* "(id-root-category-suffix-number "?id3" "?r3" "?c" "?s" "?n")" crlf)
        (printout ?*morph-file* "(id-root-category-suffix-number "?id4" "?r4" "?c" "?s" "?n")" crlf)
        (printout ?*morph-file* "(id-root-category-suffix-number "?id5" "?r5" "?c" "?s" "?n")" crlf)
 )

 ;=================================== RULES FOR MAPPING LWG ===========================================

 (defrule map_lwg
 (declare (salience 900))
 ?f0<-(root-verbchunk-tam-parser_chunkids  ?rt ?vb_chnk ?tam $?start ?pid $?end)
 (parserid-wordid  ?pid ?wid)
 =>
	(assert (root-verbchunk-tam-parser_chunkids  ?rt ?vb_chnk ?tam $?start ?wid $?end ))
	(retract ?f0)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map_lwg1
 (declare (salience 100))
 ?f0<-(root-verbchunk-tam-parser_chunkids  $?vars)
 =>
 	(printout ?*lwg-file* "(root-verbchunk-tam-chunkids "  (implode$ $?vars) ")" crlf)
	(retract ?f0)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map_cau_lwg
 (declare (salience 900))
 ?f0<-(verb_type-verb-causative_verb-tam  ?vrb_typ ?pid ?pid1 ?tam)
 (parserid-wordid  ?pid ?wid)
 (parserid-wordid  ?pid1 ?wid1)
 =>
	(assert (verb_type-verb-causative_verb-tam  ?vrb_typ ?wid ?wid1 ?tam))
	(retract ?f0)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map_cau_lwg1
 (declare (salience 100))
 ?f0<-(verb_type-verb-causative_verb-tam  $?vars)
 =>
	(printout ?*lwg-file* "(verb_type-verb-causative_verb-tam "  (implode$ $?vars) ")" crlf)
	(retract ?f0)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map_kri_mUl_lwg
 (declare (salience 900))
 ?f0<-(verb_type-verb-kriyA_mUla-tam  ?vrb_typ ?pid ?pid1 ?tam)
 (parserid-wordid  ?pid ?wid)
 (parserid-wordid  ?pid1 ?wid1)
 =>
        (assert (verb_type-verb-kriyA_mUla-tam  ?vrb_typ ?wid ?wid1 ?tam))
        (retract ?f0)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map_kri_mUl_lwg1
 (declare (salience 100))
 ?f0<-(verb_type-verb-kriyA_mUla-tam  $?vars)
 =>
        (printout ?*lwg-file* "(verb_type-verb-kriyA_mUla-tam "  (implode$ $?vars) ")" crlf)
        (retract ?f0)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map_lwg4
 (declare (salience 100))
 ?f0<-(lwg_root-verbchunk-tam-chunkids  $?vars)
 =>
	(printout ?*lwg-file* "(root-verbchunk-tam-chunkids "  (implode$ $?vars) ")" crlf)
	(retract ?f0)
 )

 ;================================= RULES FOR MAPPING MEANING HAS BEEN DECIDED  ===============================

 (defrule map_mng_decided
 (declare (salience 900))
 (meaning_has_been_decided_for_linkid ?pid)
 (parserid-wordid    ?pid  ?wid)
 =>
	(printout ?*mng_dcd-file* "(meaning_has_been_decided  " ?wid ")" crlf)
 )


 ; Added by Roja.(06-11-10)
 ; In Link/Stanford parser, Number information was taken from morph(apertium).
 ; OL parser itself gives its own Number information. So following rules are added to map the ids.

 ;====================================   RULES FOR MAPPING NUMBER    ==========================================

 ;Mapping number 
 (defrule map_number1
 (declare (salience 850))
 ?f<- (parser_id-number ?pid  ?num) 
 (parserid-wordid    ?pid  ?wid)
 (not (id-number-src  ?wid  ?num ?))
 =>
        (retract ?f)
        (assert (id-number-src ?wid  ?num OL))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;The blacksmith made an assay of iron ore.
 (defrule map_number2
 (declare (salience 840))
 ?f0<-(parser_id-number ?pid  ?num)
 (ol_res_id-word_id-word  ?pid	?id  ?wrd1  ?wrd2)
 (current_id-group_members  ?id   ?wid1  ?wid2)
 =>
	(retract ?f0)
        (assert (id-number-src ?wid1  ?num OL))
        (assert (id-number-src ?wid2  ?num OL))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Some people take a lot of time to acclimatize themselves to the new environment.
 (defrule map_number3
 (declare (salience 840))
 ?f0<-(parser_id-number ?pid  ?num)
 (ol_res_id-word_id-word  ?pid  ?id  ?wrd1  ?wrd2  ?wrd3)
 (current_id-group_members  ?id   ?wid1  ?wid2  ?wid3)
 =>
        (retract ?f0)
        (assert (id-number-src ?wid1  ?num OL))
        (assert (id-number-src ?wid2  ?num OL))
        (assert (id-number-src ?wid3  ?num OL))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;He gave up his lucrative law practice for the sake of the country.
 (defrule map_number4
 (declare (salience 840))
 ?f0<-(parser_id-number ?pid   ?num)
 (ol_res_id-word_id-word  ?pid  ?id  ?wrd1  ?wrd2  ?wrd3  ?wrd4)
 (current_id-group_members  ?id   ?wid1  ?wid2  ?wid3  ?wid4)
 =>
        (retract ?f0)
        (assert (id-number-src ?wid1  ?num OL))
        (assert (id-number-src ?wid2  ?num OL))
        (assert (id-number-src ?wid3  ?num OL))
	(assert (id-number-src ?wid4  ?num OL))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Keep on the right side of the road.
 (defrule map_number5
 (declare (salience 840))
 ?f0<-(parser_id-number ?pid   ?num)
 (ol_res_id-word_id-word  ?pid  ?id  ?wrd1  ?wrd2  ?wrd3  ?wrd4  ?wrd5)
 (current_id-group_members  ?id   ?wid1  ?wid2 ?wid3 ?wid4  ?wid5)
 =>
        (retract ?f0)
        (assert (id-number-src ?wid1  ?num OL))
        (assert (id-number-src ?wid2  ?num OL))
        (assert (id-number-src ?wid3  ?num OL))
	(assert (id-number-src ?wid4  ?num OL))
	(assert (id-number-src ?wid5  ?num OL))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;default number rule 
 (defrule default_number
 (declare (salience 150))
 ?f0<-(id-number-src  ?id  -  OL)
 =>
        (retract ?f0)
        (assert (id-number-src ?id  s  Default))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;print the number info into a file.
 (defrule  number_rule
 (declare (salience 100))
 (id-number-src ?wid  ?num  ?src)
 =>
      (printout ?*num-file* "(id-number-src  " ?wid  "  "   ?num  "  "  ?src ")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -10))
 =>
	(close ?*cat_cons-file*)
	(close ?*root-file*)
	(close ?*morph-file*)
	(close ?*lwg-file*)
	(close ?*rel-file*)
	(close ?*rel-file1*)
        (close ?*link_rel-file*)
	(close ?*l_rel-file*) 
	(close ?*id_expr-file*)
	(close ?*mng_dcd-file*)
	(close ?*sd-rel-file*)
        (close ?*num-file*)
 )
 ;--------------------------------------------------------------------------------------------------------------------
