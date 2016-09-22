;This file is written by Shirisha Manju

(defglobal ?*A_fp5* = fp5)
(defglobal ?*aper_debug-file* = aper_debug)
(defglobal ?*gnp_err* = err_fp1)

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
 (assert (id-eng-src))
 (assert (id-attach_eng_mng))
 (assert (id-wsd_viBakwi))
 (assert (id-domain_type))
 (assert (compound_meaning_decided))
 )
 ;----------------------------------------------------------------------------------------------------------------------- 
 (deffunction remove_character(?char ?str ?replace_char)
                        (bind ?new_str "")
                        (bind ?index (str-index ?char ?str))
                        (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                        (bind ?new_str (str-cat ?new_str (sub-string 1 (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
 )
 ;----------------------------------------------------------------------------------------------------------------------- 
 (deffunction get_kA_mng (?gen ?num ?case)
	(bind ?str (string-to-field (str-cat ?case"-"?gen"-"?num)))
	(bind ?mng " ")
	(if (member$ ?str (create$ d-m-p o-m-s o-m-p)) then
			(bind ?mng ke)
	else (if (member$ ?str (create$ d-f-s d-f-p o-f-s o-f-p)) then
			(bind ?mng kI)
		else (if  (eq ?str d-m-s) then
			(bind ?mng kA)	
		     )
	     )
	) 
	(bind ?kA_mng ?mng)
 )
 ;----------------------------------------------------------------------------------------------------------------------- 
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
 ;----------------------------------------------------------------------------------------------------------------------- 
 ;The Hawa mahal was built by the Maharaja [Sawai Pratap] Singh in 1799 AD and [Lal Chand] Usta was the architect.
 (defrule print_org_word_mng_for_grp_id
 (declare (salience 1400))
 ?f0<-(id-HM-source ?id ?mng ?)
 (pada_info (group_ids $? ?id $? ?h))
 (id-cat_coarse ?id ?cat)
 (test (or (eq (sub-string 1 1 ?mng) "@") (eq ?cat PropN))) 
 =>
	(retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input " ?id "  " ?mng"  )" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?id "  print_org_word_mng_for_grp_id )" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------- 
 ;What is the purpose of Dharma? He wrote the biography of Tagore.
 ;We went to Paris on Sarah's advice. hama [sArA kI] salAha para perisa gaye.
 (defrule print_org_word_mng_with_kA_vib
 (declare (salience 1400))
 ?f0<-(id-HM-source ?id ?mng Original_word|transliterate_mng|proper_noun_dic)
 (pada_info (group_head_id ?id) (vibakthi kA))
 (prep_id-relation-anu_ids ? viSeRya-RaRTI_viSeRaNa|viSeRya-of_saMbanXI|saMjFA-to_kqxanwa ?f_id ?id)
 (pada_info (number ?n)(case ?c)(gender ?g)(group_ids $?f_ids))
 (test (member$ ?f_id $?f_ids))
  =>
        (retract ?f0)
 	(bind ?kA_mng (get_kA_mng ?g ?n ?c))
        (printout ?*A_fp5* "(id-Apertium_input " ?id "  " ?mng"  " ?kA_mng " )" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?id "  print_org_word_mng_with_kA_vib )" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------- 
 ;The Hawa mahal was built by the Maharaja Sawai Pratap [Singh] in 1799 AD and Lal Chand [Usta] was the architect.
 ;John is less fat than Tom.   Please enclose a curriculum vitae with your letter of application. 
 (defrule print_org_word_mng_for_head_id
 (declare (salience 1300))
 ?f0<-(id-HM-source ?id ?mng ?s)
 (pada_info (group_head_id ?id) (vibakthi ?vib&~kA)(number ?n)(case ?c)(gender ?g))
 (id-cat_coarse ?id ?cat)
; (test (eq (sub-string 1 1 ?mng) "@"))
 (test (or (eq (sub-string 1 1 ?mng) "@") (eq ?cat PropN))) 
 =>
        (retract ?f0)
	(if (eq ?vib 0) then
	        (printout ?*A_fp5* "(id-Apertium_input " ?id "  " ?mng"  )" crlf)
	else  
		(bind $?v (implode$ (remove_character "_" ?vib " ")))
	        (printout ?*A_fp5* "(id-Apertium_input " ?id "  " ?mng"  " $?v " )" crlf)
	)
        (printout ?*aper_debug-file* "(id-Rule_name  "?id "  print_org_word_mng_for_head_id )" crlf)
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
	(bind ?hmng (remove_character "_" ?hmng " "))
        (printout ?*A_fp5* "(id-Apertium_input " ?id "  " (implode$ ?hmng)" " ?vib ")" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  complete_sen_mng_with_vib )" crlf)
 )
;----------------------------------------------------------------------------------------------------------------------- 
 (defrule complete_sen_mng
 (declare (salience 1010))
 ?f0<-(id-HM-source ?id ?hmng Complete_sen_gdbm)
 =>
        (retract ?f0)
	(bind ?hmng (remove_character "_" ?hmng " "))
        (printout ?*A_fp5* "(id-Apertium_input " ?id "  " (implode$ ?hmng)")" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  complete_sen_mng )" crlf)
 )
 ;========================================== word meanings for wsd/database/idiom ========================================
 ;Added 'provisional_Database_compound_phrase_word_mng' in the list by Roja(20-02-14)
 ;Added by Mahalaxmi (16-09-09)
 ;Does this shirt match these trousers ? (TROUSERS)
 (defrule word_mng_with_vib
 (declare (salience 1002))
 ?f0<-(id-HM-source ?id ?hmng WSD_compound_phrase_word_mng|Database_compound_phrase_word_mng|WSD_verb_phrase_word_mng|WSD_word_mng|Idiom_word_mng|provisional_Database_compound_phrase_word_mng)
 (pada_info (group_head_id ?id)(vibakthi ?vib)(group_cat PP|infinitive|VP))
 (test (and (neq ?vib 0) (neq ?vib -)))
  =>
       	(retract ?f0)
	(bind ?hmng (remove_character "_" ?hmng " "))
       	(printout ?*A_fp5* "(id-Apertium_input " ?id " "(implode$ ?hmng)" "?vib ")" crlf)
       	(printout ?*aper_debug-file* "(id-Rule_name  " ?id "  word_mng_with_vib )" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added 'provisional_Database_compound_phrase_word_mng' in the list by Roja(20-02-14)
 ;There was a marked difference in the prices of dishes .
 (defrule word_mng_rule
 (declare (salience 1001))
 ?f0<-(id-HM-source ?id ?hmng WSD_compound_phrase_word_mng|Database_compound_phrase_word_mng|WSD_verb_phrase_word_mng|WSD_word_mng|Idiom_word_mng|provisional_Database_compound_phrase_word_mng|Template_word_mng)
  =>
       	(retract ?f0)
	(bind ?hmng (remove_character "_" ?hmng " "))
       	(printout ?*A_fp5* "(id-Apertium_input " ?id " "(implode$ ?hmng) ")" crlf)
       	(printout ?*aper_debug-file* "(id-Rule_name  " ?id "  word_mng_rule )" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added 'provisional_Database_compound_phrase_root_mng' and 'provisional_Database_compound_phrase_word_mng' in the list by Roja(20-02-14)
 ;here prep_id itself is considered as the main meaning 
 ;Is there life beyond the grave? Either go to bed or open your book to read.
 (defrule Compound_mng_with_Prep_id1
 (declare (salience 1003))
 ?f0<-(id-HM-source ?p_id ?p_mng Database_compound_phrase_word_mng|Database_compound_phrase_root_mng|WSD_compound_phrase_root_mng|provisional_Database_compound_phrase_root_mng|provisional_Database_compound_phrase_word_mng)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi ?vib)(preposition $? ?p_id $?)(number ?num)(case ?case)(gender ?gen))
 ?f1<-(id-HM-source ?pada_id - ?)
  =>
	(retract ?f0 ?f1)
	(if (neq ?p_mng -) then 
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?p_mng "<cat:prsg>$)"  crlf)
	else 
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " )" crlf)
	)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?pada_id " Compound_mng_with_Prep_id1 )" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Decorate with stucco work. There was one bathroom with a shower stall in the corner.
 ;if group_id is considered as the main meaning
 (defrule Compound_root_mng_with_grpid_head
 (declare (salience 1003))
 ?f1<-(id-HM-source ?pada_id - Database_compound_phrase_word_mng|Database_compound_phrase_root_mng|WSD_compound_phrase_root_mng|provisional_Database_compound_phrase_root_mng|provisional_Database_compound_phrase_word_mng)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $? ?grpid ?pada_id)(vibakthi ?vib)(number ?num)(case ?case)(gender ?gen))
 ?f0<-(id-HM-source ?grpid ?mng&~- Database_compound_phrase_word_mng|Database_compound_phrase_root_mng|WSD_compound_phrase_root_mng|provisional_Database_compound_phrase_root_mng|provisional_Database_compound_phrase_word_mng)
 =>
        (retract ?f0 ?f1)
	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " )" crlf)
        (if (neq ?vib 0) then
		(printout ?*A_fp5* "(id-Apertium_input "?grpid " ^"?mng "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^" ?vib "<cat:prsg>$)"  crlf)
        else
		(printout ?*A_fp5* "(id-Apertium_input "?grpid " ^"?mng "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$ "  crlf)
        )
        (printout ?*aper_debug-file* "(id-Rule_name  " ?grpid " Compound_mng_with_grpid_head )" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; One kind of response from the [earliest times] has been to observe the physical environment carefully, look for any meaningful patterns and relations in natural phenomena, and build and use new tools to interact with nature.
 ;if group_id is considered as the main meaning
 (defrule Compound_word_mng_with_grpid_head
 (declare (salience 1004))
 ?f1<-(id-HM-source ?pada_id - Database_compound_phrase_word_mng|WSD_compound_phrase_word_mng|provisional_Database_compound_phrase_word_mng)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $? ?grpid ?pada_id)(vibakthi ?vib)(number ?num)(case ?case)(gender ?gen))
 ?f0<-(id-HM-source ?grpid ?mng&~- Database_compound_phrase_word_mng|WSD_compound_phrase_word_mng|provisional_Database_compound_phrase_word_mng)
 =>
        (retract ?f0 ?f1)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " )" crlf)
        (if (neq ?vib 0) then
		(printout ?*A_fp5* "(id-Apertium_input "?grpid " "?mng " " ?vib")" crlf)
        else
                (printout ?*A_fp5* "(id-Apertium_input "?grpid " "?mng  ")"  crlf)
        )
        (printout ?*aper_debug-file* "(id-Rule_name  " ?grpid " Compound_word_mng_with_grpid_head )" crlf)
 )


 ;----------------------------------------------------------------------------------------------------------------------
 ;Added 'provisional_Database_compound_phrase_root_mng' and 'provisional_Database_compound_phrase_word_mng' in the list by Roja(20-02-14)
 (defrule Compound_mng_with_Prep_id
 (declare (salience 1002))
 ?f0<-(id-HM-source ?p_id ?p_mng Database_compound_phrase_word_mng|Database_compound_phrase_root_mng|WSD_compound_phrase_root_mng|provisional_Database_compound_phrase_word_mng|provisional_Database_compound_phrase_root_mng)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi ?vib)(preposition $? ?p_id $?)(number ?num)(case ?case)(gender ?gen))
 ?f1<-(id-HM-source ?pada_id ?h_mng ?)
 (test (and (neq ?vib 0)(neq ?vib kA)))
 (test (and (neq (sub-string 1 2 ?vib) "ke")(neq (sub-string 1 2 ?vib) "kI")(neq (sub-string 1 2 ?vib) "se")))
  =>
        (retract ?f0 ?f1)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_mng "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^" ?vib "<cat:prsg>$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?pada_id " Compound_mng_with_Prep_id )" crlf)
 )
 ;==================================== add yaha as root if 1st mng starts with ke =========================================
 ;Besides it is close to our house.  before : ke awirikwa yaha hamAre Gara ke nikata hE. after: isake awirikwa yaha hamAre Gara ke nikata hE.
 ;Besides he is a personal friend.   before : ke awirikwa vaha eka vEyakwika miwra hE.   after: isake awirikwa vaha eka vEyakwika miwra hE. 
 (defrule add_yaha_as_root
 (declare (salience 1002))
 (hindi_id_order 1 $?post)
 ?f0<-(id-HM-source 1 ?mng ?)
 (test (eq (sub-string 1 2 ?mng) "ke"))
 (pada_info (group_head_id 1)(number ?num)(person ?per))
 =>
	(retract ?f0)
	(bind ?index (str-index "_" ?mng))
        (bind ?v (sub-string 1 (- ?index 1) ?mng))
        (bind ?vib1 (sub-string (+ ?index 1) (length ?mng) ?mng))
        (printout ?*A_fp5* "(id-Apertium_input 1 ^yaha<cat:p><case:o><parsarg:"?v"><gen:m><num:"?num"><per:"?per ">$ ^" ?vib1   "<cat:prsg>$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  1   add_yaha )" crlf)
 )
 ;======================================== KA vibakthi (viSeRya-RaRTI_viSeRaNa) rules =====================================
 ; Ex: He was awakened at dawn by the sound of crying .
 ;     She awakened to the sound of birds' singing .
 ;     Failure to comply may result in dismissal. 
 (defrule RaRTI_kA_vib_rule_for_verbal_noun
 (declare (salience 1001))
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
 ; Added by Shirisha Manju (20-08-16) Suggested by Chaitanya Sir
 ;Clean the teeth with the mixture of lemon and salt. 
 ;[nIMbU Ora namaka ke] miSraNa ke sAWa xAzwa sAPa kIjie.
 (defrule RaRTI_kA_vib_rule_for_conj
 (declare (salience 1001))
 (conj_head-left_head-right_head  ? ?pada_id $? ?last_id)
 (prep_id-relation-anu_ids ? viSeRya-RaRTI_viSeRaNa|viSeRya-of_saMbanXI  ?foll_pada_id ?pada_id)
 ?f0<-(id-HM-source ?last_id ?h_word&~vaha&~usakA&~hamArA&~merA&~Apa&~yaha&~mEM&~Ora ?)
 (pada_info (group_head_id ?last_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi kA))
 (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
 (test (member$ ?foll_pada_id $?f_ids))
  =>
       (retract ?f0)
       (printout ?*A_fp5* "(id-Apertium_input "?last_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$ ^kA<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
       (printout ?*aper_debug-file* "(id-Rule_name  "?last_id "  RaRTI_kA_vib_rule )" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (17-06-11) Suggested by Chaitanya Sir
 ; These are children's books. Mohan fell from the top of the house.
 (defrule RaRTI_kA_vib_rule
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
 ;------------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (16-03-16) Suggested by Chaitanya Sir
 ; [One kind of response] from the earliest times has been to observe the physical environment carefully, look for any meaningful patterns and relations in natural phenomena, and build and use new tools to interact with nature.
 ; [eka prakAra kI prawikriyA]
 (defrule movement_of_kA_vib
 (declare (salience 1000))
 (prep_id-relation-anu_ids ? viSeRya-RaRTI_viSeRaNa|viSeRya-of_saMbanXI  ?pada_id ?foll_pada_id)
 (id-word ?pada_id kind|kinds|type|types|variety)
 ?f0<-(id-HM-source ?pada_id ?h_word&~vaha&~usakA&~hamArA&~merA&~Apa&~yaha&~mEM&~Ora ?)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi kA))
 (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
 (test (member$ ?foll_pada_id $?f_ids))
 (id-word ?pada_id ?w&~and&~or);Now try generating random text in the style of an inaugural address or an internet chat room.
  =>
       (retract ?f0)
       (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$ ^kA<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
       (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  movement_of_kA_vib )" crlf)
 )

 ;======================================= KA vibakthi (kriyA_id-object_viBakwi) rules =====================================
 ; added kriyA_id-subject_viBakwi -- suggested by Sukhada 05-05-2015 
 ; Bansal is being hailed for saving a young child from drowning.
 ; bAMsala [kI] eka waruNa bacce ko dUbane se bacAne ke lie jayajayakAra kI jA rahI hE .
 ; Added by Shirisha Manju (17-06-11) Suggested by Chaitanya Sir
 ; Clinton announced on Tuesday a bold new proposal. 
 ; kliMtana ne eka nirBIka naye praswAva kI mafgalavAra ko GoRaNA kI.
 (defrule kA_vib_from_sub_or_obj_rule
 (declare (salience 1000))
 (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi kA))
 ?f0<-(id-HM-source ?pada_id ?h_word&~Ora&~yaha ?)
 (or (prep_id-relation-anu_ids - kriyA-object ?k_id ?pada_id)(prep_id-relation-anu_ids - kriyA-subject ?k_id ?pada_id))
 (or(kriyA_id-object_viBakwi ?k_id kA) (kriyA_id-subject_viBakwi ?k_id kA))
 (pada_info (group_head_id ?k_id)(number ?num1)(case ?case1))
 (id-HM-source ?k_id ?hmng&~upayoga_kara ?) 
 =>
        (bind ?gen1 (gdbm_lookup "kriyA_mUla-gender.gdbm" ?hmng))
        (if (neq ?gen1 "FALSE") then
            (if (eq ?gen1 -) then (bind ?gen1 m)
            else
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word"<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^kA<cat:sh><case:d><gen:"?gen1"><num:"?num">$)"  crlf)
            )
            (retract ?f0)
            (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  kA_vib_from_sub_or_obj_rule )" crlf)
        )
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; He studiously avoided answering the question. 
 ; She asked me to guess her age. 
 ; usane muJe usakI umra kA anxAja lagAne ke lie kahA.
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
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word"<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^kA<cat:sh><case:d><gen:"?gen1"><num:"?num">$)"  crlf)
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
 ;------------------------------------------------------------------------------------------------------------------------
 ;Suggested by Chaitanya Sir (18-07-13)
 ; He wrote the address on a [piece of paper]. -- kAgaja_kA_purjA , para => kAgaja_ke_purje para
 (defrule kA_in_hindi_rt_mng
 (declare (salience 610))
 ?f0<-(id-HM-source ?id ?h_mng ?s)
 (test (member$ kA (create$ (remove_character "_" ?h_mng " "))))
 (pada_info (group_head_id ?id) (gender ?g) (number ?n) (case ?c) (vibakthi ?vib))
 (test (neq ?vib 0))
 =>
	(retract ?f0)
	(bind ?kA_mng (get_kA_mng ?g ?n ?c))
	(bind $?mng (create$ (remove_character "_" ?h_mng " ")))
	(bind ?kA_pos (member$ kA $?mng))
	(bind $?mng1 (delete-member$ $?mng (nth$ ?kA_pos $?mng)))
	(bind $?mng1 (insert$ $?mng1 ?kA_pos ?kA_mng))	
	(bind ?new_mng (implode$ (remove_character " " (implode$ (create$ $?mng1)) "_")))
	(printout ?*A_fp5* "(id-Apertium_input "?id " ^"?new_mng "<cat:n><case:"?c"><gen:"?g"><num:"?n">$ ^" ?vib "<cat:prsg>$)" crlf)
	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  kA_in_hindi_rt_mng )" crlf)
 )

 ;============================================ verbal-noun without vib ===================================================
 ; Running is good for health.
 ; The wheels of the car began to turn . 
 ; I want to go there .
 (defrule verbal_noun_without_vib
 (declare (salience 910))
 (pada_info (group_head_id ?pada_id)(group_cat PP|infinitive)(vibakthi 0))
 (or (make_verbal_noun ?pada_id) (id_cat_coarse ?pada_id verbal_noun))
 ?f0<-(id-HM-source ?pada_id ?hmng ?)
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:d>$)" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id"  verbal_noun_without_vib )" crlf)
 )
 ;==========================================  verbal-noun with vib =======================================================
  ;Did you order people to go? Added by Sukhada (24-08-14)
 ; kyA Apane logoM ko jAne kI AjFA xI? 
 ; I have been running about all morning trying to find you. 
 ; mEM Apako pAne kA prayAsa karawe_hue pUrI subaha iXara-uXara xOdawA rahA hUz.
 (defrule kA_vib_rule_for_verbal_noun
 (declare (salience 906))
 (prep_id-relation-anu_ids ? kriyA-kqxanwa_karma|kriyA-kriyArWa_kriyA ?kri ?id)
 (make_verbal_noun ?id)
 (pada_info (group_head_id ?id)(vibakthi kA))
 (id-HM-source ?kri ?hmng ?)
 ?f0<-(id-HM-source ?id ?hmng1 ?)
 (pada_info (group_head_id ?kri)(number ?num1)(case ?case1))
 =>
	(retract ?f0)
	(bind ?gen1 (gdbm_lookup "kriyA_mUla-gender.gdbm" ?hmng))
        (printout ?*A_fp5* "(id-Apertium_input "?id " ^"?hmng1"<cat:vn><case:o>$ ^kA<cat:sh><case:d><gen:"?gen1"><num:"?num1">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  kA_vib_rule_for_verbal_noun  )"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha manju (27-07-15) -- suggested by Sukhada
 ;I asked him not to wait for me. 
 ;mEMne usako mere lie prawIkRA_nahIM karane ke lie kahA.
 (defrule not_before_verbal_noun_with_vib
 (declare (salience 906))
 (pada_info (group_head_id ?pada_id)(group_cat infinitive)(vibakthi ?vib))
 (or (make_verbal_noun ?pada_id)(id-cat_coarse ?pada_id verbal_noun))
 ?f0<-(id-HM-source ?pada_id ?hmng ?)
 (test (neq ?vib 0))
 (id-word =(- ?pada_id 2) not)
 ?f1<-(id-HM-source =(- ?pada_id 2) ?mng ?)
 =>
	(if (neq (str-index "_" ?hmng) FALSE) then
                (bind ?len 0)
                (bind ?str1 ?hmng)
                (bind ?str_len (length ?hmng))
                (while (neq (str-index "_" ?hmng) FALSE)
                        (bind ?index (str-index "_" ?hmng))
                        (bind ?hmng (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
                        (bind ?len (+ ?index ?len))
                )
                (bind ?str4 (sub-string 1 ?len ?str1))
                (bind ?str5 (str-cat ?str4 ?mng (sub-string ?len ?str_len ?str1)))
        	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?str5"<cat:vn><case:o>$ ^" ?vib "<cat:prsg>$)" crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_before_verb )" crlf)
		(retract ?f0 ?f1)
        else
        	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?mng"_"?hmng"<cat:vn><case:o>$ ^" ?vib "<cat:prsg>$)" crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_before_verb )" crlf))
		(retract ?f0 ?f1)
   )
	



 ; He made a mistake in the inviting of John. 
 ;The game of life is played for winning .
 (defrule verbal_noun_with_vib
 (declare (salience 905))
 (pada_info (group_head_id ?pada_id)(group_cat PP|infinitive)(vibakthi ?vib))
 (or (make_verbal_noun ?pada_id)(id-cat_coarse ?pada_id verbal_noun))
 ?f0<-(id-HM-source ?pada_id ?hmng ?)
 (test (neq ?vib 0))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:o>$ ^" ?vib "<cat:prsg>$)" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?pada_id "  verbal_noun_with_vib  )"crlf)
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
  (declare (salience 941))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(person ?per)(vibakthi kA)(group_ids $?ids))
  (id-word ?pada_id  ?w&he|she|their|i|those|your|you|our|my|me|they|its|we|it|him|this|mine)
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
  ; Added by Shirisha Manju (12-05-14) suggested by Chaitanya Sir
  ;This book is mine.
  (defrule PP_pronoun_rule_with_vib_kA1
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(gender ?gen)(person ?per)(case ?case)(vibakthi ?vib)(group_ids $?ids))
  (or (id-word ?pada_id he|she|their|i|our|me|him|they|them|her|we|it|that|this|ours|who|whom|mine)(id-original_word ?pada_id us|Us))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (neq ?vib 0))
  (test (neq (str-index "_" ?vib)  FALSE))
  (test (eq (sub-string 1 2 ?vib) "kA"))
  (test (eq (sub-string (+ (str-index "_" ?vib) 1) (length ?vib) ?vib) "vAlA"))
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info (group_head_id ?h)(number ?num1)(case ?case1)(gender ?gen1)(group_cat PP|infinitive|VP)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
;  (id-gender-src ?foll_pada_id ?gen ?)
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id  " ^"?h_word "<cat:p><parsarg:kA><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:"?num"><per:"?per ">$  ^vAlA<cat:n><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_pronoun_rule_with_vib_kA1 )" crlf)
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
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_those )" crlf)
  )
  ;------------------------------------------------------------------------------------------------------------------------
  ; He is taller than me. Look at me. We ran after him, but he escaped. You will not go without me.
  ; Who did you play tennis with? The man with whom I play tennis is here.
  ; Added by Shirisha Manju (24-09-11) Suggested by Chaitanya Sir
  ;If the object is released from rest, the initial potential energy is completely converted into the kinetic energy of the object just before it hits the ground.
  (defrule PP_pronoun_rule_with_ke
  (declare (salience 931))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(gender ?gen)(person ?per)(case ?case)(vibakthi ?vib))
  (or (id-word ?pada_id he|she|their|i|our|me|him|they|them|her|we|it|that|this|ours|who|whom)(id-original_word ?pada_id us|Us))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (neq ?vib 0))
  (test (neq (str-index "_" ?vib)  FALSE))
  (test (or (eq (sub-string 1 2 ?vib) "ke")(eq (sub-string 1 2 ?vib) "kI")(eq (sub-string 1 2 ?vib) "se")))
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
  ;He will sing you good night. I reached the cinema hall before you.
  (defrule PP_pronoun_rule_for_you_with_ke
  (declare (salience 931))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(gender ?gen)(person ?per)(case ?case)(vibakthi ?vib))
  (id-word ?pada_id your|you)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (neq ?vib 0))
  (test (neq (str-index "_" ?vib)  FALSE))
  (test (or (eq (sub-string 1 2 ?vib) "ke")(eq (sub-string 1 2 ?vib) "kI")(eq (sub-string 1 2 ?vib) "se")))
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
  ;I want them to go. 
  ;mEM cAhawA hUz ve jAez.
  (defrule PP_pronoun_rule_without_vib
  (declare (salience 931))
  (pada_info (group_cat PP)(number ?num)(gender ?gen)(person ?per)(case ?case)(vibakthi 0)(group_ids $?ids))
  (id-word ?pada_id that|this|these|them)
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
     	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  verbal_adjective_breaking_tam )" crlf)
     	(printout ?*aper_debug-file* "(id-Rule_name  "(nth$ (length $?ids) $?ids) "  verbal_adjective_breaking_tam )" crlf)
  )
;  ;------------------------------------------------------------------------------------------------------------------------
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
  ;The Master said, if I did not go, how would you ever see?
  ;mAlika ne kahA, ki yaxi mEM [nahIM gayA WA], wo kEse Apa kaBI BI xeKeMge?
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
  ;I went there with my mother . mEM merI mAz ke sAWa vahAz para [gayA].
  ;He had gone into his room, and gone out again almost immediately.  vaha usake kamare meM [gayA WA], Ora wawkAla BI lagaBaga [bAhara gayA WA].
  ;One kind of response from the earliest times has been to observe the physical environment carefully, look for any meaningful patterns and relations in natural phenomena, and build and use new tools to interact with nature. 
  ;Having finished the book, she went to school.
  ;He left in the morning .
  (defrule VP_rule_for_jA1
  (declare (salience 640))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(person ?per)(H_tam ?H_tam))
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
        )
       	(if (eq (string-to-field ?h_mng) jA) then
	       	(retract ?f0)
		(if (neq (str-index "_" ?H_tam) FALSE) then
                	(bind ?index1 (str-index "_" ?H_tam))
                	(bind ?str (sub-string (+ ?index1 1) 1000 ?H_tam))
        	else
                	(bind ?str ?H_tam)
        	)
		(if (eq ?str yA) then
	        	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?hmng",tam:yA1,gen:"?gen",num:"?num ",per:"?per")"  crlf)
		else
                        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?hmng",tam:yA1_"?str",gen:"?gen",num:"?num ",per:"?per")"  crlf)
		)	
        	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_jA1 )" crlf)
	)
  )
  ;---------------------------------------------------------------------------------------------------------------------------
  ;Keep doing small physical activities like climbing stairs, gardening, small domestic works or dancing.
  ;Keep doing light physical activities.
  ;Get the teeth checked up with the dentists regularly.
  (defrule VP_rule_for_imper_ing
  (declare (salience 651))
  (pada_info (group_head_id ?h)(group_cat VP)(number ?num)(gender ?gen)(H_tam ?tam)(preceeding_part_of_verb 0))
  (root-verbchunk-tam-chunkids ? ? imper_ing $? ?h)
  (impr_request imper ?req)
  ?f0<-(id-HM-source ?h ?hmng ?)
  =>
        (retract ?f0)
	(bind ?mng (str-cat ?hmng ?tam))
        (printout ?*A_fp5* "(id-Apertium_input "?h " root:"?mng",tam:imper,gen:"?gen",num:"?num ",per:"?req")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?h "  VP_rule_for_imper_ing )" crlf)
  )
  ;---------------------------------------------------------------------------------------------------------------------------
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
  ; Broken windows need to be replaced. The painted doors look great. Invention of currency was done mainly for transaction. 
  (defrule PP_rule_with_tam
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
                (printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_with_tam )" crlf)
        )
  )
  ;-------------------------------------------------------------------------------------------------------------------------
  ; What causes motion described in this chapter and the next chapter forms the subject matter of Chapter 5.
  ; The resulting a-t curve is shown in Fig. 3.8.
  ; This distance is called the path length traversed by the car.
  ; Added by Shirisha Manju (Suggested by Chaitanya Sir)
  (defrule PP_rule_with_tam1
  (declare (salience 440))
  (id-cat_coarse ?id verb)
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(gender ?gen)(person ?person)(group_ids $?ids)(H_tam ?tam))
  (test (member$ ?id $?ids))
  (test (neq ?tam 0))
  (test	(neq (str-index "_" ?h_word) FALSE))
  =>
	(bind ?h_mng ?h_word)
  	(if (or (eq  (sub-string (- (length ?h_word) 4) (length ?h_word) ?h_word) "_kara")(eq (sub-string (- (length ?h_word) 2) (length ?h_word) ?h_word) "_ho")) then
	        (printout ?*A_fp5* "(id-Apertium_input "?id" root:"?h_word ",tam:"?tam",gen:"?gen",num:"?num ",per:"?person")" crlf)
		(retract ?f0)
		(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_with_tam1 )" crlf)
	else
		(bind ?index (str-index "_" ?h_word))
                (while (neq ?index FALSE) 
                	(bind ?h_word (sub-string (+ ?index 1) 1000 ?h_word))
                	(bind ?index (str-index "_" ?h_word))
                )
		(bind ?a (gdbm_lookup "hindi_cat.gdbm" ?h_word))
        	(if (eq ?a "T") then
			(retract ?f0)
			(printout ?*A_fp5* "(id-Apertium_input "?id" root:" ?h_mng ",tam:"?tam",gen:"?gen",num:"?num ",per:"?person")" crlf)
			(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_with_tam1 )" crlf)
		else
			(printout ?*gnp_err* "meaning \"" ?h_word "\" is missed in hindi verb dictionary  " crlf)
		)
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
  ?f0<-(id-HM-source ?pada_id ?h_word&wuma|kOna|jo|koI|hara_koI ?)
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
  ;Since the magnitude of a null vector is zero, its direction can not be specified.
  ;kyoMki eka akRama vektara kA parimANa SUnya hE, usakA isaliye xiSA nahIM bawAI jA sakawI hE.
  (defrule default_kA_vib_rule
  (declare (salience 351))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(person ?per)(vibakthi kA)(group_ids $?ids))
  (id-cat_coarse ?pada_id ?cat&pronoun|PropN)
  (id-word ?pada_id  ?w)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (not (numberp ?foll_pada_id))
  =>
	(retract ?f0)
	(if (eq ?cat pronoun) then
	        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><parsarg:kA><fnum:s><case:d><gen:m><num:"?num"><per:"?per ">$)"  crlf)
 	else
		(bind ?kA_mng (get_kA_mng m s d))
	        (printout ?*A_fp5* "(id-Apertium_input " ?pada_id "  " ?h_word"  " ?kA_mng " )" crlf)
	)
			
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  default_kA_vib_rule )" crlf)
	(printout t "Warning: Missing GNP for 'kA' for " ?w  crlf)
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
 
