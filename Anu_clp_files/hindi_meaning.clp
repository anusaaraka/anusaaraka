 (defglobal ?*hin_mng_file* = fp)
 (defglobal ?*hin_mng_file1* = fp1)

 (deffunction never-called ()
 (assert (prep_id-relation-anu_ids))
 (assert (No complete linkages found))
 (assert (missing-level-id) )
 (assert (id-original_word) )
 (assert (verb_type-verb-causative_verb-tam) )
 (assert (addition-level-word-sid) )
 (assert (affecting_id-affected_ids-wsd_group_word_mng))
 (assert (id-wsd_number) )
 (assert (id-wsd_root))
 (assert (ids-cmp_mng-head-cat-mng_typ-priority))
 (assert (verb_type-verb-kriyA_mUla-tam))
 (assert (id-sen_mng))
 (assert (id-tam_type))
 (assert (kriyA_id-object2_viBakwi))
 (assert (kriyA_id-object1_viBakwi))
 (assert (kriyA_id-object_viBakwi))
 (assert (kriyA_id-subject_viBakwi))
 (assert (id-H_vib_mng))
 (assert (make_verbal_noun))
 (assert (root_id-TAM-vachan))
 (assert (id-E_tam-H_tam_mng))
 (assert (id-preceeding_part_of_verb))
 (assert (meaning_has_been_decided))
 (assert (id-cat))
 (assert (id-cat_coarse))
 (assert (root-verbchunk-tam-chunkids))
 (assert (id-attach_emphatic))
 (assert (conjunction-components))
 )

 ;for MWE meaning will be assinged to the last word (single mng will be given to all words).So,by this rule we are retracting cntrl facts for remaining ids.
 (defrule mng_decided
 (declare (salience 9800))
 ?f<-(mng_has_been_decided ?id)
 ?mng<-(meaning_to_be_decided ?id)
 =>
 (retract ?mng)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ; meaning for the whole sentence
 (defrule complete_sen_trans
 (declare (salience 9500))
 (id-sen_mng ?id ?sen_mng)
 ?mng<-(meaning_to_be_decided ?id)
 =>
	(retract ?mng)
	(printout ?*hin_mng_file* "(id-HM-source  " ?id "  "?sen_mng"   Complete_sen_gdbm)" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ; In LWG meaning meaning for the head word is taken (as other words become tam part).
 ; For the group other than head-id this rule will assert a cntrl fact that mng_has_been_decided.
 (defrule lwg_mng
 (declare (salience 9000))
 (root-verbchunk-tam-chunkids   ?pada_head  ?  ?tam  $?ids ?pada_id)
 (not (verb_type-verb-kriyA_mUla-tam $?)) ;I made it clear that I was angry .
 =>
	(bind ?len (length $?ids))
	(loop-for-count (?i 1 ?len)
		(bind ?id (nth$ ?i $?ids))
		(printout ?*hin_mng_file* "(id-HM-source  " ?id "  -   LWG)" crlf)
                (assert (mng_has_been_decided ?id))
	)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Comparing wsd_MWE_mng and database_mng and deciding the meaning
 ;if wsd_MWE length is >= the length of th db_mng take wsd_MWE_mng else db_mng
 ;They seem to resemble each other .
 (defrule compare_wsd_and_db_MWE_word_mng
 (declare (salience 8701))
 (affecting_id-affected_ids-wsd_group_word_mng  ?id  $?ids ?mng)
 (ids-cmp_mng-head-cat-mng_typ-priority $?cmp_ids ?mng1 ?head_id ?grp_cat ?mng_typ ?)
 (root-verbchunk-tam-chunkids   ?pada_head  ?  ?tam  $?ids1)
 (test (not (member$ ?id $?ids1)));; Assuming lwg_ids (verb-verb connection) will not be part of compound phrase (noun-noun connection)
 ?f<-(meaning_to_be_decided ?id)
 (test (eq (nth$ ?head_id $?cmp_ids) ?id))
  =>
 (retract ?f)
 (bind ?length (+ (length $?ids) 1))
 (bind ?cmp_length (length $?cmp_ids))
 (if (or (> ?length ?cmp_length) (= ?length ?cmp_length)) then
  (loop-for-count (?i  1 ?length)
                (bind ?id1 (nth$ ?i $?ids))
                (if (neq ?id1 ?id ) then
                (printout ?*hin_mng_file* "(id-HM-source  " ?id1 "  -    WSD_compound_phrase_word_mng)" crlf)
                (assert (mng_has_been_decided ?id1)))
  )
  (printout ?*hin_mng_file* "(id-HM-source  " ?id "  "?mng"    WSD_compound_phrase_word_mng)" crlf)
  (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?mng"    WSD_compound_phrase_word_mng" ?id" "(implode$ $?ids)")" crlf) 
  else
  (loop-for-count (?i  1 ?cmp_length)
                (bind ?id1 (nth$ ?i $?cmp_ids))
                (if (neq ?id1 ?id) then
                (if (eq ?mng_typ RM) then
                (printout ?*hin_mng_file* "(id-HM-source  " ?id1 "  -    Database_compound_phrase_root_mng)" crlf)
                else
                (printout ?*hin_mng_file* "(id-HM-source  " ?id1 "  -    Database_compound_phrase_word_mng)" crlf))
                (assert (mng_has_been_decided ?id1))
                )
  )
  (if (eq ?mng_typ RM) then
  (printout ?*hin_mng_file* "(id-HM-source  " ?id "  "?mng1"    Database_compound_phrase_root_mng)" crlf)
  (printout  "(id-HM-source-grp_ids  " ?id "  "?mng1"    Database_compound_phrase_root_mng "(implode$ $?cmp_ids)")" crlf)
  else 
  (printout ?*hin_mng_file* "(id-HM-source  " ?id "  "?mng1"    Database_compound_phrase_word_mng)" crlf)
  (printout ?*hin_mng_file* "(id-HM-source-grp_ids  " ?id "  "?mng1"    Database_compound_phrase_word_mng "(implode$ $?cmp_ids)")" crlf))
  ))
  ;--------------------------------------------------------------------------------------------------------------
  ;Comparing wsd_MWE_mng and database_mng and deciding the meaning
 ;if wsd_MWE length is >= the length of th db_mng take wsd_MWE_mng else db_mng
 ;They seem to resemble each other .
 (defrule compare_wsd_and_db_MWE_root_mng
 (declare (salience 8700))
 (affecting_id-affected_ids-wsd_group_root_mng  ?id  $?ids ?mng)
 (ids-cmp_mng-head-cat-mng_typ-priority $?cmp_ids ?mng1 ?head_id ?grp_cat ?mng_typ ?)
 (root-verbchunk-tam-chunkids   ?pada_head  ?  ?tam  $?ids1)
 (test (not (member$ ?id $?ids1)));; Assuming lwg_ids (verb-verb connection) will not be part of compound phrase (noun-noun connection)
 ?f<-(meaning_to_be_decided ?id)
 (test (eq (nth$ ?head_id $?cmp_ids) ?id))
  =>
 (retract ?f)
 (bind ?length (+ (length $?ids) 1))
 (bind ?cmp_length (length $?cmp_ids))
 (if (or (> ?length ?cmp_length) (= ?length ?cmp_length)) then
  (loop-for-count (?i  1 ?length)
                (bind ?id1 (nth$ ?i $?ids))
                (if (neq ?id1 ?id ) then
                (printout ?*hin_mng_file* "(id-HM-source  " ?id1 "  -    WSD_compound_phrase_root_mng)" crlf)
                (assert (mng_has_been_decided ?id1)))
  )
  (printout ?*hin_mng_file* "(id-HM-source  " ?id "  "?mng"    WSD_compound_phrase_root_mng)" crlf)
  (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?mng"    WSD_compound_phrase_root_mng "?id" "(implode$ $?ids)")" crlf)
  else
  (loop-for-count (?i  1 ?cmp_length)
                (bind ?id1 (nth$ ?i $?cmp_ids))
                (if (neq ?id1 ?id) then
                (if (eq ?mng_typ RM) then
                (printout ?*hin_mng_file* "(id-HM-source  " ?id1 "  -    Database_compound_phrase_root_mng)" crlf)
                else
                (printout ?*hin_mng_file* "(id-HM-source  " ?id1 "  -    Database_compound_phrase_word_mng)" crlf))
                (assert (mng_has_been_decided ?id1))
  ))
  (if (eq ?mng_typ RM) then
  (printout ?*hin_mng_file* "(id-HM-source  " ?id "  "?mng1"    Database_compound_phrase_root_mng)" crlf)
  (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?mng1"    Database_compound_phrase_root_mng "(implode$ $?cmp_ids)")" crlf)
  else
  (printout ?*hin_mng_file* "(id-HM-source  " ?id "  "?mng1"    Database_compound_phrase_word_mng)" crlf)
  (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?mng1"    Database_compound_phrase_word_mng "(implode$ $?cmp_ids)")" crlf))
  )
  )
  ;--------------------------------------------------------------------------------------------------------------
 ; WSD compound phrase mng.
 ; They seem to resemble each other .
 (defrule wsd_cmp_phrase_mng_word_mng
 (declare (salience 8602))
 (affecting_id-affected_ids-wsd_group_word_mng  ?id  $?ids ?cmp_mng)
 (root-verbchunk-tam-chunkids   ?pada_head  ?  ?tam  $?ids1)
 (test (not (member$ ?id $?ids1)));; Assuming lwg_ids (verb-verb connection) will not be part of compound phrase (noun-noun connection)
 ?mng<-(meaning_to_be_decided ?id)
 =>
 (retract ?mng)
  (bind ?length (length $?ids))
    (loop-for-count (?i  1 ?length)
                (bind ?id1 (nth$ ?i $?ids))
                (printout ?*hin_mng_file* "(id-HM-source  " ?id1 "  -    WSD_compound_phrase_word_mng)" crlf)
                (assert (mng_has_been_decided ?id1))
     )

        (bind ?str_len (length ?cmp_mng))
        (if (neq (str-index "[" ?cmp_mng) FALSE) then
                (bind ?index (str-index "[" ?cmp_mng))
                (bind ?str (sub-string 1 (- ?index 1) ?cmp_mng))
                (printout ?*hin_mng_file* "(id-HM-source  " ?id "  "?str"    WSD_compound_phrase_word_mng)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?str"    WSD_compound_phrase_word_mng "?id" "(implode$ $?ids)")" crlf)
        else
                (printout ?*hin_mng_file* "(id-HM-source  " ?id "  "?cmp_mng"    WSD_compound_phrase_word_mng)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?cmp_mng"    WSD_compound_phrase_word_mng "?id" "(implode$ $?ids)")" crlf)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
 ; WSD compound phrase mng.
 ; They seem to resemble each other .
 (defrule wsd_cmp_phrase_mng_root_mng
 (declare (salience 8601))
 (affecting_id-affected_ids-wsd_group_root_mng  ?id  $?ids ?cmp_mng)
 (root-verbchunk-tam-chunkids   ?pada_head  ?  ?tam  $?ids1)
 (test (not (member$ ?id $?ids1)));; Assuming lwg_ids (verb-verb connection) will not be part of compound phrase (noun-noun connection)
 ?mng<-(meaning_to_be_decided ?id)
 =>
 (retract ?mng)
  (bind ?length (length $?ids))
    (loop-for-count (?i  1 ?length)
                (bind ?id1 (nth$ ?i $?ids))
                (printout ?*hin_mng_file* "(id-HM-source  " ?id1 "  -    WSD_compound_phrase_root_mng)" crlf)
                (assert (mng_has_been_decided ?id1))
     )

        (bind ?str_len (length ?cmp_mng))
        (if (neq (str-index "[" ?cmp_mng) FALSE) then
                (bind ?index (str-index "[" ?cmp_mng))
                (bind ?str (sub-string 1 (- ?index 1) ?cmp_mng))
                (printout ?*hin_mng_file* "(id-HM-source  " ?id "  "?str"    WSD_compound_phrase_root_mng)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?str"    WSD_compound_phrase_root_mng "?id" "(implode$ $?ids)")" crlf)
        else
                (printout ?*hin_mng_file* "(id-HM-source  " ?id "  "?cmp_mng"    WSD_compound_phrase_root_mng)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?cmp_mng"    WSD_compound_phrase_root_mng "?id" "(implode$ $?ids)")" crlf)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Database compound phrase mng.
 ;I live in New York City .
 (defrule database_cmp_phrase_mng
 (declare (salience 8600))
 (ids-cmp_mng-head-cat-mng_typ-priority $?ids ?cmp_mng ?head_id ?grp_cat ?mng_typ ?)
 (root-verbchunk-tam-chunkids   ?pada_head  ?  ?tam  $?ids1); Assuming lwg_ids (verb-verb connection) will not be part of compound phrase (noun-noun connection)
 (test (not (member$ (nth$ ?head_id $?ids) $?ids1)))
 ?mng<-(meaning_to_be_decided ?head)
 (test (eq (nth$ ?head_id $?ids) ?head))
 =>
 (retract ?mng)
  (bind ?length (length $?ids))
    (loop-for-count (?i  1 ?length)
                (bind ?id1 (nth$ ?i $?ids))
                (if (neq ?id1 (nth$ ?head_id $?ids)) then
                (if (eq ?mng_typ RM) then
                (printout ?*hin_mng_file* "(id-HM-source  " ?id1 "  -    Database_compound_phrase_root_mng)" crlf)
                else
                (printout ?*hin_mng_file* "(id-HM-source  " ?id1 "  -    Database_compound_phrase_word_mng)" crlf))
                (assert (mng_has_been_decided ?id1))
     ))
        (bind ?str_len (length ?cmp_mng))
        (if (neq (str-index "[" ?cmp_mng) FALSE) then
		(bind ?index (str-index "[" ?cmp_mng))
		(bind ?str (sub-string 1 (- ?index 1) ?cmp_mng))
                (if (eq ?mng_typ RM) then
                (printout ?*hin_mng_file* "(id-HM-source  " (nth$ ?head_id $?ids) "  "?str"    Database_compound_phrase_root_mng)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " (nth$ ?head_id $?ids) "  "?str"    Database_compound_phrase_root_mng "(implode$ $?ids)")" crlf)
               else
               (printout ?*hin_mng_file* "(id-HM-source  " (nth$ ?head_id $?ids) "  "?str"    Database_compound_phrase_word_mng)" crlf)
               (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " (nth$ ?head_id $?ids) "  "?str"    Database_compound_phrase_word_mng "(implode$ $?ids)")" crlf))
	else 
               (if (eq ?mng_typ RM) then
               (printout ?*hin_mng_file* "(id-HM-source  " (nth$ ?head_id $?ids) "  "?cmp_mng"    Database_compound_phrase_root_mng)" crlf)
               (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " (nth$ ?head_id $?ids) "  "?cmp_mng"    Database_compound_phrase_root_mng "(implode$ $?ids)")" crlf)
               else
              (printout ?*hin_mng_file* "(id-HM-source  " (nth$ ?head_id $?ids) "  "?cmp_mng"    Database_compound_phrase_word_mng)" crlf)
              (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " (nth$ ?head_id $?ids) "  "?cmp_mng"    Database_compound_phrase_word_mng "(implode$ $?ids)")" crlf)
              )

	))
 ;--------------------------------------------------------------------------------------------------------------
 ;WSD verb phrase mng
 ;The landlord had to back down .
 (defrule wsd_vrb_phrase_mng_word_mng
 (declare (salience 8701))
 (prep_id-relation-anu_ids ?  kriyA-upasarga  ?id ?id1)
 (affecting_id-affected_ids-wsd_group_word_mng  ?id  ?id1 ?grp_mng)
 ?mng<-(meaning_to_be_decided ?id)
 ?mng1<-(meaning_to_be_decided ?id1)
 =>
  (retract ?mng ?mng1)
  (printout ?*hin_mng_file* "(id-HM-source   "?id"   " ?grp_mng "  WSD_verb_phrase_word_mng)" crlf)
  (printout ?*hin_mng_file* "(id-HM-source   "?id1"   -    WSD_verb_phrase_word_mng)" crlf)
  (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id1"   "?grp_mng"    WSD_verb_phrase_word_mng "?id" "?id1")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;WSD verb phrase mng
 ;The landlord had to back down .
 (defrule wsd_vrb_phrase_mng_root_mng
 (declare (salience 8700))
 (prep_id-relation-anu_ids  ? kriyA-upasarga  ?id ?id1)
 (affecting_id-affected_ids-wsd_group_root_mng  ?id  ?id1 ?grp_mng)
 ?mng<-(meaning_to_be_decided ?id)
 ?mng1<-(meaning_to_be_decided ?id1)
 =>
  (retract ?mng ?mng1)
  (printout ?*hin_mng_file* "(id-HM-source   "?id"   " ?grp_mng "  WSD_verb_phrase_root_mng)" crlf)
  (printout ?*hin_mng_file* "(id-HM-source   "?id1"   -    WSD_verb_phrase_root_mng)" crlf)
  (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   " ?grp_mng "  WSD_verb_phrase_root_mng "?id" "?id1")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;database verb_phrase mng
 ;They divided the money up among the children . 
 (defrule vrb_phrase_mng
 (declare (salience 8600))
 (prep_id-relation-anu_ids ?  kriyA-upasarga  ?id ?id1)
 (id-root ?id ?rt)
 (id-root ?id1 ?rt1)
 ?mng<-(meaning_to_be_decided ?id)
 ?mng1<-(meaning_to_be_decided ?id1)
 =>
	(bind ?vrb_phrase_tmp (str-cat ?rt "_"))
	(bind ?vrb_phrase(str-cat ?vrb_phrase_tmp ?rt1)) 
        (bind ?a (gdbm_lookup "Phrv.gdbm" ?vrb_phrase))
	(if (neq ?a "FALSE") then
		(printout ?*hin_mng_file* "(id-HM-source   "?id"   " ?a "   Verb_Phrase_gdbm)" crlf)
		(printout ?*hin_mng_file* "(id-HM-source   "?id1"   -    Verb_Phrase_gdbm)" crlf)
		(printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   " ?a "   Verb_Phrase_gdbm "?id" "?id1")" crlf)
		(retract ?mng ?mng1)
  	)
 )
 ;--------------------------------------------------------------------------------------------------------------
  ;If WSD assings mng for word and also considerd it as part of any group ,group mng is considered and word mng will be retracted.  
  (defrule over_write_word_mng
  (declare (salience 8501))
  (affecting_id-affected_ids-wsd_group_word_mng  ?affecting_id  $?affected_ids ?grp_mng)
  ?f0<-(id-wsd_root_mng ?affecting_id  ?mng)
  ?f<-(meaning_to_be_decided ?affecting_id)
  =>
        (retract ?f ?f0)
        (printout ?*hin_mng_file* "(id-HM-source   "?affecting_id"   "?grp_mng "  WSD_compound_phrase_word_mng)" crlf)
        (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?affecting_id"   "?grp_mng "  WSD_compound_phrase_word_mng "?affecting_id" "(implode$ $?affected_ids)")" crlf)
        (bind ?len $?affected_ids)
        (loop-for-count (?i 1 ?len)
                        (bind ?j (nth$ ?i $?affected_ids))
                        (assert (mng_has_been_decided ?j))
                        (printout ?*hin_mng_file* "(id-HM-source  " ?j "  -    WSD_compound_phrase_word_mng)" crlf)
        )
  ) 
 ;--------------------------------------------------------------------------------------------------------------
 ;If WSD assings mng for word and also considerd it as part of any group ,group mng is considered and word mng will be retracted.
  (defrule over_write_root_mng
  (declare (salience 8500))
  (affecting_id-affected_ids-wsd_group_root_mng ?affecting_id  $?affected_ids ?grp_mng)
  ?f0<-(id-wsd_root_mng ?affecting_id  ?mng)
  ?f<-(meaning_to_be_decided ?affecting_id )
  =>
        (retract ?f ?f0)
        (printout ?*hin_mng_file* "(id-HM-source   "?affecting_id"   "?grp_mng "  WSD_compound_phrase_root_mng)" crlf)
        (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?affecting_id"   "?grp_mng "  WSD_compound_phrase_root_mng "?affecting_id" "(implode$ $?affected_ids)")" crlf)
        (bind ?len $?affected_ids)
        (loop-for-count (?i 1 ?len)
                        (bind ?j (nth$ ?i $?affected_ids))
                        (assert (mng_has_been_decided ?j))
                        (printout ?*hin_mng_file* "(id-HM-source  " ?j "  -    WSD_compound_phrase_root_mng)" crlf)
        )
  )
  ;-------------------------------------------------------------------------------------------------------------- 
  (defrule over_write_word
  (declare (salience 8401))
  (affecting_id-affected_ids-wsd_group_word_mng  ?affecting_id  $?affected_ids ?grp_mng)
  ?f<-(meaning_to_be_decided ?id)
  (test (or (eq ?id ?affecting_id)(member$ ?id $?affected_ids)))
  =>
        (retract ?f)
        (if (eq ?id ?affecting_id) then
        (printout ?*hin_mng_file* "(id-HM-source   "?affecting_id"  "?grp_mng"  WSD_word_mng)" crlf)
        (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?affecting_id"  "?grp_mng"  WSD_word_mng "?affecting_id")" crlf)
        else
        (printout ?*hin_mng_file* "(id-HM-source   "?id"    -  WSD_word_mng)" crlf)
        (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"    -  WSD_word_mng "?id")" crlf)
        )
  )
  ;--------------------------------------------------------------------------------------------------------------
 (defrule over_write_root
 (declare (salience 8400))
 (affecting_id-affected_ids-wsd_group_root_mng  ?affecting_id  $?affected_ids ?grp_mng) 
 ?f<-(meaning_to_be_decided ?id)
 (test (or (eq ?id ?affecting_id)(member$ ?id $?affected_ids)))
 =>
       (retract ?f)
       (if (eq ?id ?affecting_id) then
       (printout ?*hin_mng_file* "(id-HM-source   "?affecting_id"  "?grp_mng"  WSD_root_mng)" crlf)
       (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?affecting_id"  "?grp_mng"  WSD_root_mng "?affecting_id")" crlf)
       else
       (printout ?*hin_mng_file* "(id-HM-source   "?id"    -  WSD_root_mng)" crlf)
       (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"    -  WSD_root_mng "?id")" crlf))
 )
 ;--------------------------------------------------------------------------------------------------------------
 (defrule idiom_word_mng
 (declare (salience 8000))
 (id-idiom_word_mng ?id ?HM)
 ?mng<-(meaning_to_be_decided ?id)
 =>
	(retract ?mng)
	(printout ?*hin_mng_file* "(id-HM-source   "?id"   " ?HM "   Idiom_word_mng)" crlf)
	(printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   " ?HM "   Idiom_word_mng "?id")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 (defrule wsd_word_mng
 (declare (salience 7500))
 ?mng<-(meaning_to_be_decided ?id)
 (id-wsd_word_mng ?id $?hword)
 =>
	(retract ?mng)
	(bind ?h_word (implode$ $?hword))
	(printout ?*hin_mng_file* "(id-HM-source   "?id"   " ?h_word "    WSD_word_mng)" crlf)
	(printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   " ?h_word "    WSD_word_mng "?id")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 (defrule idiom_root_mng
 (declare (salience 6500))
 (id-idiom_root_mng ?id ?HM)
 ?mng<-(meaning_to_be_decided ?id)
 =>
	(retract ?mng)
	(printout ?*hin_mng_file* "(id-HM-source   "?id"   " ?HM "   Idiom_root_mng)" crlf)
	(printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   " ?HM "   Idiom_root_mng "?id")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 (defrule wsd_root_mng
 (declare (salience 6000))
 ?mng<-(meaning_to_be_decided ?id)
 (id-wsd_root_mng ?id $?hword)
 =>
	(retract ?mng)
	(bind ?h_word (implode$ $?hword))
	(printout ?*hin_mng_file* "(id-HM-source   "?id"   " ?h_word "   WSD_root_mng)" crlf)
	(printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   " ?h_word "   WSD_root_mng "?id")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Modified by Shirisha Manju (04-02-12) removed if condition to check for "number" in action part instead added in rule part
 (defrule default_hindi_mng
 (declare (salience 5500))
 (id-root ?id ?rt)
 (id-original_word ?id  ?original_wrd)
 ?mng<-(meaning_to_be_decided ?id)
 (test (neq (numberp ?rt) TRUE))
 =>
	(bind ?a (gdbm_lookup "default_meaning_frm_oldwsd.gdbm" ?rt))
        (if (neq ?a "FALSE") then
		 (retract ?mng)
                 (printout ?*hin_mng_file* "(id-HM-source   "?id"   "?a"   Default)" crlf)
                 (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   "?a"   Default "?id")" crlf)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (04-02-12)
 ;That would be the lowest level since the early 1970s.
 ;Seven of nine states have grown each year since 1980, including New York, which lost 4% of its population during the 1970s.
 (defrule default_mng
 (declare (salience 1000))
 (id-original_word ?id  ?original_wrd)
 ?mng<-(meaning_to_be_decided ?id)
 =>
        (retract ?mng)
        (printout ?*hin_mng_file* "(id-HM-source   "?id"    @"?original_wrd"   Original_word)" crlf)
	(printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"    @"?original_wrd"   Original_word "?id")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -6000))
 =>
	(close ?*hin_mng_file*)
 )
 ;--------------------------------------------------------------------------------------------------------------
