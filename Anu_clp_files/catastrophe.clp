 ;This file is written by Mahalaxmi
 (defglobal ?*catastrophe_file* = catas_fp)

 (defrule comma_list
 (declare (salience 1050))
 (id-right_punctuation ?id ",")
 ?f<-(comma_list $?ids)
 (test (eq (member$ ?id  $?ids) FALSE))
 =>
        (retract ?f)
        (bind $?ids (sort > (create$ $?ids ?id)))
        (assert (comma_list $?ids))
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;He is married with a sixteen years old girl. 
 (defrule caution_marry_with
 (id-word ?id married)
 (id-word ?id1&:(+ ?id 1) with)
 (root-verbchunk-tam-chunkids marry ?vrb_chnk is_en ? ?id)
 =>
 (assert (sen_type-id-phrase catastrophe ?id1 married_with))
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;They have been charged by the Bible to love Israel, love the Jews, and await the return of their Savior.
 (defrule caution_charge
 (id-root ?id charge)
 (root-verbchunk-tam-chunkids ? ? ? $? ?id)
 (kriyA-kriyArWa_kriyA  ?id ?to_verb)
 (kriyA-subject  ?id ?sub1)
 (or (kriyA-subject  ?id  ?sub2) (kriyA-by_saMbanXI ?id ?sub2))
 (test (neq ?sub1 ?sub2))
 =>
 (assert (sen_type-id-phrase catastrophe ?id charge)))
 ;-------------------------------------------------------------------------------------------------------------
 ;Though old, the Jones Study supports our conclusion. 
 (defrule truncated_sentences 
 (id-word ?id after|although|as|before|if|though|till|unless|until|when|whenever|where|wherever|while)
 (root-verbchunk-tam-chunkids ? ? ? $? ?k1)
 (not (root-verbchunk-tam-chunkids ? ? ? $? ?k2&:(< ?k2 ?k1)))
 ?f<-(comma_list $?pre ?id2 $?pos)
 (test (and (< ?id ?id2) (< ?id2 ?k1)))
 =>
 (assert (sen_type-id-phrase truncated 1 -))
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;A well-regulated militia being necessary to the national defense, the right to bear arms, shall not be infringed.
 (defrule noun_absolute
 (id-root-category-suffix-number ?id ? noun|pronoun ? ?)
 (id-root-category-suffix-number =(+ ?id 1) ? adjective|preposition ? ?)
 (not (kriyA-subject ? ?id))
 ?f<-(comma_list $?pre ?id2 $?pos)
 (test (> ?id2 ?id))
 =>
 (assert (sen_type-id-phrase noun_absolute 1 -))
 )
 ;-------------------------------------------------------------------------------------------------------------
; (defrule noun_absolute1
; (pada_info (group_head_id 2) 
; (not (kriyA-subject ? ?id))
; ?f<-(comma_list $?pre ?id2 $?pos)
; =>
; (assert (sen_type-id-phrase noun_absolute 1 -))
; )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule print
 ?f<- (sen_type-id-phrase ?sen_type ?id ?phrase) 
 =>
 (retract ?f)
 (printout ?*catastrophe_file* "(sen_type-id-phrase	"?sen_type"	"?id"	"?phrase	")"crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
