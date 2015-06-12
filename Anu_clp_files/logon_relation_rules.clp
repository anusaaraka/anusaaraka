(defglobal ?*fp* = open-file)
(defglobal ?*fp1* = open-file1)
(defglobal ?*dbug* = debug_fp)

 (deffunction find_sub-str_before_last_underscore (?str)
 (bind ?len 0)(bind ?len1 0)
 (bind ?str1 ?str)
 (bind ?str_len (length ?str))
 (while (neq (str-index "_" ?str) FALSE)
 (bind ?index (str-index "_" ?str))
 (bind ?str (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
 (bind ?len (+ ?index ?len))
 )
 (bind ?str4 (sub-string 1 (- ?len 1) ?str1))
 (bind ?str2 ?str4)
 (if (neq (str-index "_" ?str4) FALSE) then
 (bind ?str4_len (length ?str4))
 (while (neq (str-index "_" ?str4) FALSE)
 (bind ?index1 (str-index "_" ?str4))
 (bind ?str4 (sub-string (+ ?index1 (+ ?len1 1)) ?str4_len ?str2) )
 (bind ?len1 (+ ?index1 ?len1))
 ))
 ;(printout t ?str4 crlf)
 (bind ?str ?str4)
 )

 (deffunction find_sub-str_before_last_hypen (?str)
 (bind ?len 0)(bind ?len1 0)
 (bind ?str1 ?str)
 (bind ?str_len (length ?str))
 (while (neq (str-index "-" ?str) FALSE)
 (bind ?index (str-index "-" ?str))
 (bind ?str (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
 (bind ?len (+ ?index ?len))
 )
 (bind ?str4 (sub-string 1 (- ?len 1) ?str1))
 (bind ?str2 ?str4)
 (if (neq (str-index "-" ?str4) FALSE) then
 (bind ?str4_len (length ?str4))
 (while (neq (str-index "-" ?str4) FALSE)
 (bind ?index1 (str-index "-" ?str4))
 (bind ?str4 (sub-string (+ ?index1 (+ ?len1 1)) ?str4_len ?str2) )
 (bind ?len1 (+ ?index1 ?len1))
 ))
 (printout t ?str4 crlf)
 (bind ?str ?str4)
 )


 (deffunction find_sub-str_after_last_underscore (?str)
 (bind ?len 0)(bind ?len1 0)
 (bind ?str1 ?str)
 (bind ?str_len (length ?str))
 (while (neq (str-index "_" ?str) FALSE)
 (bind ?index (str-index "_" ?str))
 (bind ?str (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
 (bind ?len (+ ?index ?len))
 )
 (bind ?str (sub-string (+ ?len 1) ?str_len ?str1))
 )

 (deffunction find_sub-str_after_last_hypen (?str)
 (bind ?len 0)(bind ?len1 0)
 (bind ?str1 ?str)
 (bind ?str_len (length ?str))
 (while (neq (str-index "-" ?str) FALSE)
 (bind ?index (str-index "-" ?str))
 (bind ?str (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
 (bind ?len (+ ?index ?len))
 )
 (bind ?str (sub-string (+ ?len 1) ?str_len ?str1))
 )

 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: He has been frequently coming.
 ;e3:_come_v_1<23:30>[ARG1 x5] ==> (relation_name-id-args_with_ids _come_v_1 5 ARG0 e3 5 ARG1 x5 1)
 (defrule kriyA_sub_rule
 (relation_name-id-args_with_ids ?rel  ?kriyA  ARG0 ?  ?kriyA  ARG1 ? ?sub $?) 
 (not (relation_name-id-args_with_ids parg_d ?kriyA $?)) ;The fruits were eaten by me.
 (test (eq (find_sub-str_before_last_underscore ?rel) "v"))
 (test (neq (find_sub-str_after_last_underscore ?rel) "modal"))
 (test (neq (find_sub-str_after_last_underscore ?rel) "there"));[There] was a red mark on the door.
 =>
 (printout       ?*fp*   "(kriyA-subject    "?kriyA"	"?sub")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-subject    "?kriyA"	"?sub")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kriyA_sub_rule   kriyA-subject   "?kriyA"	"?sub")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule kriyA_obj_rule
 (relation_name-id-args_with_ids ?rel&~_be_v_id  ?kriyA  ARG0 ?  ?kriyA  ARG1 ? ?sub ARG2 ? ?obj)
 (not (relation_name-id-args_with_ids parg_d ?kriyA $?)) ;The fruits were eaten by me.
 (test (eq (find_sub-str_before_last_underscore ?rel) "v"))
 (test (neq (find_sub-str_after_last_underscore ?rel) "modal"))
 (id-word ?obj ~what) ;[What] is the purpose of Dharma?
 =>
 (printout       ?*fp*   "(kriyA-object     "?kriyA"	"?obj")"crlf)
 (printout       ?*fp1*  "(prep_id-relation-anu_ids  -   kriyA-object	"?kriyA"	"?obj")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids   -	kriyA_obj_rule	kriyA-object	"?kriyA"	"?obj")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: Abrams handed the cigarette to Browne.
 ;e3:_hand_v_1<7:13>[ARG1 x6, ARG2 x9, ARG3 x10] ==> (relation_name-id-args_with_ids _hand_v_1  2 ARG0 e3  2  ARG1 x6 1  ARG2 x9 4  ARG3 x10 6 )
 (defrule kriyA_obj_rule1
 (relation_name-id-args_with_ids ?rel&~_be_v_id  ?kriyA  ARG0 ?  ?kriyA  ARG1 ? ?sub ARG2 ? ?obj1 ARG3 ? ?obj2 $?)
 (relation_name-id-args_with_ids ?rel1 ?obj1 $?) 
 (relation_name-id-args_with_ids ?rel2 ?obj2 $?) 
 (test (or (eq (find_sub-str_before_last_underscore ?rel1) "n") (eq ?rel1 proper_q) (eq ?rel1 pron)))
 (test (or (eq (find_sub-str_before_last_underscore ?rel2) "n") (eq ?rel2 proper_q) (eq ?rel2 pron)))
 (not (relation_name-id-args_with_ids parg_d ?kriyA $?)) ;The fruits were eaten by me.
 (test (eq (find_sub-str_before_last_underscore ?rel) "v"))
 (test (neq (find_sub-str_after_last_underscore ?rel) "modal"))
 =>
 (printout       ?*fp*   "(kriyA-object_1     "?kriyA"    "?obj1")"crlf)
 (printout       ?*fp1*  "(prep_id-relation-anu_ids  -   kriyA-object_1  "?kriyA"        "?obj1")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids   -     kriyA_obj_rule1  kriyA-object_1    "?kriyA"        "?obj1")"crlf)
 (printout       ?*fp*   "(kriyA-object_2     "?kriyA"    "?obj2")"crlf)
 (printout       ?*fp1*  "(prep_id-relation-anu_ids  -   kriyA-object_2  "?kriyA"        "?obj2")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids   -     kriyA_obj_rule1  kriyA-object_2    "?kriyA"        "?obj2")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: Abrams bet Browne a cigarette that it rained.
 ;e3:_bet_v_on<7:10>[ARG1 x6, ARG2 x10, ARG3 x9, ARG4 e21] ==> (relation_name-id-args_with_ids _bet_v_on  2 ARG0 e3  2  ARG1 x6 1  ARG2 x10 5  ARG3 x9 3  ARG4 e21 8 )
 ;e21:_rain_v_1<38:45>[] ==> (relation_name-id-args_with_ids _rain_v_1  8 ARG0 e21 8 )
 (defrule kriyA-vAkyakarma_rule
 (relation_name-id-args_with_ids ?rel&~_be_v_id  ?kriyA  ARG0 ?  ?kriyA  ARG1 ? ?sub ARG2 ? ?obj1 ARG3 ? ?obj2 ARG4 ? ?vAkyakarma)
 (relation_name-id-args_with_ids ?rel1 ?vAkyakarma $?) 
 (test (eq (find_sub-str_before_last_underscore ?rel1) "v"))
 (not (relation_name-id-args_with_ids parg_d ?kriyA $?)) ;The fruits were eaten by me.
 (test (eq (find_sub-str_before_last_underscore ?rel) "v"))
 (test (neq (find_sub-str_after_last_underscore ?rel) "modal"))
 =>
 (printout       ?*fp*   "(kriyA-vAkyakarma     "?kriyA"    "?vAkyakarma")"crlf)
 (printout       ?*fp1*  "(prep_id-relation-anu_ids  -   kriyA-vAkyakarma  "?kriyA"        "?vAkyakarma")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids   -     kriyA-vAkyakarma_rule   kriyA-vAkyakarma   "?kriyA"        "?vAkyakarma")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: He has been frequently coming.
 ;e9:_frequent_a_1<12:22>[ARG1 e3] ==>  (relation_name-id-args_with_ids _frequent_a_1 4 ARG0 e9 4 ARG1 e3 5)
 (defrule kriyA-kriyA_viSeRaNa_rule
 (relation_name-id-args_with_ids ?rel  ?kriyA_viSeRaNa  ARG0 ?  ?kriyA_viSeRaNa  ARG1 ? ?kriyA $?)
 (relation_name-id-args_with_ids ?rel1 ?kriyA $?)
 (test (eq (find_sub-str_before_last_underscore ?rel1) "v"))
 (test (eq (sub-string  (length (sub-string 4 (length ?rel) ?rel)) (length ?rel) ?rel) "_a_1"))
 ;(id-logon_cat  ?kriyA VBG|VBN|VB|VBD|VBZ)
 =>
 (printout       ?*fp*   "(kriyA-kriyA_viSeRaNa    "?kriyA"	"?kriyA_viSeRaNa")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-kriyA_viSeRaNa    "?kriyA"	"?kriyA_viSeRaNa")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kriyA-kriyA_viSeRaNa_rule   kriyA-kriyA_viSeRaNa   "?kriyA"	"?kriyA_viSeRaNa")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: Rama is a good boy.
 ;e14:_good_a_at-for-of<10:14>[ARG1 x9] ==> (relation_name-id-args_with_ids _good_a_at-for-of  4 ARG0 e14  4  ARG1 x9 5 )
 ;Eg: He is a brother of a rich person. 
 ;e19:_rich_a_in<21:25>[ARG1 x14] ==> (relation_name-id-args_with_ids _rich_a_in  7 ARG0 e19  7  ARG1 x14 8 )
 (defrule viSeRya-viSeRaNa_rule
 (relation_name-id-args_with_ids ?rel&~def_implicit_q  ?viSeRaNa  ARG0 ?  ?viSeRaNa  ARG1 ? ?viSeRya $?)
 (test (or (eq (sub-string  (length (sub-string 12 (length ?rel) ?rel)) (length ?rel) ?rel) "_a_at-for-of")(eq (sub-string  (length (sub-string 4 (length ?rel) ?rel)) (length ?rel) ?rel) "_a_1")(eq (sub-string  (length (sub-string 2 (length ?rel) ?rel)) (length ?rel) ?rel) "_a")(eq (sub-string  (length (sub-string 2 (length ?rel) ?rel)) (length ?rel) ?rel) "_a_in")))
 (test (neq ?viSeRya ?viSeRaNa));I went there with my mother.;[This job] will not take much effort.
 (relation_name-id-args_with_ids ?rel1 ?viSeRya $?)
 (test (or (eq (find_sub-str_before_last_underscore ?rel1) "n") (eq ?rel1 proper_q) (eq ?rel1 pron)))
 ;(id-logon_cat  ?viSeRya ?cat&NN|NNP) 
 (not (sent_head-id ?  ?viSeRaNa));Rama is good.
 =>
 (printout       ?*fp*   "(viSeRya-viSeRaNa    "?viSeRya"	"?viSeRaNa")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     viSeRya-viSeRaNa    "?viSeRya"	"?viSeRaNa")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   viSeRya-viSeRaNa_rule   viSeRya-viSeRaNa   "?viSeRya"	"?viSeRaNa")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ; Eg: There was a marked difference in the prices of dishes.
 ; e9:_mark_v_1<12:18>[ARG2 x4] ==> (relation_name-id-args_with_ids _mark_v_1  4 ARG0 e9  4  ARG2 x4 5 )
 (defrule  viSeRya-viSeRaNa1
 (relation_name-id-args_with_ids ?rel&~def_implicit_q  ? ARG0 ? ?viSeRaNa  ARG2 ? ?viSeRya)
 (test (neq (find_sub-str_before_last_underscore ?rel) "v"))
 (relation_name-id-args_with_ids ?rel1 ?viSeRya $?)
 (test (neq (find_sub-str_before_last_underscore ?rel1) "v"))
 ;(id-logon_cat  ?viSeRya ?cat&~VBG&~VBD&~VB&~VBN&~VBZ)
 ;(id-logon_cat  ?viSeRaNa ?cat1&~VBG&~VBD&~VB&~VBN&~VBZ)
 =>
 (printout       ?*fp*   "(viSeRya-viSeRaNa    "?viSeRya"       "?viSeRaNa")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     viSeRya-viSeRaNa    "?viSeRya"      "?viSeRaNa")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   viSeRya-viSeRaNa_rule1   viSeRya-viSeRaNa   "?viSeRya"      "?viSeRaNa")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;We had wasted our journey.
 ;_2:def_explicit_q<14:17>[BV x9] ==> (relation_name-id-args_with_ids def_explicit_q  4  BV x9 5 )
 (defrule viSeRya-RaRTI_viSeRaNa_rule
 (relation_name-id-args_with_ids def_explicit_q  ?RaRTI_viSeRaNa  BV ? ?viSeRya)
 =>
 (printout       ?*fp*   "(viSeRya-RaRTI_viSeRaNa    "?viSeRya"       "?RaRTI_viSeRaNa")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     viSeRya-RaRTI_viSeRaNa    "?viSeRya"      "?RaRTI_viSeRaNa")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   viSeRya-RaRTI_viSeRaNa_rule   viSeRya-RaRTI_viSeRaNa   "?viSeRya"      "?RaRTI_viSeRaNa")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: Rama is a good boy.
 ;e3:_be_v_id<5:7>[ARG1 x6, ARG2 x9] ==> (relation_name-id-args_with_ids _be_v_id 2 ARG0 e3 2 ARG1 x6 1 ARG2 x9 5)
 (defrule subject-subject_samAnAXikaraNa_rule
 (relation_name-id-args_with_ids _be_v_id ?  ARG0 ?  ?  ARG1 ? ?subject ARG2 ? ?subject_samAnAXikaraNa $?)
 =>
 (printout       ?*fp*   "(subject-subject_samAnAXikaraNa   "?subject"	"?subject_samAnAXikaraNa")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     subject-subject_samAnAXikaraNa    "?subject"	"?subject_samAnAXikaraNa")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   subject-subject_samAnAXikaraNa_rule   subject-subject_samAnAXikaraNa   "?subject"	"?subject_samAnAXikaraNa")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: The book is good.
 ;{e3:
 ;_1:_the_q<0:3>[BV x6]
 ;x6:_book_n_of<4:8>[]
 ;e3:_good_a_at-for-of<12:17>[ARG1 x6]
 ;}
 ;(sent_head-id  e3  4)
 ;If the parse head is adjective and "is" information is absent in dependency parse and if "is" is in between head and argument of the head assign subject-subject_samAnAXikaraNa between ARG1 of head and adjective.
 (defrule subject-subject_samAnAXikaraNa_rule1
 (id-word ?be_verb is)
 (sent_head-id ?sen_head  ?subject_samAnAXikaraNa)
 (relation_name-id-args_with_ids ?rel ?subject_samAnAXikaraNa ARG0 ?sen_head  ?id  ARG1 ? ?subject $?)
 (not (relation_name-id-args_with_ids ? ?be_verb $?))
 (test (and (> ?be_verb ?subject) (< ?be_verb ?subject_samAnAXikaraNa)))
 (test (or (eq (sub-string  (length (sub-string 12 (length ?rel) ?rel)) (length ?rel) ?rel) "_a_at-for-of")(eq (sub-string  (length (sub-string 4 (length ?rel) ?rel)) (length ?rel) ?rel) "_a_1")(eq (sub-string  (length (sub-string 2 (length ?rel) ?rel)) (length ?rel) ?rel) "_a")(eq (sub-string  (length (sub-string 2 (length ?rel) ?rel)) (length ?rel) ?rel) "_a_in")))
 =>
 (printout       ?*fp*   "(subject-subject_samAnAXikaraNa   "?subject"  "?subject_samAnAXikaraNa")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     subject-subject_samAnAXikaraNa    "?subject"        "?subject_samAnAXikaraNa")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   subject-subject_samAnAXikaraNa_rule1   subject-subject_samAnAXikaraNa   "?subject"  "?subject_samAnAXikaraNa")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: Rama is a good boy.
 ;_2:_a_q<8:9>[BV x9] ==> (relation_name-id-args_with_ids _a_q 3 BV x9 5)
 (defrule viSeRya-det_viSeRaNa_rule
 (relation_name-id-args_with_ids ?rel&_a_q|_the_q|_this_q_dem  ?det_viSeRaNa  BV ? ?viSeRya)
 (test (neq ?det_viSeRaNa ?viSeRya)) 
 =>
 (printout       ?*fp*   "(viSeRya-det_viSeRaNa    "?viSeRya"	"?det_viSeRaNa")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     viSeRya-det_viSeRaNa    "?viSeRya"	"?det_viSeRaNa")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   viSeRya-det_viSeRaNa_rule   viSeRya-det_viSeRaNa   "?viSeRya"	"?det_viSeRaNa")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: This is a sample sentence for Anusaraka.
 ;e15:compound<10:25>[ARG1 x9, ARG2 x14] ==> (relation_name-id-args_with_ids compound  5 ARG0 e15  5  ARG1 x9 5  ARG2 x14 4 )
 (defrule samAsa_viSeRya-samAsa_viSeRaNa_rule
 (relation_name-id-args_with_ids compound ?samAsa_viSeRya ARG0 ? ? ARG1 ? ?samAsa_viSeRya ARG2 ? ?samAsa_viSeRaNa)
 (not (relation_name-id-args_with_ids nominalization  ?samAsa_viSeRaNa $?))
 (test (neq ?samAsa_viSeRya ?samAsa_viSeRaNa))
  =>
 (printout       ?*fp*   "(samAsa_viSeRya-samAsa_viSeRaNa    "?samAsa_viSeRya"	"?samAsa_viSeRaNa")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     samAsa_viSeRya-samAsa_viSeRaNa    "?samAsa_viSeRya"	"?samAsa_viSeRaNa")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   samAsa_viSeRya-samAsa_viSeRaNa_rule   samAsa_viSeRya-samAsa_viSeRaNa   "?samAsa_viSeRya"	"?samAsa_viSeRaNa")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg:The barking dog chased Browne.
 ;e10:compound<4:15>[ARG1 x6, ARG2 x9] ==> (relation_name-id-args_with_ids compound  3 ARG0 e10  3  ARG1 x6 3  ARG2 x9 2 )
 ;x9:nominalization<4:11>[ARG1 e15] ==> (relation_name-id-args_with_ids nominalization  2 ARG0 x9  2  ARG1 e15 2 )
 (defrule viSeRya-kqxanwa_viSeRaNa_rule
 (relation_name-id-args_with_ids compound ?samAsa_viSeRya ARG0 ? ? ARG1 ? ?viSeRya ARG2 ? ?kqxanwa_viSeRaNa)
 (relation_name-id-args_with_ids nominalization  ?kqxanwa_viSeRaNa $?)
 (test (neq ?viSeRya ?kqxanwa_viSeRaNa))
  =>
 (printout       ?*fp*   "(viSeRya-kqxanwa_viSeRaNa    "?viSeRya"  "?kqxanwa_viSeRaNa")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     viSeRya-kqxanwa_viSeRaNa   "?viSeRya" "?kqxanwa_viSeRaNa")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   viSeRya-kqxanwa_viSeRaNa_rule   viSeRya-kqxanwa_viSeRaNa   "?viSeRya"   "?kqxanwa_viSeRaNa")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: This is a sample sentence for Anusaraka.
 ;21:_for_p<26:29>[ARG1 x9, ARG2 x22] ==> (relation_name-id-args_with_ids _for_p  6 ARG0 e21  6  ARG1 x9 5  ARG2 x22 7 )
 (defrule viSeRya-prep_saMbanXI_rule
 (relation_name-id-args_with_ids ?rel  ? ARG0 ? ?prep  ARG1 ? ?viSeRya  ARG2 ? ?prep_saMbanXI)
 (test (eq (sub-string  (length (sub-string 2 (length ?rel) ?rel)) (length ?rel) ?rel) "_p"))
 (id-word ?prep ?p_wrd)
 (relation_name-id-args_with_ids ?rel1 ?viSeRya $?)
 (test (or (eq (find_sub-str_before_last_underscore ?rel1) "n") (eq ?rel1 proper_q) (eq ?rel1 pron)))
 ;(test (eq ?rel1 "pron"))
 ;(id-logon_cat  ?viSeRya NN)
  =>
 (printout       ?*fp*   "(viSeRya-"?p_wrd"_saMbanXI    "?viSeRya"	"?prep_saMbanXI")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  "?prep"     viSeRya-"?p_wrd"_saMbanXI    "?viSeRya"	"?prep_saMbanXI")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  "?prep"   viSeRya-prep_saMbanXI_rule	 viSeRya-"?p_wrd"_saMbanXI   "?viSeRya"	"?prep_saMbanXI")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;He heard the sound of rain from the kitchen.
 ;x9:_sound_n_of<13:18>[ARG1 x14] ==> (relation_name-id-args_with_ids _sound_n_of  4 ARG0 x9  4  ARG1 x14 6 )
 (defrule viSeRya-prep_saMbanXI_rule1
 (relation_name-id-args_with_ids ?rel  ? ARG0 ? ?viSeRya ARG1 ? ?prep_saMbanXI)
 (test (or (eq (find_sub-str_before_last_underscore ?rel) "n") (eq ?rel proper_q) (eq ?rel pron)))
 (id-word ?prep ?p_wrd)
 (test (or (eq (string-to-field (find_sub-str_after_last_underscore ?rel)) ?p_wrd)(eq (string-to-field (find_sub-str_before_last_hypen (string-to-field (find_sub-str_after_last_underscore ?rel)))) ?p_wrd)))
 (test (and (> ?prep ?viSeRya) (< ?prep ?prep_saMbanXI)))
  =>
 (printout       ?*fp*   "(viSeRya-"?p_wrd"_saMbanXI    "?viSeRya"      "?prep_saMbanXI")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  "?prep"     viSeRya-"?p_wrd"_saMbanXI    "?viSeRya"       "?prep_saMbanXI")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  "?prep"   viSeRya-prep_saMbanXI_rule1    viSeRya-"?p_wrd"_saMbanXI   "?viSeRya" "?prep_saMbanXI")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: I will give up smoking. 
 ;e3:_give_v_up<7:11>[ARG1 x5, ARG2 x9] ==> (relation_name-id-args_with_ids _give_v_up  3 ARG0 e3  3  ARG1 x5 1  ARG2 x9 5 ) 
 (defrule kriyA-upasarga_rule
 (relation_name-id-args_with_ids ?rel  ? ARG0 ? ?kriyA $?)
 (test (eq (find_sub-str_before_last_underscore ?rel) "v"))
 (id-word ?u_id ?upasarga)
 (test (eq (string-to-field (find_sub-str_after_last_underscore ?rel)) ?upasarga))
 (test (> ?u_id ?kriyA))
 =>
 (printout       ?*fp*   "(kriyA-upasarga    "?kriyA"      "?u_id")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-upasarga    "?kriyA"       "?u_id")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kriyA-upasarga_rule    kriyA-upasarga   "?kriyA" "?u_id")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: All are going to school.
 ;e9:_to_p<14:16>[ARG1 e3, ARG2 x10] ==> (relation_name-id-args_with_ids _to_p  4 ARG0 e9  4  ARG1 e3 3  ARG2 x10 5 )
 ;He left in the morning.
 ;e10:_in_p_temp<8:10>[ARG1 e3, ARG2 x11] ==> (relation_name-id-args_with_ids _in_p_temp  3 ARG0 e10  3  ARG1 e3 2  ARG2 x11 5 )
 (defrule kriyA-prep_saMbanXI_rule
 (relation_name-id-args_with_ids ?rel  ? ARG0 ? ?prep  ARG1 ? ?kriyA  ARG2 ? ?prep_saMbanXI )
 (test (or (eq (sub-string  (length (sub-string 2 (length ?rel) ?rel)) (length ?rel) ?rel) "_p")(eq (sub-string  (length (sub-string 6 (length ?rel) ?rel)) (length ?rel) ?rel) "_p_dir")(eq (sub-string  (length (sub-string 7 (length ?rel) ?rel)) (length ?rel) ?rel) "_p_temp")(eq (sub-string  (length (sub-string 8 (length ?rel) ?rel)) (length ?rel) ?rel) "_p_state")))
 (id-word ?prep ?p_wrd)
 (relation_name-id-args_with_ids ?rel1 ?kriyA $?)
 (test (eq (find_sub-str_before_last_underscore ?rel1) "v"))
 ;(id-logon_cat  ?kriyA VBG|VBD|VB|VBN|VBZ)
  =>
 (printout       ?*fp*   "(kriyA-"?p_wrd"_saMbanXI    "?kriyA"      "?prep_saMbanXI")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  "?prep"     kriyA-"?p_wrd"_saMbanXI    "?kriyA"       "?prep_saMbanXI")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  "?prep"   kriyA-prep_saMbanXI_rule    kriyA-"?p_wrd"_saMbanXI   "?kriyA" "?prep_saMbanXI")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: There was a red mark on the door.
 ;e3:_be_v_there<6:9>[ARG1 x4] ==> (relation_name-id-args_with_ids _be_v_there  2 ARG0 e3  2  ARG1 x4 5 )
 (defrule kriyA-aBihiwa_rule
 (relation_name-id-args_with_ids ?rel  ?kriyA ARG0 ?  ?kriyA  ARG1 ? ?aBihiwa)
 (id-word ?d_sub_id ?dummy_subject)
 (test (eq (find_sub-str_before_last_underscore ?rel) "v"))
 (test (eq (string-to-field (find_sub-str_after_last_underscore ?rel)) ?dummy_subject))
  =>
 (printout       ?*fp*   "(kriyA-aBihiwa    "?kriyA"      "?aBihiwa")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-aBihiwa    "?kriyA"       "?aBihiwa")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kriyA-aBihiwa_rule    kriyA-aBihiwa   "?kriyA" "?aBihiwa")"crlf)
 
 (printout       ?*fp*   "(kriyA-dummy_subject    "?kriyA"      "?d_sub_id")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-dummy_subject    "?kriyA"       "?d_sub_id")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kriyA-aBihiwa_rule    kriyA-dummy_subject   "?kriyA" "?d_sub_id")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: I will not do it.
 ;e10:neg<7:10>[ARG1 e3] ==> (relation_name-id-args_with_ids neg  3 ARG0 e10  3  ARG1 e3 4 )
 (defrule kriyA-kriyA_niReXaka_rule
 (relation_name-id-args_with_ids neg  ? ARG0 ? ?kriyA_niReXaka  ARG1 ? ?kriyA)
  =>
 (printout       ?*fp*   "(kriyA-kriyA_niReXaka    "?kriyA"      "?kriyA_niReXaka")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-kriyA_niReXaka    "?kriyA"       "?kriyA_niReXaka")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kriyA-kriyA_niReXaka_rule    kriyA-kriyA_niReXaka   "?kriyA" "?kriyA_niReXaka")"crlf)

 (printout       ?*fp*   "(niReXawmaka_vAkya)"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     niReXawmaka_vAkya)"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kriyA-kriyA_niReXaka_rule    niReXawmaka_vAkya)"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: I went there with my mother.
 ;e9:loc_nonsp<7:12>[ARG1 e3, ARG2 x10]  ==> (relation_name-id-args_with_ids loc_nonsp  3 ARG0 e9  3  ARG1 e3 2  ARG2 x10 3 )
 (defrule kriyA-aXikaraNavAcI_rule
 (relation_name-id-args_with_ids loc_nonsp  ? ARG0 ?  ?  ARG1 ? ?kriyA  ARG2 ? ?aXikaraNavAcI)
 =>
 (printout       ?*fp*   "(kriyA-aXikaraNavAcI    "?kriyA"      "?aXikaraNavAcI")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-aXikaraNavAcI    "?kriyA"       "?aXikaraNavAcI")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kriyA-aXikaraNavAcI_rule    kriyA-aXikaraNavAcI   "?kriyA" "?aXikaraNavAcI")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 
 (defrule to-infinitive_rule
 (relation_name-id-args_with_ids ?rel ?infinitive $?)
 (logon_relation-properties   ?rel TENSE untensed)
 (id-word ?to to)
 (test (eq ?to (- ?infinitive 1)))
 =>
 (printout       ?*fp*   "(to-infinitive    "?to"      "?infinitive")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     to-infinitive    "?to"       "?infinitive")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   to-infinitive_rule    to-infinitive   "?to" "?infinitive")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: Rama, Mohan, hari, Sita and Gita are eating fruits.
 ;x35:_and_c<24:27>[L-INDEX x40, R-INDEX x44] ==> (relation_name-id-args_with_ids _and_c  5 ARG0 x35  5  L-INDEX x40 4  R-INDEX x44 6 )
 (defrule conj_rule
 (relation_name-id-args_with_ids _and_c|_or_c  ?conj ARG0 ? ?  L-INDEX ? ?lindex  R-INDEX ? ?rindex)
 (id-word ?conj and|or)
 =>
 (assert (conj-comp ?conj ?lindex ?rindex))
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   conj_rule  conj-comp  "?conj" "?lindex " "?rindex")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: Rama, Mohan, hari, Sita and Gita are eating fruits.
 ;x25:implicit_conj<19:32>[L-INDEX x30, R-INDEX x35] ==> (relation_name-id-args_with_ids implicit_conj  6  L-INDEX x30 3  R-INDEX x35 5 )
 ;x15:implicit_conj<13:32>[L-INDEX x20, R-INDEX x25] ==> (relation_name-id-args_with_ids implicit_conj  6  L-INDEX x20 2  R-INDEX x25 6 )
 (defrule combine_conj_components
 (declare (salience 10)) 
 ?f<-(conj-comp ?conj $?clist)
 (or (relation_name-id-args_with_ids implicit_conj  ?  L-INDEX ? ?comp  R-INDEX ? ?comp1)(relation_name-id-args_with_ids implicit_conj  ?  L-INDEX ? ?comp1 R-INDEX ? ?comp))
 (test (and (eq (member$ ?comp $?clist) FALSE)(neq (member$ ?comp1 $?clist) FALSE)(neq ?comp ?conj)))
 =>
 (retract ?f)
 (bind ?plist (sort > $?clist ?comp))
 (assert (conj-comp ?conj ?plist))
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   combine_conj_components  conj-comp  "?conj" "?plist")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule combine_conj_components1
 (declare (salience 10))
 ?f<-(conj-comp ?conj $?clist)
 (or (relation_name-id-args_with_ids implicit_conj  ?  L-INDEX ? ?comp  R-INDEX ? ?conj)(relation_name-id-args_with_ids implicit_conj  ?  L-INDEX ? ?conj R-INDEX ? ?comp))
 (test (eq (member$ ?comp $?clist) FALSE))
 =>
 (retract ?f)
 (bind ?plist (sort > $?clist ?comp))
 (assert (conj-comp ?conj ?plist))
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   combine_conj_components1  conj-comp  "?conj" "?plist")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Printing conjunction-components
 (defrule conjunction-components_rule
 ?f<-(conj-comp ?conj $?clist)
 =>
 (printout       ?*fp*   "(conjunction-components    "?conj"	"(implode$ $?clist)")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     conjunction-components    "?conj"	"(implode$ $?clist)")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   conjunction-components_rule    conjunction-components   "?conj"	"(implode$ $?clist)")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Ex:-The fruits were eaten by me. The dog was chased by Browne.
 ;e3:_eat_v_1<16:21>[ARG1 x9, ARG2 x6] ==> (relation_name-id-args_with_ids _eat_v_1  4 ARG0 e3  4  ARG1 x9 6  ARG2 x6 2 )
 ;e10:parg_d<16:21>[ARG1 e3, ARG2 x6]  ==> (relation_name-id-args_with_ids parg_d  4 ARG0 e10  4  ARG1 e3 4  ARG2 x6 2 )
 ;Note: In passive type we always have "by" as preposition (Sukhada  09-06-15)
 (defrule passive-kriyA-sub-by_saMbanXI_rule
 (relation_name-id-args_with_ids parg_d ?kriyA $? )
 (relation_name-id-args_with_ids ?rel  ?kriyA ARG0 ?  ?  ARG1 ? ?prep_saMbanXI ARG2 ? ?sub $?)
 (test (eq (find_sub-str_before_last_underscore ?rel) "v"))
  =>
 (printout       ?*fp*   "(kriyA-subject    "?kriyA"    "?sub")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-subject    "?kriyA"   "?sub")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   passive-kriyA-sub-by_saMbanXI_rule   kriyA-subject   "?kriyA"  "?sub")"crlf)
 
 (printout       ?*fp*   "(kriyA-by_saMbanXI    "?kriyA"      "?prep_saMbanXI")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-by_saMbanXI    "?kriyA"       "?prep_saMbanXI")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   passive-kriyA-sub-by_saMbanXI_rule    kriyA-by_saMbanXI   "?kriyA" "?prep_saMbanXI")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg:- The book is on the table.
 ;e3:_on_p<12:14>[ARG1 x6, ARG2 x10] ==>(relation_name-id-args_with_ids _on_p  4 ARG0 e3  4  ARG1 x6 2  ARG2 x10 6 )
 ;Here for word "is" there will be no information in the dependency parse 
 ;So the relation kriyA-prep_saMbanXI is assigned between "is" and "table" assuming word "is" exists in the sentence and is in between "book" and "table"
 (defrule kriyA-prep_saMbanXI_rule1
 (relation_name-id-args_with_ids ?rel ?prep ARG0 ? ?prep ARG1 ? ?viSeRya ARG2 ? ?prep_saMbanXI)
 (test (eq (sub-string  (length (sub-string 2 (length ?rel) ?rel)) (length ?rel) ?rel) "_p"))
 (id-word ?prep ?p_wrd)
 (id-word ?kriyA is)
 (not (relation_name-id-args_with_ids ?  ?kriyA))
 (test (and (> ?prep ?viSeRya) (< ?prep ?prep_saMbanXI)))
 (test (and (> ?kriyA ?viSeRya) (< ?kriyA ?prep_saMbanXI)))
  =>
 (printout       ?*fp*   "(kriyA-"?p_wrd"_saMbanXI    "?kriyA"      "?prep_saMbanXI")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  "?prep"     kriyA-"?p_wrd"_saMbanXI    "?kriyA"       "?prep_saMbanXI")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  "?prep"   kriyA-prep_saMbanXI_rule1    kriyA-"?p_wrd"_saMbanXI   "?kriyA" "?prep_saMbanXI")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg:- The snake which the mangoose attacked hissed loudly.
 ;e14:_attack_v_1<29:37>[ARG1 x11, ARG2 x6] ==> (relation_name-id-args_with_ids _attack_v_1  6 ARG0 e14  6  ARG1 x11 5  ARG2 x6 2 )
 ;e3:_hiss_v_1<38:44>[ARG1 x6] ==> (relation_name-id-args_with_ids _hiss_v_1  7 ARG0 e3  7  ARG1 x6 2 )
 ;assuming ?viSeRya is argument of two different facts and "which" information is absent in dependency parse assign reltion between ?viSeRya and "which" as viSeRya-jo_samAnAXikaraNa 
 (defrule viSeRya-jo_samAnAXikaraNa_rule
 (relation_name-id-args_with_ids ?rel ?v_id ARG0 ? ? $? ?viSeRya $?)
 (relation_name-id-args_with_ids ?rel1 ?v_id1 ARG0 ? ? $? ?viSeRya $?)
 (test (neq ?v_id ?v_id1))
 (test (eq (numberp ?viSeRya) TRUE))
 ;(test (eq (find_sub-str_before_last_underscore ?rel) "v"))
 ;(test (eq (find_sub-str_before_last_underscore ?rel1) "v")) 
 (id-word ?jo_samAnAXikaraNa which)
 (not (relation_name-id-args_with_ids ? ?jo_samAnAXikaraNa $?))
 (not (viSeRya-jo_samAnAXikaraNa ?viSeRya ?jo_samAnAXikaraNa))
 =>
 (assert (viSeRya-jo_samAnAXikaraNa ?viSeRya ?jo_samAnAXikaraNa))
 (printout       ?*fp*   "(viSeRya-jo_samAnAXikaraNa   "?viSeRya"  "?jo_samAnAXikaraNa")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     viSeRya-jo_samAnAXikaraNa    "?viSeRya"        "?jo_samAnAXikaraNa")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   viSeRya-jo_samAnAXikaraNa_rule   viSeRya-jo_samAnAXikaraNa   "?viSeRya"  "?jo_samAnAXikaraNa")"crlf)
 )

 
