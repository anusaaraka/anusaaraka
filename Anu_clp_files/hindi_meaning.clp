 (defglobal ?*PropN_file* =  p_noun)
 (defglobal ?*hin_mng_file* = fp)
 (defglobal ?*hin_mng_file1* = fp1)
 (defglobal ?*catastrophe_file* = fp2)

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
 (assert (E_word-wx_word))
 (assert (id-last_word))
 (assert (id-word))
 (assert (Domain))
 (assert (id-eng-src))
 (assert (id-attach_eng_mng))
 )

 ;------------------------------------------ Functions ---------------------------------------------------------
 ;Added by Shirisha Manju (21-03-13)
 (deffunction print_hindi_mng(?head_id ?mng ?src  $?grp_ids)
        (loop-for-count (?i  1 (length $?grp_ids))
                (bind ?id (nth$ ?i $?grp_ids))
                (if (neq ?id ?head_id ) then
                        (printout ?*hin_mng_file* "(id-HM-source  " ?id "   " ?mng"    Database_compound_phrase_word_mng )" crlf)
                        (assert (mng_has_been_decided ?id))
                )
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (30-07-13)
 (deffunction get_first_mng (?wrd ?cat ?dbase)
	(bind ?mng (gdbm_lookup ?dbase (str-cat ?wrd "_" ?cat)))
        (if (neq ?mng "FALSE") then
        	(if (neq (str-index "/" ?mng) FALSE) then
                	(bind ?h_mng (sub-string  1 (- (str-index "/" ?mng) 1) ?mng))
            	else
                	(bind ?h_mng  ?mng)
           	)
	)
 )
 ;-------------------------------------------- Rules ------------------------------------------------------------
 ;Added by Maha Laxmi
 ;for MWE meaning will be assinged to the last word (single mng will be given to all words).So,by this rule we are retracting cntrl facts for remaining ids.
 (defrule mng_decided
 (declare (salience 9990))
 ?f<-(mng_has_been_decided ?id)
 ?mng<-(meaning_to_be_decided ?id)
 =>
        (retract ?mng)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (29-11-12) (suggested by Chaitanya Sir)
 ;Assuming lwg_ids (verb-verb connection) will not be part of compound phrase (noun-noun connection)
 ;The magnitude of the displacement for a course of motion [may be] zero but the corresponding path length is not zero. 
 ;Yes, we must [set off] early for Sonar Bagan to cut wood, explained Mangal.
 (defrule rm_cmp_mng_if_head_is_verb
 (declare (salience 9952))
 ?f0<-(ids-cmp_mng-head-cat-mng_typ-priority $? ?id $? ?mng ?head_id ?grp_cat ?mng_typ ?)
 (root-verbchunk-tam-chunkids   ?pada_head  ?chunk  ?tam  $? ?id )
 (test (neq ?chunk is_said_to_be))
 =>
        (retract ?f0)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (30-07-13)
 ;Comparing wsd_MWE_mng and database_mng and deciding the meaning
 ;if wsd_MWE length is >= the length of the db_mng then take wsd_MWE_mng else db_mng
 (defrule compare_wsd_and_db_MWE_word_mng
 (declare (salience 9951))
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
 ;--------------------------------------------------------------------------------------------------------------
 ;They seem to resemble each other .
 (defrule compare_wsd_and_db_MWE_root_mng
 (declare (salience 9951))
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
 ;--------------------------------------------------------------------------------------------------------------
 ; In LWG meaning meaning for the head word is taken (as other words become tam part).
 ; For the group other than head-id this rule will assert a cntrl fact that mng_has_been_decided.
 (defrule lwg_mng
 (declare (salience 9700))
 (root-verbchunk-tam-chunkids   ?pada_head  ?verb_chunk  ?tam  $?ids ?pada_id)
 (not (verb_type-verb-kriyA_mUla-tam $?)) ;I made it clear that I was angry .
 (test (neq ?verb_chunk is_said_to_be))
 =>
	(print_hindi_mng ?pada_head - LWG $?ids)
 )
 ;=========================================== Complete sentence meaning ==========================================
 ; meaning for the whole sentence
 (defrule complete_sen_trans
 (declare (salience 9600))
 (head_id-sen_mng-g_ids ?hid ?sen_mng $?grp_ids)
 ?f<-(meaning_to_be_decided ?hid)
 =>
        (retract ?f)
        (print_hindi_mng ?hid - Complete_sen_gdbm $?grp_ids)
        (printout ?*hin_mng_file* "(id-HM-source  " ?hid "  "?sen_mng"    Complete_sen_gdbm)" crlf)
        (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " ?hid "  "?sen_mng"    Complete_sen_gdbm " (implode$ $?grp_ids)")" crlf)
 )
 ;========================================= Physics multi word meaning ============================================
 ; Added by Shirisha Manju (19-11-12)
 ; get the meaning from physics compound meaning if the domain is physics
 (defrule get_compound_mng_for_physics_domain
 (declare (salience 9500))
 (Domain physics)
 (ids-phy_cmp_mng-head-cat-mng_typ-priority $?grp_ids ?mng ?grp_head ?grp_cat ?mng_typ ?) 
 ?f<-(meaning_to_be_decided ?id)
 (test (eq (nth$ ?grp_head $?grp_ids) ?id))
 =>
	(retract ?f)
	(bind ?head_id (nth$ ?grp_head $?grp_ids))
	(print_hindi_mng ?head_id -  Phy_compound_phrase_root_mng $?grp_ids)
	(if (eq ?mng_typ RM) then
  		(printout ?*hin_mng_file* "(id-HM-source  " ?head_id "  "?mng"    Phy_compound_phrase_root_mng)" crlf)
  		(printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " ?head_id "  "?mng"    Phy_compound_phrase_root_mng" ?head_id" "(implode$ $?grp_ids)")" crlf)
	else
		(printout ?*hin_mng_file* "(id-HM-source  " ?head_id "  "?mng"    Phy_compound_phrase_word_mng)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " ?head_id "  "?mng"    Phy_compound_phrase_word_mng" ?head_id" "(implode$ $?grp_ids)")" crlf)
	)
 )
 ;========================================== WSD multi word meaning ==============================================
 ; WSD compound phrase mng.
 ; They seem to resemble each other .
 (defrule wsd_cmp_phrase_word_mng
 (declare (salience 9400))
 (affecting_id-affected_ids-wsd_group_word_mng  ?id  $?ids ?cmp_mng)
 ?f<-(meaning_to_be_decided ?id)
 =>
	(retract ?f)
	(print_hindi_mng ?id -  WSD_compound_phrase_word_mng $?ids)
	(printout ?*hin_mng_file* "(id-HM-source  " ?id "  "?cmp_mng"    WSD_compound_phrase_word_mng)" crlf)
        (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?cmp_mng"    WSD_compound_phrase_word_mng "?id" "(implode$ $?ids)")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ; WSD compound phrase mng.
 ; They seem to resemble each other .
 (defrule wsd_cmp_phrase_root_mng
 (declare (salience 9400))
 (affecting_id-affected_ids-wsd_group_root_mng  ?id  $?ids ?cmp_mng)
 ?f<-(meaning_to_be_decided ?id)
 =>
	(retract ?f)
	(print_hindi_mng ?id -  WSD_compound_phrase_root_mng $?ids)
        (printout ?*hin_mng_file* "(id-HM-source  " ?id "  "?cmp_mng"    WSD_compound_phrase_root_mng)" crlf)
	(printout ?*hin_mng_file1* "(id-HM-source-grp_ids  " ?id "  "?cmp_mng"    WSD_compound_phrase_root_mng "?id" "(implode$ $?ids)")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;WSD verb phrase mng
 ;The landlord had to back down .
 (defrule wsd_vrb_phrase_word_mng
 (declare (salience 9300))
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
 (defrule wsd_vrb_phrase_root_mng
 (declare (salience 9300))
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
 ;=================================== Default multi word meaning ===============================================
 ;Added 'if..else' loop by Roja(20-02-14) to decide source of the MWE.
 ;Based on priority printing the source. 
 ;If priority=1 then source=provisional_Database_compound_phrase_word_mng
 ;If priority=2 then source=Database_compound_phrase_word_mng
 ;Database compound phrase mng.
 ;I live in New York City .
 ;Rama is said to be intelligent.
 (defrule database_cmp_phrase_word_mng
 (declare (salience 9200))
 (ids-cmp_mng-head-cat-mng_typ-priority $?ids ?cmp_mng ?head_id ?grp_cat WM ?priority)
 ?mng<-(meaning_to_be_decided ?head)
 (test (eq (nth$ ?head_id $?ids) ?head))
 =>
	(retract ?mng)
        (bind ?id (nth$ ?head_id $?ids))
	(if (eq ?priority 1) then
        	(print_hindi_mng ?id -  provisional_Database_compound_phrase_word_mng $?ids)
	        (printout ?*hin_mng_file* "(id-HM-source  "?id"  "?cmp_mng"    provisional_Database_compound_phrase_word_mng)" crlf)
        	(printout ?*hin_mng_file1* "(id-HM-source-grp_ids  "?id"  "?cmp_mng"    provisional_Database_compound_phrase_word_mng "(implode$ $?ids)")" crlf)
	else
	        (print_hindi_mng ?id -  Database_compound_phrase_word_mng $?ids)
        	(printout ?*hin_mng_file* "(id-HM-source  "?id"  "?cmp_mng"    Database_compound_phrase_word_mng)" crlf)
	        (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  "?id"  "?cmp_mng"    Database_compound_phrase_word_mng "(implode$ $?ids)")" crlf)
	)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added 'if..else' loop by Roja(20-02-14) to decide source of the MWE.
 ;Based on priority printing the source. 
 ;If priority=1 then source=provisional_Database_compound_phrase_root_mng
 ;If priority=2 then source=Database_compound_phrase_root_mng
 (defrule database_cmp_phrase_root_mng
 (declare (salience 9200))
 (ids-cmp_mng-head-cat-mng_typ-priority $?ids ?cmp_mng ?head_id ?grp_cat RM ?priority)
 ?mng<-(meaning_to_be_decided ?head)
 (test (eq (nth$ ?head_id $?ids) ?head))
 =>
	(retract ?mng)
        (bind ?id (nth$ ?head_id $?ids))
	(if (eq ?priority 1) then
                (print_hindi_mng ?id -  provisional_Database_compound_phrase_root_mng $?ids)
                (printout ?*hin_mng_file* "(id-HM-source  "?id"  "?cmp_mng"    provisional_Database_compound_phrase_root_mng)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  "?id"  "?cmp_mng"    provisional_Database_compound_phrase_root_mng "(implode$ $?ids)")" crlf)
        else
                (print_hindi_mng ?id -  Database_compound_phrase_root_mng $?ids)
                (printout ?*hin_mng_file* "(id-HM-source  "?id"  "?cmp_mng"    Database_compound_phrase_root_mng)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids  "?id"  "?cmp_mng"    Database_compound_phrase_root_mng "(implode$ $?ids)")" crlf)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;database verb_phrase mng
 ;They divided the money up among the children . 
 ;She cheered up when she heard the good news.
 (defrule vrb_phrase_mng
 (declare (salience 9100))
 (prep_id-relation-anu_ids ?  kriyA-upasarga  ?id ?id1)
 (id-root ?id ?rt)
 (id-root ?id1 ?rt1)
 ?mng<-(meaning_to_be_decided ?id)
 ?mng1<-(meaning_to_be_decided ?id1)
 =>
	(bind ?vrb_phrase (str-cat ?rt "_" ?rt1)) 
        (bind ?a (gdbm_lookup "Phrv.gdbm" ?vrb_phrase))
	(if (neq ?a "FALSE") then
		(printout ?*hin_mng_file* "(id-HM-source   "?id"   " ?a "   Verb_Phrase_gdbm)" crlf)
		(printout ?*hin_mng_file* "(id-HM-source   "?id1"   -    Verb_Phrase_gdbm)" crlf)
		(printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   " ?a "   Verb_Phrase_gdbm "?id" "?id1")" crlf)
		(retract ?mng ?mng1)
	else
		(printout t "Meaning for verb phrase "?vrb_phrase "  is required" crlf)
  	)
 )
 ;======================================== PropN rules ==========================================================
 ;Rule Modified by Roja(19-02-14). Added 'number' in category fact, also added 'if ...else' loop. Ex: 1963 And 1966's popular films were based on novels Godhan and Gaban, respectively .
 ;Added by Shirisha Manju (26-08-13)
 ;The explanation of the results led to the birth of Rutherford's planetary model of atom.
 (defrule modify_word_for_apos
 (declare (salience 9000))
 (id-cat_coarse ?id PropN|number)
 ?mng<-(meaning_to_be_decided ?id)
 ?f0<-(id-original_word ?id ?word)
 ?f1<-(id-word ?id ?wrd)
 (test (neq (numberp ?word) TRUE))
 (test (neq (str-index "'s" ?word) FALSE))
 =>
        (retract ?f0 ?f1)
        (bind ?n_word (string-to-field (sub-string 1 (- (str-index "'s" ?word) 1) ?word)))
        (assert (id-original_word ?id ?n_word))
	(if (eq ?id number) then 
	        (assert (id-word ?id ?n_word))
	else
        	(assert (id-word ?id (lowcase ?n_word)))
	)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (16-08-13) Suggested by Chaitanya Sir
 ;Dear brothers, from today I shall be talking to you about Shrimad [Bhagavad-Gita].
 ;The bond between the [Gita] and me transcends reason.
 (defrule get_PropN_mng
 (declare (salience 8900))
 (id-cat_coarse ?id PropN)
 ?f<-(meaning_to_be_decided ?id)
 (id-original_word ?id ?wrd)
 (test (neq (gdbm_lookup "proper_noun_dic.gdbm" ?wrd) "FALSE"))
 =>
        (bind ?mng (gdbm_lookup "proper_noun_dic.gdbm" ?wrd ))
        (if (neq ?mng "FALSE") then
                (retract ?f)
                (printout ?*hin_mng_file* "(id-HM-source   "?id"   "?mng"   proper_noun_dic)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   "?mng"   proper_noun_dic "?id")" crlf)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;The guard made Dipu halt, and helped the Princess off his back.
 ;Added by Shirisha Manju (14-05-13) Suggested by Chaitanya Sir
 (defrule get_PropN_mng_with_prev_word_the
 (declare (salience 8800))
 (id-cat_coarse ?id PropN)
 ?mng<-(meaning_to_be_decided ?id)
 (id-word =(- ?id 1) the)
 (id-root ?id ?rt)
 (test (neq (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat (lowcase ?rt) "_noun")) "FALSE"))
 =>
        (bind ?f_mng (get_first_mng (lowcase ?rt) noun default-iit-bombay-shabdanjali-dic.gdbm))
        (if (neq ?f_mng "FALSE") then
                (retract ?mng)
                (printout ?*hin_mng_file* "(id-HM-source   "?id"   "?f_mng"   Default_meaning)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   "?f_mng"   Default_meaning "?id")" crlf)
        )
 )
 ;====================================== Generate default category ================================================
 ;Added by Roja (01-08-12). 
 ;Generating dummy categories.
 (defrule generate_dummy_cat
 (declare (salience 8600))
 (default-cat)
 =>
 (assert (default-cat noun))
 (assert (default-cat verb))
 (assert (default-cat adverb))
 (assert (default-cat adjective))
 (assert (default-cat PropN))
 (assert (default-cat conjunction))
 (assert (default-cat pronoun))
 (assert (default-cat determiner))
 (assert (default-cat wh-adverb))
 (assert (default-cat verbal_noun))
 (assert (default-cat UNDEFINED))
 (assert (default-cat wh-determiner))
 (assert (default-cat preposition))
 (assert (default-cat number))
 (assert (default-cat wh-pronoun))
 )
 ;========================================= Physics single word meaning =======================================
 ;Added by Shirisha Manju (26-08-13).
 ; If root is '-' then check original word in dicionary with same category.
 (defrule phy_default_mng_with_org_wrd_with_same_cat
 (declare (salience 8700))
 (Domain physics)
 (id-root ?id -)
 (id-original_word ?id  ?org_wrd)
 ?mng<-(meaning_to_be_decided ?id)
 (id-cat_coarse ?id ?cat)
 (test (neq (numberp ?org_wrd) TRUE))
 (test (neq (gdbm_lookup "phy_dictionary.gdbm" (str-cat ?org_wrd "_" ?cat)) "FALSE"))
 =>
	(bind ?f_mng (get_first_mng ?org_wrd ?cat phy_dictionary.gdbm))
        (if (neq ?f_mng "FALSE") then
		(retract ?mng)
		(printout ?*hin_mng_file* "(id-HM-source   "?id"   "?f_mng"   Physics_Glossary)" crlf)
		(printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   "?f_mng"   Physics_Glossary "?id")" crlf)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (26-08-13).
 ;If root is '-' then check original word in dicionary with different category.
 (defrule phy_default_mng_with_diff_cat_with_org_wrd
 (declare (salience 8600))
 (Domain physics)
 (id-root ?id -)
 (id-original_word ?id  ?org_wrd)
 ?mng<-(meaning_to_be_decided ?id)
 (id-cat_coarse ?id ?cat)
 (test (neq (numberp ?org_wrd) TRUE))
 (default-cat ?cat1)
 (test (neq ?cat ?cat1))
 (test (neq (gdbm_lookup "phy_dictionary.gdbm" (str-cat ?org_wrd "_" ?cat1)) "FALSE"))
 =>
        (bind ?f_mng (get_first_mng ?org_wrd ?cat1 phy_dictionary.gdbm))
        (if (neq ?f_mng "FALSE") then
                (retract ?mng)
                (printout ?*hin_mng_file* "(id-HM-source   "?id"   "?f_mng"   Physics_Glossary)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   "?f_mng"   Physics_Glossary "?id")" crlf)
           (printout ?*catastrophe_file* "(sen_type-id-phrase Default_mng_with_different_category "?id"  " ?org_wrd")" crlf)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (19-11-12)
 (defrule get_mng_from_phy_dic_with_same_cat
 (declare (salience 8500))
 (Domain physics)
 (id-root ?id ?rt)
 ?mng<-(meaning_to_be_decided ?id)
 (id-cat_coarse ?id ?cat)
 (test (neq (numberp ?rt) TRUE))
 (test (neq (gdbm_lookup "phy_dictionary.gdbm" (str-cat ?rt "_" ?cat)) "FALSE"))
 =>
        (bind ?f_mng (get_first_mng ?rt ?cat phy_dictionary.gdbm))
        (if (neq ?f_mng "FALSE") then
                (retract ?mng)
                (printout ?*hin_mng_file* "(id-HM-source   "?id"   "?f_mng"   Physics_Glossary)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   "?f_mng"   Physics_Glossary "?id")" crlf)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
 ; In [Kinematics], we study ways to describe motion without going into the causes of motion. 
 ; Added by Shirisha Manju (19-11-12)
 (defrule get_mng_from_phy_dic_with_diff_cat
 (declare (salience 8400))
 (Domain physics)
 (id-cat_coarse ?id PropN)
 (id-root ?id ?rt)
 ?mng<-(meaning_to_be_decided ?id)
 (test (neq (numberp ?rt) TRUE))
 (test (neq (gdbm_lookup "phy_dictionary.gdbm" (str-cat (lowcase ?rt) "_noun")) "FALSE"))
 =>
        (bind ?f_mng (get_first_mng (lowcase ?rt) noun phy_dictionary.gdbm))
        (if (neq ?f_mng "FALSE") then
                (retract ?mng)
                (printout ?*hin_mng_file* "(id-HM-source   "?id"   "?f_mng"   Physics_Glossary)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   "?f_mng"   Physics_Glossary "?id")" crlf)
                (printout ?*catastrophe_file* "(sen_type-id-phrase Default_mng_with_different_category "?id"  " ?rt")" crlf)
        )
 )
 ;================================== WSD and Idiom single word meaning =========================================
 (defrule idiom_word_mng
 (declare (salience 8300))
 (id-idiom_word_mng ?id ?HM)
 ?mng<-(meaning_to_be_decided ?id)
 =>
        (retract ?mng)
        (printout ?*hin_mng_file* "(id-HM-source   "?id"   " ?HM "   Idiom_word_mng)" crlf)
        (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   " ?HM "   Idiom_word_mng "?id")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 (defrule wsd_word_mng
 (declare (salience 8200))
 ?mng<-(meaning_to_be_decided ?id)
 (id-wsd_word_mng ?id ?h_word)
 =>
        (retract ?mng)
        (printout ?*hin_mng_file* "(id-HM-source   "?id"   " ?h_word "    WSD_word_mng)" crlf)
        (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   " ?h_word "    WSD_word_mng "?id")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 (defrule idiom_root_mng
 (declare (salience 8100))
 (id-idiom_root_mng ?id ?HM)
 ?mng<-(meaning_to_be_decided ?id)
 =>
        (retract ?mng)
        (printout ?*hin_mng_file* "(id-HM-source   "?id"   " ?HM "   Idiom_root_mng)" crlf)
        (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   " ?HM "   Idiom_root_mng "?id")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 (defrule wsd_root_mng
 (declare (salience 8000))
 ?mng<-(meaning_to_be_decided ?id)
 (id-wsd_root_mng ?id ?h_word)
 =>
        (retract ?mng)
        (printout ?*hin_mng_file* "(id-HM-source   "?id"   " ?h_word "   WSD_root_mng)" crlf)
        (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   " ?h_word "   WSD_root_mng "?id")" crlf)
 )
 ;========================================== Default single word meaning =======================================
 ;Added by Shirisha Manju (09-05-13)
 ; We see leaves falling from trees and water flowing [down] a dam. 
 (defrule modify_cat_for_particle
 (declare (salience 7910))
 ?f0<-(id-cat_coarse ?id particle)
 (meaning_to_be_decided ?id)
 =>
        (retract ?f0)
        (assert (id-cat_coarse ?id preposition))
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Roja (05-03-13).
 ;checking original word in dictionary (when root is '-') when same category.
 (defrule default_hindi_mng-same-cat_with-org_wrd
 (declare (salience 7900))
 (id-root ?id -)
 (id-original_word ?id  ?org_wrd)
 ?mng<-(meaning_to_be_decided ?id)
 (id-cat_coarse ?id ?cat)
 (test (neq (numberp ?org_wrd) TRUE))
 (test (neq (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat ?org_wrd "_" ?cat)) "FALSE"))
 =>
	(bind ?f_mng (get_first_mng ?org_wrd ?cat default-iit-bombay-shabdanjali-dic.gdbm))
        (if (neq ?f_mng "FALSE") then
		(retract ?mng)
		(printout ?*hin_mng_file* "(id-HM-source   "?id"   "?f_mng"   Default_meaning)" crlf)
		(printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   "?f_mng"   Default_meaning "?id")" crlf)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Roja (05-03-13).
 ;checking original word in dictionary (when root is '-') and when category is different.
 (defrule default_hindi_mng-different-cat_with_org_wrd
 (declare (salience 7800))
 (id-root ?id -)
 (id-original_word ?id  ?org_wrd)
 ?mng<-(meaning_to_be_decided ?id)
 (id-cat_coarse ?id ?cat)
 (test (neq (numberp ?org_wrd) TRUE))
 (default-cat ?cat1)
 (test (neq ?cat ?cat1))
 (test (neq (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat ?org_wrd "_" ?cat1)) "FALSE"))
 =>
	(bind ?f_mng (get_first_mng ?org_wrd ?cat1 default-iit-bombay-shabdanjali-dic.gdbm))
        (if (neq ?f_mng "FALSE") then
                (retract ?mng)
                (printout ?*hin_mng_file* "(id-HM-source   "?id"   "?f_mng"   Default_meaning)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   "?f_mng"   Default_meaning "?id")" crlf)
           (printout ?*catastrophe_file* "(sen_type-id-phrase Default_mng_with_different_category "?id"  " ?org_wrd")" crlf)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Rule re-modified by Roja (01-08-12). 
 ;Getting Hindi meaning from default dictionary when there is a same category 
 ;Assuming first meaning always has 'Defualt'.
 ;Modified by Shirisha Manju (04-02-12) removed if condition to check for "number" in action part instead added in rule part
 (defrule default_hindi_mng-same-cat
 (declare (salience 7700))
 (id-root ?id ?rt)
 ?mng<-(meaning_to_be_decided ?id)
 (id-cat_coarse ?id ?cat)
 (test (neq (numberp ?rt) TRUE))
 (test (neq (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat ?rt "_" ?cat)) "FALSE"))
 =>
	(bind ?f_mng (get_first_mng ?rt ?cat default-iit-bombay-shabdanjali-dic.gdbm))
        (if (neq ?f_mng "FALSE") then
                (retract ?mng)
                (printout ?*hin_mng_file* "(id-HM-source   "?id"   "?f_mng"   Default_meaning)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   "?f_mng"   Default_meaning "?id")" crlf)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Roja (01-08-12).
 ;Getting Hindi meaning from default dictionary when there is a different category.
 ;Also asserting a fact (sen_type-id-phrase Default_mng_with_different_category) as a warning message in catastrophe.dat
 ;Assuming first meaning always has 'Defualt'.
 (defrule default_hindi_mng-different-cat
 (declare (salience 7600))
 (id-root ?id ?rt)
 ?mng<-(meaning_to_be_decided ?id)
 (id-cat_coarse ?id ?cat)
 (test (neq (numberp ?rt) TRUE))
 (default-cat ?cat1)
 (test (neq ?cat ?cat1))
 (test (neq (gdbm_lookup "default-iit-bombay-shabdanjali-dic.gdbm" (str-cat ?rt "_" ?cat1)) "FALSE"))
 =>
	(bind ?f_mng (get_first_mng ?rt ?cat1 default-iit-bombay-shabdanjali-dic.gdbm))
        (if (neq ?f_mng "FALSE") then
                (retract ?mng)
                (printout ?*hin_mng_file* "(id-HM-source   "?id"   "?f_mng"   Default_meaning)" crlf)
                (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   "?f_mng"   Default_meaning "?id")" crlf)
	        (printout ?*catastrophe_file* "(sen_type-id-phrase Default_mng_with_different_category "?id"  " ?rt")" crlf)
        )
 )
 ;--------------------------------------------------------------------------------------------------------------
  (defrule test_for_PropN
  (declare (salience 7500))
  (id-cat_coarse ?id PropN)
  (id-word ?id ?word)
  ?mng<-(meaning_to_be_decided ?id)
  (test (neq (numberp ?word) TRUE))
  =>
       (retract ?mng)
       (bind ?wx_notation (str-cat "@PropN-" ?word "-PropN")) 
       (printout ?*hin_mng_file* "(id-HM-source   "?id"   "?wx_notation"   transliterate_mng)" crlf)
       (printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"   "?wx_notation"   transliterate_mng "?id")" crlf)
       (printout ?*PropN_file* ?word crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (04-02-12)
 ;That would be the lowest level since the early 1970s.
 ;Seven of nine states have grown each year since 1980, including New York, which lost 4% of its population during the 1970s.
 (defrule default_mng
 (declare (salience 7400))
 (id-original_word ?id  ?original_wrd)
 ?mng<-(meaning_to_be_decided ?id)
 =>
        (retract ?mng)
        (printout ?*hin_mng_file* "(id-HM-source   "?id"    @"?original_wrd"   Original_word)" crlf)
	(printout ?*hin_mng_file1* "(id-HM-source-grp_ids   "?id"    @"?original_wrd"   Original_word "?id")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience 100))
 =>
	(close ?*hin_mng_file*)
 )
 ;--------------------------------------------------------------------------------------------------------------
