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

;He is married with a sixteen years old girl. 
(defrule caution_marry_with
(id-word ?id married)
(id-word ?id1&:(+ ?id 1) with)
(root-verbchunk-tam-chunkids marry ?vrb_chnk is_en ? ?id)
=>
(assert (sen_type-id-phrase catastrophe ?id1 married_with))
)

;They have been charged by the Bible to love Israel, love the Jews, and await the return of their Savior.
(defrule caution_caharge
(id-root ?id charge)
(root-verbchunk-tam-chunkids ? ? ? $? ?id)
(kriyA-kriyArWa_kriyA  ?id ?to_verb)
(kriyA-subject  ?id ?sub1)
(or (kriyA-subject  ?id  ?sub2) (kriyA-by_saMbanXI ?id ?sub2))
(test (neq ?sub1 ?sub2))
=>
(assert (sen_type-id-phrase catastrophe ?id caharge)))

(defrule eliptical1
(id-word ?id after|although|as|before|if|though|till|unless|until|when|whenever|where|wherever|while)
(root-verbchunk-tam-chunkids ? ? ? $? ?k1)
(not (root-verbchunk-tam-chunkids ? ? ? $? ?k2&:(> ?k2 ?k1)))
?f<-(comma_list $?pre ?id2 $?pos)
(test (and (< ?id ?id2) (< ?id2 ?k1)))
=>
=>
(assert (sen_type-id-phrase eliptical ?id -))
)
