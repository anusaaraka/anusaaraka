;This file is written by Shirisha Manju

(defglobal ?*A_fp5* = fp5)
(defglobal ?*aper_debug-file* = aper_debug)

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (deffunction never-called ()
 (assert (id-inserted_sub_id) )
 (assert (No complete linkages found))
 (assert (prep_id-relation-anu_ids))
 (assert (missing-level-id) )
 (assert (id-original_word) )
 (assert (id-number-src) )
 (assert (id-gender-src))
 (assert (verb_type-verb-causative_verb-tam) )
 (assert (addition-level-word-sid) )
 (assert (verb_type-verb-kriyA_mUla-tam))
 (assert (conjunction-components))
 (assert (id-wsd_number) )
 (assert (verb_type-verb-causative_verb-tam))
 (assert (affecting_id-affected_ids-wsd_group_root_mng))
 (assert (affecting_id-affected_ids-wsd_group_word_mng))
 (assert (id-last_word) )
 (assert (id-tam_type))
 (assert (kriyA_id-object2_viBakwi))
 (assert (kriyA_id-object1_viBakwi))
 (assert (kriyA_id-object_viBakwi))
 (assert (kriyA_id-subject_viBakwi))
 (assert (id-H_vib_mng))
 (assert (make_verbal_noun))
 (assert (root_id-TAM-vachan))
 (assert (verb_agrmt-object_id-head_id))
 (assert (verb_agrmt-subject_id-head_id))
 (assert (verb_agrmt-head_id))
 (assert (id-E_tam-H_tam_mng))
 (assert (meaning_has_been_decided))
 (assert (id-wsd_root_mng))
 (assert (id-wsd_word_mng))
 (assert (id-preceeding_part_of_verb) )
 (assert (id-wsd_root) )
 (assert (id-cat))
 (assert (id-cat_coarse))
 (assert (id-word))
 (assert (root-verbchunk-tam-chunkids))
 (assert (id-attach_emphatic))
 (assert (id-TAM))
 (assert (conj_head-left_head-right_head))
 )


  ;;assert yA_tams_with_ne_list  and imper_request_list
 (defrule assert_yA_tams_with_ne_list
 (declare (salience 10000))
 (load_facts)
 =>
 (assert (yA-tam  yA))
 (assert (yA-tam  yA_WA))
 (assert (yA-tam  yA_ho))
 (assert (yA-tam  yA_hE))
 (assert (yA-tam  yA_huA))
 (assert (yA-tam  yA_hogA))
 (assert (yA-tam  yA_howA))
 (assert (yA-tam  yA_binA))
 (assert (yA-tam  yA_huA_hogA))
 (assert (yA-tam  yA_huA_honA))
 (assert (yA-tam  yA_hI_WA))
 (assert (yA-tam  yA_cAhiye_WA))
 (assert (yA-tam  yA_huA_ho_sakawA_hE))
 (assert (yA-tam  yA_huA_nahIM_hogA))
 (assert (impr_request  imper m_h2))
 )
 ;========================================== default format for hindi mng "-" ==========================================
 ;if vibakthi neq 0 then dont delete the hindi meaning id 
 ;becoz we can get hindi meaning from database with prep as head and head mng as -
 ;Ex:She declared that out of love for the poor she had gotten her family to go against convention.
 ;I like dogs as well as cats.
 (defrule default_id
 (declare (salience 1501))
 ?f0<-(id-HM-source ?id - ?)
 (or (pada_info (group_ids $? ?id $?)(vibakthi 0))(pada_info (group_ids $? ?id $?)(preposition 0)))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input " ?id "  )" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?id "  default_id )" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------- 
 ;She declared that out of love for the poor she had gotten her family to go against convention.
 ;Is there life beyond the grave?
 ;If prep_id is present then dont delete pada_head mng fact 
 (defrule default_id1
 (declare (salience 1500))
 ?f0<-(id-HM-source ?id - ?)
 (or (pada_info (group_head_id ?h)(group_ids $?ids))(pada_info (group_head_id ?h)(preposition $?ids)))
 (test (and (member$ ?id $?ids) (neq ?id ?h)))
 =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input " ?id "  )" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?id "  default_id1 )" crlf)
 )
 ;========================================== complete sent mng ========================================================
 ;This contradicts the assumption that the fluid was in equilibrium.
 (defrule complete_sen_mng_with_vib
 (declare (salience 1011))
 ?f0<-(id-HM-source ?id ?hmng Complete_sen_gdbm)
 (pada_info (group_head_id ?id)(group_cat PP)(vibakthi ?vib))
 (test (neq ?vib 0))
 =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input " ?id "  " ?hmng" " ?vib ")" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  complete_sen_with_vib )" crlf)
 )
;----------------------------------------------------------------------------------------------------------------------- 
 (defrule complete_sen_mng
 (declare (salience 1010))
 ?f0<-(id-HM-source ?id ?hmng Complete_sen_gdbm)
 =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input " ?id "  " ?hmng")" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  complete_sen_mng )" crlf)
 )
 ;========================================== word meanings for wsd/database/idiom ========================================
 ;Added by Mahalaxmi (16-09-09)
 ;Does this shirt match these trousers ? (TROUSERS)
 (defrule word_mng_with_vib
 (declare (salience 1002))
 ?f0<-(id-HM-source ?id ?hmng WSD_compound_phrase_word_mng|Database_compound_phrase_word_mng|WSD_verb_phrase_word_mng|WSD_word_mng|Idiom_word_mng)
 (pada_info (group_head_id ?id)(vibakthi ?vib)(group_cat PP|infinitive|VP))
 (test (and (neq ?vib 0) (neq ?vib -)))
  =>
       (retract ?f0)
       (printout ?*A_fp5* "(id-Apertium_input " ?id " "?hmng"_"?vib ")" crlf)
       (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  word_mng_with_vib )" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;There was a marked difference in the prices of dishes .
 (defrule word_mng_rule
 (declare (salience 1001))
 ?f0<-(id-HM-source ?id ?hmng WSD_compound_phrase_word_mng|Database_compound_phrase_word_mng|WSD_verb_phrase_word_mng|WSD_word_mng|Idiom_word_mng)
  =>
       (retract ?f0)
       (printout ?*A_fp5* "(id-Apertium_input " ?id " "?hmng ")" crlf)
       (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  word_mng_rule )" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; here prep_id itself is considered as the main meaning 
 ;Is there life beyond the grave? Either go to bed or open your book to read.
 (defrule Compound_mng_with_Prep_id
 (declare (salience 1003))
 ?f0<-(id-HM-source ?p_id ?p_mng Database_compound_phrase_word_mng|Database_compound_phrase_root_mng|WSD_compound_phrase_root_mng)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi ?vib)(preposition $? ?p_id $?)(number ?num)(case ?case)(gender ?gen))
 ?f1<-(id-HM-source ?pada_id ?h_mng ?)
 (test (and (neq ?vib 0)(neq ?vib kA) (or (neq (sub-string 1 2 ?vib) "ke")(neq (sub-string 1 2 ?vib) "kI"))))
  =>
	(retract ?f0 ?f1)
	(if (neq ?h_mng -) then  ;He came from inside the room.
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_mng "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^" ?vib "<cat:prsg>$)"  crlf)
	else 
		(if (neq ?p_mng -) then ; Is there life beyond the grave?
			(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?p_mng "<cat:prsg>$)"  crlf)
		else ;Each one of them recorded the narratives from twenty participants.
			(printout ?*A_fp5* "(id-Apertium_input "?pada_id " )" crlf)
		)
	)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?pada_id " Compound_mng_with_Prep_id )" crlf)
 )

 ;======================================== KA vibakthi (viSeRya-RaRTI_viSeRaNa) rules =====================================
 ; Ex: He was awakened at dawn by the sound of crying .
 ;     She awakened to the sound of birds' singing .
 ;     Failure to comply may result in dismissal. 
 (defrule RaRTI_kA_vib_rule_for_verbal_noun
 (declare (salience 1002))
 (prep_id-relation-anu_ids ? viSeRya-RaRTI_viSeRaNa|viSeRya-of_saMbanXI|saMjFA-to_kqxanwa ?f_id ?id)
 (or (make_verbal_noun ?id)(id-cat_coarse ?id verbal_noun))
 (pada_info (group_head_id ?id)(vibakthi ?vib)(H_tam ?tam))
 ?f0<-(id-HM-source ?id ?hmng ?)
 (pada_info (number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
 (test (member$ ?f_id $?f_ids))
 (test (or (eq ?tam kA)(eq ?vib kA)))
 =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?id " ^"?hmng"<cat:vn><case:o>$ ^kA<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  RaRTI_kA_vib_rule_for_verbal_noun  )"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (17-06-11) Suggested by Chaitanya Sir
 ; These are children's books. Mohan fell from the top of the house.
 (defrule RaRTI_kA_vib_rule1
 (declare (salience 1000))
 (prep_id-relation-anu_ids ? viSeRya-RaRTI_viSeRaNa|viSeRya-of_saMbanXI  ?foll_pada_id ?pada_id)
 ?f0<-(id-HM-source ?pada_id ?h_word&~vaha&~usakA&~hamArA&~merA&~Apa&~yaha&~mEM&~Ora ?)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi kA))
 (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
 (test (member$ ?foll_pada_id $?f_ids))
 (id-word ?pada_id ?w&~and&~or);Now try generating random text in the style of an inaugural address or an internet chat room.
  =>
       (retract ?f0)
       (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$ ^kA<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
       (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  RaRTI_kA_vib_rule1 )" crlf)
 )
 ;======================================= KA vibakthi (kriyA_id-object_viBakwi) rules =====================================
 ; Added by Shirisha Manju (17-06-11) Suggested by Chaitanya Sir
 ; Clinton announced on Tuesday a bold new proposal. 
 (defrule kA_vib_from_obj_rule
 (declare (salience 1000))
 (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi kA))
 ?f0<-(id-HM-source ?pada_id ?h_word&~Ora&~yaha ?)
 (prep_id-relation-anu_ids - kriyA-object ?k_id ?pada_id)
 (kriyA_id-object_viBakwi ?k_id kA)
 (pada_info (group_head_id ?k_id)(number ?num1)(case ?case1))
 (id-HM-source ?k_id ?hmng&~upayoga_kara ?)
 =>
        (bind ?gen1 (gdbm_lookup "kriyA_mUla-gender.gdbm" ?hmng))
        (if (neq ?gen1 "FALSE") then
            (if (eq ?gen1 -) then (bind ?gen1 m)
            else
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word"<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^kA<cat:sh><case:"?case"><gen:"?gen1"><num:"?num">$)"  crlf)
            )
            (retract ?f0)
            (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  kA_vib_from_obj_rule )" crlf)
        )
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; He studiously avoided answering the question. 
 (defrule kA_vib_from_obj_rule1
 (declare (salience 1001))
 (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi kA))
 ?f0<-(id-HM-source ?pada_id ?h_word&~Ora&~yaha ?)
 (prep_id-relation-anu_ids - kriyA-object ?k_id ?pada_id)
 (kriyA_id-object_viBakwi ?k_id kA)
 (or (make_verbal_noun ?k_id)(id-cat_coarse ?k_id verbal_noun))
 (pada_info (group_head_id ?k_id)(number ?num1)(case ?case1))
 (id-HM-source ?k_id ?hmng&~upayoga_karanA ?)
 (test (neq (str-index "_" ?hmng)  FALSE))
 =>
	(bind ?str_len (length ?hmng))
	(bind ?hmng (sub-string 1 (- ?str_len 2) ?hmng))
        (bind ?gen1 (gdbm_lookup "kriyA_mUla-gender.gdbm" ?hmng))
        (if (neq ?gen1 "FALSE") then
            (if (eq ?gen1 -) then (bind ?gen1 m)
            else
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word"<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^kA<cat:sh><case:"?case"><gen:"?gen1"><num:"?num">$)"  crlf)
            )
            (retract ?f0)
            (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  kA_vib_from_obj_rule1 )" crlf)
        )
 )
 ;======================================= KA vibakthi (kriyA_id-subject_viBakwi) rules =====================================
 ; You have no control over your emotions.
 (defrule kA_vib_from_sub_rule
 (declare (salience 951))
 (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(person ?per)(vibakthi kA)(group_ids $?ids))
 (id-word ?pada_id  ?w&he|she|their|i|those|your|you|our|my|me|they|its|we|it|him)
 ?f0<-(id-HM-source ?pada_id ?h_word ?)
 (prep_id-relation-anu_ids - kriyA-subject ?k_id ?pada_id)
 (kriyA_id-subject_viBakwi ?k_id kA)
 (hindi_id_order  $?start $?ids ?foll_pada_id $?)
 (pada_info (number ?num1)(gender ?gen1)(group_cat PP|infinitive|VP)(group_ids $?f_ids))
 (test (member$ ?foll_pada_id $?f_ids))
 =>
	(retract ?f0)
	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><parsarg:kA><fnum:"?num1"><case:d><gen:"?gen1"><num:"?num"><per:"?per ">$)"  crlf)
	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  kA_vib_from_sub_rule )" crlf)
 )
 ;======================================= KA vibakthi (viSeRya-jo_samAnAXikaraNa) rules ===================================
 ; The dog I chased was black.
 (defrule kA_for_jo_samAnAXikaraNa
 (declare (salience 1000))
 (prep_id-relation-anu_ids - viSeRya-jo_samAnAXikaraNa  ?  ?jo)
 ?f0<-(id-HM-source ?jo ?h_word&wuma|kOna|jo|koI|vaha ?)
 (pada_info (group_head_id ?jo)(group_cat PP)(number ?num)(vibakthi kA)(person ?per))
 ?f1<-(hindi_id_order $? ?jo ?foll_pada_id $?)
 (pada_info (group_cat PP)(number ?num1)(gender ?gen1)(group_ids $?f_ids))
 (test (member$ ?foll_pada_id $?f_ids))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?jo " ^"?h_word "<cat:p><parsarg:kA><fnum:"?num1"><case:d><gen:"?gen1"><num:"?num"><per:"?per ">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?jo "  kA_for_jo_samAnAXikaraNa )" crlf)
  )
 ;------------------------------------------------------------------------------------------------------------------------
 ; That reeks of favoritism.
 ; KA vib pada followed by VP pada
 (defrule kA_for_kriyA_mUla
 (declare (salience 610))
 (pada_info (group_head_id ?id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi kA))
 ?f0<-(id-HM-source ?id ?h_word ?)
 ?f1<-(hindi_id_order $? ?id ?foll_pada_id $?)
 (pada_info (group_cat VP)(number ?num1)(case ?case1)(group_ids $?f_ids))
 (id-HM-source ?foll_pada_id ?hmng&~Ora ?)
 (test (member$ ?foll_pada_id $?f_ids))
  =>
	(bind ?gen1 (gdbm_lookup "kriyA_mUla-gender.gdbm" ?hmng))
	(if (neq ?gen1 "FALSE") then
		(retract ?f0)
	        (printout ?*A_fp5* "(id-Apertium_input "?id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^kA<cat:sh><case:d><gen:"?gen1"><num:"?num">$)" crlf) 
        	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  kA_for_kriyA_mUla )" crlf)
	)
  )

 ;============================================ verbel-noun without vib ===================================================
 ; Running is good for health.
 ; The wheels of the car began to turn . 
 ; I want to go there .
 (defrule verbal_noun_without_vib
 (declare (salience 910))
 (pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi 0))
 (or (make_verbal_noun ?pada_id) (id_cat_coarse ?pada_id verbal_noun))
 ?f0<-(id-HM-source ?pada_id ?hmng ?)
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:d>$)" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id"  verbal_noun_without_vib )" crlf)
 )
 ;==========================================  verbel-noun with vib =======================================================
 ; He made a mistake in the inviting of John. 
 ;The game of life is played for winning .
 (defrule verbal_noun_with_vib
 (declare (salience 905))
 (pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi ?vib))
 (or (make_verbal_noun ?pada_id)(id-cat_coarse ?pada_id verbal_noun))
 ?f0<-(id-HM-source ?pada_id ?hmng ?)
 (test (neq ?vib 0))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:o>$ ^" ?vib "<cat:prsg>$)" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?pada_id "  verbal_noun_with_vib  )"crlf)
 )
 ;========================================== verbel-noun without tam =======================================================
; ; The wheels of the car began to turn . 
; ;I want to go there .
 (defrule verbal_noun_without_tam
 (declare (salience 910))
 (pada_info (group_head_id ?pada_id)(group_cat infinitive)(H_tam ?vib))
 (or (make_verbal_noun ?pada_id)(id-cat_coarse ?pada_id verbal_noun))
 ?f0<-(id-HM-source ?pada_id ?hmng ?)
 (test (or (eq ?vib 0)(eq ?vib -)))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:d>$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  verbal_noun_without_tam )"  crlf)
  )
 ;============================================== verbel-noun with tam ====================================================\\
 ; A fat ugly boy had to eat too many fruits to lose his weight. 
 (defrule verbal_noun_with_tam
 (declare (salience 890))
 (pada_info (group_head_id ?pada_id)(group_cat infinitive)(H_tam ?vib))
 (or (make_verbal_noun ?pada_id) (id-cat_coarse ?pada_id verbal_noun))
 ?f0<-(id-HM-source ?pada_id ?hmng ?)
 (test (and (neq ?vib 0)(neq ?vib -)));added vib neq - case (15/09/09)
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:o>$  ^" ?vib "<cat:prsg>$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  verbal_noun_with_tam )"  crlf)
  )
  ;============================ Pronoun rules -  vibakthi not equal to nil (head id) ======================================
  ; All his books are good. 
  ; He wasted his golden opportunity to play in the national team .
  ; The truth is more complicated, especially in his education system  
  ; Modified by Manoj (03/09/2010)
  (defrule PP_rule_with_vib_for_his
  (declare (salience 950))
  (prep_id-relation-anu_ids ? viSeRya-RaRTI_viSeRaNa  ?rel ?pada_id)
  (id-original_word ?pada_id his|her|His|Her)
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(vibakthi ?vib)(person ?per))
  (pada_info (group_head_id ?rel) (group_cat PP) (number ?num1) (case ?case1) (gender ?gen1))
  ?f0<-(id-HM-source ?pada_id ?hmng ?)
  (test (neq ?vib 0))
  =>
        (retract ?f0)
        (printout ?*A_fp5*  "(id-Apertium_input "?pada_id" ^vaha<cat:p><parsarg:"?vib"><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:"?num"><per:"?per ">$)" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?pada_id "  PP_rule_with_vib_for_his )" crlf)
  )
  ;------------------------------------------------------------------------------------------------------------------------
  ; vib kA -- for He,I,She ,They 
  ; Ex:  I asked him a question . She carefully prepared the dinner.
  ;      Discuss it among yourselves first . The leopard seizes its kill and begins to eat .
  (defrule PP_pronoun_rule_with_vib_kA
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(person ?per)(vibakthi kA)(group_ids $?ids))
  (id-word ?pada_id  ?w&he|she|their|i|those|your|you|our|my|me|they|its|we|it|him|this)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info (group_head_id ?h)(number ?num1)(case ?case1)(gender ?gen1)(group_cat PP|infinitive|VP)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (id-word ?h ?word)
  (id-gender-src ?foll_pada_id ?gen ?)  
  =>
        (retract ?f0)
	(if (eq ?word and) then ;They were discussing their hopes and dreams.
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><parsarg:kA><fnum:"?num1"><case:"?case1"><gen:"?gen"><num:"?num"><per:"?per ">$)"  crlf)
	else	
	        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><parsarg:kA><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:"?num"><per:"?per ">$)"  crlf)
	)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_pronoun_rule_with_vib_kA )" crlf)
  )
  ;------------------------------------------------------------------------------------------------------------------------
  ; Added by Shirisha Manju (21-09-11) suggested by Chaitanya Sir
  ; She helped me. God helps those who help themselves. 
  (defrule PP_pronoun_rule_with_vib_kI
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(person ?per)(vibakthi kI)(group_ids $?ids))
  (or (id-word ?pada_id ?w&he|she|their|i|those|your|you|our|my|me|they|its|we|it|him|this)(id-original_word ?pada_id us|Us))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:o><parsarg:kI><gen:f><num:"?num"><per:"?per">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_pronoun_rule_with_vib_kI )" crlf)
  )
  ;------------------------------------------------------------------------------------------------------------------------
  ; He marked these bottles. If you use that strategy, he will wipe you out.
  ; THE nearly 5 million people who attended enjoyed it.
  (defrule PP_rule_with_vib_for_those
  (declare (salience 930))
  (pada_info (group_cat PP)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids ?id)(number ?num))
  ?f1<-(id-word ?pada_id  Those|those|these|These|that|this|This|the)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (member$ ?pada_id $?ids))
  (test (neq ?vib 0))
  =>
        (retract ?f0 ?f1)
        (if (eq ?vib kI) then
                  (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><case:o><parsarg:0><gen:"?gen"><num:p><per:"?per">$  ^" ?vib "<cat:prsg>$)"  crlf)
       else
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word"<cat:p><case:o><parsarg:0><gen:"?gen"><num:"?num"><per:"?per ">$)"  crlf)
        )
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_those )" crlf)
  )
  ;------------------------------------------------------------------------------------------------------------------------
  ; He is taller than me. Look at me. We ran after him, but he escaped. You will not go without me.
  ; Who did you play tennis with? The man with whom I play tennis is here.
  ; Added by Shirisha Manju (24-09-11) Suggested by Chaitanya Sir
  (defrule PP_pronoun_rule_with_ke
  (declare (salience 931))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(gender ?gen)(person ?per)(case ?case)(vibakthi ?vib))
  (or (id-word ?pada_id he|she|their|i|our|me|him|they|them|her|we|it|that|this|ours|who|whom|you|your)(id-original_word ?pada_id us|Us))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (neq ?vib 0))
  (test (neq (str-index "_" ?vib)  FALSE))
  (test (or (eq (sub-string 1 2 ?vib) "ke")(eq (sub-string 1 2 ?vib) "kI")))
  =>
        (retract ?f0)
	(bind ?index (str-index "_" ?vib))
        (bind ?v (sub-string 1 (- ?index 1) ?vib))
	(bind ?vib1 (sub-string (+ ?index 1) (length ?vib) ?vib))
	(if (eq ?v "kI") then
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word"<cat:p><case:o><parsarg:"?v"><gen:f><num:"?num"><per:"?per ">$ ^" ?vib1   "<cat:prsg>$)"  crlf)
	else
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word"<cat:p><case:o><parsarg:"?v"><gen:m><num:"?num"><per:"?per ">$ ^" ?vib1   "<cat:prsg>$)"  crlf)
	)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_pronoun_rule_with_ke )" crlf)
  )
  ;------------------------------------------------------------------------------------------------------------------------
  ;He will sing you good night. 
  (defrule PP_pronoun_rule_for_you_with_ke
  (declare (salience 931))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(gender ?gen)(person ?per)(case ?case)(vibakthi ?vib))
  (id-word ?pada_id your|you)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (neq ?vib 0))
  (test (neq (str-index "_" ?vib)  FALSE))
  (test (or (eq (sub-string 1 2 ?vib) "ke")(eq (sub-string 1 2 ?vib) "kI")))
  =>
        (retract ?f0)
        (bind ?index (str-index "_" ?vib))
        (bind ?v (sub-string 1 (- ?index 1) ?vib))
        (bind ?vib1 (sub-string (+ ?index 1) (length ?vib) ?vib))
        (if (eq ?v "kI") then
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word"<cat:p><case:o><parsarg:"?v"><gen:f><num:"?num">$ ^" ?vib1   "<cat:prsg>$)"  crlf)
        else
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word"<cat:p><case:o><parsarg:"?v"><gen:m><num:"?num">$ ^" ?vib1   "<cat:prsg>$)"  crlf)
        )
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_pronoun_rule_for_you_with_ke )" crlf)
  )
  ;------------------------------------------------------------------------------------------------------------------------
  ; I will tell you some interesting facts tomorrow. Their program is better than ours.
  (defrule PP_pronoun_rule_with_vib
  (declare (salience 931))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(gender ?gen)(person ?per)(case ?case)(vibakthi ?vib))
  (or (id-word ?pada_id he|she|their|i|your|you|our|me|him|they|them|her|we|it|that|this|ours)(id-original_word ?pada_id us|Us))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (neq ?vib 0))
  =>
        (retract ?f0)
	(if (eq ?h_word Apa) then
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:"?vib "><gen:"?gen"><num:"?num">$)"  crlf)
	else
	        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:"?vib "><gen:"?gen"><num:"?num"><per:"?per ">$)"  crlf)
	)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_pronoun_rule_with_vib )" crlf)
  )
  ;------------------------------------------------------------------------------------------------------------------------ 
  ;These are few sentences for Link Parser. ;But why did you send him that nasty note.
  ;It is good to eat less food these days.
  (defrule PP_pronoun_rule_without_vib
  (declare (salience 931))
  (pada_info (group_cat PP)(number ?num)(gender ?gen)(person ?per)(case ?case)(vibakthi 0)(group_ids $?ids))
  (id-word ?pada_id that|this|these)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (member$ ?pada_id $?ids))
  =>
        (retract ?f0)
       (if (eq ?case o) then ; It is good to eat less food these days.
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num"><per:"?per ">$)"  crlf)
       else
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><gen:"?gen"><num:"?num"><per:"?per "><tam:0>$)"  crlf)
       )
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_pronoun_rule_without_vib )" crlf)
  )


  ;------------------------------------------------------------------------------------------------------------------------
  ; These are children's books. Where did they come from? Can you tell us where those strange ideas came from? 
  (defrule PP_pronoun_rule_without_vib1
  (declare (salience 930))
  (pada_info (group_cat PP)(number ?num)(gender ?gen)(person ?per)(case ?case)(vibakthi 0)(group_ids $?ids))
  (id-word ?pada_id  these|they|those)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (member$ ?pada_id $?ids))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><gen:"?gen"><num:"?num"><per:"?per "><tam:0>$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_pronoun_rule_without_vib1 )" crlf)
  )
  ;------------------------------------------------------------------------------------------------------------------------
  ;If we heat iron it becomes red. The yield of kharif crops was not good this season. 
  ;The party that night was a big success. The law does not allow us to do it.
  (defrule PP_pronoun_rule_without_vib2
  (declare (salience 930))
  (pada_info (group_cat PP)(number ?num)(gender ?gen)(person ?per)(vibakthi 0)(group_ids $?ids))
  (id-word ?id  we|us)
  ?f0<-(id-HM-source ?id ?h_word ?)
  (test (member$ ?id $?ids))
  =>
        (retract ?f0)
	(printout ?*A_fp5* "(id-Apertium_input "?id " ^"?h_word "<cat:p><case:o><parsarg:0><gen:"?gen"><num:"?num"><per:"?per ">$)"  crlf)
	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_pronoun_rule_without_vib2 )" crlf)
  )
  ;------------------------------------------------------------------------------------------------------------------------
  ;Added by Roja (15-08-12) 
  ;If you use that strategy, he will wipe you out.
  (defrule PP_pronoun_rule_without_vib3
  (declare (salience 929))
  (pada_info (group_cat PP)(number ?num)(gender ?gen)(person ?per)(case ?case)(vibakthi 0)(group_ids $?ids))
  (id-word ?pada_id you|your)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (member$ ?pada_id $?ids))
  =>
        (retract ?f0) 
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_pronoun_rule_without_vib3 )" crlf)
  )
  ;------------------------------------------------------------------------------------------------------------------------

 ;====================================== VP rule for root and tam =========================================================
 ;Added by Mahalaxmi (23-09-09)
 ;He is not related to me.
 ;Modified by Shirisha Manju (27-01-12) --removed loop to retract the ids and changed the input pattern
 ;At Quantum, which is based in New York, the trouble is magnified by the company's heavy dependence on plastics.
 (defrule verbal_adjective_breaking_tam
 (declare (salience 800))
 (id-word ?id ?word)
 (pada_info (group_head_id ?id)(group_cat VP)(preceeding_part_of_verb ?vib)(number ?num)(gender ?gen)(person ?per))
 (root-verbchunk-tam-chunkids ?rt ?vrb_chnk ?suf $?ids ?id)
 ?f0<-(id-HM-source ?id ?hnd_mng ?)
 (test (neq (gdbm_lookup "verbal_adj.gdbm" ?hnd_mng) "FALSE"))
 (test (neq (gdbm_lookup "verbal_adj_tams.gdbm" ?suf) "FALSE"))
 =>
     	(retract ?f0)
     	(bind ?str1 (gdbm_lookup "verbal_adj_tams.gdbm" ?suf))
	(printout ?*A_fp5* "(id-Apertium_input "?id " root:"?hnd_mng"_"?str1",tam:"?str1",gen:"?gen",num:"?num ",per:"?per")"  crlf) 
     	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  verbal_adjective1 )" crlf)
     	(printout ?*aper_debug-file* "(id-Rule_name  "(nth$ (length $?ids) $?ids) "  verbal_adjective1 )" crlf)
  )
  ;------------------------------------------------------------------------------------------------------------------------
  ; I saw him telling her about the party .
  ; Added 'viSeRya-kqxanwa_viSeRaNa'  ex. I have been running about all morning trying to find you. (Meena 12.5.11)
  (defrule we_hue_rule
  (declare (salience 700))
  (pada_info (group_head_id ?pada_id)(number ?num)(gender ?gen)(person ?person)(H_tam we_hue));the (group_cat VP) condition is deleted by Sukhada for "I saw him telling her about the party" in OpenLogos (12.08.10)
  ?f0<-(id-HM-source ?pada_id ?hmng ?)
  (prep_id-relation-anu_ids ? kriyA-kqxanwa_kriyA_viSeRaNa|viSeRya-kqxanwa_viSeRaNa ? ?pada_id )
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?hmng ",tam:adv_we_hue,gen:"?gen",num:"?num ",per:"?person")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  we_hue_rule )" crlf)
  )
  ;------------------------------------------------------------------------------------------------------------------------
  (defrule VP_rule_for_jA
  (declare (salience 700))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(person ?per)(H_tam ?H_tam)(preceeding_part_of_verb ?vib))
  (yA-tam  ?H_tam)
  ?f0<-(id-HM-source ?pada_id jA ?)
  (test (neq ?vib 0))
  =>
        (retract ?f0)
        (bind ?index (str-index "_" ?H_tam))
        (bind ?str (sub-string (+ ?index 1) 1000 ?H_tam))
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?vib"_jA,tam:yA1_"?str",gen:"?gen",num:"?num ",per:"?per")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_jA )" crlf)
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ;I went there with my mother . Having finished the book, she went to school.
  (defrule VP_rule_for_jA1
  (declare (salience 650))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(person ?per)(H_tam ?H_tam))
  (yA-tam  ?H_tam)
  ?f0<-(id-HM-source ?pada_id jA ?)
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:jA,tam:yA1,gen:"?gen",num:"?num ",per:"?per")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_jA1 )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
 ; The answer is no because the direction could be changing
 ; He left in the morning . The boy saw an elephant in the forest .
  (defrule VP_rule_for_jA_and_yA-tam
  (declare (salience 640))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(case ?case)(gender ?gen)(person ?per)(H_tam ?H_tam))
  (yA-tam  ?H_tam)
  ?f0<-(id-HM-source ?pada_id ?h_mng ?)
  =>
       (bind ?hmng ?h_mng)
        (if (neq (str-index "_" ?h_mng) FALSE) then
               (bind ?index (str-index "_" ?h_mng))
               (while (neq ?index FALSE) ;Run the loop till the last "_" found, Added by S.Mahalaxmi (16-01-10)
                (bind ?h_mng (sub-string (+ ?index 1) 1000 ?h_mng))
                (bind ?index (str-index "_" ?h_mng))
                )
                (if (eq ?h_mng "jA") then
                        (retract ?f0)
                        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?hmng",tam:yA1,gen:"?gen",num:"?num ",per:"?per")"  crlf)
                        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_jA_and_yA-tam )" crlf)
                )
        )
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ; Added by sriram: same as above rule but handles tam having more than one word ( yA_WA ).
  ; The answer is no because the direction could be changing
  ; He left in the morning . The boy saw an elephant in the forest .
  (defrule VP_rule_for_jA_and_yA-tam-multi
  (declare (salience 650))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(case ?case)(gender ?gen)(person ?per)(H_tam ?H_tam))
  (yA-tam  ?H_tam)
  ?f0<-(id-HM-source ?pada_id ?h_mng ?)
  =>
     (if (neq (str-index "_" ?H_tam) FALSE) then
        (bind ?index1 (str-index "_" ?H_tam))
        (bind ?str (sub-string (+ ?index1 1) 1000 ?H_tam))

       (bind ?hmng ?h_mng)
        (if (neq (str-index "_" ?h_mng) FALSE) then
               (bind ?index (str-index "_" ?h_mng))
               (while (neq ?index FALSE) ;Run the loop till the last "_" found, Added by S.Mahalaxmi (16-01-10)
                (bind ?h_mng (sub-string (+ ?index 1) 1000 ?h_mng))
                (bind ?index (str-index "_" ?h_mng))
                )
                (if (eq ?h_mng "jA") then
                        (retract ?f0)
                        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?hmng",tam:yA1_"?str",gen:"?gen",num:"?num ",per:"?per")"  crlf)
                        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_jA_and_yA-tam-multi )" crlf)
                )
        ))
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ;Be careful, she said.
  (defrule VP_rule_for_imper
  (declare (salience 650))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(H_tam imper)(preceeding_part_of_verb 0))
  (impr_request imper ?req)
  ?f0<-(id-HM-source ?pada_id ?hmng ?)
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?hmng",tam:imper,gen:"?gen",num:"?num ",per:"?req")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_imper )" crlf)
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ;Do not try too hard too soon. Do not waste electricity.
  (defrule VP_rule_for_imper_not
  (declare (salience 650))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(H_tam imper)(preceeding_part_of_verb ?vib))
  (impr_request imper ?req)
  ?f0<-(id-HM-source ?pada_id ?g_head ?)
  (test (neq ?vib 0))
  =>
        (if (neq (str-index "_" ?g_head) FALSE) then
                (bind ?len 0)
                (bind ?str1 ?g_head)
                (bind ?str_len (length ?g_head))
                (while (neq (str-index "_" ?g_head) FALSE)
                        (bind ?index (str-index "_" ?g_head))
                        (bind ?g_head (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
                        (bind ?len (+ ?index ?len))
                )
                (bind ?str4(sub-string 1 ?len ?str1))
                (bind ?str5 (str-cat ?str4 ?vib (sub-string ?len ?str_len ?str1)))
                (printout  ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?str5",tam:imper,gen:"?gen",num:"?num ",per:"?req")"  crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_imper_not )" crlf)
        else
                (printout  ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?vib"_"?g_head",tam:imper,gen:"?gen",num:"?num ",per:"?req")"  crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_imper_not )" crlf))
                (retract ?f0)
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ;We will have the party in the garden if the weather is good . 
  (defrule VP_rule_hE_and_gA
  (declare (salience 650))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(case ?case)(gender ?gen)(person ?person)(H_tam gA))
  ?f0<-(id-HM-source ?pada_id hE ?)
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:ho" ",tam:gA,gen:"?gen",num:"?num ",per:"?person")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_hE_and_gA )" crlf)
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ;  I have three brothers .
  (defrule VP_rule_hE
  (declare (salience 650))
  ?f0<-(id-HM-source ?pada_id hE ?)
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(person ?person)(preceeding_part_of_verb 0))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:hE,tam:hE,gen:"?gen",num:"?num ",per:"?person")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_hE )" crlf)
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ;Added by Mahalaxmi. suggested by sriram(27-10-09)
  ;She had social prestige .
  (defrule VP_rule_WA
  (declare (salience 650))
  ?f0<-(id-HM-source ?pada_id WA ?)
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(person ?person)(preceeding_part_of_verb 0))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:WA,tam:WA,gen:"?gen",num:"?num ",per:"?person")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_WA )" crlf)
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ;I do not have very much money .
  (defrule VP_rule_hE_and_pre_vb
  (declare (salience 650))
  ?f0<-(id-HM-source ?pada_id hE ?)
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(person ?person)(preceeding_part_of_verb ?vb))
  (test (neq ?vb 0))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?vb"_hE,tam:hE,gen:"?gen",num:"?num ",per:"?person")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_hE_and_pre_vb )" crlf)
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ;This is the way to go .
  ;He was to become the president of India .
  (defrule VP_rule_ne_kA_or_ne_se
  (declare (salience 640))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(person ?person)(H_tam ?H_tam))
  ?f0<-(id-HM-source ?pada_id ?g_head ?)
  (hindi_id_order  $?start $?pada_ids ?foll_pada_id $?)
  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (or (eq ?H_tam ne_kA)(eq ?H_tam ne_se)(eq ?H_tam ne_vAlA_WA)))
  =>
        (retract ?f0)
        (bind ?len (length ?H_tam))
        (bind ?index (str-index "_" ?H_tam))
        (bind ?str (sub-string 1 (- ?index 1) ?H_tam))
        (bind ?str1 (sub-string (+ ?index 1) ?len ?H_tam))
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?g_head",tam:"?str",gen:"?gen",num:"?num ",per:"?person"  ^"?str1"<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_ne_kA_or_ne_se )" crlf)
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ;He need not stay here. 
  (defrule VP_rule_for_before_verb_for_need
  (declare (salience 651))
  (id-word  ?id  need)
  (pada_info (group_head_id ?pada_id)(group_cat VP)(group_ids ?id $?d) (number ?num)(gender ?gen)(person ?person)(H_tam ?H_tam)(preceeding_part_of_verb ?vb))
  ?f0<-(id-HM-source ?pada_id ?g_head ?)
  (test (and (neq ?vb 0)(neq ?H_tam 0)))
  (test (neq (str-index "_" ?H_tam) FALSE)) 
  =>
	(bind ?len 0)
        (bind ?str1 ?H_tam)
        (bind ?str_len (length ?H_tam))
        (while (neq (str-index "_" ?H_tam) FALSE)
        	(bind ?index (str-index "_" ?H_tam))
                (bind ?H_tam (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
                (bind ?len (+ ?index ?len))
        )
        (bind ?str4 (sub-string 1 ?len ?str1))
        (bind ?str5 (str-cat ?str4 ?vb (sub-string ?len ?str_len ?str1)))
        (printout  ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?g_head",tam:"?str5",gen:"?gen",num:"?num ",per:"?person")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_before_verb_for_need )" crlf)
        (retract ?f0)
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ; This job will not take much effort . I do not go out as much now .
  (defrule VP_rule_for_before_verb
  (declare (salience 650))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(person ?person)(H_tam ?H_tam)(preceeding_part_of_verb ?vb))
  ?f0<-(id-HM-source ?pada_id ?g_head ?)
  (test (and (neq ?vb 0)(neq ?H_tam 0)))
  =>
        (if (neq (str-index "_" ?g_head) FALSE) then
                (bind ?len 0)
                (bind ?str1 ?g_head)
                (bind ?str_len (length ?g_head))
                (while (neq (str-index "_" ?g_head) FALSE)
                        (bind ?index (str-index "_" ?g_head))
                        (bind ?g_head (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
                        (bind ?len (+ ?index ?len))
                )
                (bind ?str4 (sub-string 1 ?len ?str1))
                (bind ?str5 (str-cat ?str4 ?vb (sub-string ?len ?str_len ?str1)))
                (printout  ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?str5",tam:"?H_tam",gen:"?gen",num:"?num ",per:"?person")"  crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_before_verb )" crlf)
        else
                (printout  ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?vb"_"?g_head",tam:"?H_tam",gen:"?gen",num:"?num ",per:"?person")"  crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_before_verb )" crlf))
                (retract ?f0)
   )
  
   

  ;--------------------------------------------------------------------------------------------------------------------------
  ;There was a marked difference in the prices of dishes .
  ;She was afraid for her children .
  (defrule VP_rule_for_WA_f
  (declare (salience 650))
  ?f0<-(id-HM-source ?pada_id  WA ?)
  (verb_agrmt-subject_id-head_id  subject ?sub_id ?pada_id)
  (pada_info (group_head_id ?sub_id) (group_cat PP)(gender f)(number ?num))
  =>
        (retract ?f0)
        (if (eq ?num s) then
                (printout ?*A_fp5* "(id-Apertium_input " ?pada_id " WI)"  crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_WA_f )" crlf)
        else
                (printout ?*A_fp5* "(id-Apertium_input " ?pada_id " WIM)"  crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_WA_f )" crlf)
        )
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ;How many people were there . There was a red mark on the door .
  (defrule VP_rule_for_WA_m
  (declare (salience 650))
  ?f0<-(id-HM-source ?pada_id  WA ?)
  (verb_agrmt-subject_id-head_id  subject ?sub_id ?pada_id)
  (pada_info (group_head_id ?sub_id) (group_cat PP)(gender m)(number ?num))
   =>
        (retract ?f0)
        (if (eq ?num s) then
                (printout ?*A_fp5* "(id-Apertium_input " ?pada_id " WA)"  crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_WA_m )" crlf)
        else    (printout ?*A_fp5* "(id-Apertium_input " ?pada_id " We)"  crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_WA_m )" crlf)
        )
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  (defrule VP_rule_for_we
  (declare (salience 650))
  ?f0<-(id-HM-source ?pada_id  We ?)
  (verb_agrmt-subject_id-head_id  subject ?sub_id ?pada_id)
  (pada_info (group_head_id ?sub_id) (group_cat PP)(gender ?gen)(number ?num))
  =>
        (retract ?f0)
        (if (eq ?gen f) then
                (printout ?*A_fp5* "(id-Apertium_input " ?pada_id " WIM)"  crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_We )" crlf)
        else    (printout ?*A_fp5* "(id-Apertium_input " ?pada_id " We)"  crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_We )" crlf)
        )
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ;The students enjoyed taking that course .
  (defrule VP_vib_rule_for_kA
  (declare (salience 660))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(case ?case)(gender ?gen)(person ?per)(H_tam ?H_tam))
  (id-vibakthi ?pada_id kA)
  ?f0<-(id-HM-source ?pada_id ?g_head ?)
  ?f1<-(hindi_id_order  $?start ?pada_id ?foll_pada_id $?)
  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  =>
         (retract ?f0)
         (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?g_head ",tam:"?H_tam",gen:"?gen",num:"?num ",per:"?per " ^kA<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_vib_rule_for_kA )" crlf)
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ;I made it clear that I was angry . 
  (defrule VP_kriyA_mUla_rule
  (declare (salience 650))
  (verb_type-verb-kriyA_mUla-tam kriyA_mUla  ?kri_m ?root_id $?)
  (pada_info (group_head_id ?root_id)(group_cat VP)(number ?num)(gender ?gen)(person ?per)(H_tam ?H_tam))
  ?f0<-(id-HM-source ?root_id ?hmng ?)
  ?f1<-(id-HM-source ?kri_m ?hmng1 ?)
  =>
        (retract ?f0 ?f1)
        (printout ?*A_fp5* "(id-Apertium_input "?root_id" root:"?hmng ",tam:"?H_tam",gen:"?gen",num:"?num ",per:"?per")"crlf)
        (printout ?*A_fp5* "(id-Apertium_input "?kri_m"  ^"?hmng1"<cat:n><case:d><gen:"?gen"><num:"?num">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?root_id "  VP_kriyA_mUla_rule )" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?kri_m "  VP_kriyA_mUla_rule )" crlf)
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  (defrule VP_default_rule
  (declare (salience 600))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(case ?case)(gender ?gen)(person ?per)(H_tam ?H_tam))
  (id-word  ?pada_id  ?wrd)
  ?f0<-(id-HM-source ?pada_id ?g_head ?)
  =>
        (retract ?f0)
        (if (eq ?wrd used) then
             (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?g_head ",tam:"?H_tam",gen:"?gen",num:s,per:"?per")" crlf)
             (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_default_rule )" crlf)
        else
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?g_head ",tam:"?H_tam",gen:"?gen",num:"?num ",per:"?per")" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_default_rule )" crlf)
  ))
  ;-------------------------------------------------------------------------------------------------------------------------
  ; The public seem to love him, no matter what he does.
  (defrule infinitive_rule
  (declare (salience 600))
  (pada_info (group_head_id ?pada_id)(group_cat infinitive)(H_tam ?H_tam))
  ?f0<-(id-HM-source ?pada_id ?hmng ?)
  =>
        (retract ?f0)
        (if (eq ?H_tam -) then ; if tam is - then assign tam as 0   Ex: Does there seem to be a dog in the park ?
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?hmng",tam:0,gen:m,num:s,per:a)"  crlf)
        else
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?hmng",tam:"?H_tam",gen:m,num:s,per:a)"  crlf)
        )
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  infinitive_rule )" crlf)
  )
  ;===================================  NP rules ============================================
  (defrule PP_rule_for_and_head
  (declare (salience 550))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi ?vib)(person ?per)(case ?case))
  (id-word ?pada_id and|or)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id" ^"?h_word "<cat:prsg>$)"crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?pada_id "  PP_rule_for_and_head )" crlf)
  )
  ;-------------------------------------------------------------------------------------------------------------------------
  ;What causes motion described in this chapter and the next chapter forms the subject matter of Chapter 5.
  (defrule PP_rule_with_tam
  (declare (salience 460))
  (prep_id-relation-anu_ids ? viSeRya-kqxanwa_viSeRaNa  ?vi ?kq_id)
  ?f0<-(id-HM-source ?kq_id ?h_word ?)
  (pada_info (group_head_id ?kq_id)(group_cat PP)(number ?num)(gender ?gen)(person ?per)(group_ids $?ids)(H_tam ?tam))
  (test (neq ?tam 0))
  =>
	(retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?kq_id" root:"?h_word ",tam:"?tam",gen:"?gen",num:"?num ",per:"?per")" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?kq_id "  PP_rule_with_tam )" crlf)
   )
  ;-------------------------------------------------------------------------------------------------------------------------
  ; Broken windows need to be replaced. The painted doors look great. Invention of currency was done mainly for transaction. 
  (defrule PP_rule_with_tam1
  (declare (salience 450))
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(gender ?gen)(person ?person)(group_ids $?ids)(H_tam ?tam))
  (test (member$ ?id $?ids))
  (test (neq ?tam 0))
  (not (id-cat_coarse ?id noun)) ;Application and exploitation of physical laws to make useful devices is the most interesting and exciting part and requires great ingenuity and persistence of effort
  =>
        (bind ?a (gdbm_lookup "hindi_cat.gdbm" ?h_word))
        (if (eq ?a "T") then
                (retract ?f0)
                (printout ?*A_fp5* "(id-Apertium_input "?id" root:"?h_word ",tam:"?tam",gen:"?gen",num:"?num ",per:"?person")" crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_with_tam1 )" crlf)
        )
  )
  ;-------------------------------------------------------------------------------------------------------------------------
  ;He was an exotic creature with short red hair and brilliant green eyes.
  (defrule PP_rule_with_vib_vAlA1
  (declare (salience 401))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi vAlA)(group_ids $?ids))
  ?f1<-(hindi_id_order $? $?ids ?conj $?)
  (conj_head-left_head-right_head ?conj ?pada_id ?foll_pada_id)
  (hindi_id_order $? ?foll_pada_id ?f_id $?)
  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?f_id $?f_ids))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^vAlA<cat:n><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
        (retract ?f0)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_vAlA1 )" crlf)
  )
  ;-------------------------------------------------------------------------------------------------------------------------
  ; She is an excellent student with a bright future 
  (defrule PP_rule_with_vib_vAlA
  (declare (salience 400))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi vAlA)(group_ids $?ids))
  ?f1<-(hindi_id_order $? $?ids ?foll_pada_id $?)
  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
       	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^vAlA<cat:n><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
	(retract ?f0)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_vAlA )" crlf)
  )
  ;-------------------------------------------------------------------------------------------------------------------------
  ;I will show you the house which I bought.
  (defrule PP_rule_with_vib_for_hnd_pronoun
  (declare (salience 401))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(gender ?gen)(person ?per)(vibakthi ?vib))
  ?f0<-(id-HM-source ?pada_id ?h_word&wuma|kOna|jo|koI ?)
  (test (neq ?vib 0))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:o><parsarg:"?vib "><gen:"?gen"><num:"?num"><per:"?per ">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_hnd_pronoun )" crlf)
  )
  ;-------------------------------------------------------------------------------------------------------------------------
  ; But nobody knows at what level the futures and stocks will open today.
  ; The book does not make any mention of his love affair.
  (defrule PP_rule_with_vib_for_hnd_pronoun1
  (declare (salience 400))
  ?f0<-(id-HM-source ?id ?h_word&wuma|kOna|jo|koI|kyA ?)
  (pada_info (group_ids $?ids ?h)(group_cat PP)(number ?num)(gender ?gen)(person ?per)(vibakthi ?vib))
  (test (member$ ?id $?ids))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?id " ^"?h_word "<cat:p><case:o><parsarg:0><gen:"?gen"><num:"?num"><per:"?per "><tam:0>$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_with_vib_for_hnd_pronoun1 )" crlf)
  )
  ;-------------------------------------------------------------------------------------------------------------------------
  (defrule PP_rule_with_vib_hid
  (declare (salience 350))
  (pada_info (group_cat PP) (group_ids $?ids ?id) (vibakthi ?vib)(number ?num)(case ?case)(gender ?gen) )
  ?f1<-(id-HM-source ?id ?h_word&~- ?)
  (test (neq ?vib 0))
  (id-cat_coarse ?id ?cat)
  =>
        (retract ?f1)
        (printout ?*A_fp5* "(id-Apertium_input "?id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^" ?vib "<cat:prsg>$)"  crlf)
	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_with_vib_hid )" crlf)
  )
  ;-------------------------------------------------------------------------------------------------------------------------
  ;The giraffe has the longest neck of any land mammal.
  ;Added by Shirisha Manju (18-06-12)  Suggested by Chaitanya Sir 
  (defrule PP_rule_adj_est
  (declare (salience 340))
  (pada_info (group_cat PP) (group_ids $?ids)(number ?num)(case ?case)(gender ?gen) )
  ?f2<-(id-HM-source ?id ?h_word ?)
  (id-root-category-suffix-number ?id ? adjective est ?)
  (test (member$ ?id $?ids))
  =>
	(retract ?f2)
	(bind ?h_word (str-cat "sabase_aXika_" ?h_word))
	(printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$ )" crlf)
  )
  ;-------------------------------------------------------------------------------------------------------------------------
  ;Mary is taller than Max.
  ;Added by Shirisha Manju (19-06-12)  Suggested by Chaitanya Sir
  (defrule PP_rule_adj_er
  (declare (salience 340))
  (pada_info (group_cat PP) (group_ids $?ids)(number ?num)(case ?case)(gender ?gen) )
  ?f2<-(id-HM-source ?id ?h_word ?)
  (id-root-category-suffix-number ?id ? adjective er ?)
  (test (member$ ?id $?ids))
  =>
        (retract ?f2)
        (bind ?h_word (str-cat "aXika_" ?h_word))
        (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$ )" crlf)
  )
  ;-------------------------------------------------------------------------------------------------------------------------
  (defrule PP_rule_default
  (declare (salience 300))
  (pada_info (group_cat PP) (group_ids $?ids)(number ?num)(case ?case)(gender ?gen) )
  ?f2<-(id-HM-source ?id1 ?h_word ?)
  (id-cat_coarse ?id1 ?cat)
  (test (member$ ?id1 $?ids))
  =>
	(retract ?f2)
	(if (eq ?cat noun) then
		(printout ?*A_fp5* "(id-Apertium_input "?id1 " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$ )" crlf)
	else
		(printout ?*A_fp5* "(id-Apertium_input "?id1" ^"?h_word "<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$ )" crlf)
	)
	(printout ?*aper_debug-file* "(id-Rule_name  "?id1 "  PP_rule_default )" crlf)
  )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Below rule is commented. Need to check when this rule is needed.
 ;Puri is one of the most important pilgrimage centres for the hindus.
 ;(defrule PP_rule_for_samAsa
 ;(declare (salience 360))
 ;(prep_id-relation-anu_ids   - samAsa  ?id ?id1)
 ;(pada_info (group_head_id ?h)(group_cat PP) (group_ids $?ids)(vibakthi ?vib)(number ?num)(case ?case)(gender ?gen) )
 ;(test (and (member$ ?id $?ids)(member$ ?id1 $?ids)))
 ;?f1<-(id-HM-source ?id1 ?hmng1 ?)
 ;(test (neq ?vib 0))
 ;=>
 ;      (retract ?f1)
 ;      (printout ?*A_fp5* "(id-Apertium_input "?id1 "  "?hmng1 ")" crlf)
 ;)
 ;------------------------------------------------------------------------------------------------------------------------
 ;If you use that strategy, he will wipe you out.
 (defrule default_hnd_mng_rule
 (declare (salience -300))
 ?f1<-(id-HM-source ?id ?h_word ?)
 (hindi_id_order $? ?id $?)
 =>
        (retract ?f1)
        (printout ?*A_fp5* "(id-Apertium_input " ?id "  " ?h_word ")" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?id "  default_hnd_mng_rule)" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 
