 (defglobal ?*eng_sen-file* = e_sen_fp) 

 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (defrule pn_vib
 (declare (salience 950))
 (pada_info (group_head_id ?id)(vibakthi kA))
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 ?f1<-(id-word ?id ?word&his|her)
 =>
	(retract ?f0)
	(if (eq ?word his) then
		(bind ?w kA)
	       	(bind ?word (string-to-field (str-cat "he_"?w)))
	        (assert (hindi_id_order $?id1 ?word $?id2))
	else
		(bind ?word (string-to-field (str-cat "she_kA")))
                (assert (hindi_id_order $?id1 ?word $?id2))
	)
  )
 ;---------------------------------------------------------------------------------------------------------
 (defrule substitute_tam
 (declare (salience 900))
 (pada_info (group_head_id ?id)(H_tam  ?vib))
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 ?f1<-(id-word ?id ?word&~and)
 (test (neq ?vib 0))
 =>
        (retract ?f0)
        (bind ?word (string-to-field (str-cat ?word "_"?vib)))
        (assert (hindi_id_order $?id1 ?word $?id2))
  )
 ;---------------------------------------------------------------------------------------------------------
 (defrule substitute_vib
 (declare (salience 900))
 (pada_info (group_head_id ?id)(vibakthi ?vib))
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 ?f1<-(id-word ?id ?word&~and)
 (test (neq ?vib 0))
 =>
        (retract ?f0)
	(bind ?word (string-to-field (str-cat ?word "_"?vib)))
        (assert (hindi_id_order $?id1 ?word $?id2))
  )
 ;---------------------------------------------------------------------------------------------------------
 (defrule substitute_eng_wrd
 (declare (salience 850))
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 ?f1<-(id-word ?id ?word)
 =>
        (retract ?f0 ?f1)
        (assert (hindi_id_order $?id1 ?word $?id2))
  )
 ;---------------------------------------------------------------------------------------------------------
 (defrule get_sentence
 (declare (salience 690))
 (id-last_word ?id ?wrd)
 (id-right_punctuation   ?id  ?rp)
 (hindi_id_order $?var)
 =>
        (if (eq ?rp "NONE") then 
                (printout ?*eng_sen-file* (implode$ $?var) crlf )
        else (if (eq ?rp "'.") then 
                (bind ?rp1 (string-to-field (sub-string (+ (str-index "'" ?rp) 1) (length ?rp) ?rp)))
                (printout ?*eng_sen-file* (implode$ $?var) ?rp1 crlf )
              else
                (if (eq ?rp ").") then 
                        (printout ?*eng_sen-file* (implode$ $?var) "right_paren." crlf )
                else
                        (printout ?*eng_sen-file* (implode$ $?var) ?rp crlf )
                )
             )
        )
 )
 ;---------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -10))
 =>
        (close ?*eng_sen-file* )
 )
;---------------------------------------------------------------------------------------------------------



