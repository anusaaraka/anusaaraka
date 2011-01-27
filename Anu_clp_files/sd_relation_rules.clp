(open "relations_tmp.dat" open-file "a")
(open "relations_debug.dat" debug_fp "a")
(defglobal ?*fp* = open-file)
(defglobal ?*dbug* = debug_fp)

(deffunction string_to_integer (?parser_id); [Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))
 
;------------------------------------------------------------------------------------------------------------------------
(defrule abbrev
(rel_name-sids abbrev ?nAma ?saMkRipwa_nAma)
=>
(printout	?*fp*	"(relation-parser_ids     nAma-saMkRipwa_nAma	"?nAma"	"?saMkRipwa_nAma")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	abbrev	kriyA-dummy_subject	"?nAma"	"?saMkRipwa_nAma")"crlf)	
)
 ; Ex. International Institute of Information Technology(IIIT) is here.
;------------------------------------------------------------------------------------------------------------------------ 
 (defrule expl
 (rel_name-sids expl ?kriyA ?dummy_sub)
 (parserid-word ?kriyA ?word is|are|was|were|be);I went there to buy a book.
 (not (sub_for_kriyA ?kriyA))
 =>
 (printout	?*fp*	"(relation-parser_ids     kriyA-dummy_subject	"?kriyA"	"?dummy_sub")"crlf)	
 (printout	?*dbug*	"(Rule-Rel-ids	expl	kriyA-dummy_subject	"?kriyA"	"?dummy_sub")"crlf)	
 )
 ; Ex. There is a ghost in the room.
;------------------------------------------------------------------------------------------------------------------------
 (defrule expl_not_dummy
 (rel_name-sids  expl ?kriyA ?dum)
 (rel_name-sids  nsubj  ?k ?s)
 (parserid-word ?dum there)
 (test(neq ?dum P1))
 =>
 (printout       ?*fp*   "(relation-parser_ids     kriyA-aXikaraNavAcI_avyaya   "?k"        "?dum")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  expl_not_dummy    kriyA-aXikaraNavAcI_avyaya     "?k"        "?dum")"crlf)
 )
 ; Ex. I went there to buy a book.
;------------------------------------------------------------------------------------------------------------------------
(defrule nsubj_expl
(declare(salience 201))
(rel_name-sids expl ?kriyA ?kriyA_dummy_subject)
(rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
(not (rel_name-sids cop ?kriyA ?))
(not (rel_name-sids nn ?sub ?));Added by Shirisha Manju Ex : You are lucky that there is no exam today .
(not (sub_for_kriyA ?kriyA))
=>
(printout       ?*fp*   "(relation-parser_ids    kriyA-dummy_subject       "?kriyA"        "?kriyA_dummy_subject")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  nsubj_expl   kriyA-dummy_subject   "?kriyA"        "?kriyA_dummy_subject")"crlf)

(printout       ?*fp*   "(relation-parser_ids    kriyA-aBihiwa       "?kriyA"        "?sub")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  nsubj_expl   kriyA-aBihiwa   "?kriyA"        "?sub")"crlf)
 (assert (sub_for_kriyA ?kriyA))
)
;------------------------------------------------------------------------------------------------------------------------
 ;Ex. There was a red mark on the door . 

 (defrule nsubj_expl_nn
 (declare(salience 202))
 (rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
 (rel_name-sids expl ?kriyA ?kriyA_dummy_subject)
 (rel_name-sids nn  ?sub ?GNP_sub)
 (not (rel_name-sids cop ?kriyA ?))
 =>
 (printout       ?*fp*   "(relation-parser_ids    kriyA-dummy_subject       "?kriyA"        "?kriyA_dummy_subject")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  nsubj_expl   kriyA-dummy_subject   "?kriyA"     "?kriyA_dummy_subject")"crlf)

 (printout       ?*fp*   "(relation-parser_ids    kriyA-aBihiwa       "?kriyA"        "?GNP_sub")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  nsubj_expl   kriyA-aBihiwa   "?kriyA"        "?GNP_sub")"crlf)

 (printout       ?*fp*   "(relation-parser_ids    kriyA-kAlavAcI       "?kriyA"        "?sub")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  nsubj_expl   kriyA-kAlavAcI   "?kriyA"        "?sub")"crlf)
  (assert (sub_for_kriyA ?kriyA))
 )
 ;Added by Shirisha Manju
 ;Ex : You are lucky that there is no exam today .
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule kriyA_sub_rule
 (declare (salience 190))
 (root-verbchunk-tam-parser_chunkids $?ids ?kriyA)
 (rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
 (not (sub_for_kriyA ?kriyA))
 =>
 (printout       ?*fp*   "(relation-parser_ids     kriyA-subject    "?kriyA"        "?sub")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  kriyA_sub_rule   kriyA-subject   "?kriyA"        "?sub")"crlf)
 (assert (sub_for_kriyA ?kriyA))
 )
 ;Added by Shirisha Manju
 ; The boy has a computer . The train left on time .
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule kri_sub_rule
; (declare (salience 190))
 (root-verbchunk-tam-parser_chunkids $?ids ?kriyA)
 (rel_name-sids cop ?sub ?kriyA)
 (not (rel_name-sids nsubj ?sub ?x))
 =>
 (printout       ?*fp*   "(relation-parser_ids     kriyA-subject    "?kriyA"        "?sub")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  kri_sub_rule   kriyA-subject   "?kriyA"        "?sub")"crlf)
; (assert (sub_for_kriyA ?kriyA))
 )
 ;
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule kriyA_sub_rule1
 (declare (salience 200))
 (root-verbchunk-tam-parser_chunkids $?ids ?kri)
 (rel_name-sids xcomp ?kriyA ?kri)
 (rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
 (not (sub_for_kriyA ?kri))
 =>
 (printout       ?*fp*   "(relation-parser_ids     kriyA-subject    "?kri"        "?sub")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  kriyA_subject_rule1   kriyA-subject   "?kri"        "?sub")"crlf)
 (assert (sub_for_kriyA ?kri))
 )
 ;Added by Shirisha Manju
 ;Ex : Broken windows need to be replaced . 
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule nsubj_conj
 (rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
 (rel_name-sids conj_and|conj_or  ?kriyA ?kriyA1)
 (not (rel_name-sids cop  ?kriyA ?v))
 =>
 (printout       ?*fp*   "(relation-parser_ids     kriyA-subject    "?kriyA1"        "?sub")"crlf)
 (printout       ?*fp*   "(relation-parser_ids     kriyA-subject    "?kriyA"        "?sub")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  nsubj_conj    kriyA-subject      "?kriyA1"        "?sub")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  nsubj_conj    kriyA-subject      "?kriyA"        "?sub")"crlf)
 )
 ; Ex. He may drink milk or eat apples .
 ;------------------------------------------------------------------------------------------------------------------------
(defrule conj_and
(rel_name-sids conj_and|conj_or  ?x ?y)
(parserid-word ?id and|or)
(test (and (> (string_to_integer ?id) (string_to_integer ?x)) (< (string_to_integer ?id) (string_to_integer ?y))))
(not (found_kriyA-conjunction ?id))
=>
(printout       ?*fp*   "(conjunction-components  "?id "  "?x" "?y")"crlf)
(printout       ?*fp*   "(conjunction-components  "?id "  "?y" "?x")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids conj_and  conjunction-components  "?id "  "?x" "?y")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids conj_and  conjunction-components  "?id "  "?y" "?x")"crlf)
)
 ; Ex. Your house and garden are very attractive. 
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule nsubj_conj1
 (rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
 (rel_name-sids conj_and|conj_or  ?sub ?sub1)
 (not (rel_name-sids cop  ?kriyA ?))
 (parserid-word ?id and|or)
 (test (and (> (string_to_integer ?id) (string_to_integer ?sub)) (< (string_to_integer ?id) (string_to_integer ?sub1))))
 =>
 (printout       ?*fp*   "(relation-parser_ids     kriyA-subject    "?kriyA"        "?id")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  nsubj_conj1  kriyA-subject  "?kriyA"        "?id")"crlf)
 )
 ; Added by Mahalaxmi.
 ; Ex. Rama and Shyam are coming . He and I are friends . There are three boys and four girls in the park .
 ;------------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 (defrule nsubj_conj2
 (declare (salience 250))
 (rel_name-sids	nsubj ?kriyA  ?sub) 
 (rel_name-sids	conj_and|conj_or  ?kriyA ?id1)
 (parserid-word ?and and|or)
 (not (found_kriyA-conjunction ?and));I ate fruits, drank milk and slept. 
 (test (and (> (string_to_integer ?and) (string_to_integer ?kriyA)) (< (string_to_integer ?and) (string_to_integer ?id1))))
 =>
 (printout       ?*fp*   "(relation-parser_ids     subject-subject_samAnAXikaraNa   "?sub"  "?and")"crlf)      
 (printout       ?*dbug* "(Rule-Rel-ids  nsubj_conj2     subject-subject_samAnAXikaraNa  "?sub"  "?and")"crlf)
 (assert (rel_sub-sub_samAnAXikaraNa_decided ?and))
 ) 
 ; Ex :Bill is big and honest .
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule nsubj_conj_sam
 (declare (salience 210))
 (rel_name-sids	cop   ?sam ?x)
 (rel_name-sids nsubj ?sam  ?y)
 (rel_name-sids conj_and|conj_or  ?sub ?id1)
 (parserid-word ?and and|or)
 (test (and (> (string_to_integer ?and) (string_to_integer ?sub)) (< (string_to_integer ?and) (string_to_integer ?id1))))
 (not (rel_sub-sub_samAnAXikaraNa_decided ?and))
 =>
 (assert (got_subject_samAnAXikaraNa ?sam))
 (printout       ?*fp*   "(relation-parser_ids  subject-subject_samAnAXikaraNa  "?and"    "?sam")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  nsubj_conj_sam  subject-subject_samAnAXikaraNa  "?and"    "?sam")"crlf)
 )
 ; Ex : Your house and garden are very attractive .
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule nsubj_conj_and
 (declare (salience 210))
 (rel_name-sids cop   ?kri ?kriyA)
 (rel_name-sids nsubj ?kri  ?sub)
 (rel_name-sids conj_and|conj_or  ?sub ?id1)
 (parserid-word ?and and|or)
 (test (and (> (string_to_integer ?and) (string_to_integer ?sub)) (< (string_to_integer ?and) (string_to_integer ?id1))))
 =>
 (printout       ?*fp*   "(relation-parser_ids    kriyA-subject       "?kriyA"        "?and")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  nsubj_conj_and  kriyA-subject   "?kriyA"        "?and")"crlf)
 (assert (sub_for_kriyA ?kriyA))
 )
 ; Added by Shirisha Manju
 ; Ex : Your house and garden are very attractive .
 ;------------------------------------------------------------------------------------------------------------------------
;;Added by Shirisha Manju 
(defrule nsubj_expl_cc_conj
(declare(salience 210))
(rel_name-sids expl ?kriyA ?kriyA_dummy_subject)
(rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
(rel_name-sids  conj_and|conj_or ?sub  ?id1)
(parserid-word ?and and|or)
(test (and (> (string_to_integer ?and) (string_to_integer ?sub)) (< (string_to_integer ?and) (string_to_integer ?id1))))
(not (rel_name-sids cop ?kriyA ?))
(not (rel_name-sids nn ?sub ?))
=>
(printout       ?*fp*   "(relation-parser_ids    kriyA-dummy_subject       "?kriyA"        "?kriyA_dummy_subject")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  nsubj_expl_cc_conj   kriyA-dummy_subject   "?kriyA"        "?kriyA_dummy_subject")"crlf)

(printout       ?*fp*   "(relation-parser_ids    kriyA-aBihiwa       "?kriyA"        "?and")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  nsubj_expl_cc_conj   kriyA-aBihiwa   "?kriyA"        "?and")"crlf)
 (assert (sub_for_kriyA ?kriyA))
)
; Ex :Bill is big and honest .
;------------------------------------------------------------------------------------------------------------------------

(defrule nsubjpass/csubjpass
(declare(salience 200))
(rel_name-sids nsubjpass|csubjpass ?kriyA ?sub)
?f0<-(rel_name-sids agent ?kriyA ?by_sub)
=>
(retract ?f0)
(printout	?*fp*	"(relation-parser_ids     kriyA-by_saMbanXI	"?kriyA"	"?by_sub")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	nsubjpass	kriyA-by_saMbanXI	"?kriyA"	"?by_sub")"crlf)	
(printout	?*fp*	"(relation-parser_ids     kriyA-subject	"?kriyA"	"?sub")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	nsubjpass/csubjpass	kriyA-subject	"?kriyA"	"?sub")"crlf)	

)
 ; Ex. Dole was defeated by Clinton. That she lied was suspected by everyone . 
 ; Modified by Shirisha Manju --  kriyA-by_sambanXa   as  kriyA-by_saMbanXI
 ;------------------------------------------------------------------------------------------------------------------------
(defrule nsubjpass/csubjpass+nn
(rel_name-sids nsubjpass|csubjpass ?kriyA ?sub)
(rel_name-sids nn  ?sub ?x)
=>
(printout       ?*fp*   "(relation-parser_ids     kriyA-subject   "?kriyA"        "?sub")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  nsubjpass/csubjpass+nn     kriyA-subject   "?kriyA"        "?sub")"crlf)
)
 ; Ex. The income tax proposal was rejected.
;------------------------------------------------------------------------------------------------------------------------
(defrule nn
(rel_name-sids nn  ?n1 ?n2)
=>
(printout       ?*fp*   "(relation-parser_ids     samAsa   "?n1"        "?n2")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  nn     samAsa   "?n1"        "?n2   ")"crlf)
)
 ; Ex. The income tax proposal was rejected.
;------------------------------------------------------------------------------------------------------------------------
(defrule ccomp
(declare(salience 200))
(rel_name-sids ccomp ?kriyA ?vAkyakarma)
(not (rel_name-sids advmod ?vAkyakarma ?)) ;--->Added by Mahalaxmi.
(not (rel_name-sids aux ?vAkyakarma ?)) ;--->Added by Mahalaxmi.
(not (rel_name-sids nsubj ?vAkyakarma ?)) ;--->Added by Mahalaxmi.
=>
(printout       ?*fp*   "(relation-parser_ids     kriyA-vAkyakarma       "?kriyA"        "?vAkyakarma")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  ccomp	kriyA-vAkyakarma       "?kriyA"        "?vAkyakarma")"crlf)
)
 ; Ex.  He says that you like to swim .
;------------------------------------------------------------------------------------------------------------------------
(defrule complm+ccomp
(rel_name-sids complm ?kriyA ?conj)
(rel_name-sids ccomp  ?vAkyakarma ?kriyA)
=>
(printout       ?*fp*   "(relation-parser_ids     kriyA-vAkyakarma         "?vAkyakarma "   "?kriyA")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  complm+ccomp   kriyA-vAkyakarma        "?vAkyakarma"       "?kriyA")"crlf)
)
; Ex. He says that you like to swim .
 ;------------------------------------------------------------------------------------------------------------------------
(defrule acomp+nsubj
(rel_name-sids nsubj ?kriyA ?sub)
(rel_name-sids acomp ?kriyA ?samA)
=>
(printout	?*fp*	"(relation-parser_ids     subject-subject_samAnAXikaraNa	"?sub"	"?samA")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	acomp+nsubj	subject-subject_samAnAXikaraNa	"?sub"	"?samA")"crlf)	
)
 ; Ex. She looks beautiful. 
;------------------------------------------------------------------------------------------------------------------------
(defrule attr+nsubj
(rel_name-sids nsubj ?kriyA ?sub)
(rel_name-sids attr ?kriyA ?samA)
=>
(printout	?*fp*	"(relation-parser_ids     subject-subject_samAnAXikaraNa	"?sub"	"?samA")"crlf)
(printout	?*dbug*	"(Rule-Rel-ids	attr+nsubj	subject-subject_samAnAXikaraNa	"?sub"	"?samA")"crlf)	
)
 ; Ex. What is that?
;------------------------------------------------------------------------------------------------------------------------
(defrule attr+aux
(rel_name-sids aux ?sam ?k)
(rel_name-sids attr ?sam ?sub)
=>
(printout       ?*fp*   "(relation-parser_ids     subject-subject_samAnAXikaraNa        "?sub"  "?sam")"crlf)
(printout       ?*fp*   "(relation-parser_ids     kriyA-subject        "?k"  "?sub")"crlf)
(printout       ?*dbug*   "(Rule-Rel-ids  attr+aux     kriyA-subject        "?k"  "?sub")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  attr+aux      subject-subject_samAnAXikaraNa  "?sub"  "?sam")"crlf)
)
 ; Ex. Who is afraid of the big bad wolf? 
;------------------------------------------------------------------------------------------------------------------------
(defrule cop+nsubj
(declare(salience 100))
(rel_name-sids nsubj|nsubjpass ?samAnAXikaraNa  ?sub)
(rel_name-sids cop  ?samAnAXikaraNa ?kriyA)
(not (rel_name-sids conj_and  ?sub ?))
(not (rel_name-sids conj_or  ?sub ?))
=>
(printout       ?*fp*   "(relation-parser_ids     kriyA-subject    "?kriyA"        "?sub")"crlf)
(printout      ?*dbug* "(Rule-Rel-ids  cop+nsubj       kriyA-subject   "?kriyA"        "?sub")"crlf)

)
 ; Ex. Bill is big.  Bill is big and honest .
;------------------------------------------------------------------------------------------------------------------------
(defrule cop+nsubj_1
(rel_name-sids nsubj|nsubjpass ?samA  ?sub)
(rel_name-sids cop  ?samA ?kriyA)
(not (rel_name-sids conj_and  ?sub ?))
(not (rel_name-sids conj_or  ?sub ?))
(not (rel_sub-sub_samAnAXikaraNa_decided ?sub));Bill is big and honest .
(not (got_subject_samAnAXikaraNa ?samA))
=>
(printout      ?*fp*   "(relation-parser_ids     subject-subject_samAnAXikaraNa   "?sub"  "?samA")"crlf)        
(printout      ?*dbug* "(Rule-Rel-ids  cop+nsubj_1      subject-subject_samAnAXikaraNa  "?sub"  "?samA")"crlf)        
)
; ; Ex. Bill is big.
;------------------------------------------------------------------------------------------------------------------------
 (defrule cop+nsubj_for_it
 (declare(salience 101))
 (rel_name-sids nsubj|nsubjpass ?samAnAXikaraNa  ?sub)
 (rel_name-sids cop  ?samAnAXikaraNa ?kriyA)
 ?f0<-(parserid-word ?sub It|it)
 (not (rel_name-sids infmod ?samAnAXikaraNa ?))
 =>
 (retract ?f0)
 (printout      ?*fp*   "(relation-parser_ids     kriyA-dummy_subject    "?kriyA"        "?sub")"crlf)
 (printout      ?*dbug* "(Rule-Rel-ids  cop+nsubj_for_it       kriyA-dummy_subject   "?kriyA"        "?sub")"crlf)
 (printout      ?*fp*   "(relation-parser_ids     subject-subject_samAnAXikaraNa   "?sub"  "?samAnAXikaraNa")"crlf)
 (printout      ?*dbug* "(Rule-Rel-ids  cop+nsubj_for_it     subject-subject_samAnAXikaraNa  "?sub"  "?samAnAXikaraNa")"crlf)
 (assert (sub_id_decided ?sub))
 )
 ;Added by Shirisha Manju
 ;It is likely they will come .
;------------------------------------------------------------------------------------------------------------------------
(defrule dobj
(rel_name-sids dobj ?kriyA ?obj)
(not  (parserid-word ?obj some))
=>
(printout	?*fp*	"(relation-parser_ids     kriyA-object	"?kriyA"	"?obj")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	dobj	kriyA-object	"?kriyA"	"?obj")"crlf)	
)
 ; Ex. Clinto defeated Dole.  
 ; Modified by Manju (23-11-09) -- added not condition Ex: I know some of the people .
;------------------------------------------------------------------------------------------------------------------------
(defrule nsubj+xcomp
(rel_name-sids nsubj ?obj_s ?obj)
(rel_name-sids xcomp ?kriyA ?obj_s)
(parser_id-cat_coarse ?obj_s adjective)
=>
(printout       ?*fp*   "(relation-parser_ids     object-object_samAnAXikaraNa     "?obj"        "?obj_s")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  nsubj+xcomp     object-object_samAnAXikaraNa     "?obj"        "?obj_s")"crlf)
(printout       ?*fp*   "(relation-parser_ids     kriyA-object     "?kriyA"        "?obj")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  nsubj+xcomp     kriyA-object     "?kriyA"        "?obj")"crlf)
)
; Ex.  I consider him intelligent.
;------------------------------------------------------------------------------------------------------------------------ 
(defrule nsubj+xcomp_1
(rel_name-sids nsubj ?obj_s ?obj)
(rel_name-sids xcomp ?kriyA ?obj_s)
(parser_id-cat_coarse ?obj_s verb)
=>
(printout       ?*fp*   "(relation-parser_ids     kriyA-object     "?kriyA"        "?obj")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  nsubj+xcomp_1     kriyA-object     "?kriyA"        "?obj")"crlf)
)
; Added by Shirisha Manju
; Ex. The instructor persuaded Mary to take that course .
;------------------------------------------------------------------------------------------------------------------------
 
(defrule dobj+iobj
(declare(salience 100))
 ?f0<-(rel_name-sids dobj ?kriyA ?obj)
(rel_name-sids iobj ?kriyA ?obj_2)
=>
(retract ?f0)
(printout	?*fp*	"(relation-parser_ids     kriyA-object_2	"?kriyA"	"?obj")"crlf)	
(printout	?*fp*	"(relation-parser_ids     kriyA-object_1	"?kriyA"	"?obj_2")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	dobj+iobj	kriyA-object_2	"?kriyA"	"?obj")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	dobj+iobj	kriyA-object_1	"?kriyA"	"?obj_2")"crlf)	
)
 ;Ex. She gave me a raise.
;------------------------------------------------------------------------------------------------------------------------
(defrule neg_1
(rel_name-sids neg ?kriyA ?not)
(not (rel_name-sids cop ?kriyA ?)) ;Added by Shirisha Manju Ex: It is not a good manner to eat alone .
=>
(printout	?*fp*	"(relation-parser_ids     kriyA-kriyA_niReXaka	"?kriyA"	"?not")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	neg_1	kriyA-kriyA_niReXaka	"?kriyA"	"?not")"crlf)	
)
 ; Ex. Bill does not drive.
;------------------------------------------------------------------------------------------------------------------------
 (defrule neg_cop
 (rel_name-sids cop ?v ?kriyA)
 (rel_name-sids neg ?v ?not)
 =>
 	(printout       ?*fp*   "(relation-parser_ids     kriyA-kriyA_niReXaka     "?kriyA"        "?not")"crlf)
	(printout       ?*dbug* "(Rule-Rel-ids  neg_cop   kriyA-kriyA_niReXaka    "?kriyA"        "?not")"crlf)
 )
 ;Added by Shirisha Manju
 ; Ex: It is not a good manner to eat alone .
;------------------------------------------------------------------------------------------------------------------------
 (defrule poss_conj
 (declare (salience 210))
 (rel_name-sids poss ?R_vi ?R_viNa) 
 (rel_name-sids conj_and|conj_or ?R_vi ?id)
 (parserid-word ?and  and|or)
 (test (and(>(string_to_integer ?and) (string_to_integer ?R_viNa))(<(string_to_integer ?and)(string_to_integer ?id))))
 =>
 (assert (got_viSeRya-RaRTI_viSeRaNa ?R_viNa))
 (printout       ?*fp*   "(relation-parser_ids     viSeRya-RaRTI_viSeRaNa   "?and"        "?R_viNa")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  poss_conj   viSeRya-RaRTI_viSeRaNa  "?and"        "?R_viNa")"crlf)
 )
 ;Added by Shirisha Manju
 ;Your house and garden are very attractive .
;------------------------------------------------------------------------------------------------------------------------
 (defrule poss
 (rel_name-sids poss ?RaRTI_viSeRya ?RaRTI_viSeRaNa)
 (not (got_viSeRya-RaRTI_viSeRaNa ?RaRTI_viSeRaNa))
 =>
 (printout   ?*fp*   "(relation-parser_ids     viSeRya-RaRTI_viSeRaNa   "?RaRTI_viSeRya"        "?RaRTI_viSeRaNa")"crlf)
 (printout   ?*dbug* "(Rule-Rel-ids  poss    viSeRya-RaRTI_viSeRaNa  "?RaRTI_viSeRya"        "?RaRTI_viSeRaNa")"crlf)
 )
 ; Ex.  He is John's cousin. Sam is my brother.
;------------------------------------------------------------------------------------------------------------------------
(defrule prt
(rel_name-sids prt ?kriyA ?upasarga)
=>
(printout	?*fp*	"(relation-parser_ids     kriyA-upasarga	"?kriyA"	"?upasarga")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	prt	kriyA-upasarga	"?kriyA"	"?upasarga")"crlf)	
)
 ; Ex. They shut down the station.
;------------------------------------------------------------------------------------------------------------------------
(defrule purpcl
(rel_name-sids  purpcl ?kriyA ?kriyArWa_kriyA)
=>
(printout	?*fp*	"(relation-parser_ids     kriyA-kriyArWa_kriyA	"?kriyA"	"?kriyArWa_kriyA")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	purpcl	kriyA-kriyArWa_kriyA	"?kriyA"	"?kriyArWa_kriyA")"crlf)	
)
 ; Ex. He talked to him in order to secure the account.
;------------------------------------------------------------------------------------------------------------------------
(defrule advcl
(rel_name-sids  advcl ?kri ?samakAlika_kri)
=>
(printout	?*fp*	"(relation-parser_ids     kriyA-samakAlika_kriyA	"?kri"	"?samakAlika_kri")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	advcl	kriyA-samakAlika_kriyA	"?kri"	"?samakAlika_kri")"crlf)	
)
 ; Ex. The accident happened as the night was falling. 
;------------------------------------------------------------------------------------------------------------------------
(defrule nsubj_advmod
(root-verbchunk-tam-parser_chunkids ? ? ? $?ids ?kri)
(rel_name-sids advmod ?kri ?kri_viSeRaNa)
;(not (rel_name-sids ccomp|xcomp ? ?kriyA));commented for 'I am afraid that I have badly hurt him.'
=>
(printout	?*fp*	"(relation-parser_ids     kriyA-kriyA_viSeRaNa	"?kri"	"?kri_viSeRaNa")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	nsubj_advmod	kriyA-kriyA_viSeRaNa	"?kri"	"?kri_viSeRaNa")"crlf)	
)
 ; Ex. I like genetically modified food.  He runs fast .
;------------------------------------------------------------------------------------------------------------------------
(defrule nsubj_advmod_1
(rel_name-sids  advmod   ?viSeRya ?viSeRaka)
(rel_name-sids  nsubj   ?viSeRya  ?sub)
(not (root-verbchunk-tam-parser_chunkids ? ? ? $?ids ?viSeRya))
=>
(printout       ?*fp*   "(relation-parser_ids     viSeRya-viSeRaka     "?viSeRya"        "?viSeRaka")"crlf)      
(printout       ?*dbug* "(Rule-Rel-ids  nsubj_advmod_1    viSeRya-viSeRaka    "?viSeRya"        "?viSeRaka")"crlf)
)
;Added by Shirisha Manju  Ex: She is very careful about her work . She is apparently an excellent pianist .
;------------------------------------------------------------------------------------------------------------------------
(defrule advmod_acomp
(rel_name-sids advmod ?kriyA ?kriyA_viSeRaNa)
(rel_name-sids acomp ? ?kriyA)
=>
(printout       ?*fp*   "(relation-parser_ids     kriyA-kriyA_viSeRaNa     "?kriyA"        "?kriyA_viSeRaNa")"crlf)      
(printout       ?*dbug* "(Rule-Rel-ids  advmod_acomp  kriyA-kriyA_viSeRaNa    "?kriyA"        "?kriyA_viSeRaNa")"crlf)      
)
 ; Ex : I guess you are working very hard .
 ; Added by Shirisha Manju
;------------------------------------------------------------------------------------------------------------------------
(defrule advmod1
(rel_name-sids advmod ?kriyA_viSeRaNa  ?kriyA_viSeRaNa_viSeRaka)
(rel_name-sids advmod ?kriyA ?kriyA_viSeRaNa)
(not (rel_name-sids prt ?kriyA ?))
=>
(printout       ?*fp*   "(relation-parser_ids     kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka     "?kriyA_viSeRaNa"        "?kriyA_viSeRaNa_viSeRaka")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  advmod1  kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka    "?kriyA_viSeRaNa"        "?kriyA_viSeRaNa_viSeRaka")"crlf)
)
 ;Ex. She works very carefully.
;------------------------------------------------------------------------------------------------------------------------
(defrule advmod2
(rel_name-sids advmod ?kriyA ?lupwa_p)
(rel_name-sids ccomp|xcomp|pcomp ? ?kriyA);Modified by Manju (added pcomp in list Ex:By going there you can earn more money.)
;(not (parserid-word ?kriyA many));commented on 13-01-11 by Sukhada
(parserid-word  ?lupwa_p  again|later|here|there|somewhere|anywhere|everywhere|now|outside|longer|alone|next|upstairs|downstairs|upwards|downwards|above|down);added on 13-01-11 by Sukhada
=>
(printout       ?*fp*   "(relation-parser_ids     kriyA-aXikaraNavAcI_avyaya     "?kriyA"        "?lupwa_p")"crlf)      
(printout       ?*dbug* "(Rule-Rel-ids  advmod2  kriyA-aXikaraNavAcI_avyaya    "?kriyA"        "?lupwa_p")"crlf)   ; kriyA-lupwa_prep_saMbanXI  is now changed to kriyA-aXikaraNavAcI_avyaya (Modified by Roja 28-12-10 Suggested by Sukhada)
   
)
 ; Ex. I want to go there . 
 ; Added by Mahalaxmi.
;------------------------------------------------------------------------------------------------------------------------
 (defrule advmod4
 (rel_name-sids amod ?v ?vn)
 (rel_name-sids advmod ?vn ?vk)
 (parserid-word ?vn ?word&~much&~many)
 =>
 (printout       ?*fp*   "(relation-parser_ids      viSeRaNa-viSeRaka  "?vn"   "?vk")" crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  advmod4   viSeRaNa-viSeRaka  "?vn"   "?vk")" crlf)
 )
 ;We have very different ideas about disciplining children . 
 ; Added by Shirisha Manju
;------------------------------------------------------------------------------------------------------------------------
(defrule det/predet
(or(rel_name-sids det ?viSeRya ?det_viSeRaNa)(rel_name-sids predet ?viSeRya ?det_viSeRaNa))
=>
(printout	?*fp*	"(relation-parser_ids     viSeRya-det_viSeRaNa	"?viSeRya"	"?det_viSeRaNa")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	det/predet	viSeRya-det_viSeRaNa	"?viSeRya"	"?det_viSeRaNa")"crlf)	
)
 ; Ex. The baby is cute. 
;------------------------------------------------------------------------------------------------------------------------
(defrule amod
(rel_name-sids amod ?viSeRya ?viSeRaNa)
(parserid-word ?viSeRaNa ?word&~much&~many) ;How much more spilled ?
=>
(printout	?*fp*	"(relation-parser_ids     viSeRya-viSeRaNa	"?viSeRya"	"?viSeRaNa")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	amod	viSeRya-viSeRaNa	"?viSeRya"	"?viSeRaNa")"crlf)	
)
 ; Ex. Sam eats red meat.
;------------------------------------------------------------------------------------------------------------------------
(defrule amod_1
(rel_name-sids amod ?viSeRya ?viSeRaNa)
(parserid-word ?viSeRaNa ?word&much|many)
=>
 (printout       ?*fp*   "(relation-parser_ids     viSeRaNa-viSeRaka "?viSeRya"      "?viSeRaNa")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  amod_1    viSeRaNa-viSeRaka     "?viSeRya"      "?viSeRaNa")"crlf)
)
; Added by Shirisha Manju  Ex: How much more spilled ?  There are many tissues of fat in our body . 
;------------------------------------------------------------------------------------------------------------------------
(defrule partmod
(rel_name-sids partmod ?viSeRya ?kqxanwa_vi)
=>
(printout	?*fp*	"(relation-parser_ids     viSeRya-kqxanwa_viSeRaNa	"?viSeRya"	"?kqxanwa_vi")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	partmod	viSeRya-kqxanwa_viSeRaNa	"?viSeRya"	"?kqxanwa_vi")"crlf)	
)
 ; Ex. He talked to him in order to secure the account.
;------------------------------------------------------------------------------------------------------------------------
(defrule mark
(rel_name-sids mark ?kriyA ?conj)
(rel_name-sids nsubj ?kriyA ?x)
=>
(printout       ?*fp*   "(relation-parser_ids     kriyA-conjunction        "?x"      "?conj")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids	mark    kriyA-conjunction        "?x"      "?conj")"crlf)
)
 ; Ex. The accident happened as the night was falling .
;------------------------------------------------------------------------------------------------------------------------
(defrule complm 
(rel_name-sids complm ?kriyA ?conj)
(rel_name-sids nsubj ?kriyA ?x)
(root-verbchunk-tam-parser_chunkids ? ? ? $?ids ?kriyA)
=>
(printout       ?*fp*   "(relation-parser_ids     kriyA-conjunction        "?kriyA"      "?conj")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  complm    kriyA-conjunction        "?kriyA"      "?conj")"crlf)
)
 ; Ex. He says that you like to swim. He disputed that our program was superior.
;------------------------------------------------------------------------------------------------------------------------
(defrule conj_but
(rel_name-sids ?cnj ?kriyA ?kri)
(test (eq (sub-string 1 5 (implode$ (create$ ?cnj))) "conj_"))
(parserid-word ?conj_id but)
(test (and (> (string_to_integer ?conj_id) (string_to_integer ?kriyA)) (< (string_to_integer ?conj_id) (string_to_integer ?kri))))
(not (rel_name-sids conj_and ?kriyA ?kri))
(not (rel_name-sids conj_or ?kriyA ?kri))
=>
(printout       ?*fp*   "(relation-parser_ids     kriyA-conjunction        "?kri"      "?conj_id")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  conj_but   kriyA-conjunction        "?kri"      "?conj_id")"crlf)
)
 ; Ex. Petu ran fast but missed the bus. 
;------------------------------------------------------------------------------------------------------------------------
 (defrule k_conj
 (declare (salience 1000))
 (rel_name-sids ?cnj ?kriyA ?kri)
 (test (eq (sub-string 1 5 (implode$ (create$ ?cnj))) "conj_"))
 (rel_name-sids nsubj ?kriyA ?s)
 (rel_name-sids nsubj ?kri ?s1)
 (parserid-word ?c_id and|or)
 (test (and (> (string_to_integer ?c_id) (string_to_integer ?kriyA)) (< (string_to_integer ?c_id) (string_to_integer ?kri)) (> (string_to_integer ?c_id) (string_to_integer ?s)) (< (string_to_integer ?c_id) (string_to_integer ?s1))))
 =>
 (assert (found_kriyA-conjunction ?c_id))
 (printout       ?*fp*   "(relation-parser_ids     kriyA-conjunction        "?kri"      "?c_id")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  k_conj   kriyA-conjunction        "?kri"      "?c_id")"crlf)
 )
 ; Ex. I want to have this and I want to have that. I am in New York and I would like to see you. I slept and Mohan wept. 
;------------------------------------------------------------------------------------------------------------------------
 (defrule k_conj1
 (declare (salience 1000))
 (rel_name-sids ?cnj ?kriyA ?kri)
 (test (eq (sub-string 1 5 (implode$ (create$ ?cnj))) "conj_"))
 (rel_name-sids nsubj ?kriyA ?s)
 (parser_id-cat_coarse ?kri verb)
 (parser_id-cat_coarse ?kriyA verb)
 (parserid-word ?c_id and|or)
 (not (found_kriyA-conjunction ?c_id))
 (test (and (> (string_to_integer ?c_id) (string_to_integer ?kriyA)) (< (string_to_integer ?c_id) (string_to_integer ?kri)) (> (string_to_integer ?c_id) (string_to_integer ?s))))
 =>
 (assert (found_kriyA-conjunction ?c_id))
 )
 ; Ex. The leopard seizes its kill and begins to eat. I ate fruits, drank milk and slept.
;------------------------------------------------------------------------------------------------------------------------
(defrule partmod+nsubj+cop
(declare(salience 205))
(rel_name-sids partmod ?sub ?kqxanwa_viSeRaNa)
(rel_name-sids nsubj ?sub_samA ?sub)
?f0<-(rel_name-sids cop ?sub_samA ?kriyA)
=>
(retract ?f0)
(printout	?*fp*	"(relation-parser_ids     subject-subject_samAnAXikaraNa	"?sub"	"?sub_samA")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	partmod+nsubj+cop	subject-subject_samAnAXikaraNa	"?sub"	"?sub_samA")"crlf)	
(printout	?*fp*	"(relation-parser_ids     kriyA-subject	"?kriyA"	"?sub")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	partmod+nsubj+cop	kriyA-subject	"?kriyA"	"?sub")"crlf)	
)
 ; Ex. Truffles picked during the spring are tasty .  
;------------------------------------------------------------------------------------------------------------------------
(defrule neg
(declare(salience 1000))
(rel_name-sids neg ?kriyA ?not)
=>
(printout	?*fp*	"(relation-parser_ids     niReXawmaka_vAkya)"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	neg	niReXawmaka_vAkya)"crlf)	
)
 ; Ex. Bill does not drive.
;------------------------------------------------------------------------------------------------------------------------
 ; Ex. John is more intelligent than Tom. This test is more difficult than other tests I have taken.
 (defrule prep_then
 (rel_name-sids prep  ?m-up ?t-up)
 ?f0<-(parserid-word ?t-up than)
 =>
  (retract ?f0)	
  (printout	?*fp*	"(relation-parser_ids     more_upameya-than_upamAna	"	?m-up"	"?t-up")"crlf)	
  (printout	?*dbug*	"(Rule-Rel-ids	prep_then	more_upameya-than_upamAna	"	?m-up"	"?t-up")"crlf)	
 )
 ; Ex. 
 ;------------------------------------------------------------------------------------------------------------------------ 
 (defrule prep+nsubj+pobj
 (declare(salience 1001))
 (rel_name-sids nsubj  ?m-up ?sub)
 (rel_name-sids prep  ?m-up ?than)
 (rel_name-sids pobj  ?than ?t-up)
 ?f0<-(parserid-word ?t-up than)
 =>
  (retract ?f0)
  (printout     ?*fp*   "(relation-parser_ids     more_upameya-than_upamAna        "       ?sub"   "?t-up")"crlf)  
  (printout     ?*dbug* "(Rule-Rel-ids  prep+nsubj+pobj more_upameya-than_upamAna       "       ?sub"   "?t-up")"crlf)  
 )
 ;Added by Shirisha Manju
 ;Ex: John is more intelligent than Tom.
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule prep+than+pobj
 (declare(salience 1000))
 (rel_name-sids prep  ?m-up ?than)
 (rel_name-sids pobj  ?than ?t-up)
 ?f0<-(parserid-word ?than than)
 =>
 (retract ?f0)
 (printout     ?*fp*   "(relation-parser_ids     more_upameya-than_upamAna        "?m-up"  "?t-up")"crlf)
 (printout     ?*dbug* "(Rule-Rel-ids  prep+than+pobj       more_upameya-than_upamAna       "?m-up"  "?t-up")"crlf)
 )
 ; Ex.My talk at the university was more appreciated by the students than the faculty .Added by Mahalaxmi (18-12-09)
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule prep_then+nsubj
 (declare(salience 1000))
 (rel_name-sids nsubj  ?m-up ?sub)
 (rel_name-sids prep  ?m-up ?t-up)
  ?f0<-(parserid-word ?t-up than)
 =>
  (retract ?f0)
  (printout	?*fp*	"(relation-parser_ids     more_upameya-than_upamAna	"?sub"	"?t-up")"crlf)	
  (printout	?*dbug*	"(Rule-Rel-ids	prep_then+nsubj	more_upameya-than_upamAna	"?sub"	"?t-up")"crlf)	
 )
 ; Ex. I am older than my brother. John is more intelligent than Tom. This test is more difficult than other tests I have taken.
;------------------------------------------------------------------------------------------------------------------------
 (defrule prep_p
 (rel_name-sids ?p ?kri ?p_saM)
 (parser_id-cat_coarse ?kri verb)
 (test (eq (sub-string 1 5 (implode$ (create$ ?p))) "prep_")) 
 =>
 (printout ?*fp* "(relation-parser_ids kriyA-"(sub-string 6 100 (implode$ (create$ ?p)))"_saMbanXI "?kri" "?p_saM")"crlf)      
 (printout ?*dbug* "(Rule-Rel-ids   prep_p  kriyA-"(sub-string 6 100 (implode$ (create$ ?p)))"_saMbanXI  " ?kri" "?p_saM")"crlf)   
 )
 ; Ex. The people of Orissa are FACING grave adversities DUE TO the CYCLONE. 
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule vi_prep
 (rel_name-sids ?p ?kri ?p_saM)
 (parser_id-cat_coarse ?kri ~verb)
 (test (eq (sub-string 1 5 (implode$ (create$ ?p))) "prep_"))
 =>
 (printout ?*fp* "(relation-parser_ids  viSeRya-"(sub-string 6 100 (implode$ (create$ ?p)))"_saMbanXI "?kri" "?p_saM")"crlf)
 (printout ?*dbug* "(Rule-Rel-ids  vi_prep  viSeRya"(sub-string 6 100 (implode$ (create$ ?p)))"_saMbanXI  " ?kri" "?p_saM")"crlf)
 )
 ; Ex. The PEOPLE of ORISSA are facing grave adversities due to the cyclone.  
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule prep_p3
 (declare (salience 100))
 (rel_name-sids nsubjpass|nsubj ?kriyA ?) ;Added by Shirisha Manju Ex: He made a mistake in inviting John .
 ?f0<-(rel_name-sids prep ?kriyA ?prep)
 ?f1<-(rel_name-sids pcomp ?prep ?prep_saM)
 (parserid-word ?prep ?prp)
 =>
 (printout      ?*fp*   "(relation-parser_ids     kriyA-"(lowcase ?prp)"_saMbanXI        "?kriyA" "?prep_saM")"crlf)
 (printout      ?*dbug* "(Rule-Rel-ids   prep_p3  kriyA-"?prp"_saMbanXI        "?kriyA" "?prep_saM")"crlf)
 )
 ; Ex : The game of life is played for winning . 
 ; Added by Mahalaxmi.
 ;------------------------------------------------------------------------------------------------------------------------
(defrule prepc_p
?f0<-(rel_name-sids ?prep ?kriyA ?prep_saM)
(test (eq (sub-string 1 (- (str-index "_" ?prep) 1) ?prep) "prepc"));this condition is to stop this rule firing in "conj_and" cases, ex. "Rama , Mohan , Sita and Geeta came to the city."
=>
(retract ?f0)
(if(neq(str-index "_" ?prep) FALSE) then
       (bind ?index(str-index "_"  ?prep))
(printout       ?*fp*   "(relation-parser_ids     kriyA-"(sub-string(+      ?index  1)20      ?prep)"_saMbanXI        "?kriyA" "?prep_saM")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids   prepc_p  kriyA-"(sub-string(+      ?index  1)20      ?prep)"_saMbanXI        "?kriyA" "?prep_saM")"crlf)
)
)
 ; Ex. Forces engaged in fighting after insurgents attacked .
;------------------------------------------------------------------------------------------------------------------------
(defrule rel
(rel_name-sids rel ?kriyA ?obj)
=>
(printout	?*fp*	"(relation-parser_ids     kriyA-object	"?kriyA"	"?obj")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	rel	kriyA-object	"	?kriyA"	"?obj")"crlf)	
)
 ; Ex. I saw the man who you love. I saw the man whose wife you love.
;------------------------------------------------------------------------------------------------------------------------
;(defrule rel+nsubj
;(rel_name-sids rel ?kri ?wh)
;(rel_name-sids nsubj ?mu_kri ?sub)
;(rel_name-sids rcmod ?x ?kri)
;=>
;(printout       ?*fp*   "(relation-parser_ids     muKya_vAkya-sApekRa_upavAkya  "?mu_kri" "?kri")"crlf)
;(printout       ?*dbug* "(Rule-Rel-ids  rel+nsubj	muKya_vAkya-sApekRa_upavAkya  "?mu_kri" "?kri")"crlf)
;)
 ; Ex. I saw the man who you love. I saw the man whose wife you love.
;------------------------------------------------------------------------------------------------------------------------
(defrule rel+nsubj+wh
(rel_name-sids rel ?kri ?wh)
(rel_name-sids nsubj ?kri ?sub)
(rel_name-sids rcmod ?x ?kri)
(parserid-word ?wh who|which|when|whom)
=>
(printout       ?*fp*   "(relation-parser_ids     viSeRya-jo_samAnAXikaraNa   "?x" "?wh")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  rel+nsubj+wh       viSeRya-jo_samAnAXikaraNa   "?x" "?wh")"crlf)
)
 ; Ex. I saw the man who you love. I saw the man whose wife you love.
;------------------------------------------------------------------------------------------------------------------------
(defrule csubj
(rel_name-sids csubj|csubjpass ?kriyA ?obj)
=>
(printout	?*fp*	"(relation-parser_ids     kriyA-vAkyakarma	"	?obj"	"?kriyA")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	csubj	kriyA-vAkyakarma	"	?obj"	"?kriyA")"crlf)	
)
 ; Ex. What she said makes sense. What she said is not true.  That she lied was suspected by everyone.
;------------------------------------------------------------------------------------------------------------------------
(defrule dep
(rel_name-sids dep ?governor ?dependent)
=>
(printout	?*fp*	"(relation-parser_ids     viSeRya-viSeRaNa	"?governor"	"?dependent")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	dep	viSeRya-viSeRaNa	"?governor"	"?dependent")"crlf)	
)
 ; Ex.  
;------------------------------------------------------------------------------------------------------------------------
(defrule num
(rel_name-sids num ?vi ?sa-vi)
=>
(printout	?*fp*	"(relation-parser_ids     viSeRya-saMKyA_viSeRaNa	"?vi"	"?sa-vi")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	num	viSeRya-saMKyA_viSeRaNa	"	?vi"	"?sa-vi")"crlf)	
)
 ; Ex. He eats 3 sheep. 
;------------------------------------------------------------------------------------------------------------------------
(defrule measure
(rel_name-sids measure ?vi ?vi_n)
=>
(printout       ?*fp*   "(relation-parser_ids     viSeRya-viSeRaNa "?vi"    "?vi_n")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids	measure	viSeRya-viSeRaNa "?vi"    "?vi_n")"crlf)
)
 ; Ex. The director is 65 years old .  
;------------------------------------------------------------------------------------------------------------------------
(defrule aux_to
(rel_name-sids aux  ?v ?to)
(parserid-word ?to to)
(not (rel_name-sids cop ?v ?))
=>
(printout       ?*fp*   "(relation-parser_ids     to-infinitive       "       ?to"    "?v")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  aux_to	to-infinitive       "       ?to"    "?v")"crlf)
)
 ; Ex. I want to go. Dick is important to fix the problem.
;------------------------------------------------------------------------------------------------------------------------
 (defrule aux_cop
 (rel_name-sids aux ?id ?to)
 (rel_name-sids cop ?id ?inf)
 (parserid-word ?to to)
 =>
	(printout       ?*fp*   "(relation-parser_ids     to-infinitive       "       ?to"    "?inf")"crlf)
	(printout       ?*dbug* "(Rule-Rel-ids  aux_cop  to-infinitive       "       ?to"    "?inf")"crlf)
 )
 ;Ex: They seem to resemble each other .
 ;Added by Shirisha Manju
 ;------------------------------------------------------------------------------------------------------------------------
(defrule xcomp
(rel_name-sids xcomp  ?kri ?kq_vi)
(not (rel_name-sids cop ?kq_vi ?)) ;Added by Shirisha Manju 
(not (parser_id-cat_coarse ?kq_vi adjective))
(not (kriyA-kriyArWa_kriyA_rel_has_been_dcd_by_xcomp+aux_rule ?kq_vi))
=>
(printout       ?*fp*   "(relation-parser_ids     kriyA-kqxanwa_karma	"	?kri"    "?kq_vi")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  xcomp	kriyA-kqxanwa_karma	"	?kri"	"?kq_vi")"crlf)
)
 ; Ex. I want to go. Dick is important to fix the problem.
 ;It struggled to force its body through that little hole . 
;------------------------------------------------------------------------------------------------------------------------
 (defrule xcomp+cop
 (rel_name-sids xcomp ?kri ?id)
 (rel_name-sids cop ?id ?kq_vi)
 =>
 	(printout	?*fp*   "(relation-parser_ids     kriyA-kqxanwa_karma   "       ?kri"    "?kq_vi")"crlf)
	(printout	?*dbug* "(Rule-Rel-ids  xcomp+cop   kriyA-kqxanwa_karma  "       ?kri"   "?kq_vi")"crlf)
	(printout       ?*fp*   "(relation-parser_ids     kriyA-object     "?kq_vi"        "?id")"crlf)
        (printout       ?*dbug* "(Rule-Rel-ids  xcomp+cop    kriyA-object    "?kq_vi"        "?id")"crlf)

 )
 ;Added by Shirisha Manju
 ;Ex : They seem to resemble each other .
 ;Ex : His aim was to become president .
;------------------------------------------------------------------------------------------------------------------------
 (defrule xcomp+aux
 (declare (salience 11))
 (rel_name-sids xcomp ?id ?kri)
 (rel_name-sids aux   ?kri ?to)
 (parserid-word ?to to)
 =>
        (printout       ?*fp*   "(relation-parser_ids     kriyA-kriyArWa_kriyA   "       ?id"    "?kri")"crlf)
        (printout       ?*dbug* "(Rule-Rel-ids  xcomp+aux   kriyA-kriyArWa_kriyA  "       ?id"   "?kri")"crlf)
 (assert (kriyA-kriyArWa_kriyA_rel_has_been_dcd_by_xcomp+aux_rule ?kri))
 )
 ;Added by Shirisha Manju
 ;I went there to buy a book . It struggled to force its body through that little hole .
;------------------------------------------------------------------------------------------------------------------------
(defrule ccomp_1
(rel_name-sids ccomp ?pre_kri ?kri)
(parserid-word  ?pre_kri made|make|makes|has|have|had|get|gets|got)
=>
(printout       ?*fp*   "(relation-parser_ids     kriyA-preraka_kriyA   "       ?kri"    "?pre_kri")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  ccomp_1   kriyA-preraka_kriyA  "       ?kri"   "?pre_kri")"crlf)
)
;Ex  I made him go. The teacher made the students stay after class. I got the car washed. 
;------------------------------------------------------------------------------------------------------------------------
 (defrule ccomp+nsubj
(rel_name-sids ccomp ?pre_kri ?kri)
(rel_name-sids nsubj ?kri ?pra_karwA)
(parserid-word  ?pre_kri made|make|makes|has|have|had)
=>
(printout       ?*fp*   "(relation-parser_ids     kriyA-prayojya_karwA   "       ?kri"    "?pra_karwA")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  ccomp+nsubj   kriyA-prayojya_karwA   "       ?kri"    "?pra_karwA")"crlf)
)
;Ex.  I made him go. The teacher made the students stay after class.
;------------------------------------------------------------------------------------------------------------------------
(defrule kri_sub_for_causative_verb
(verb_type-verb-causative_verb-tam causative ?kri $?)
(rel_name-sids  nsubj  ?kri  ?sub) 
=>
(printout       ?*fp*   "(relation-parser_ids	kriyA-subject  "?kri"    "?sub")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids	kri_sub_for_causative_verb	kriyA-subject	"?kri"    "?sub")"crlf)
)
;;Ex.  I made him go.The teacher made the students stay after class.
;------------------------------------------------------------------------------------------------------------------------
(defrule tmod
(rel_name-sids tmod  ?kri ?kAl)
=>
(printout       ?*fp*   "(relation-parser_ids     kriyA-kAlavAcI        "       ?kri"    "?kAl")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  tmod	kriyA-kAlavAcI        "       ?kri"    "?kAl")"crlf)
)
 ; Ex.I will go tomorrow.; Last night , I swam in the pool. Though, tmod relation between swam and night is written for this sentence in Stanford Parser's documents but the Parser does not show any such relation in this sentence. 
;------------------------------------------------------------------------------------------------------------------------
(defrule quantmod
(rel_name-sids quantmod  ?vi ?vi_ka)
=>
(printout       ?*fp*   "(relation-parser_ids     viSeRya-viSeRaka        "       ?vi"    "?vi_ka")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  quantmod   viSeRya-viSeRaka        "       ?vi"    "?vi_ka")"crlf) 
)
 ; Ex. About 200 people came to the party .
;------------------------------------------------------------------------------------------------------------------------
(defrule infmod 
(rel_name-sids infmod  ?saMjFA ?kqxanwa)
 =>
(printout       ?*fp*   "(relation-parser_ids     saMjFA-kqxanwa        "       ?saMjFA"    "?kqxanwa")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  infmod   saMjFA-kqxanwa        "       ?saMjFA"    "?kqxanwa")"crlf)
)
 ; Ex. But my efforts to win his heart have failed . 
 ;Added by Mahalaxmi.
;------------------------------------------------------------------------------------------------------------------------
 (defrule cc_rule
 (rel_name-sids cc ? P1)
 (parserid-word P1 But|And)
 =>
	(printout       ?*fp*   "(relation-parser_ids     wall_conjunction        P1)"crlf)
	(printout       ?*dbug* "(Rule-Rel-ids  cc_rule   wall_conjunction       P1)"crlf)
 )
 ; Ex. But my efforts to win his heart have failed . 
 ;Added by Shirisha Manju
;------------------------------------------------------------------------------------------------------------------------
 (defrule prep_nsubj_advmod_rule
 (declare (salience 100))
 (root-verbchunk-tam-parser_chunkids ? ? ? $?ids ?kriyA) 
 ?f0<-(rel_name-sids prep ?kriyA ?prep)
 ?f1<-(rel_name-sids advmod ?kriyA ?prep_saM)
 (parserid-word ?prep ?prp&~than)
 =>
 (printout      ?*fp*   "(relation-parser_ids     kriyA-"(lowcase ?prp)"_saMbanXI        "?kriyA" "?prep_saM")"crlf)
 (printout      ?*dbug* "(Rule-Rel-ids   prep_nsubj_advmod_rule  kriyA-"?prp"_saMbanXI        "?kriyA" "?prep_saM")"crlf)
 )
  ; Ex : Where are you coming from ?
  ; Added by Shirisha Manju
;------------------------------------------------------------------------------------------------------------------------
;rel+nsubj rel+nsubj+wh rules are not working properly. Check them.
