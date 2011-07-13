 
 (defglobal ?*count* = 1)

 (defglobal ?*help-file* = pada-help)
 (defglobal ?*path1* = ?*path*)

 (deffunction Help ()
 (bind ?help-file_path (str-cat ?*path1* "/debugging/" ?*help-file*))
 (system "zenity  --text-info --title="pada-help" --filename="?help-file_path"  --width=560  --height=300  &")
 )


 (defrule display_linkage
 (declare (salience 120))
 (Parser_used Link-Parser)
 =>
 (system "sed 's/(Eng_sen \"//g' English_sentence.dat |sed  's/\")//g'|sed 's/&quot;/\"/g'|sed 's/\&amp;/&/g' >jnk")
 (printout t "Sentence :: " (system "cat jnk") crlf)
 (system "anu_link4.sh <jnk >jnk1 2>err")
 (system "cat jnk1")
 )

 (defrule question
 (declare (salience 101))
 ?f<-(question ?text)
 (Parser_used ?ptype)
 =>
 (retract ?f)
 (printout t crlf "LWG information:" crlf)
 (system "cat lwg_info.dat") 
 (printout t  crlf "=====================" crlf)

 (printout t crlf "Relations information:" crlf)
 (printout t  "---------------------" crlf)
 (system "cat relations.dat")
 (printout t crlf "=====================" crlf)
 (printout t crlf "pada Information:" crlf)
 (system "cat pada_id_info.dat")
 (printout t crlf "=====================" crlf)
 )

 (defrule sentence_display
 (declare (salience 100))
 ?f<-(next_id ?id)
 (id-word ?id ?word)
 =>
 (retract ?f)
 (if (eq ?id 1) then (printout t crlf crlf))
 (if (> ?*count* 6) then
     (bind ?*count* 0)
     (printout t crlf))
 
 (printout t " "?word " - "?id" |")
 (bind ?*count* (+ ?*count* 1))
 (bind ?id (+ ?id 1))
 (assert (next_id ?id))
 )

 (defrule ask_question
 (declare (salience 95))
 ?f<-(question1 ?txt)
  =>
  (retract ?f)
  (printout t crlf  crlf "Is there any wrong pada formation ? ----  (y/n) " crlf)
  (bind ?read (read))
     (if (eq ?read n) then
          (assert (padas correct))
      else (if (eq ?read y) then
           (assert (padas wrong))
      else (printout t "Legal answers are y or n" crlf)
           (assert (question1 ?txt))
           ))
  )



 (defrule pada_correct
 (declare (salience 91))
 ?f<-(padas correct)
  =>
 (retract ?f)
      (printout t "Is the parser's output correct? (y/n) :: ")
      (bind ?read1 (read))
      (if (eq ?read1 y) then
	  (printout t crlf "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="crlf crlf "Your problem might be related to some other module, plese debug using that one" crlf )
      else (if (eq ?read1 n) then
               (printout t "Can you correct the parse using the pre-processor (y/n) :: ")
               (bind ?read (read))
               (if (eq ?read y) then
                   (printout t "Sorry, currently this facility is not available :(" crlf)
                else (if (eq ?read n) then
                   (printout t "Then send a mail to Anusaaraka team :: sukhada8@gmail.com "crlf)
                else (printout t "Legal answers are (y/n)" crlf)
                ))
       else (printout t "Legal answers are (y/n)" crlf)
       (assert (padas correct)))
      )
  )

 (defrule wrong_pada
 (declare (salience 91))
 ?f<-(padas wrong)
  =>
  (retract ?f)
  (printout t "Type the members of the pada  " crlf  "Ex: 3 4 5 " crlf)
  (bind ?txt (explode$ (readline)))
  (assert (debug_pada ?txt))
  )
 
  (defrule debug_pada
  (declare (salience 90))
 ?f<-(debug_pada $?ids)
  (Rule_name-group_head_id-pada_type-gids   ?r_name  ?g_head ?g_type $?ids)
  (Parser_used ?ptype)
 =>
  (retract ?f)
  (printout t " pada is formed using the rule \"" ?r_name "\""  crlf " And the rule is defined as..... " crlf crlf)
  (ppdefrule ?r_name)
  (printout t crlf "NOTE:: " crlf crlf )
  (printout t  "1. If you want to write any rule for the pada formation please go to the directory \"anu_testing/Anu_clp_files\" and " crlf "   write the rules in \"pada.clp\" file " crlf "2. After saving the rule complie it using the command  :     \" myclips -f create_binary_files.clp\"     "crlf "3. If you want your rule to be part of main anusaaraka system please mail it to sukadha8@gmail.com" crlf  "4. Use following command to exit :: (exit)" crlf crlf)
  )
  

  (defrule debug_pada1
  (declare (salience 89))
 ?f<-(debug_pada $?ids)
  =>
  (retract ?f)
  (printout t "The specified  pada is not present in the padas of the current sentence." crlf )
  (assert (padas wrong))
  )

; (facts)
; (agenda)
 
; (run)
