 (defglobal ?*cat_cons-file* = cat_cons_fp)
 (defglobal ?*root-file* = root_fp)
 (defglobal ?*morph-file* = pre_morph_fp)
 (defglobal ?*lwg-file* = lwg_fp)
 (defglobal ?*rel-file* = file)
 (defglobal ?*rel-file1* = file1)
 (defglobal ?*rel-debug* = rel_debug)
 (defglobal ?*num-file* = num_fp)
 (defglobal ?*e_cons_file* = e_cons_fp)

 (deffunction never-called ()
 (assert (parser_id-number))
 (assert (conjunction-components))
 (assert (using-chunk-ids))
 (assert (parserid-wordid ))
 (assert (id-cat))
 (assert (parser_id-cat_coarse))
 (assert (prep_id-relation-parser_ids ))
 (assert (parser_id-root))
 (assert (parser_id-root-category-suffix-number)       )
 (assert (root-verbchunk-tam-parser_chunkids))
 (assert (lwg_root-verbchunk-tam-chunkids))
 (assert (verb_type-verb-causative_verb-tam))
 (assert (verb_type-verb-kriyA_mUla-tam))
 (assert (ol_res_id-word_id-word))
 (assert (current_id-group_members))
 )

 (deffunction string_to_integer (?parser_id); [Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

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
 ;Added by Roja (31-3-11)
 ;The blacksmith made an assay of iron ore.
 (defrule map_compound_root
 (declare (salience 990))
 ?f<-(parser_id-root ?pid ?root )
 (ol_res_id-word_id-word       ?pid    ?id  $?list)
 (current_id-group_members     ?id     $?wid)
 =>
        (loop-for-count (?i 1 (length $?list))
            (bind ?wrd (nth$ ?i $?list))
            (bind ?wid1 (nth$ ?i $?wid))
            (if (or (eq ?wrd ?root) (eq ?wrd (lowcase ?root)) )then
             (printout  ?*root-file* "(id-root " ?wid1 " " ?root")" crlf)'
             (retract ?f)
            )
        )
 )

 ;======================================  RULES TO MAP CATEGORY   ====================================================

 ;I saw him telling her about the party. 
 (defrule modify_cat
 (declare (salience 985))
 (prep_id-relation-parser_ids   ?prep  kriyA-kqxanwa_kriyA_viSeRaNa ?k ?P) 
 ?f<- (parser_id-cat_coarse ?P  verbal_noun)
 =>
 (retract ?f)
 (assert (parser_id-cat_coarse ?P  verb))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Added by Roja (31-3-11)
 ;Some people take a lot of time to acclimatize themselves to the new environment.
 (defrule map_cat_consis
 (declare (salience 980))
 (parser_id-cat_coarse ?pid ?var)
 (parserid-wordid  ?pid $?wid)
 =>
        (loop-for-count (?i 1 (length $?wid))
            (bind ?wid1 (nth$ ?i $?wid))
            (printout ?*cat_cons-file* "(id-cat_coarse "?wid1" "?var")" crlf)
        )
 )
 ;================================   RULES FOR MAPPING RELATIONS =================================================
 ;SOME fruit JUICES are very acidic. High income taxes are important.
 (defrule map_samAsa_viS-det_vi
 (declare (salience 970))
 ?f<- (prep_id-relation-parser_ids  -  samAsa ?l_id)
 (prep_id-relation-parser_ids   ?p ?vi-det_vi  ?l_id  ?vi)
 (ol_res_id-word_id-word ?l_id  ?id1 $?wrds)
 (ol_res_id-word_id-word ?vi  ?vi_id ?wrd)
 (current_id-group_members ?id1    $?wrd_ids ?head)
 =>
        (printout ?*rel-file* "("?vi-det_vi"  "?head"  "?vi_id")"crlf)
        (printout ?*rel-file1* "(prep_id-relation-anu_ids   "?p"  " ?vi-det_vi"  "?head"  "?vi_id")"crlf)
        (printout ?*rel-debug* "(rule-rel_name-ids  map_samAsa_viS-det_vi  prep_id-relation-parser_ids "?p"  "?vi-det_vi"  "?head"  "?vi_id")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Geeta and Reeta were born at the same time. (This is just a sample sentence, The object relation between 'born' and 'at the same time' is not correct for this sentence 26-09-10) 
 (defrule map_rel_x
 (declare (salience 970))
 ?f<- (prep_id-relation-parser_ids  ?p  ?rel ?id1 ?id2)
 (ol_res_id-word_id-word ?id1  ?i ?wrd)
 (ol_res_id-word_id-word ?id2  ?i2 $?wrds)
 (current_id-group_members ?i2    $?wrd_ids ?head)
 (test (>=  (length $?wrd_ids) 2))
 =>
        (printout ?*rel-file* "("?rel "  "?i"  "?head")"crlf)
        (printout ?*rel-file1* "(prep_id-relation-anu_ids   "?p"  " ?rel"  "?i"  "?head")"crlf)
        (printout ?*rel-debug* "(rule-rel_name-ids  map_rel_x  prep_id-relation-parser_ids   -  "?rel"  "?i"  "?head")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;The book I was reading is wonderful
 (defrule map_10000_vi_jo
 (declare (salience 970))
 (prep_id-relation-parser_ids   - ?rel ?l_id P10000)
 (ol_res_id-word_id-word ?l_id  ?id1 $?wrds)
 =>
        (printout ?*rel-file* "("?rel"  "?id1  " 10000)"crlf)
        (printout ?*rel-file1* "(prep_id-relation-anu_ids   -   "?rel" "?id1  " 10000)"crlf)
        (printout ?*rel-debug* "(rule-rel_name-ids  map_10000_vi_jo  prep_id-relation-parser_ids   -   "?rel" "?id1  " 10000)"crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------- 
 ;Keep on the right side of the road.
 (defrule map-rel_prep
 (declare (salience 960))
 ?f0<-(prep_id-relation-parser_ids  $?ids ?prep_id $?ids1 ?rel ?x ?y)
 (parserid-wordid  ?prep_id $?prp)
 (test (neq ?prep_id -))
 =>
        (retract ?f0)
        (assert (prep_id-relation-parser_ids $?ids $?prp $?ids1 ?rel ?x  ?y))
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;Keep on the right side of the road.
 (defrule map-rel_1
 (declare (salience 950))
 ?f0<-(prep_id-relation-parser_ids  $?ids ?rel ?l_id_1 ?l_id_2)
 (parserid-wordid  ?l_id_1 ?id1)
 (parserid-wordid  ?l_id_2 ?id2)
 =>
        (retract ?f0)
        (printout ?*rel-file* "("?rel"  "?id1" "?id2")"crlf)
        (printout ?*rel-file1* "(prep_id-relation-anu_ids   "(implode$ $?ids)"  "?rel"  "?id1" "?id2")"crlf)
        (printout ?*rel-debug* "(rule-rel_name-ids  map-rel  map-rel_1   "(implode$ $?ids)"   "?rel"  "?id1" "?id2")"crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;I saw a bus, volvo, the king of traffic jam. How much money did you earn?
 ;The blacksmith made an assay of iron ore.
 (defrule map_samAsa_1
 (declare (salience 940))
 ?f<- (prep_id-relation-parser_ids   -  samAsa ?l_id)
 (prep_id-relation-parser_ids   ?p ?rel ?l_vi ?l_id)
 (ol_res_id-word_id-word ?l_id  ?id1 $?wrds)
 (ol_res_id-word_id-word ?l_vi  ?vi_id ?wrd)
 (current_id-group_members ?id1    $?wrd_ids ?head)
 =>
        (printout ?*rel-file* "("?rel "  "?vi_id "  "?head")"crlf)
        (printout ?*rel-file1* "(prep_id-relation-anu_ids   "?p"   "?rel "  "?vi_id "  "?head")"crlf)
        (printout ?*rel-debug* "(rule-rel_name-ids  map_samAsa_1  prep_id-relation-parser_ids "?p"   "?rel "  "?vi_id "  "?head")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;I saw a bus, volvo, the king of traffic jam. How much money did you earn?
 (defrule map_samAsa
 (declare (salience 930))
 ?f<- (prep_id-relation-parser_ids   -  samAsa ?l_id)
 (ol_res_id-word_id-word ?l_id  ?id1 $?wrds)
 (current_id-group_members ?id1         $?wrd_ids)
 =>
      (retract ?f)
      (bind ?ids (sort < $?wrd_ids))
      (printout ?*rel-file* "(samAsa  "(implode$ ?ids)")"crlf)
      (printout ?*rel-file1* "(prep_id-relation-anu_ids   -   samAsa  " (implode$ ?ids)")"crlf)
      (printout ?*rel-debug* "(rule-rel_name-ids   map_samAsa  prep_id-relation-parser_ids   -   samAsa  " (implode$ ?ids)")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Added by Roja (15-02-11)
 ;Ex: Your house and garden are very attractive. 
 (defrule map-conj
 (declare (salience 920))
 ?f<-(conjunction-components $?ids ?id $?ids1)
 (parserid-wordid ?id ?wid)
 =>
      (retract ?f)
      (assert  (conjunction-components $?ids ?wid $?ids1))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Added by Roja (15-02-11)
 ;Ex: Your house and garden are very attractive.
 (defrule write-conj
 (declare (salience 910))
 (conjunction-components $?ids)
 =>
       (printout ?*rel-file* "(conjunction-components  "(implode$ $?ids)")" crlf)
       (printout ?*rel-file1* "(conjunction-components  "(implode$ $?ids)")"crlf)
       (printout ?*rel-debug* "(rule-rel_name-ids write-conj   conjunction-components  "(implode$ $?ids) ")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map-rel
 (declare (salience 900))
 ?f0<-(prep_id-relation-parser_ids   -  ?rel ?l_id_1 ?l_id_2)
 (parserid-wordid  ?l_id_1 ?id1)
 (parserid-wordid  ?l_id_2 ?id2)
 =>
	(retract ?f0)
	(printout ?*rel-file* "("?rel"  "?id1" "?id2")"crlf)
        (printout ?*rel-file1* "(prep_id-relation-anu_ids   -   "?rel"  "?id1" "?id2")"crlf)
        (printout ?*rel-debug* "(rule-rel_name-ids  map-rel  prep_id-relation-parser_ids   -   "?rel"  "?id1" "?id2")"crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map-rel1
 (declare (salience 890))
 (prep_id-relation-parser_ids   -  ?rel ?l_id_1)
 (parserid-wordid  ?l_id_1 ?id1)
 =>
        (printout ?*rel-file* "("?rel"  "?id1")"crlf)
        (printout ?*rel-file1* "(prep_id-relation-anu_ids    -   " ?rel"  "?id1")"crlf)
        (printout ?*rel-debug* "(rule-rel_name-ids  map-rel1   prep_id-relation-parser_ids   -   " ?rel"  "?id1")"crlf)
 )

 ;================================== RULES FOR MAPPING PREFERRED MORPH    =========================================

 (defrule map_morph
 (declare (salience 880))
 (parserid-wordid  ?pid ?wid)
 (parser_id-root-category-suffix-number  ?pid $?vars)
 =>
 	(printout ?*morph-file* "(id-root-category-suffix-number "  ?wid " " (implode$ $?vars) ")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;Added by Roja (30-03-11).
 ;The blacksmith made an assay of iron ore.
 (defrule map_compound_morph
 (declare (salience 870))
 (ol_res_id-word_id-word	?P	?id   $?words)
 (current_id-group_members	?id	$?ids)
 ?f<-(parser_id-root-category-suffix-number  ?P ?r ?c ?s ?n)
 =>
        (loop-for-count (?i 1 (length $?words))
               (bind ?wrd (nth$ ?i $?words))
               (bind ?wid (nth$ ?i $?ids))
               (if (or (eq ?wrd ?r) (eq ?wrd (lowcase ?r)) ) then 
                 (printout ?*morph-file* "(id-root-category-suffix-number "?wid" "?r"  "?c" "?s" "?n")" crlf)
                 (retract ?f)
               )
        )
 )
 ;=================================== RULES FOR MAPPING LWG ===========================================

 (defrule map_lwg
 (declare (salience 860))
 ?f0<-(root-verbchunk-tam-parser_chunkids  ?rt ?vb_chnk ?tam $?start ?pid $?end)
 (parserid-wordid  ?pid ?wid)
 =>
	(assert (root-verbchunk-tam-parser_chunkids  ?rt ?vb_chnk ?tam $?start ?wid $?end ))
	(retract ?f0)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map_cau_lwg
 (declare (salience 850))
 ?f0<-(verb_type-verb-causative_verb-tam  ?vrb_typ ?pid ?pid1 ?tam)
 (parserid-wordid  ?pid ?wid)
 (parserid-wordid  ?pid1 ?wid1)
 =>
        (assert (verb_type-verb-causative_verb-tam  ?vrb_typ ?wid ?wid1 ?tam))
        (retract ?f0)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map_kri_mUl_lwg
 (declare (salience 840))
 ?f0<-(verb_type-verb-kriyA_mUla-tam  ?vrb_typ ?pid ?pid1 ?tam)
 (parserid-wordid  ?pid ?wid)
 (parserid-wordid  ?pid1 ?wid1)
 =>
        (assert (verb_type-verb-kriyA_mUla-tam  ?vrb_typ ?wid ?wid1 ?tam))
        (retract ?f0)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map_lwg1
 (declare (salience 830))
 ?f0<-(root-verbchunk-tam-parser_chunkids  $?vars)
 =>
 	(printout ?*lwg-file* "(root-verbchunk-tam-chunkids "  (implode$ $?vars) ")" crlf)
	(retract ?f0)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map_cau_lwg1
 (declare (salience 820))
 ?f0<-(verb_type-verb-causative_verb-tam  $?vars)
 =>
	(printout ?*lwg-file* "(verb_type-verb-causative_verb-tam "  (implode$ $?vars) ")" crlf)
	(retract ?f0)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map_kri_mUl_lwg1
 (declare (salience 810))
 ?f0<-(verb_type-verb-kriyA_mUla-tam  $?vars)
 =>
        (printout ?*lwg-file* "(verb_type-verb-kriyA_mUla-tam "  (implode$ $?vars) ")" crlf)
        (retract ?f0)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 (defrule map_lwg4
 (declare (salience 800))
 ?f0<-(lwg_root-verbchunk-tam-chunkids  $?vars)
 =>
	(printout ?*lwg-file* "(root-verbchunk-tam-chunkids "  (implode$ $?vars) ")" crlf)
	(retract ?f0)
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ; Added by Roja.(06-11-10)
 ; In Link/Stanford parser, Number information was taken from morph(apertium).
 ; OL parser itself gives its own Number information. So following rules are added to map the ids.

 ;====================================   RULES FOR MAPPING NUMBER    ==========================================

 ;Mapping number 
 (defrule map_number1
 (declare (salience 790))
 ?f<- (parser_id-number ?pid  ?num) 
 (parserid-wordid    ?pid  ?wid)
 (not (id-number-src  ?wid  ?num ?))
 =>
        (retract ?f)
        (assert (id-number-src ?wid  ?num OL))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;The blacksmith made an assay of iron ore.
 (defrule map_compound_number
 (declare (salience 780))
 ?f0<-(parser_id-number ?pid  ?num)
 (ol_res_id-word_id-word  ?pid	?id  $?wrd)
 (current_id-group_members  ?id   $?wid)
 =>
        (loop-for-count (?i 1 (length $?wrd))
             (bind ?wid1 (nth$ ?i $?wid))
             (assert (id-number-src ?wid1  ?num OL))
  	     (retract ?f0)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;default number rule 
 (defrule default_number
 (declare (salience 770))
 ?f0<-(id-number-src  ?id  -  OL)
 =>
        (retract ?f0)
        (assert (id-number-src ?id  s  Default))
 )
 ;--------------------------------------------------------------------------------------------------------------------
 ;print the number info into a file.
 (defrule  number_rule
 (declare (salience 760))
 (id-number-src ?wid  ?num  ?src)
 =>
      (printout ?*num-file* "(id-number-src  " ?wid  "  "   ?num  "  "  ?src ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------- 
 (defrule map_constituents
 (declare (salience 150))
 ?f<-(Head-Level-Mother-Daughters  ?head  ?lvl  ?Mot $?pre ?pid $?pos)
 (parserid-wordid    ?pid  $?wid)
 =>
        (retract ?f)
        (assert (Head-Level-Mother-Daughters  ?head  ?lvl  ?Mot $?pre $?wid $?pos)))

 (defrule print_constituents
 (declare (salience 100))
 ?f<-(Head-Level-Mother-Daughters  ?head  ?lvl  ?Mot $?dau)
 =>
        (printout ?*e_cons_file* "(Head-Level-Mother-Daughters  "?head"  "?lvl"  "?Mot"  "(implode$ $?dau)")" crlf)
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
	(close ?*rel-debug*)
        (close ?*num-file*)
        (close ?*e_cons_file*)
 )
 ;--------------------------------------------------------------------------------------------------------------------
