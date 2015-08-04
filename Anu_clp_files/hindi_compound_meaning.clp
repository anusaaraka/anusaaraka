 ;This file is written by Shirisha Manju 22-9-14

 (defglobal ?*h_mng_file* = h_fp)
 (defglobal ?*h_mng_file1* = h_fp1)
 (defglobal ?*w_fact_file* = w_fp)

 (deffunction never-called ()
 (assert (prep_id-relation-anu_ids))
 (assert (No complete linkages found))
 (assert (missing-level-id) )
 (assert (verb_type-verb-causative_verb-tam) )
 (assert (addition-level-word-sid) )
 (assert (affecting_id-affected_ids-wsd_group_word_mng))
 (assert (affecting_id-affected_ids-wsd_group_root_mng))
 (assert (id-wsd_number) )
 (assert (id-wsd_root))
 (assert (id-wsd_root_mng))
 (assert (id-wsd_word_mng))
 (assert (ids-cmp_mng-head-cat-mng_typ-priority))
 (assert (ids-domain_cmp_mng-head-cat-mng_typ-priority))
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
 (assert (root-verbchunk-tam-chunkids))
 (assert (id-attach_emphatic))
 (assert (conjunction-components))
 (assert (E_word-wx_word))
 (assert (Domain))
 (assert (id-eng-src))
 (assert (id-attach_eng_mng))
 (assert (id-wsd_viBakwi))
 (assert (id-HM-source))
 (assert (id-domain_type))
 )
 ;-------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (21-03-13)
 (deffunction print_hindi_mng(?head_id ?mng ?src  $?grp_ids)
        (loop-for-count (?i  1 (length $?grp_ids))
                (bind ?id (nth$ ?i $?grp_ids))
                (if (neq ?id ?head_id ) then
                        (printout ?*h_mng_file* "(id-HM-source        " ?id "   " ?mng"       "?src ")" crlf)
                        (assert (mng_has_been_decided ?id))
			(printout ?*w_fact_file* "(compound_meaning_decided  " ?id ")" crlf)
                )
        )
 )
 ;-------------------------------------------------------------------------------------------------
 ;for MWE meaning will be assinged to the last word (single mng will be given to all words).So,by this rule we are retracting cntrl facts for remaining ids.
 (defrule mng_decided
 (declare (salience 9990))
 (mng_has_been_decided ?id)
 ?mng<-(meaning_to_be_decided ?id)
 =>
        (retract ?mng)
 )
 ;-------------------------------------------------------------------------------------------------
 ; meaning for the whole sentence
 (defrule complete_sen_trans
 (declare (salience 9950))
 (head_id-sen_mng-g_ids ?hid ?sen_mng $?grp_ids)
 ?f<-(meaning_to_be_decided ?hid)
 =>
        (retract ?f)
        (print_hindi_mng ?hid - Complete_sen_gdbm $?grp_ids)
        (printout ?*h_mng_file* "(id-HM-source  " ?hid "  "?sen_mng"    Complete_sen_gdbm)" crlf)
        (printout ?*h_mng_file1* "(id-HM-source-grp_ids  " ?hid "  "?sen_mng"    Complete_sen_gdbm " (implode$ $?grp_ids)")" crlf)
	(printout ?*w_fact_file* "(compound_meaning_decided  " ?hid ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------
 ; In LWG meaning meaning for the head word is taken (as other words become tam part).
 ; For the group other than head-id this rule will assert a cntrl fact that mng_has_been_decided.
 (defrule lwg_mng
 (declare (salience 9900))
 (root-verbchunk-tam-chunkids   ?pada_head  ?verb_chunk  ?tam  $?ids ?pada_id)
 (not (verb_type-verb-kriyA_mUla-tam $?)) ;I made it clear that I was angry .
 (test (neq ?verb_chunk is_said_to_be))
 =>
        (print_hindi_mng ?pada_id - LWG $?ids)
 )
 ;-------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (29-11-12) (suggested by Chaitanya Sir)
 ;Assuming lwg_ids (verb-verb connection) will not be part of compound phrase (noun-noun connection)
 ;The magnitude of the displacement for a course of motion [may be] zero but the corresponding path length is not zero. 
 ;Yes, we must [set off] early for Sonar Bagan to cut wood, explained Mangal.
 (defrule rm_cmp_mng_if_head_is_verb
 (declare (salience 9850))
 ?f0<-(ids-cmp_mng-head-cat-mng_typ-priority $? ?id $? ?mng ?head_id ?grp_cat ?mng_typ ?)
 (root-verbchunk-tam-chunkids   ?pada_head  ?chunk  ?tam  $? ?id )
 (test (neq ?chunk is_said_to_be))
 =>
        (retract ?f0)
 )
 ;-------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (30-07-13)
 ;Comparing wsd_MWE_mng and database_mng and deciding the meaning
 ;if wsd_MWE length is >= the length of the db_mng then take wsd_MWE_mng else db_mng
 (defrule compare_wsd_and_db_MWE_word_mng
 (declare (salience 9800))
 ?f<-(affecting_id-affected_ids-wsd_group_word_mng ?id $?ids ?mng)
 ?f1<-(ids-cmp_mng-head-cat-mng_typ-priority $?cmp_ids ?mng1 ?head_id ?grp_cat ?mng_typ ?)
 (test (member$ ?id $?cmp_ids))
 =>
        (bind ?length (length (create$ ?id $?ids)))
        (bind ?cmp_length (length $?cmp_ids))
        (if (or (> ?length ?cmp_length) (= ?length ?cmp_length)) then
                (retract ?f1)
        else
                (retract ?f)
        )
 )
 ;-------------------------------------------------------------------------------------------------
 ;They seem to resemble each other .
 (defrule compare_wsd_and_db_MWE_root_mng
 (declare (salience 9800))
 ?f<-(affecting_id-affected_ids-wsd_group_root_mng ?id $?ids ?mng)
 ?f1<-(ids-cmp_mng-head-cat-mng_typ-priority $?cmp_ids ?mng1 ?head_id ?grp_cat ?mng_typ ?)
 (test (member$ ?id $?cmp_ids))
 =>
        (bind ?length (length (create$ ?id $?ids)))
        (bind ?cmp_length (length $?cmp_ids))
        (if (or (> ?length ?cmp_length) (= ?length ?cmp_length)) then
                (retract ?f1)
        else
                (retract ?f)
        )
 )
 ;================================  Domain specific multi-word meaning rules =================================
 ; Added by Shirisha Manju (22-09-14)
 ; get wsd compound word meaning for domain 
 (defrule get_wsd_compound_word_mng_for_domain
 (declare (salience 9700))
 (affecting_id-affected_ids-wsd_group_word_mng  ?id  $?ids ?cmp_mng)
 ?f<-(meaning_to_be_decided ?id)
 (id-domain_type ?id ?type)
 =>
        (retract ?f)
	(bind ?src (str-cat ?type "_WSD_compound_phrase_word_mng"))
        (print_hindi_mng ?id -  ?src $?ids)
        (printout ?*h_mng_file* "(id-HM-source  " ?id "  "?cmp_mng"    "?src")" crlf)
        (printout ?*h_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?cmp_mng"    "?src"  "?id" "(implode$ $?ids)")" crlf)
	(printout ?*w_fact_file* "(compound_meaning_decided  " ?id ")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (22-09-14)
 ; get wsd compound root meaning for domain 
 (defrule get_wsd_compound_root_mng_for_domain
 (declare (salience 9700))
 (affecting_id-affected_ids-wsd_group_root_mng  ?id  $?ids ?cmp_mng)
 ?f<-(meaning_to_be_decided ?id)
 (id-domain_type ?id ?type)
 =>
        (retract ?f)
        (bind ?src (str-cat ?type "_WSD_compound_phrase_root_mng"))
        (print_hindi_mng ?id -  ?src $?ids)
        (printout ?*h_mng_file* "(id-HM-source  " ?id "  "?cmp_mng"    "?src")" crlf)
        (printout ?*h_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?cmp_mng"    "?src"  "?id" "(implode$ $?ids)")" crlf)
	(printout ?*w_fact_file* "(compound_meaning_decided  " ?id ")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (19-11-12)
 ; get default Domain compound word meaning 
 (defrule get_default_domain_compound_word_mng
 (declare (salience 9600))
 (Domain ?domain)
 (ids-domain_cmp_mng-head-cat-mng_typ-priority $?grp_ids ?mng ?grp_head ?grp_cat WM ?)
 ?f<-(meaning_to_be_decided ?id)
 (test (eq (nth$ ?grp_head $?grp_ids) ?id))
 =>
	(retract ?f)
	(bind ?src (string-to-field (str-cat ?domain"_compound_phrase_word_mng")))
	(print_hindi_mng ?id -  ?src  $?grp_ids)
	(printout ?*h_mng_file* "(id-HM-source  " ?id "  "?mng"  " ?src ")" crlf)
	(printout ?*h_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?mng"  "?src " " (implode$ $?grp_ids)")" crlf)
	(printout ?*w_fact_file* "(compound_meaning_decided  " ?id ")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (22-09-14)
 ; get default Domain compound root meaning 
 (defrule get_default_domain_compound_root_mng
 (declare (salience 9600))
 (Domain ?domain)
 (ids-domain_cmp_mng-head-cat-mng_typ-priority $?grp_ids ?mng ?grp_head ?grp_cat RM ?)
 ?f<-(meaning_to_be_decided ?id)
 (test (eq (nth$ ?grp_head $?grp_ids) ?id))
 =>
	(retract ?f)
	(bind ?src (string-to-field (str-cat ?domain"_compound_phrase_root_mng")))	
	(print_hindi_mng ?id -  ?src $?grp_ids)
	(printout ?*h_mng_file* "(id-HM-source  " ?id "  "?mng"   " ?src ")" crlf)
	(printout ?*h_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?mng"    "?src " " (implode$ $?grp_ids)")" crlf)
	(printout ?*w_fact_file* "(compound_meaning_decided  " ?id ")" crlf)
 )
 ;==========================================  multi-word meaning rules ===========================================
 ; WSD compound phrase word mng.
 (defrule wsd_cmp_phrase_word_mng
 (declare (salience 9500))
 (affecting_id-affected_ids-wsd_group_word_mng  ?id  $?ids ?cmp_mng)
 ?f<-(meaning_to_be_decided ?id)
 =>
        (retract ?f)
        (print_hindi_mng ?id -  WSD_compound_phrase_word_mng $?ids)
        (printout ?*h_mng_file* "(id-HM-source  " ?id "  "?cmp_mng"    WSD_compound_phrase_word_mng)" crlf)
        (printout ?*h_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?cmp_mng"    WSD_compound_phrase_word_mng "?id" "(implode$ $?ids)")" crlf)
	(printout ?*w_fact_file* "(compound_meaning_decided  " ?id ")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ; WSD compound phrase root mng.
 (defrule wsd_cmp_phrase_root_mng
 (declare (salience 9500))
 (affecting_id-affected_ids-wsd_group_root_mng  ?id  $?ids ?cmp_mng)
 ?f<-(meaning_to_be_decided ?id)
 =>
        (retract ?f)
        (print_hindi_mng ?id -  WSD_compound_phrase_root_mng $?ids)
        (printout ?*h_mng_file* "(id-HM-source  " ?id "  "?cmp_mng"    WSD_compound_phrase_root_mng)" crlf)
        (printout ?*h_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?cmp_mng"    WSD_compound_phrase_root_mng "?id" "(implode$ $?ids)")" crlf)
	(printout ?*w_fact_file* "(compound_meaning_decided  " ?id ")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;WSD verb phrase word mng
 (defrule wsd_vrb_phrase_word_mng
 (declare (salience 9400))
 (prep_id-relation-anu_ids ?  kriyA-upasarga  ?id ?id1)
 (affecting_id-affected_ids-wsd_group_word_mng  ?id  ?id1 ?grp_mng)
 ?mng<-(meaning_to_be_decided ?id)
 ?mng1<-(meaning_to_be_decided ?id1)
 =>
  (retract ?mng ?mng1)
  (printout ?*h_mng_file* "(id-HM-source   "?id"   " ?grp_mng "  WSD_verb_phrase_word_mng)" crlf)
  (printout ?*w_fact_file* "(compound_meaning_decided  " ?id ")" crlf)
  (printout ?*h_mng_file* "(id-HM-source   "?id1"   -    WSD_verb_phrase_word_mng)" crlf)
  (printout ?*w_fact_file* "(compound_meaning_decided  " ?id1 ")" crlf)
  (printout ?*h_mng_file1* "(id-HM-source-grp_ids   "?id1"   "?grp_mng"    WSD_verb_phrase_word_mng "?id" "?id1")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;WSD verb phrase root mng
 (defrule wsd_vrb_phrase_root_mng
 (declare (salience 9400))
 (prep_id-relation-anu_ids  ? kriyA-upasarga  ?id ?id1)
 (affecting_id-affected_ids-wsd_group_root_mng  ?id  ?id1 ?grp_mng)
 ?mng<-(meaning_to_be_decided ?id)
 ?mng1<-(meaning_to_be_decided ?id1)
 =>
  (retract ?mng ?mng1)
  (printout ?*h_mng_file* "(id-HM-source   "?id"   " ?grp_mng "  WSD_verb_phrase_root_mng)" crlf)
  (printout ?*w_fact_file* "(compound_meaning_decided  " ?id ")" crlf)
  (printout ?*h_mng_file* "(id-HM-source   "?id1"   -    WSD_verb_phrase_root_mng)" crlf)
  (printout ?*w_fact_file* "(compound_meaning_decided  " ?id1 ")" crlf)
  (printout ?*h_mng_file1* "(id-HM-source-grp_ids   "?id"   " ?grp_mng "  WSD_verb_phrase_root_mng "?id" "?id1")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added 'if..else' loop by Roja(20-02-14) to decide source of the MWE.
 ;Based on priority printing the source. 
 ;If priority=1 then source=provisional_Database_compound_phrase_word_mng
 ;If priority=2 then source=Database_compound_phrase_word_mng
 ;Database compound phrase mng.
 ;I live in New York City .
 ;Rama is said to be intelligent.
 (defrule database_cmp_phrase_word_mng
 (declare (salience 9300))
 (ids-cmp_mng-head-cat-mng_typ-priority $?ids ?cmp_mng ?head_id ?grp_cat WM ?priority)
 ?mng<-(meaning_to_be_decided ?head)
 (test (eq (nth$ ?head_id $?ids) ?head))
 =>
        (retract ?mng)
        (bind ?id (nth$ ?head_id $?ids))
        (if (eq ?priority 1) then
                (print_hindi_mng ?id -  provisional_Database_compound_phrase_word_mng $?ids)
                (printout ?*h_mng_file* "(id-HM-source  "?id"  "?cmp_mng"    provisional_Database_compound_phrase_word_mng)" crlf)
		(printout ?*w_fact_file* "(compound_meaning_decided  " ?id ")" crlf)
                (printout ?*h_mng_file1* "(id-HM-source-grp_ids  "?id"  "?cmp_mng"    provisional_Database_compound_phrase_word_mng "(implode$ $?ids)")" crlf)
        else
                (print_hindi_mng ?id -  Database_compound_phrase_word_mng $?ids)
                (printout ?*h_mng_file* "(id-HM-source  "?id"  "?cmp_mng"    Database_compound_phrase_word_mng)" crlf)
		(printout ?*w_fact_file* "(compound_meaning_decided  " ?id ")" crlf)
                (printout ?*h_mng_file1* "(id-HM-source-grp_ids  "?id"  "?cmp_mng"    Database_compound_phrase_word_mng "(implode$ $?ids)")" crlf)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added 'if..else' loop by Roja(20-02-14) to decide source of the MWE.
 ;Based on priority printing the source. 
 ;If priority=1 then source=provisional_Database_compound_phrase_root_mng
 ;If priority=2 then source=Database_compound_phrase_root_mng
 (defrule database_cmp_phrase_root_mng
 (declare (salience 9300))
 (ids-cmp_mng-head-cat-mng_typ-priority $?ids ?cmp_mng ?head_id ?grp_cat RM ?priority)
 ?mng<-(meaning_to_be_decided ?head)
 (test (eq (nth$ ?head_id $?ids) ?head))
 =>
        (retract ?mng)
        (bind ?id (nth$ ?head_id $?ids))
        (if (eq ?priority 1) then
                (print_hindi_mng ?id -  provisional_Database_compound_phrase_root_mng $?ids)
                (printout ?*h_mng_file* "(id-HM-source  "?id"  "?cmp_mng"    provisional_Database_compound_phrase_root_mng)" crlf)
		(printout ?*w_fact_file* "(compound_meaning_decided  " ?id ")" crlf)
                (printout ?*h_mng_file1* "(id-HM-source-grp_ids  "?id"  "?cmp_mng"    provisional_Database_compound_phrase_root_mng "(implode$ $?ids)")" crlf)
        else
                (print_hindi_mng ?id -  Database_compound_phrase_root_mng $?ids)
                (printout ?*h_mng_file* "(id-HM-source  "?id"  "?cmp_mng"    Database_compound_phrase_root_mng)" crlf)
		(printout ?*w_fact_file* "(compound_meaning_decided  " ?id ")" crlf)
                (printout ?*h_mng_file1* "(id-HM-source-grp_ids  "?id"  "?cmp_mng"    Database_compound_phrase_root_mng "(implode$ $?ids)")" crlf)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;database verb_phrase mng
 ;They divided the money up among the children . 
 ;She cheered up when she heard the good news.
 (defrule vrb_phrase_mng
 (declare (salience 9200))
 (prep_id-relation-anu_ids ?  kriyA-upasarga  ?id ?id1)
 (id-root ?id ?rt)
 (id-root ?id1 ?rt1)
 ?mng<-(meaning_to_be_decided ?id)
 ?mng1<-(meaning_to_be_decided ?id1)
 =>
        (bind ?vrb_phrase (str-cat ?rt "_" ?rt1))
        (bind ?a (gdbm_lookup "Phrv.gdbm" ?vrb_phrase))
        (if (neq ?a "FALSE") then
                (printout ?*h_mng_file* "(id-HM-source   "?id"   " ?a "   Verb_Phrase_gdbm)" crlf)
                (printout ?*h_mng_file* "(id-HM-source   "?id1"   -    Verb_Phrase_gdbm)" crlf)
		(printout ?*w_fact_file* "(compound_meaning_decided  " ?id ")" crlf)
		(printout ?*w_fact_file* "(compound_meaning_decided  " ?id1 ")" crlf)
                (printout ?*h_mng_file1* "(id-HM-source-grp_ids   "?id"   " ?a "   Verb_Phrase_gdbm "?id" "?id1")" crlf)
                (retract ?mng ?mng1)
        else
                (printout t "Warning: Meaning for verb phrase "?vrb_phrase "  is required" crlf)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
