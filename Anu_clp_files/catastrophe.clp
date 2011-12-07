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
