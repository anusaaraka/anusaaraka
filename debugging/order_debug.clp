 (dribble-on debug_info)
 (facts)
 (dribble-off)
 (system "clear")
 (system "zenity  --text-info  --filename=debug_info  --width=560  --height=300  &")


 (defglobal ?*help-file* = order-help)
 (defglobal ?*path1* = ?*path*)
 (defglobal ?*debug* = ON )

 (deffunction Help ()
 (bind ?help-file_path (str-cat ?*path1* "/debugging/" ?*help-file*))
 (system "zenity  --text-info --title="order-help" --filename="?help-file_path"  --width=560  --height=300  &")
 )

 (defrule sent_display0
 (declare (salience 2007))
 ?f<-(expr $?sen)
  =>
 (retract ?f)
 (assert (index 1))
 (assert (English-list ))
 (if (eq ?*debug* ON) then
 (system "cat " ?*home_anu_tmp*)
 )
 (assert (cntrl_fct 1))
 )

 ;-----------------------------------------------------------------------------------------------------
 (defrule get_eng_word_list
 (declare (salience 1950))
 (id-word ?id ?word)
 ?f1<-(index ?id)
 ?f<-(English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (bind ?word (str-cat ?word "," ?id ))
 (assert (English-list $?Eng_list ?word))
 (bind ?id (+ ?id 1))
 (assert (index ?id))
 )
 ;-----------------------------------------------------------------------------------------------------
 (defrule get_eng_word_list1
 (declare (salience 1900))
 (id-word ?id ?word)
 ?f1<-(index ?id1)
 ?f<-(English-list $?Eng_list)
 (test (or (eq ?id 10000) (eq ?id 1000) (eq ?id 10001)))
 (not (has_been_asserted ?id))
 =>
 (retract ?f ?f1)
 (bind ?word (str-cat ?word "," ?id1 ))
 (assert (English-list $?Eng_list ?word))
 (assert (has_been_asserted ?id))
 (bind ?id (+ ?id 1))
 (assert (index ?id))
 ) 
 ;-----------------------------------------------------------------------------------------------------

 (defrule hin_debug_info
 (declare (salience 1501))
 (debug_info ?cnt $?info)
 ?f<-(cntrl_fct ?cnt)
 =>
 (retract ?f)
 (printout t crlf crlf "             "(implode$ $?info) crlf)
 (printout t           "             ========================================              " crlf crlf)
 (bind ?cnt (+ ?cnt 1))
 (assert (cntrl_fct ?cnt))
 )


 (defrule hin_order1
 (declare (salience 1500))
 (rule_name - ?rule_name ?cnt Before - ? ?  $?before  After - ? ? $?after)
 ?f<-(cntrl_fct ?cnt)
 =>
 (retract ?f)
 (printout t crlf "rule_name : "?rule_name crlf
                  "          Before : "(implode$ $?before) crlf 
                  "          After  : "(implode$ $?after) crlf)
 (bind ?cnt (+ ?cnt 1))
 (assert (cntrl_fct ?cnt))
 )
