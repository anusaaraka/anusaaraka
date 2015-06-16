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
 (not (relation_name-id-args_with_ids parg_d ?kriyA $?)) ;The fruits were eaten by me.
 (test (eq (find_sub-str_before_last_underscore ?rel) "v"))
 (test (neq (find_sub-str_after_last_underscore ?rel) "modal"))
 (test (neq (find_sub-str_after_last_underscore ?rel) "there"));[There] was a red mark on the door.
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
 (test (eq (find_sub-str_before_last_underscore ?rel) "v"))
 (test (neq (find_sub-str_after_last_underscore ?rel) "modal"))
 (id-word ?karma ~what) ;[What] is the purpose of Dharma?
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
 =>
 (printout       ?*fp*   "(kriyA-sampraxAna    "?kriyA"      "?sampraxAna")"crlf)
 (printout       ?*fp1*   "(prep_id-relation-anu_ids  -     kriyA-sampraxAna   "?kriyA"       "?sampraxAna")" crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kriyA-sampraxAna_rule    kriyA-sampraxAna   "?kriyA" "?sampraxAna")"crlf)
 (assert (prep_id-relation-anu_ids - kriyA-sampraxAna ?kriyA ?sampraxAna))
 )

