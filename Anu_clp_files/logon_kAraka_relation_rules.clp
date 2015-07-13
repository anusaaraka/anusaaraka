(defglobal ?*fp* = open-file2)
(defglobal ?*fp1* = open-file3)
(defglobal ?*dbug* = debug_fp1)

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
 (defrule print_for_debugging
 (declare (salience 750))
 =>
 (printout ?*fp* ";-------kAraka relations---------" crlf)
 (printout ?*fp1* ";-------kAraka relations---------" crlf)
 (printout ?*dbug* ";-------kAraka relations---------" crlf)
)
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: He has been frequently coming.
 ;e3:_come_v_1<23:30>[ARG1 x5] ==> (relation_name-id-args_with_ids _come_v_1 5 ARG0 e3 5 ARG1 x5 1)
 (defrule kriyA_karwA_rule
 (relation_name-id-args_with_ids ?rel  ?kriyA  ARG0 ?  ?kriyA  ARG1 ? ?karwA $?)
 (test (eq (find_sub-str_before_last_underscore ?rel) "v"))
 (relation_name-id-args_with_ids ?rel1 ?karwA $?) 
 (test (or (eq (find_sub-str_before_last_underscore ?rel1) "n") (eq ?rel1 proper_q) (eq ?rel1 pron)(eq ?rel1 generic_entity)(eq ?rel1 nominalization)(eq ?rel1 named)))
 (not (relation_name-id-args_with_ids parg_d ?kriyA $?)) ;The fruits were eaten by me.
 (test (neq (find_sub-str_after_last_underscore ?rel) "modal"))
 (not (prep_id-relation-anu_ids - kriyA-karwA ?kriyA ?karwA))
 =>
 (printout       ?*fp*   "(kriyA-karwA    "?kriyA"    "?karwA")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-karwA   "?kriyA"   "?karwA")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kriyA_karwA_rule   kriyA-karwA   "?kriyA"  "?karwA")"crlf)
 (assert (prep_id-relation-anu_ids - kriyA-karwA ?kriyA ?karwA))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule kriyA_karma_rule
 (relation_name-id-args_with_ids ?rel&~_be_v_id  ?kriyA  ARG0 ?  ?kriyA  $? ARG2 ? ?karma $?)
 (not (relation_name-id-args_with_ids parg_d ?kriyA $?)) ;The fruits were eaten by me.
 (relation_name-id-args_with_ids ?rel1 ?karma $?)
 (test (or (eq (find_sub-str_before_last_underscore ?rel1) "n") (eq ?rel1 proper_q) (eq ?rel1 pron)(eq ?rel1 generic_entity)(eq ?rel1 nominalization)(eq ?rel1 named)))
 (test (eq (find_sub-str_before_last_underscore ?rel) "v"))
 (test (neq (find_sub-str_after_last_underscore ?rel) "modal"))
 (id-word ?karma ~what) ;[What] is the purpose of Dharma?
 (not (prep_id-relation-anu_ids - kriyA-karma ?kriyA ?karma))
 =>
 (printout       ?*fp*   "(kriyA-karma     "?kriyA"    "?karma")"crlf)
 (printout       ?*fp1*  "(prep_id-relation-anu_ids  -   kriyA-karma   "?kriyA"        "?karma")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids   -     kriyA_karma_rule  kriyA-karma    "?kriyA"        "?karma")"crlf)
 (assert (prep_id-relation-anu_ids - kriyA-karma ?kriyA ?karma))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: The fruits were eaten by me. The dog was chased by Browne.
 ;e3:_eat_v_1<16:21>[ARG1 x9, ARG2 x6] ==> (relation_name-id-args_with_ids _eat_v_1  4 ARG0 e3  4  ARG1 x9 6  ARG2 x6 2 )
 ;e10:parg_d<16:21>[ARG1 e3, ARG2 x6]  ==> (relation_name-id-args_with_ids parg_d  4 ARG0 e10  4  ARG1 e3 4  ARG2 x6 2 )
 (defrule passive-kriyA-karwA_rule
 (relation_name-id-args_with_ids parg_d ?kriyA $? )
 (relation_name-id-args_with_ids ?rel  ?kriyA ARG0 ?  ?  ARG1 ? ?karwA $?)
 (test (eq (find_sub-str_before_last_underscore ?rel) "v"))
 (not (prep_id-relation-anu_ids - kriyA-karwA ?kriyA ?karwA))
  =>
 (printout       ?*fp*   "(kriyA-karwA    "?kriyA"      "?karwA")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-karwA   "?kriyA"       "?karwA")" crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   passive-kriyA-karwA_rule    kriyA-karwA  "?kriyA" "?karwA")"crlf)
 (assert (prep_id-relation-anu_ids - kriyA-karwA ?kriyA ?karwA))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: The fruits were eaten by me. The dog was chased by Browne.
 ;e3:_eat_v_1<16:21>[ARG1 x9, ARG2 x6] ==> (relation_name-id-args_with_ids _eat_v_1  4 ARG0 e3  4  ARG1 x9 6  ARG2 x6 2 )
 ;e10:parg_d<16:21>[ARG1 e3, ARG2 x6]  ==> (relation_name-id-args_with_ids parg_d  4 ARG0 e10  4  ARG1 e3 4  ARG2 x6 2 )
 (defrule passive-kriyA-karma_rule
 (relation_name-id-args_with_ids parg_d ?kriyA $? )
 (relation_name-id-args_with_ids ?rel  ?kriyA ARG0 ?  ?  $? ARG2 ? ?karma $?)
 (test (eq (find_sub-str_before_last_underscore ?rel) "v"))
 (not (prep_id-relation-anu_ids - kriyA-karma ?kriyA ?karma))
  =>
 (printout       ?*fp*   "(kriyA-karma    "?kriyA"      "?karma")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-karma    "?kriyA"       "?karma")" crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   passive-kriyA-karma_rule    kriyA-karma   "?kriyA" "?karma")"crlf)
 (assert (prep_id-relation-anu_ids - kriyA-karma ?kriyA ?karma))
 )
 ;------------------------------------------------------------------------------------------------------------------------ 
 ;Eg: Abrams [handed] the cigarette to [Browne].
 ;(relation_name-id-args_with_ids _hand_v_1  2 ARG0 e3  2  ARG1 x6 1  ARG2 x9 4  ARG3 x10 6 )
 (defrule kriyA-sampraxAna_rule
 (relation_name-id-args_with_ids ?rel&_hand_v_1|_give_v_1 ?kriyA ARG0 ?  ?  $? ARG3 ? ?sampraxAna $?)
 (test (eq (find_sub-str_before_last_underscore ?rel) "v"))
 (not (prep_id-relation-anu_ids - kriyA-sampraxAna ?kriyA ?sampraxAna))
 =>
 (printout       ?*fp*   "(kriyA-sampraxAna    "?kriyA"      "?sampraxAna")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-SeRa_sambanXa   "?kriyA"       "?sampraxAna")" crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kriyA-sampraxAna_rule    kriyA-sampraxAna   "?kriyA" "?sampraxAna")"crlf)
 (assert (prep_id-relation-anu_ids - kriyA-sampraxAna ?kriyA ?sampraxAna))
 )
 ;------------------------------------------------------------------------------------------------------------------------ 
 ;Abrams arrived by car.
 ;e9:_by_p_means<15:17>[ARG1 e3, ARG2 x10] ==> (relation_name-id-args_with_ids _by_p_means  3 ARG0 e9  3  ARG1 e3 2  ARG2 x10 4 )
 (defrule kriyA-karaNa_rule
 (relation_name-id-args_with_ids ?rel  ? ARG0 ? ?prep  ARG1 ? ?kriyA  ARG2 ? ?karaNa $?)
 (test (eq (sub-string  (length (sub-string 8 (length ?rel) ?rel)) (length ?rel) ?rel) "_p_means"))
 (id-word ?prep ?p_wrd)
 (relation_name-id-args_with_ids ?rel1 ?kriyA $?)
 (test (eq (find_sub-str_before_last_underscore ?rel1) "v"))
 (not (prep_id-relation-anu_ids  ?prep  kriyA-karaNa  ?kriyA ?karaNa))
  =>
 (printout       ?*fp*   "(kriyA-karaNa    "?kriyA"      "?karaNa")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-karaNa    "?kriyA"       "?karaNa")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  "?prep"   kriyA-karaNa_rule    kriyA-karaNa   "?kriyA" "?karaNa")"crlf)
 (assert (prep_id-relation-anu_ids  ?prep  kriyA-karaNa  ?kriyA ?karaNa))
 )
 ;------------------------------------------------------------------------------------------------------------------------ 
 ;Abrams [kept barking].
 ;e3:_keep_v_on<7:11>[ARG1 e11] ==> (relation_name-id-args_with_ids _keep_v_on  2 ARG0 e3  2  ARG1 e11 3 )
 ;e11:_bark_v_1<12:20>[ARG1 x6] ==> (relation_name-id-args_with_ids _bark_v_1  3 ARG0 e11  3  ARG1 x6 1 )
 (defrule  kriyA-kqxanwa_karma_rule
 (relation_name-id-args_with_ids ?rel ?keep ARG0 ?  ?  ARG1 ? ?kqxanwa_karma $?)
 (relation_name-id-args_with_ids ?rel1 ?kqxanwa_karma $?)
 (test (eq (sub-string 1 6 ?rel) "_keep_"))
 (test (eq (find_sub-str_before_last_underscore ?rel) "v"))
 (test (eq (find_sub-str_before_last_underscore ?rel1) "v"))
 ;(id-word ?keep kept)
 (not (prep_id-relation-anu_ids  -  kriyA-kqxanwa_karma   ?keep      ?kqxanwa_karma))
  =>
 (printout       ?*fp*   "(kriyA-kqxanwa_karma   "?keep"  "?kqxanwa_karma")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-kqxanwa_karma    "?keep"        "")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kriyA-kqxanwa_karma_rule   kriyA-kqxanwa_karma   "?keep"  "?kqxanwa_karma")"crlf)
 (assert (prep_id-relation-anu_ids  -  kriyA-kqxanwa_karma   ?keep      ?kqxanwa_karma))
 )
 ;------------------------------------------------------------------------------------------------------------------------ 
 ;Eg: There was a red [mark] on the [door]. 
 ;e11:_on_p<21:23>[ARG1 x4, ARG2 x12]
 ;Abrams put [Browne] in the [garden].
 ;e16:_in_p<18:20>[ARG1 x9, ARG2 x17] ==> (relation_name-id-args_with_ids _in_p  4 ARG0 e16  4  ARG1 x9 3  ARG2 x17 6 )
 (defrule AXeya-AXAra_rule
 (relation_name-id-args_with_ids ?rel  $?  ARG1 ? ?AXeya ARG2 ? ?AXAra)
 (test (or (eq (find_sub-str_before_last_underscore ?rel) "on")(eq (find_sub-str_before_last_underscore ?rel) "in")))
 (id-word ?prep_id ?p_wrd&in|on)
 (not (prep_id-relation-anu_ids  ?prep_id  AXeya-AXAra   ?AXeya  ?AXAra))
 =>
 (printout       ?*fp*   "(AXeya-AXAra   "?AXeya"  "?AXAra")"crlf)
 (printout       ?*fp1*  "(prep_id-relation-anu_ids   "?prep_id"    AXeya-AXAra    "?AXeya"        "?AXAra")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  "?prep_id"   AXeya-AXAra_rule   AXeya-AXAra   "?AXeya"  "?AXAra")"crlf)
 (assert (prep_id-relation-anu_ids  ?prep_id  AXeya-AXAra   ?AXeya  ?AXAra))
 )
 ;------------------------------------------------------------------------------------------------------------------------ 
 ;Eg: Abrams put Browne in the garden.
 ; e3:_put_v_1<7:10>[ARG1 x6, ARG2 x9, ARG3 e16] ==> (relation_name-id-args_with_ids _put_v_1  2 ARG0 e3  2  ARG1 x6 1  ARG2 x9 3  ARG3 e16 4 )
 ; e16:_in_p<18:20>[ARG1 x9, ARG2 x17] ==> (relation_name-id-args_with_ids _in_p  4 ARG0 e16  4  ARG1 x9 3  ARG2 x17 6 )
 (defrule kriyA-AXikaraNa_rule
 (relation_name-id-args_with_ids ?rel ?kriyA $? ARG3 ? ?prep $?)
 (relation_name-id-args_with_ids ?rel1 ?prep $? ARG2 ? ?AXikaraNa $?)
 (test (or (eq (find_sub-str_before_last_underscore ?rel1) "on")(eq (find_sub-str_before_last_underscore ?rel1) "in")))
 (id-word ?prep_id ?p_wrd&in|on)
 (not (prep_id-relation-anu_ids  ?prep_id  kriyA-AXikaraNa   ?kriyA  ?AXikaraNa))
 =>
 (printout       ?*fp*   "(kriyA-AXikaraNa   "?kriyA"  "?AXikaraNa")"crlf)
 (printout       ?*fp1*  "(prep_id-relation-anu_ids   "?prep_id"    kriyA-AXikaraNa    "?kriyA"        "?AXikaraNa")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  "?prep_id"   kriyA-AXikaraNa_rule   kriyA-AXikaraNa   "?kriyA"  "?AXikaraNa")"crlf)
 (assert (prep_id-relation-anu_ids  ?prep_id  kriyA-AXikaraNa   ?kriyA  ?AXikaraNa))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: Rama, Mohan, hari, Sita and Gita are eating fruits.
 ;x35:_and_c<24:27>[L-INDEX x40, R-INDEX x44] ==> (relation_name-id-args_with_ids _and_c  5 ARG0 x35  5  L-INDEX x40 4  R-INDEX x44 6 )
 (defrule conj_rule
 (relation_name-id-args_with_ids _and_c|_or_c  ?conj ARG0 ? ?  L-INDEX ? ?lindex  R-INDEX ? ?rindex $?)
 (id-word ?conj and|or)
 =>
 (assert (conj-comp ?conj ?lindex ?rindex))
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   conj_rule  conj-comp  "?conj" "?lindex " "?rindex")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg: Rama, Mohan, hari, Sita and Gita are eating fruits.

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
 (printout       ?*fp*   "(conjunction-components    "?conj"    "(implode$ $?clist)")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     conjunction-components    "?conj"   "(implode$ $?clist)")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   conjunction-components_rule    conjunction-components   "?conj"    "(implode$ $?clist)")"crlf)
 (assert (prep_id-relation-anu_ids  -  conjunction-components  ?conj   $?clist))
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Eg:-In mathematics, computing, linguistics and related disciplines, an algorithm is a sequence of instructions, often used for calculation and data processing.
 (defrule get_comp_rel_using_conj_info
 (prep_id-relation-anu_ids ? conjunction-components  $?pre ?comp $?pos)
 (prep_id-relation-anu_ids ?prep ?rel ?id  ?comp)
 (not (got_component_relation ?rel ?id  ?comp))
 =>
 (bind $?components (create$ $?pre $?pos))
 (bind ?len (length $?components))
 (loop-for-count (?i 1 ?len)
 (bind ?j (nth$ ?i $?components))
 (printout       ?*fp*   "("?rel"       "?id"   "?j")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  "?prep"     "?rel"  "?id"    "?j")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  "?prep" get_comp_rel_using_conj_info    "?rel"      "?j")"crlf)
 (assert (prep_id-relation-anu_ids  ?prep  ?rel   ?id  ?j))
 (assert (got_component_relation ?rel ?id  ?j))
 )
 )

