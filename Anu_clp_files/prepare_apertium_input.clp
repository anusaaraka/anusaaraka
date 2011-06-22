
(defglobal ?*A_fp5* = fp5)
(defglobal ?*aper_debug-file* = aper_debug)

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (deffacts dummy_facts
 (id-inserted_sub_id) 
 (No complete linkages found)
 (prep_id-relation-anu_ids)
 (missing-level-id) 
 (id-original_word) 
 (id-number-src) 
 (verb_type-verb-causative_verb-tam) 
 (addition-level-word-sid) 
 (verb_type-verb-kriyA_mUla-tam)
 (conjunction-components)
 (id-wsd_number) 
 (verb_type-verb-causative_verb-tam)
 (affecting_id-affected_ids-wsd_group_root_mng)
 (affecting_id-affected_ids-wsd_group_word_mng)
 (id-last_word) 
 (id-sen_mng)
 (id-tam_type)
 (kriyA_id-object2_viBakwi)
 (kriyA_id-object1_viBakwi)
 (kriyA_id-object_viBakwi)
 (kriyA_id-subject_viBakwi)
 (id-H_vib_mng)
 (make_verbal_noun)
 (root_id-TAM-vachan)
 (verb_agrmt-object_id-head_id)
 (verb_agrmt-subject_id-head_id)
 (verb_agrmt-head_id)
 (id-E_tam-H_tam_mng)
 (meaning_has_been_decided)
 (id-wsd_root_mng)
 (id-wsd_word_mng)
 (id-preceeding_part_of_verb) 
 (id-wsd_root) 
 (id-cat)
 (id-cat_coarse)
 (id-word)
 (root-verbchunk-tam-chunkids)
 (id-attach_emphatic)
 (id-TAM)
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

 (defrule default_id
 (declare (salience 1500))
 ?f0<-(id-HM-source ?id - ?)
 (not (mng_has_been_decided ?id))
 =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input " ?id "  )" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?id "  default_id )" crlf)
 )
 ;========================================== complete sent mng ========================================================

 ;This contradicts the assumption that the fluid was in equilibrium.
 ;Added by Shirisha Manju on 24-11-10
 (defrule complete_sen_mng_rule
 (declare (salience 1011))
 ?f0<-(id-HM-source ?id ?hmng Complete_sen_gdbm)
 (pada_info (group_head_id ?id)(group_cat PP)(group_ids $?ids) (vibakthi ?vib)(number ?num)(case ?case)(gender ?gen))
 (test (neq ?vib 0))
 =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input " ?id "  " ?hmng" " ?vib ")" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  complete_sen_mng_rule )" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------- 
 (defrule complete_sen_mng_rule1
 (declare (salience 1010))
 ?f0<-(id-HM-source ?id ?hmng Complete_sen_gdbm)
 =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input " ?id "  " ?hmng")" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  complete_sen_mng_rule1 )" crlf) 
 )
 ;========================================== word meanings for wsd/database/idiom ========================================

 ;Added by Mahalaxmi (16-09-09)
 ;Does this shirt match these trousers ? (TROUSERS)
 (defrule word_mng_rule_with_vib
 (declare (salience 1002))
 ?f0<-(id-HM-source ?id ?hmng ?source)
 (test (or (eq ?source WSD_compound_phrase_word_mng) (eq ?source Database_compound_phrase_word_mng) (eq ?source WSD_verb_phrase_word_mng) (eq ?source WSD_word_mng)(eq ?source Idiom_word_mng)))
 (pada_info (group_head_id ?id)(vibakthi ?vib))
 (test (and (neq ?vib 0) (neq ?vib -)))
  =>
       (retract ?f0)
       (printout ?*A_fp5* "(id-Apertium_input " ?id " "?hmng"_"?vib ")" crlf)
       (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  word_mng_rule_with_vib )" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;There was a marked difference in the prices of dishes .
 (defrule word_mng_rule
 (declare (salience 1001))
 ?f0<-(id-HM-source ?id ?hmng ?source)
 (test (or (eq ?source WSD_compound_phrase_word_mng) (eq ?source Database_compound_phrase_word_mng) (eq ?source WSD_verb_phrase_word_mng) (eq ?source WSD_word_mng)(eq ?source Idiom_word_mng)))
  =>
       (retract ?f0)
       (printout ?*A_fp5* "(id-Apertium_input " ?id " "?hmng ")" crlf)
       (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  word_mng_rule )" crlf)
 )
 ;=========================================== Compound_Phrase mng with vib =============================================

 ;The blacksmith made an assay of iron ore .  
 (defrule Compound_mng_with_vib_kA
 (declare (salience 1005))
 ?f0<-(id-HM-source ?id ?hmng Database_compound_phrase_word_mng|Database_compound_phrase_root_mng)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids) (vibakthi kA)(number ?num)(case ?case)(gender ?gen))
 (test (member$ ?id $?ids))
 (hindi_id_order  $?start $?ids ?foll_pada_id $?)
 (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(person ?per1)(group_ids $?f_ids))
 (or (prep_id-relation-anu_ids  ? viSeRya-RaRTI_viSeRaNa ? ?)(prep_id-relation-anu_ids ?  viSeRya-of_saMbanXI ? ?id))
 (test (member$ ?foll_pada_id $?f_ids))
 =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:n><case:"?case"><gen:"?gen"><num:"?num">$ ^kA<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?id " Compound_mng_with_vib_kA )" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 ;Each one of them recorded the narratives from twenty participants .
 (defrule Compound_mng_with_vib
 (declare (salience 1004))
 ?f0<-(id-HM-source ?id ?hmng Database_compound_phrase_word_mng|Database_compound_phrase_root_mng)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids) (vibakthi ?vib)(number ?num)(case ?case)(gender ?gen))
 (test (member$ ?id $?ids))
 (test(neq ?vib 0))
 =>
        (retract ?f0)
        (if (eq ?pada_id ?id) then ;Ex: Everyone should enjoy each and every activity that he does. 
                (printout ?*A_fp5* "(id-Apertium_input "?id " ^"?hmng "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^" ?vib "<cat:prsg>$)"  crlf)
             (printout ?*aper_debug-file* "(id-Rule_name  " ?id " Compound_mng_with_vib )" crlf)
        else
               (printout ?*A_fp5* "(id-Apertium_input "?id " ^"?hmng "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$)"  crlf)
               (printout ?*aper_debug-file* "(id-Rule_name  " ?id " Compound_mng_with_vib )" crlf)
        )
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 ;Is there life beyond the grave? 
 (defrule Compound_mng_with_Prep_id
 (declare (salience 1003))
 ?f0<-(id-HM-source ?p_id ?hmng Database_compound_phrase_word_mng|Database_compound_phrase_root_mng)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids) (vibakthi ?vib)(number ?num)(case ?case)(gender ?gen)(preposition ?p_id))
 (test(neq ?vib 0))
 =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng "<cat:prsg>$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?pada_id " Compound_mng_with_Prep_id )" crlf)
 )
 ;======================================== vib KA rules ===============================================================
 ; Added by Shirisha Manju (17-06-11) Suggested by Chaitanya Sir
 ; These are children's books.
 (defrule RaRTI_kA_vib_rule
 (declare (salience 1000))
 (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi kA)(group_ids $?ids))
 (prep_id-relation-anu_ids - viSeRya-RaRTI_viSeRaNa  ?foll_pada_id ?)
 (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
 (hindi_id_order  $?start $?ids $?f_ids $?)
 (test (member$ ?foll_pada_id $?f_ids))
 ?f0<-(id-HM-source ?pada_id ?h_word&~vaha&~usakA&~hamArA&~merA&~Apa&~yaha&~mEM ?)
 =>
       (retract ?f0)
       (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$ ^kA<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
       (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  RaRTI_kA_vib_rule )" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (17-06-11)
 ; Ex: He was awakened at dawn by the sound of crying .
 ;     She awakened to the sound of birds' singing .
 ;     Failure to comply may result in dismissal. 
 (defrule RaRTI_kA_vib_rule_1
 (declare (salience 1000))
 (pada_info (group_head_id ?id)(vibakthi ?vib)(group_ids $?ids)(H_tam ?tam))
 (or (make_verbal_noun ?id)(id-cat_coarse ?id verbal_noun))
 (or (prep_id-relation-anu_ids ? viSeRya-RaRTI_viSeRaNa ? ?id)(prep_id-relation-anu_ids ? viSeRya-of_saMbanXI ? ?id)(prep_id-relation-anu_ids - saMjFA-to_kqxanwa ? ?id))
 ?f0<-(id-HM-source ?id ?hmng ?)
 (hindi_id_order  $?start $?ids ?f_id $?)
 (pada_info (number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
 (test (member$ ?f_id $?f_ids))
 (test (or (eq ?tam kA)(eq ?vib kA)))
 =>
 	(retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?id " ^"?hmng"<cat:vn><case:o>$ ^kA<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  RaRTI_kA_vib_rule_1  )"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (17-06-11) Suggested by Chaitanya Sir
 ; Clinton announced on Tuesday a bold new proposal. 
 (defrule kA_vib_rule
 (declare (salience 1000))
 (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi kA)(group_ids $?ids))
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
	    (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  kA_vib_rule )" crlf)
        )
;	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  kA_vib_rule )" crlf)
 )
 ;============================================ verbel-noun without vib ===================================================
 ; Running is good for health.
 (defrule verbal_noun_without_vib
 (declare (salience 910))
 (pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi 0))
 (or (make_verbal_noun ?pada_id) (id_cat_coarse ?pada_id verbal_noun ?pada_id) (id_cat_coarse ?pada_id ))
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
 ; The wheels of the car began to turn . 
 ;I want to go there .
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
 ; verbal_noun_with_tam_kA and following pada is PP
; (defrule verbal_noun_with_tam_kA1
; (declare (salience 900))
; (pada_info (group_head_id ?pada_id)(group_cat infinitive)(H_tam kA)(group_ids $?ids))
; (or (id-cat_coarse ?pada_id verbal_noun) (make_verbal_noun ?pada_id))
; ?f0<-(id-HM-source ?pada_id ?hmng ?)
; (hindi_id_order  $?start $?ids ?foll_pada_id $?)
; (pada_info (group_head_id ?foll_id)(group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
; (id-HM-source ?foll_id ?hmng1 ?)
; (test (member$ ?foll_pada_id $?f_ids))
;  =>
;        (retract ?f0)
;        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:o>$  ^kA<cat:sh><case:d><gen:"?gen1"><num:"?num1">$)"  crlf)
;	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  verbal_noun_with_tam_kA1 )"  crlf)
; )
 ;------------------------------------------------------------------------------------------------------------------------
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
  ;======================================== pronoun rules ==============================================================
  ; All his books are good. 
  ; He wasted his golden opportunity to play in the national team .
  ; The truth is more complicated, especially in his education system  
  ; Modified by Manoj (03/09/2010)
  (defrule PP_rule_with_vib_for_his
  (declare (salience 950))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(gender ?gen)(vibakthi ?vib)(person ?per))
  (prep_id-relation-anu_ids ? viSeRya-RaRTI_viSeRaNa  ?rel ?pada_id)
  (pada_info (group_head_id ?rel) (group_cat PP) (number ?num1) (case ?case1) (gender ?gen1) (person ?per1))
  ?f0<-(id-HM-source ?pada_id ?hmng ?)
  (id-original_word ?pada_id his|her|His|Her)
  (test (neq ?vib 0))
  =>
        (retract ?f0)
        (printout ?*A_fp5*  "(id-Apertium_input "?pada_id" ^vaha<cat:p><parsarg:"?vib"><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:"?num"><per:"?per ">$)" crlf)
       ; (printout ?*A_fp5*  "(id-Apertium_input "?pada_id" ^vaha<cat:p><parsarg:"?vib"><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:"?num1"><per:"?per ">$)" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?pada_id "  PP_rule_with_vib_for_his )" crlf)
  )




 ;====================================== VP rule for root and tam =========================================================
 ;Added by Mahalaxmi (23-09-09)
 ;He is not related to me.
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
     (printout ?*A_fp5* "(id-Apertium_input " ?id " "?hnd_mng")" crlf)
     (printout ?*A_fp5* "(id-Apertium_input " (nth$ (length $?ids) $?ids) " ^"?str1"<cat:v><gen:"?gen"><num:"?num"><per:"?per"><tam:"?str1">$)" crlf)
     (printout ?*aper_debug-file* "(id-Rule_name  "?id "  verbal_adjective1 )" crlf)
     (printout ?*aper_debug-file* "(id-Rule_name  "(nth$ (length $?ids) $?ids) "  verbal_adjective1 )" crlf)
     (assert (mng_has_been_decided (nth$ (length $?ids) $?ids)))
     (loop-for-count (?i 1 (- (length $?ids) 1))
                     (bind ?j (nth$ ?i $?ids))
                     (assert (mng_has_been_decided ?j))
                     (printout ?*A_fp5* "(id-Apertium_input " ?j "  )" crlf)
       )
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
 ;---------------------------------------------------------------------------------------------------------------------------
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
 ;---------------------------------------------------------------------------------------------------------------------------
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
  ;------------------------------------------------------------------------------------------------------------------------

;============================================== verbel-noun with tam ========================================================
 ;Ex: Police are still hoping to find the dead woman's killer .
; (defrule verbal_noun_infinitive_rule_with_kA_1
; (declare (salience 890))
; (pada_info (group_head_id ?pada_id)(group_cat infinitive)(H_tam kA)(group_ids $?ids))
; ?f0<-(id-HM-source ?pada_id ?hmng ?)
; (hindi_id_order  $?start $?ids ?foll_pada_id $?)
; (pada_info (group_head_id ?foll_id)(group_cat ?gtype)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
; (id-HM-source ?foll_id ?hmng1 ?)
; (test (member$ ?foll_pada_id $?f_ids))
;  =>
;        (retract ?f0)
;        (if (eq ?gtype VP) then
;                (bind ?gen (gdbm_lookup "kriyA_mUla-gender.gdbm" ?hmng1)) ;I expect to go to the party tomorrow .
;                (if (neq ?gen "FALSE") then
;                        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:o>$  ^kA<cat:sh><case:d><gen:"?gen"><num:"?num1">$)"  crlf)
;                )
;        else
;                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:o>$  ^kA<cat:sh><case:d><gen:"?gen1"><num:"?num1">$)"  crlf)
;        )
;        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  verbal_noun_infinitive_rule_with_kA_1 )"  crlf)
;  )

;==================================== PP rule for preposition phrases with head_id and =====================================
;Ex. He was an exotic creature with short red hair and brilliant green eyes . 
 (defrule PP_rule_with_vib_and_h_id_and
 (declare (salience 1000))
 ?f0<-(id-HM-source ?id ?h_word ?)
 (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(preposition ?pre) (vibakthi ?vib) (person ?person)(group_ids $?ids)(case ?case))
 (id-word ?pada_id and|or)
 (id-gender-src ?id ?gen ?gen_src)
 (id-number-src ?id ?num1 ?num_src)  ;;Added by Roja(31-08-10) for this sentence.  In the racing competition between the hare  and the tortoise, the tortoise finally won the race.
 ;Whenever agreement is done then pada head ids number information should not be passed to individual ids.(Suggested by Chaitanya Sir)
 (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
 (id-cat_coarse ?id ?cat)
 (test (neq ?vib 0))
  =>    
         (if (eq ?gen -) then (bind ?gen m)) 
         (bind ?last_id (nth$  (length $?ids) $?ids))
         (if (eq ?last_id ?id) then
	    (if (eq ?cat noun) then
                  (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num1">$ ^" ?vib "<cat:prsg>$)" crlf)
               else (if (eq ?cat verbal_noun) then ;Ulsoor lake is an ideal place for sightseeing, boating and shopping.Added by Roja (04-03-11) 
                       (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word  "<cat:vn><case:"?case">$  ^" ?vib "<cat:prsg>$)"crlf)
                  else
                       (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:adj><case:"?case"><gen:"?gen"><num:"?num1">$ ^" ?vib "<cat:prsg>$)" crlf)
	            )
            )
	    else
                  (if (eq ?cat noun) then
	              (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num1">$)"crlf)
                  else (if (eq ?cat verbal_noun) then ;Ulsoor lake is an ideal place for sightseeing, boating and shopping. 
                       (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word  "<cat:vn><case:"?case">$)"crlf)
                       else
                           (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:adj><case:"?case"><gen:"?gen"><num:"?num1">$ )" crlf)
                       )
                   )
         )
	(retract ?f0)
            (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  PP_rule_with_vib_and_h_id_and )" crlf)
  )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;Ex. They were discussing their hopes and dreams.   The patient had complained of vague pains and backache.
 ;    Republican policies only benefit the rich and the powerful.     
 (defrule PP_rule_with_vib_kA_and_following_VP_kriyAmUla_h_id_and
 (declare (salience 1011))
 ?f0<-(id-HM-source ?id ?h_word ?)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi kA) (gender ?gen)(group_ids $?ids)(case ?case))
 (id-word ?pada_id and|or)
 (hindi_id_order  $?start $?ids ?foll_id $?)
 (pada_info (group_head_id ?f_pada_id)(group_cat VP)(group_ids $?f_ids))
 (id-HM-source ?f_pada_id ?hmng1 ?)
 (id-number-src ?id ?num ?)
 (id-number-src ?foll_id ?num1 ?)
 (test (and (member$ ?id $?ids)(neq ?id ?pada_id)(member$ ?foll_id $?f_ids)) )
 =>
	(bind ?last_id (nth$  (length $?ids) $?ids))
	(if (eq ?last_id ?id) then
		(bind ?gen2 (gdbm_lookup "kriyA_mUla-gender.gdbm" ?hmng1))
		(if (neq ?gen2 "FALSE") then
			(if (eq ?gen2 -) then (bind ?gen2 m))
 			(printout ?*A_fp5* "(id-Apertium_input "?id " ^"?h_word"<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^kA<cat:sh><case:d><gen:"?gen2"><num:"?num1">$)"  crlf)
			(retract ?f0)
		)
	)
	(printout ?*aper_debug-file* "(id-Rule_name  "?id"  PP_rule_with_vib_kA_and_following_VP_kriyAmUla_h_id_and )" crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;He and I are friends .
 (defrule PP_rule_without_vib_and_h_id_and
 (declare (salience 1001))
 ?f0<-(id-HM-source ?id ?h_word ?)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi 0)(person ?per)(group_ids $?ids)(case ?case))
 (id-word ?pada_id and|or)
 (id-word ?id ?word);he|she|it|they) ;Removed the list and added variable and checking the condition in action part (S.Mahalaxmi 20-04-10)
 (id-gender-src ?id ?gen ?gen_src)
 (id-number-src ?id ?num ?num_src)
 (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  =>
;               (retract ?f0)
               (if (eq ?gen -) then (bind ?gen m))
               (if (or (eq ?word I) (eq ?word i)) then
               (retract ?f0)
               (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:o><parsarg:0><gen:"?gen"><num:s><per:"?per ">$)"  crlf)
               (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  PP_rule_without_vib_and_h_id_and )" crlf)
               else (if (or (eq ?word he) (eq ?word she) (eq ?word it)) then
                (retract ?f0)
               (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:s><per:"?per">$)" crlf)
              else (if (eq ?word they) then
                (retract ?f0)
               (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:p><per:"?per">$)" crlf)
               (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  PP_rule_without_vib_and_h_id_and )" crlf)
              ))
               )
  )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule PP_rule_without_vib_and_h_id_and_1
 (declare (salience 1000))
 ?f0<-(id-HM-source ?id ?h_word ?)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi 0)(person ?person)(group_ids $?ids)(case ?case))
 (id-word ?pada_id and|or)
 (id-gender-src ?id ?gen ?gen_src)
 (id-number-src ?id ?num ?num_src)
 (id-cat_coarse ?id ?cat);Added cat information in rule part and checking the condition in action part as different cat has diff analysis (By S.Mahalaxmi (20-04-10))
 (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  =>
               (retract ?f0)
	       (if (eq ?gen -) then (bind ?gen m))
               (if (eq ?cat adjective) then
               (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
               (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  PP_rule_without_vib_and_h_id_and_1 )" crlf) 
               else     
               (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
               (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  PP_rule_without_vib_and_h_id_and_1 )" crlf))
  )

  ;================================ NP rule for vibakthi not equal to nil (not head_id) =================================
  ; He saw the broken window 
  (defrule PP_rule_with_vib_for_verb
  (declare (salience 110))
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(gender ?gen)(vibakthi ?vib)(person ?person)(group_ids $?ids)(H_tam ?tam))
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  (test (and (neq ?tam 0)(neq ?vib 0)))
  =>
   	(bind ?a (gdbm_lookup "hindi_cat.gdbm" ?h_word))
   	(if (eq ?a "T") then
     	 (retract ?f0)
	 (printout ?*A_fp5* "(id-Apertium_input "?id" root:"?h_word ",tam:"?tam",gen:"?gen",num:"?num ",per:"?person")" crlf)
         (printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_with_vib_for_verb )" crlf)
   	)
  )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;He marked these bottles .
 (defrule PP_rule_with_vib_for_these
 (declare (salience 110))
 ?f0<-(id-original_word ?id  these|These|Those|those)
 ?f1<-(id-HM-source ?id ?h_word ?)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
 (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  (test (neq ?vib 0))
 =>
   	(retract ?f0 ?f1)
   	(printout ?*A_fp5* "(id-Apertium_input "?id " ^"?h_word"<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num"><per:"?per">$)"  crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_with_vib_for_those )"  crlf)
 )
 ;---------------------------------------------------------------------------------------------------------------------------
 ; There was not enough food to eat anywhere in that country
 ;We wish to invite participants from all across the world to participate through this site
 (defrule PP_rule_with_vib_for_that
 (declare (salience 110))
 ?f0<-(id-original_word ?id  that|That|this|This)
 ?f1<-(id-HM-source ?id ?h_word ?)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
 (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  (test (neq ?vib 0))
 =>
   	(retract ?f0 ?f1)
   	(printout ?*A_fp5* "(id-Apertium_input "?id " ^"?h_word"<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num"><per:"?per">$)"  crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_with_vib_for_that )"  crlf)
 )

 ;---------------------------------------------------------------------------------------------------------------------------
  ; He ladles it with a large wooden spoon . The army studied the stills from the security video .
  ; I bought a golden bangle for my mother . (08-12-09)
  ;(kA at the end of hindi meaning)
  (defrule PP_rule_with_kA_at_the_end_in_hmng
  (declare (salience 100))
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(group_ids $?ids))
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  =>
    	(if (neq (str-index "_" ?h_word) FALSE) then
        	(bind ?len (length ?h_word))
        	(bind ?index (str-index "_" ?h_word))
        	(bind ?str (sub-string 1 (- ?index 1) ?h_word))
        	(bind ?str1 (sub-string (+ ?index 1) ?len ?h_word))
        	(if (eq ?str1 "kA") then 
            		(retract ?f0)
	            	(printout ?*A_fp5* "(id-Apertium_input "?id" ^"?str "<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$ ^kA<cat:sh><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
        	    	(printout ?*aper_debug-file* "(id-Rule_name  " ?id "  PP_rule_with_kA_at_the_end_in_hmng)" crlf)
        	else
			(retract ?f0) 
             		(printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
		        (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  PP_rule_with_kA_at_the_end_in_hmng )" crlf)
        	)	
   	 )
 )
;---------------------------------------------------------------------------------------------------------------------------
  (defrule PP_rule_with_vib_default
  (declare (salience 90))
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi ?vib)(group_ids $?ids))
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  (id-cat_coarse ?id ?cat)
  (test (neq ?vib 0))
  =>
 	(if (eq ?cat noun) then
	    (retract ?f0)
;            (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
           (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
            (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  PP_rule_with_vib_default )" crlf)
	else
 	    (retract ?f0)
 ;           (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
           (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
            (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  PP_rule_with_vib_default )" crlf)

        )
  ) 

 ;================================== NP rule for vibakthi not equal to nil (head id)=========================================
  ; All his books are good. 
  ; He wasted his golden opportunity to play in the national team .
  ; The truth is more complicated, especially in his education system  
  ; Modified by Manoj (03/09/2010)

;  (defrule PP_rule_with_vib_for_his
;  (declare (salience 940))
;  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
;  (id-original_word ?pada_id  His|his)
;  (prep_id-relation-anu_ids ? viSeRya-RaRTI_viSeRaNa  ?rel ?pada_id)
;  (pada_info (group_head_id ?rel) (group_cat PP) (number ?num1) (case ?case1) (gender ?gen1) (person ?per1) (group_ids $?f_ids))
;  ?f0<-(id-HM-source ?pada_id ?hmng ?)
;;  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
;;  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(person ?per1)(group_ids $?f_ids))
;;  (test (member$ ?foll_pada_id $?f_ids))
;;  (test (neq ?vib 0))
;  =>
;   	(retract ?f0)
;   	(printout ?*A_fp5*  "(id-Apertium_input "?pada_id" ^vaha<cat:p><parsarg:"?vib"><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:"?num"><per:"?per ">$)" crlf)
;   	(printout ?*aper_debug-file* "(id-Rule_name  " ?pada_id "  PP_rule_with_vib_for_his )" crlf)
;  )
;;---------------------------------------------------------------------------------------------------------------------------
;  ;She called her . Her name is Sita.
;  ;She is having her children cook dinner for her .
;  (defrule PP_rule_with_vib_for_Hid_her
;  (declare (salience 940))
;  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
;  ?f0<-(id-original_word ?pada_id  her|Her)
;  ?f1<-(id-HM-source ?pada_id ?hmng ?)
;  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
;  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(person ?per1)(group_ids $?f_ids))
;  (test (member$ ?foll_pada_id $?f_ids))
;  (test (neq ?vib 0))
;  =>
;   	(retract ?f1)
;	(if (eq ?vib kA) then
;		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><parsarg:"?vib"><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:"?num"><per:"?per">$)"  crlf)
;	else
;		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><case:o><parsarg:"?vib"><gen:"?gen"><num:"?num"><per:"?per">$)" crlf)
;        )
;   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_her )" crlf)
;  )
;---------------------------------------------------------------------------------------------------------------------------
  ;  Mother likes her (her with no following id)
  (defrule PP_rule_with_vib_for_Hid_her1
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(gender ?gen)(vibakthi ?vib)(person ?per)(case ?case))
  ?f0<-(id-original_word ?pada_id  her|Her)
  ?f1<-(id-HM-source ?pada_id ?hmng ?)
  (test (neq ?vib 0))
  =>
   	(retract ?f1)
   	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><case:"?case"><parsarg:"?vib"><gen:"?gen"><num:"?num"><per:"?per">$)"  crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_her1 )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;I have three dogs . I asked him a question .
  (defrule PP_rule_with_vib_for_I
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?vib)(group_ids $?ids))
  (id-original_word ?pada_id  I|i)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (neq ?vib 0))
  =>
   	(retract ?f0)
       	(if (eq ?vib kA) then 
       		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><parsarg:kA><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:s><per:"?per ">$)"  crlf)
       		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_I )" crlf)
       	else
        	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:"?vib "><gen:"?gen"><num:s><per:"?per ">$)"  crlf)
            	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_I )" crlf)
       	)
  )
;---------------------------------------------------------------------------------------------------------------------------
;Added by sheetal
;
(defrule PP_rule_for_I_followed_by_adv
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?vib)(group_ids $?ids))
  (id-original_word ?pada_id  I|i)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (id-cat_coarse ?foll_pada_id adverb)
  (test (neq ?vib 0))
  =>
	(retract ?f0)
	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:"?vib "><gen:"?gen"><num:s><per:"?per ">$)"  crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_for_I_followed_by_adv )" crlf)
)
 ;------------------------------------------------------------------------------------------------------------------------------
  ; He bought the published books for his library . What did he eat ?He had social prestige .
  (defrule PP_rule_with_vib_for_He
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?vib)(group_ids $?ids))
  (id-original_word ?pada_id  He|he)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (neq ?vib 0))
  =>
       	(retract ?f0)
       (if (eq ?vib kA) then
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><parsarg:kA><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:s><per:"?per ">$)"  crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_He )" crlf)
        else

        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:o><parsarg:"?vib "><gen:"?gen"><num:s><per:"?per ">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_He )" crlf))
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;Be careful , she said . She carefully prepared the dinner.She had social prestige .
  (defrule PP_rule_with_vib_for_She
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?vib)(group_ids $?ids))
  (id-original_word ?pada_id  She|she)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (neq ?vib 0))
  =>
        (retract ?f0)
         (if (eq ?vib kA) then
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><parsarg:kA><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:s><per:"?per ">$)"  crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_She )" crlf)
        else
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:o><parsarg:"?vib "><gen:"?gen"><num:s><per:"?per ">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_She )" crlf))
  )

;---------------------------------------------------------------------------------------------------------------------------
  ;They may have eaten fruits. They would have to eat.
  (defrule PP_rule_with_vib_and_for_Hid_They
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(case ?case)(gender ?gen)(person ?per)(vibakthi ?H_vib)(group_ids $?ids))
  (id-original_word ?pada_id  they|They|their|Their)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (id-gender-src ?foll_pada_id ?f_gen ?)
;  (pada_info (group_cat ?gtype)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (pada_info (group_head_id ?f_pada_id)(group_cat ?gtype)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (id-original_word ?f_pada_id ?word)
  (test (member$ ?foll_pada_id $?f_ids))
  (test (and (neq ?H_vib 0)(neq ?gtype English_PP)))
  =>
    	(retract ?f0)
    	(if (eq ?H_vib kA) then 
            (if (eq ?word and) then
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><parsarg:"?H_vib "><fnum:"?num1"><case:"?case1"><gen:"?f_gen"><num:p><per:"?per">$)"  crlf)	
            else
        	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><parsarg:"?H_vib "><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:p><per:"?per">$)"  crlf)
	   )
        	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_and_for_Hid_They )" crlf)
    	else
       		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><case:o><parsarg:"?H_vib "><gen:"?gen"><num:p><per:"?per ">$)"  crlf)
       		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_and_for_Hid_They )" crlf)
    	)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;He told them about the accident immediately 
  (defrule PP_rule_with_vib_for_Hid_them
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(case ?case)(gender ?gen)(vibakthi ?vib)(person ?per))
  ?f1<-(id-original_word ?pada_id  Them|them)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (neq ?vib 0))
  =>
   	(retract ?f0 ?f1)
   	(printout ?*A_fp5* "(id-Apertium_input "?pada_id" ^vaha<cat:p><case:o><parsarg:"?vib"><gen:"?gen"><num:p><per:"?per">$)" crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_them )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  ; God helps those who help themselves .
  (defrule PP_rule_with_vib_for_Hid_those
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(case ?case)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
  ?f1<-(id-original_word ?pada_id  Those|those)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info (group_cat ?gtype)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (and (neq ?vib 0)(neq ?gtype English_PP)))
  =>
        (retract ?f0 ?f1)
	(if (eq ?vib kA) then
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><parsarg:"?vib "><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:p><per:"?per">$)"  crlf)
        else	(if (eq ?vib kI) then
		  (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><case:o><parsarg:0><gen:"?gen"><num:p><per:"?per">$  ^" ?vib "<cat:prsg>$)"  crlf)
	else
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><case:o><parsarg:"?vib "><gen:"?gen"><num:p><per:"?per ">$)"  crlf)
        )
	)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_those )" crlf)
  )

;---------------------------------------------------------------------------------------------------------------------------
  ;Do you think we should go to the party.  We had five field-workers
  (defrule PP_rule_with_vib_for_Hid_we
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(case ?case)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
  ?f1<-(id-original_word ?pada_id  We|we)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info (group_cat ?gtype)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (neq ?vib 0))
  =>
   	(retract ?f0 ?f1)
        (if (eq ?vib kA) then
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^mEM<cat:p><parsarg:kA><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:p><per:u>$)" crlf)
 	else
   	(printout ?*A_fp5* "(id-Apertium_input "?pada_id" ^mEM<cat:p><case:o><parsarg:"?vib"><gen:"?gen"><num:p><per:"?per">$)" crlf)
	)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_we )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;This has no meaning .
  (defrule PP_rule_with_vib_for_Hid_that
  (declare (salience 940))
  ?f1<-(id-HM-source ?pada_id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
  ?f0<-(id-original_word ?pada_id  that|That|this|This)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info (group_cat ?gtype)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (and (neq ?vib 0)(neq ?gtype English_PP)))
 =>
   	(retract ?f0 ?f1)
   	(if (eq ?vib kA) then
       		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^yaha<cat:p><parsarg:kA><fnum:"?num1"><case:"?case1"><gen:"?gen"><num:"?num"><per:"?per">$)"  crlf)
       		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_that )"crlf)      
   	else
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word"<cat:p><case:"?case"><parsarg:"?vib "><gen:"?gen"><num:"?num"><per:"?per ">$)"  crlf)
       		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_that )"crlf)
   	)
 )
 ;---------------------------------------------------------------------------------------------------------------------------
  ; We had wasted our journey.
  ;Their program is better than ours .
  (defrule PP_rule_with_vib_for_Hid_our
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi ?vib)(group_ids $?ids))
  ?f0<-(id-original_word ?pada_id  our|Our|ours)
  ?f1<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info (group_cat ?gtype)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (and (neq ?vib 0)(neq ?gtype English_PP)))
  =>
   	(retract ?f1)
        (if (eq ?vib kA) then
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^mEM<cat:p><parsarg:"?vib"><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:p><per:u>$)"  crlf)
	else
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^mEM<cat:p><case:o><parsarg:"?vib"><gen:"?gen"><num:p><per:u>$)"  crlf)
	)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_our )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  (defrule PP_rule_with_vib_and_for_us
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(case ?case)(gender ?gen)(vibakthi ?H_vib))
  (id-original_word ?pada_id  us|Us)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (neq ?H_vib 0))
  =>
    	(retract ?f0)
	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^mEM<cat:p><case:o><parsarg:"?H_vib"><gen:"?gen"><num:p><per:u>$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_and_for_us )" crlf)   
  )
;---------------------------------------------------------------------------------------------------------------------------
  ; Please do accept the same and bless it for its speedy progress
  ; Discuss it among yourselves first .
  ; The leopard seizes its kill and begins to eat .
  (defrule PP_rule_with_vib_for_Hid_it
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?H_vib)(group_ids $?ids))
  (id-original_word ?pada_id  Its|its|It|it)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $? $?ids ?foll_pada_id $?)
  (pada_info(number ?num1)(case ?case1)(gender ?gen1)(group_cat ?gtype)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
   (test (and (neq ?H_vib 0)(neq ?gtype English_PP)))
  =>
	(if (eq ?case1 0) then (bind ?case1 d))
    	(retract ?f0)
    	(if (eq ?H_vib kA) then
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><parsarg:kA><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:"?num"><per:"?per">$)" crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_it )" crlf)
    	else 
	        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:"?H_vib"><gen:"?gen"><num:"?num"><per:"?per ">$)"  crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_it )" crlf)
    	)
 )
;---------------------------------------------------------------------------------------------------------------------------
  ; I went there with my mother .
  (defrule PP_rule_with_vib_and_for_my
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?H_vib)(group_ids $?ids))
  (id-original_word ?pada_id  my|My)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $? $?ids ?foll_pada_id $?)
  (pada_info(number ?num1)(case ?case1)(gender ?gen1)(group_cat ?gtype)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
   (test (and (neq ?H_vib 0)(neq ?gtype English_PP)))
  =>
    	(retract ?f0)
  	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^mEM<cat:p><parsarg:"?H_vib"><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:"?num"><per:u>$)"  crlf)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_and_for_my )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ; She rose from the table to welcome me.
  (defrule PP_rule_with_vib_for_Hid_me
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi ?vib)(group_ids $?ids))
  (id-original_word ?pada_id  Me|me)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $? $?ids ?foll_pada_id $?)
  (pada_info(number ?num1)(case ?case1)(gender ?gen1)(group_cat ?gtype)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (and (neq ?vib 0)(neq ?gtype English_PP)))
  =>
   	(retract ?f0)
   	(if (eq ?vib kA) then
       		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^mEM<cat:p><parsarg:"?vib"><fnum:"?num1"><case:d><gen:"?gen1"><num:"?num"><per:u>$)"  crlf)
       		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_me )" crlf)
	else 
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^mEM<cat:p><case:o><parsarg:"?vib"><gen:"?gen"><num:"?num"><per:u>$)" crlf)
   		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_me )" crlf)
  	)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;Did you take your breakfast?  I will follow you no matter where you go .
  (defrule PP_rule_with_vib_for_Hid_you
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?vib)(group_ids $?ids))
  (id-original_word ?pada_id  you|You)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $? $?ids ?foll_pada_id $?)
  (pada_info(number ?num1)(case ?case1)(gender ?gen1)(group_cat ?gtype)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (neq ?vib 0))
  =>
    	(retract ?f0)
	(if (eq ?vib kA) then 
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^Apa<cat:p><parsarg:"?vib"><fnum:"?num1"><case:d><gen:"?gen1"><per:"?per"><num:"?num">$)"  crlf)
 	else
	    	(printout ?*A_fp5* "(id-Apertium_input "?pada_id  " ^Apa<cat:p><case:o><parsarg:"?vib"><gen:"?gen"><num:"?num">$)" crlf)
	)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_you )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ; Passion is a must to reach your potential. Your claims are indefensible .
  (defrule PP_rule_with_vib_for_your
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
  ?f0<-(id-original_word ?pada_id  Your|your)
  ?f1<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(person ?per1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (neq ?vib 0))
  =>
   	(retract ?f0 ?f1)
   	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^Apa<cat:p><parsarg:"?vib"><fnum:"?num1"><case:"?case1"><gen:"?gen1"><per:"?per"><num:"?num">$)"  crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_your )"  crlf)
 )
 ;---------------------------------------------------------------------------------------------------------------------------
  ;I asked him a question . I gave a book to him .
  (defrule PP_rule_with_vib_for_Hid_him_0_pp
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?H_vib)(group_ids $?ids))
  (id-original_word ?pada_id  him|Him)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (neq ?H_vib 0))
  =>
    	(retract ?f0)
    	(printout ?*A_fp5* "(id-Apertium_input "?pada_id  " ^vaha<cat:p><case:o><parsarg:"?H_vib"><gen:"?gen"><num:"?num"><per:"?per">$)" crlf)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_him_0_pp )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  
  ;  The dogs who I chased were black
  (defrule PP_rule_with_vib_for_Hid_pronoun_kA
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi kA)(group_ids $?ids))
  ?f0<-(id-HM-source ?pada_id ?h_word&wuma|kOna|jo|koI|vaha ?) ;Added vaha "We should take care of him." Suggested by Sriram (13-10-10)
  ?f1<-(hindi_id_order $? $?ids ?foll_pada_id $?)
  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><parsarg:kA><fnum:"?num1"><case:d><gen:"?gen1"><num:"?num"><per:"?per ">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_pronoun_kA )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  ; Who translated the sentence for the student ?
  (defrule PP_rule_with_vib_for_Hid_pronoun
  (declare (salience 935))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?H_vib)(group_ids $?ids))
  ?f0<-(id-HM-source ?pada_id ?h_word&wuma|kOna|jo|koI ?)
  (test (neq ?H_vib 0))
  =>
    	(retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:o><parsarg:"?H_vib "><gen:"?gen"><num:"?num"><per:"?per ">$)"  crlf)
	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_pronoun )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ; We now know that there are two thousand elements which we can not use to make a good light bulb.
  (defrule PP_rule_with_vib_for_Hid_pronoun_plural
  (declare (salience 936))
  (pada_info (group_head_id ?viS) (group_cat PP) (gender ?m) (number p) (case ?c) (person ?p) )
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?H_vib)(group_ids $?ids))
  ?f0<-(id-HM-source ?pada_id ?h_word&jo ?)
  (viSeRya-jo_samAnAXikaraNa  ?viS ?pada_id)
  (test (neq ?H_vib 0))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:o><parsarg:"?H_vib "><gen:"?m"><num:p><per:"?p ">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_pronoun_plural )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  ; We wish to invite participants from all across the world to participate in this Yagna through this site
  ; participants - BAga_lene_vAlA 
  (defrule PP_rule_with_vib_Hid_for_vAlA
  (declare (salience 11))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi ?H_vib)(group_ids $?ids))
  ?f0<-(id-HM-source ?pada_id ?h_mng ?)
  (test (neq ?H_vib 0))
  =>
    	(if (neq (str-index "_" ?h_mng) FALSE) then
        	(bind ?len 0)
        	(bind ?str1 ?h_mng)
        	(bind ?str_len (length ?h_mng))
        	(while (neq (str-index "_" ?h_mng) FALSE)
               		(bind ?index (str-index "_" ?h_mng))
               		(bind ?h_mng (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
               		(bind ?len (+ ?index ?len))
        	)	
         	(if (eq ?h_mng "vAlA") then
             		(retract ?f0)
             		(bind ?str2 (sub-string 1 (- ?len 1) ?str1))
             		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?str2"<cat:prsg>$ ^" ?h_mng"<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^" ?H_vib "<cat:prsg>$)" crlf)
            		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_Hid_for_vAlA )" crlf)
        	)
	)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;We seek your blessings.   They were discussing their hopes and dreams .
  ;Do not neglect your duties .
  (defrule PP_rule_with_kA_vib_Hid_for_VP
  (declare (salience 930))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi kA)(group_ids $?ids))
  ?f1<-(hindi_id_order $? $?ids ?foll_pada_id $?)
  (pada_info (group_head_id ?v_id)(group_cat VP)(group_ids $?f_ids))
; (id-number-src ?v_id ?num1 ?num_src)  (Commented by Roja(03-11-10) for this sentence "If you use that strategy, he will wipe you out".
  (test (member$ ?foll_pada_id $?f_ids))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  ?f2<-(id-HM-source ?v_id ?hmng ?)
  =>
    	(bind ?gen1 (gdbm_lookup "kriyA_mUla-gender.gdbm" ?hmng))
    	(if (and (neq ?gen1 "FALSE") (neq ?h_word Ora)) then ;the second neq condition is added to stop in "They were discussing their hopes and dreams." sent by Sukhada (30-1-10)
    		(retract ?f0)
        	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^kA<cat:sh><case:d><gen:"?gen1"><num:"?num">$)" crlf) ;Modified by Roja(03-10-10)
         	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_kA_vib_Hid_for_VP )" crlf)
    	)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;These are children 's books .
;  (defrule pp_rule_with_vib_Hid_vib_kA_prp_0
;  (declare (salience 20))
;  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(preposition 0)(vibakthi kA)(group_ids $?ids))
;  ?f1<-(hindi_id_order $? $?ids ?foll_pada_id $?)
;  (prep_id-relation-anu_ids - viSeRya-RaRTI_viSeRaNa  ?foll_pada_id ?)
;  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
;  (test (member$ ?foll_pada_id $?f_ids))
;  ?f0<-(id-HM-source ?pada_id ?h_word ?)
;  =>
;       (retract ?f0)
;       (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$ ^kA<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
;       (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  pp_rule_with_vib_Hid_for_kA_prp_0 )" crlf)
; )
;---------------------------------------------------------------------------------------------------------------------------
   ;Mohan fell from the top of the house.  What is the purpose of Dharma?
  (defrule PP_rule_with_vib_Hid_vib_kA_prp
  (declare (salience 10))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi ?H_vib)(group_ids $?ids))
  (test (or (eq ?H_vib kA)(eq ?H_vib vAlA)))
  (not (id-word ?pada_id and|or))
  ?f1<-(hindi_id_order $? $?ids ?foll_pada_id $?)
  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
 ; (viSeRya-RaRTI_viSeRaNa  ?foll_pada_id ?)
   =>
   	(retract ?f0)
        (if (eq ?H_vib kA) then
     	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^"?H_vib"<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
        else (if (eq ?H_vib vAlA) then ; She is an excellent student with a bright future .Added by Mahalaxmi(29-04-10) suggested by Meenaji
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^"?H_vib"<cat:n><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
       ))
     	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_Hid_vib_kA_prp )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------

  ; I heard the sound of rain on the roof .
  (defrule PP_rule_with_vib_Hid_default
  (declare (salience 9))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi ?H_vib)(group_ids $?ids)(person ?person))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (id-original_word ?pada_id  ?word)
  (test (neq ?H_vib 0))
  =>
       (retract ?f0)
        (if (eq ?pada_id 10001) then ;The cat sat on a mat and scratched itself loudly(2nd-parse) . Added by Mahalaxmi.(24-04-10)
            (printout ?*A_fp5* "(id-Apertium_input "?pada_id" ^"?h_word "<cat:p><case:"?case"><parsarg:"?H_vib"><gen:"?gen"><num:"?num"><per:"?person">$)" crlf)
        else (if (or (eq ?word and)(eq ?word or)) then
	 (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
       else
       (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^" ?H_vib "<cat:prsg>$)"  crlf)
      ))
       (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_Hid_default ) " crlf)
  )

 ;=================================== NP rule for vibakthi equal to nil (not head_id) ====================================

  ;  Broken windows need to be replaced. The painted doors look great .
  (defrule PP_rule_without_vib_for_vb
  (declare (salience 90))
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(gender ?gen)(vibakthi 0)(person ?person)(group_ids $?ids)(H_tam ?tam))
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  (test (neq ?tam 0))
  =>
   	(bind ?a (gdbm_lookup "hindi_cat.gdbm" ?h_word))
   	(if (eq ?a "T") then
     		(retract ?f0)
     		(printout ?*A_fp5* "(id-Apertium_input "?id" root:"?h_word ",tam:"?tam",gen:"?gen",num:"?num ",per:"?person")" crlf)
      		(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_without_vib_for_vb )" crlf)
   	)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  ; He and I are friends
  (defrule PP_rule_without_vib_for_he
  (declare (salience 90))
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi 0)(group_ids $?ids))
  ?f1<-(id-original_word ?id He|he)
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  =>
	(retract ?f0)
	(printout ?*A_fp5* "(id-Apertium_input "?id" ^vaha<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num"><per:a>$)" crlf)
	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_without_vib_for_he )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;Can you tell us where those strange ideas came from ?
  (defrule PP_rule_without_vib_for_those
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (case ?case)(gender ?gen)(vibakthi 0)(person ?per)(group_ids $?ids))
  ?f1<-(id-original_word ?id Those|those)
  ;(test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  (test (member$ ?id $?ids));Modified the test condition as this rule is same for both head as well as group members (S.MahaLaxmi 20-04-10)
  ?f0<-(id-HM-source ?id ?h_word ?)
  =>
        (retract ?f0 ?f1)
        (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word"<cat:p><case:"?case"><gen:"?gen"><num:p><per:"?per"><tam:0>$)" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_without_vib_for_those )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;Rule Modified by Roja(12-10-10) for this sentence. ; It is good to eat less food these days.
  ;All these fruits are to be eaten .
  (defrule PP_rule_without_vib_for_these
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (case ?case)(gender ?gen)(vibakthi 0)(person ?per)(group_ids $?ids))
  ?f1<-(id-original_word ?id These|these|Those|those)
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  ?f0<-(id-HM-source ?id ?h_word ?)
  =>
        (retract ?f0 ?f1)
        (if (eq ?case o) then
           (printout ?*A_fp5* "(id-Apertium_input "?id" ^yaha<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:p><per:"?per">$)"crlf)
           (printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_without_vib_for_these )" crlf)
        else (if (eq ?case d) then 
           (printout ?*A_fp5* "(id-Apertium_input "?id" ^yaha<cat:p><case:"?case"><gen:"?gen"><num:p><per:"?per"><tam:0>$)"crlf)
           (printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_without_vib_for_these )" crlf)
  )))

;---------------------------------------------------------------------------------------------------------------------------
  ;The legal authority will discuss this issue  
  (defrule PP_rule_without_vib_for_that
  (declare (salience 90))
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi 0)(person ?per)(group_ids $?ids))
  ?f1<-(id-original_word ?id That|that|This|this) ;Added 'This|this' to the list (S.Mahalaxmi (20-04-10))
  ;(test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  (test (member$ ?id $?ids));Modified the test condition as this rule is same for both head as well as group members (S.Mahaalaxmi 20-04-10)
  =>
   	(retract ?f0)
   	(printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word"<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num"><per:"?per">$)" crlf)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_without_vib_for_that )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  ; Sita is a good girl.
  (defrule PP_rule_without_vib
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi 0)(person ?person)(group_ids $?ids))
  (id-cat_coarse ?id ?cat);Added cat information (S.Mahalaxmi 20-04-10) to check for noun and adj cat 
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  =>
  	(retract ?f0)
        (if (eq ?cat noun) then
            (retract ?f0)
            (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)               (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  PP_rule_without_vib )" crlf)
        else
   	(printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_without_vib )" crlf))
  )

;=================================== NP rule for vibakthi equal to nil (head_id) =========================================
  (defrule PP_rule_without_vib_for_Hid_vb
  (declare (salience 90))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(gender ?gen)(vibakthi 0)(person ?person)(H_tam ?tam))
  (test (neq ?tam 0))
  =>
        (bind ?a (gdbm_lookup "hindi_cat.gdbm" ?h_word))
        (if (eq ?a "T") then
                (retract ?f0)
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id" root:"?h_word ",tam:"?tam",gen:"?gen",num:"?num ",per:"?person")" crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_vb )" crlf)
        )
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;You are going
  (defrule PP_rule_without_vib_for_Hid_you
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(gender ?gen)(vibakthi 0))
  (id-original_word ?pada_id  you|You)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
    	(retract ?f0)
    	(printout ?*A_fp5* "(id-Apertium_input "?pada_id  " ^Apa<cat:p><case:o><parsarg:0><gen:"?gen"><num:"?num">$)" crlf)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_you )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  ; These are children 's books .
  (defrule PP_rule_without_vib_for_Hid_these
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (case ?case)(gender ?gen)(vibakthi 0)(person ?per)(group_ids $?ids))
  ?f1<-(id-original_word ?pada_id  These|these)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
   	(retract ?f0 ?f1)
   	(printout ?*A_fp5* "(id-Apertium_input "?pada_id" ^yaha<cat:p><case:"?case"><gen:"?gen"><num:p><per:"?per"><tam:0>$)" crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_these )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ; I will give up smoking.
  (defrule PP_rule_without_vib_for_Hid_I
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?person)(vibakthi 0)(group_ids $?ids))
  (id-original_word ?pada_id  I|i)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
   	(retract ?f0)
      	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:o><parsarg:0><gen:"?gen"><num:s><per:"?person ">$)"  crlf)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_I )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;;;Do they eat? They are good boys .
  (defrule PP_rule_without_vib_for_Hid_they
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?person)(vibakthi 0))
  (id-original_word ?pada_id  They|they)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
    	(retract ?f0)
    	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:d><gen:"?gen"><num:p><per:"?person"><tam:0>$)" crlf)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_they )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;He has been frequently coming.
  (defrule PP_rule_without_vib_for_Hid_He
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?person)(vibakthi 0))
  (id-original_word ?pada_id  He|he)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
   	(retract ?f0)
   	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num"><per:"?person ">$)"  crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_He )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;She is sleeping.
  (defrule PP_rule_without_vib_for_Hid_she
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(person ?per)(vibakthi 0))
  (id-original_word ?pada_id  She|she)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
    	(retract ?f0)
    	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:0><gen:f><num:"?num"><per:"?per ">$)"  crlf)
 	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_she )" crlf)
 )
;---------------------------------------------------------------------------------------------------------------------------
  ; I will not do it . 
  (defrule PP_rule_without_vib_for_Hid_it
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?person)(vibakthi 0))
  (id-original_word ?pada_id  It|it)
  ?f0<-(id-HM-source ?pada_id ?h_word ?) 
  =>
	(retract ?f0)
    	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num"><per:"?person ">$)"  crlf)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_it )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------

  ; Who's afraid of the big bad wolf.
  (defrule PP_rule_without_vib_for_Hid_pronoun
  (declare (salience 80))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(person ?person)(vibakthi 0)(H_tam ?h_tam))
  ?f0<-(id-HM-source ?pada_id ?h_word&wuma|kOna|jo|vaha ?) ;Added vaha to the list by Mahalaxmi (24-04-10)
  =>
	(retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><gen:"?gen"><num:"?num"><per:"?person "><tam:"?h_tam ">$)"  crlf);)
       ; Changed the apertium format(16-04-10)(suggested by Sriramji that in case of any pronouns(wuma|kOna|jo) if it does't have any ?vib pass it as eg: jo<cat:p><case:d><gen:m><num:s><per:a><tam:0>)   
 	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_pronoun )" crlf)
  ) 
 ;---------------------------------------------------------------------------------------------------------------------------
  ;The participants were also asked to write down the story at the end of the session
  (defrule PP_rule_without_vib_Hid_for_vAlA
  (declare (salience 81))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi 0)(group_ids $?ids))
  ?f0<-(id-HM-source ?pada_id ?h_mng ?)
  =>
        (if (neq (str-index "_" ?h_mng) FALSE) then
                (bind ?len 0)
                (bind ?str1 ?h_mng)
                (bind ?str_len (length ?h_mng))
                (while (neq (str-index "_" ?h_mng) FALSE)
                        (bind ?index (str-index "_" ?h_mng))
                        (bind ?h_mng (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
                        (bind ?len (+ ?index ?len))
                )
                (if (eq ?h_mng "vAlA") then
                        (retract ?f0)
                        (bind ?str2 (sub-string 1 (- ?len 1) ?str1))
                        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?str2"<cat:prsg>$ ^" ?h_mng"<cat:n><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
                        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_Hid_for_vAlA )" crlf)
                )
        )
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ;How many ran .
  (defrule PP_rule_without_vib_for_how
  (declare (salience 41))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?person)(vibakthi 0)(group_ids $?ids))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (or (id-original_word ?pada_id how|How)(id-original_word =(- ?pada_id 1) how|How))
  =>
        (retract ?f0)
	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word"<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_how )" crlf)
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ;This is the way to go .
  (defrule PP_rule_without_vib_for_Hid
  (declare (salience 40))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?person)(vibakthi 0))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (id-cat_coarse ?pada_id ?cat)
  =>
	(retract ?f0)
        (if (eq ?cat pronoun) then ;Added by (S.Mahalaxmi 20-04-10)
            (printout ?*A_fp5* "(id-Apertium_input "?pada_id" ^"?h_word "<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num"><per:"?person">$)" crlf) 
         else(if (eq ?cat adjective) then
      		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
   	else
	      	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$)"  crlf)
   	))
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid )" crlf)
 )
;--------------------------------------------------------------------------------------------------------------

 (defrule PP_rule_with_vib_h_id_the
 (declare (salience 1000))
 ?f0<-(id-HM-source ?id vaha ?)
 (pada_info (group_head_id ?pada_id) (group_cat PP) (number ?num)(gender ?gen)(vibakthi ?vib) (group_ids $?ids)(person ?per)(case ?case))
 (id-word ?id the)
 (test (member$ ?id $?ids))
 (test (neq ?vib 0))
  =>
      (retract ?f0)
      ( printout ?*A_fp5* "(id-Apertium_input "?id" ^vaha<cat:p><case:o><parsarg:0><gen:"?gen"><num:"?num"><per:"?per">$)" crlf)
      (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  PP_rule_with_vib_h_id_the)" crlf)
  )
;Ex .I saw the man who you love. (Added by Sukhada 28-01-10) 
;--------------------------------------------------------------------------------------------------------------

 (defrule close_aper_debug
 (declare (salience -30))
 =>
	(close ?*aper_debug-file*)
 )
;--------------------------------------------------------------------------------------------------------------
