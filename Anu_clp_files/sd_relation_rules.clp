; Written by Sukhada

 (defglobal ?*fp* = open-file)
 (defglobal ?*dbug* = debug_fp)
 (defglobal ?*open-word* = open-word)
 (defglobal ?*open-orign* = open-orign)
 (defglobal ?*hmng_fp* = hmng_fp)
 (defglobal ?*list* = (create$ ))

 (deffunction never-called ()
 (assert (parserid-word))
 (assert (parserid-wordid))
 (assert (id-cat))
 (assert (propogation_rel_name-sids))
 (assert (rel_name-sids))
 (assert (root-verbchunk-tam-parser_chunkids))
 (assert (lwg_root-verbchunk-tam-chunkids))
 (assert (parser_id-cat))
 )
 

(deffunction string_to_integer (?parser_id); [Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))
;------------------------------------------------------------------------------------------------------------------------
(deffunction my_string_cmp (?str1 ?str2)
   (bind ?n1 (string-to-field (sub-string 2 (length ?str1) ?str1)))
   (bind ?n2 (string-to-field (sub-string 2 (length ?str2) ?str2)))
   (> ?n1 ?n2))
;==================================  Rules to modify the head =============================================
 ;Added by Shirisha Manju
 ;A dog and a cat are here.
 (defrule replace_head
 (declare (salience 9999))
 ?f<-(rel_name-sids ?rel   ?x ?y)
 (basic_rel_name-sids cc ?y ?and)
 =>
; (retract ?f)
 (assert (rel_name-sids ?rel  ?x  ?and))
 (printout       ?*dbug* "(rel_name-sids  "?rel" "?x"  "?and")"crlf)
 (printout       ?*dbug* "(rule-deleted_Relation-ids    replace_head  "?rel"  "?x"  "?and")"crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ; Are a dog and a cat here?
 (defrule replace_head_with_cop
 (declare (salience 9998))
 ?f<-(rel_name-sids ?rel&cop|nsubj   ?y ?x) ;Her mom was beautiful, talented and sweet. 
 (basic_rel_name-sids cc ?y ?and&and|or)
 (not (modified ?rel))
 =>
 (retract ?f)
 (assert (rel_name-sids ?rel  ?and  ?x))
 (printout       ?*dbug* "(rel_name-sids  "?rel "  "?x"  "?and")"crlf)
 (printout       ?*dbug* "(rule-deleted_Relation-ids    replace_head  "?rel "  "?x"  "?and")"crlf)
 (assert (modified ?rel))
 )
;------------------------------------------------------------------------------------------------------------------------
 (defrule assert_rel
 (declare (salience 9999))
 (rel_name-sids ?rel  ?y ?x) 
 (rel_name-sids conj:and|conj:or  ?x ?z) 
 =>
 (assert (rel_name-sids ?rel  ?y  ?z))
 (printout       ?*dbug* "(rule-asserted_Relation-ids    assert_rel  "?rel "  "?y"  "?z")"crlf)
 )
;Rama, Mohan, Hari and Sita ate bananas and apples.
;------------------------------------------------------------------------------------------------------------------------
 (defrule sub_samA_with_cop
 (declare (salience 9888))
 (rel_name-sids nsubj|nsubjpass ?x  ?sub)
 (basic_rel_name-sids cc ?x ?samA)
 (parserid-word ?samA and|or);We ran after him, but he escaped.  
 =>
 (printout      ?*fp*   "(prep_id-relation-parser_ids  -     subject-subject_samAnAXikaraNa   "?sub"  "?samA")"crlf)
 (printout      ?*dbug* "(prep_id-Rule-Rel-ids  -   sub_samA_with_cop     subject-subject_samAnAXikaraNa  "?sub"  "?samA")"crlf)
 )
 ; Ex. He is a devoted husband and a father. 
;------------------------------------------------------------------------------------------------------------------------
 (defrule expl
 (rel_name-sids expl ?kriyA ?dummy_sub)
 (parserid-word ?kriyA ?word&is|are|was|were|be);I went there to buy a book.
 (not (sub_for_kriyA ?kriyA))
 =>
 (printout	?*fp*	"(prep_id-relation-parser_ids  -     kriyA-dummy_subject	"?kriyA"	"?dummy_sub")"crlf)	
 (printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	expl	kriyA-dummy_subject	"?kriyA"	"?dummy_sub")"crlf)	
 )
 ; Ex. There is a ghost in the room.
;------------------------------------------------------------------------------------------------------------------------
 (defrule expl_not_dummy
 (rel_name-sids  expl ?kriyA ?dum&~P1)
 (parserid-word ?dum there)
 (rel_name-sids  nsubj  ?k ?s)
 =>
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-aXikaraNavAcI   "?k"        "?dum")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   expl_not_dummy    kriyA-aXikaraNavAcI     "?k"        "?dum")"crlf)
 )
 ; Ex. I went there to buy a book. ### I think dependency parse is wrong for this sentence.
;------------------------------------------------------------------------------------------------------------------------
(defrule nsubj_expl
(declare(salience 201))
(rel_name-sids expl ?kriyA ?kriyA_dummy_subject)
(rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
(not (rel_name-sids cop ?kriyA ?))
(not (rel_name-sids compound|nn ?sub ?));Added by Shirisha Manju Ex : You are lucky that there is no exam today .
(not (sub_for_kriyA ?sub))
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -    kriyA-dummy_subject       "?kriyA"        "?kriyA_dummy_subject")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nsubj_expl   kriyA-dummy_subject   "?kriyA"        "?kriyA_dummy_subject")"crlf)

(printout       ?*fp*   "(prep_id-relation-parser_ids  -    kriyA-aBihiwa       "?kriyA"        "?sub")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nsubj_expl   kriyA-aBihiwa   "?kriyA"        "?sub")"crlf)
 (assert (sub_for_kriyA ?sub ))
)
;Ex. There was a red mark on the door . 
;------------------------------------------------------------------------------------------------------------------------
 (defrule nsubj_expl_nn
 (declare(salience 202))
 (rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
 (rel_name-sids expl ?kriyA ?kriyA_dummy_subject)
 (rel_name-sids compound|nn  ?sub ?GNP_sub)
 (not (rel_name-sids cop ?kriyA ?))
 =>
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -    kriyA-dummy_subject       "?kriyA"        "?kriyA_dummy_subject")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nsubj_expl   kriyA-dummy_subject   "?kriyA"     "?kriyA_dummy_subject")"crlf)

 (printout       ?*fp*   "(prep_id-relation-parser_ids  -    kriyA-aBihiwa       "?kriyA"        "?GNP_sub")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nsubj_expl   kriyA-aBihiwa   "?kriyA"        "?GNP_sub")"crlf)

 (printout       ?*fp*   "(prep_id-relation-parser_ids  -    kriyA-kAlavAcI       "?kriyA"        "?sub")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nsubj_expl   kriyA-kAlavAcI   "?kriyA"        "?sub")"crlf)
  (assert (sub_for_kriyA ?kriyA))
 )
 ;Added by Shirisha Manju
 ;Ex : You are lucky that there is no exam today .
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule kriyA_sub_rule
 (declare (salience 190))
 (rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
 (parser_id-cat_coarse ?kriyA verb);
 (not (rel_name-sids expl ?kriyA ?)) ;There is always a room for improvement.
 (not (sub_for_kriyA ?kriyA ?sub)) 
 (not (found_kriyA-sub_rel ?kriyA))
 (not (sub-sub_samAnAXikaraNa_decided ?kriyA))
 (not (got_kri-sub_rel ?kriyA))
 (not (got_kriyA-karwA ?kriyA))
 (not (got_kriyA-karwA_rel ?sub))
 (not (got_kriyA-subject ?kriyA))
 (not (got_samAnAXikaraNa_rel  ?kriyA)) ;Rama must be educated.
 =>
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-subject    "?kriyA"        "?sub")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kriyA_sub_rule   kriyA-subject   "?kriyA"        "?sub")"crlf)
 (assert (sub_for_kriyA ?sub))
 )
 ;Added by Shirisha Manju
 ; The boy has a computer . The train left on time .
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule sub_samA_be
 (declare (salience 300))
 (rel_name-sids nsubjpass ?samA ?sub)
 (rel_name-sids auxpass ?samA ?b)
 (parserid-word ?b be)
 (root-verbchunk-tam-parser_chunkids ? ? ? $? ?b);Anne told me I would almost certainly be hired.
 =>
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     subject-subject_samAnAXikaraNa    "?sub"        "?samA")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   sub_samA_be   subject-subject_samAnAXikaraNa    "?sub"        "?samA")"crlf)
 (assert (got_samAnAXikaraNa_rel  ?samA))
 )
 ; Rama must be educated.
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule kri_subj_be
 (declare (salience 300))
 (rel_name-sids nsubjpass ?samA ?sub)
 (rel_name-sids auxpass ?samA ?b)
 (parserid-word ?b be)
 (root-verbchunk-tam-parser_chunkids ? ? ? $? ?b) ;Anne told me I would almost certainly be hired.
 =>
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-subject    "?b"        "?sub")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kri_subj_be  kriyA-subject    "?b"        "?sub")"crlf)
 )
 ; Rama must be educated.
 ;------------------------------------------------------------------------------------------------------------------------

 (defrule kri_shared_sub
 (rel_name-sids xsubj ?kri ?sub)
 =>
 (assert (got_shared_subject ?kri))
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-shared_subject    "?kri"        "?sub")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kri_shared_sub  kriyA-shared_subject   "?kri"        "?sub")"crlf)
 )
 ;Ex : Tom likes to eat fish. 
 ;------------------------------------------------------------------------------------------------------------------------

 (defrule kriyA_sub_rule1
 (rel_name-sids xcomp ?kriyA ?kri)
 (rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
 (not (sub_for_kriyA ?kri))
 (not (got_kriyA-karwA_rel ?kri))
 (not (got_kriyA-subject ?kriyA))
 (not (got_shared_subject ?kri))
 =>
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-subject    "?kri"        "?sub")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   kriyA_sub_rule1   kriyA-subject   "?kri"        "?sub")"crlf)
 (assert (sub_for_kriyA ?kri))
 )
 ;Added by Shirisha Manju
 ;Ex : Broken windows need to be replaced. 
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule nsubj_conj
 (declare (salience 100))
 (rel_name-sids conj:and|conj:or|conj:but  ?kriyA ?kriyA1)
 (rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
 (parser_id-cat_coarse ?kriyA1 verb);The City Palace was built by Maharaja Jai Singh II and is a synthesis of Mughal and Rajasthani architecture.
 (not (rel_name-sids cop  ?kriyA ?v))
 (not (rel_name-sids nsubj  ?kriyA1 ?s))
 =>
 (assert (found_kriyA-sub_rel ?kriyA1))
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-subject    "?kriyA1"        "?sub")"crlf)
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-subject    "?kriyA"        "?sub")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nsubj_conj    kriyA-subject      "?kriyA1"        "?sub")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nsubj_conj    kriyA-subject      "?kriyA"        "?sub")"crlf)
 )
 ; Ex. He may drink milk or eat apples .
 ;------------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (07-09-11) Suggested by Sukhada
 (defrule nsubj_conj_1
 (declare (salience 100))
 (rel_name-sids conj:and|conj:or|conj:but  ?kriyA ?kriyA1)
 (rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
 (rel_name-sids cop ?kriyA1 ?s1)
 (not (rel_name-sids cop  ?kriyA ?v))
 (not (rel_name-sids nsubj  ?kriyA1 ?s))
 =>
 (assert (found_kriyA-sub_rel ?s1))
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-subject    "?s1"        "?sub")"crlf)
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-subject    "?kriyA"        "?sub")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nsubj_conj    kriyA-subject      "?s1"        "?sub")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nsubj_conj    kriyA-subject      "?kriyA"        "?sub")"crlf)
 )
 ; Ex. The City Palace was built by Maharaja Jai Singh II and is a synthesis of Mughal and Rajasthani architecture.
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule dobj_as_well_as
 (declare (salience 900))
 (rel_name-sids conj:and|conj:or  ?ob ?ob1)
 (rel_name-sids dobj ?kriyA ?ob)
 (parserid-word ?id well)
 (test (and (> (string_to_integer ?id) (string_to_integer ?ob)) (< (string_to_integer ?id) (string_to_integer ?ob1))))
 =>
 (assert (found_kriyA-obj_rel ?kriyA))
 (printout       ?*fp*   "(prep_id-relation-parser_ids   -   kriyA-object    "?kriyA"        "?id")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids   -  dobj_as_well_as  kriyA-object    "?kriyA"        "?id")"crlf)
 )
 ; Ex. I like fruits as well as nuts.  
 ;------------------------------------------------------------------------------------------------------------------------
 ;SD gives multiple conj_and relations with different ids for same 'AND', So handling them in one single list.
 (defrule decide_conj_rel
 (declare (salience -900))
 ?f<-(rel_name-sids ?conj&conj:and|conj:or   ?x ?y)
 ?f1<-(rel_name-sids ?conj&conj:and|conj:or  ?x $?y1)
 (test (eq (member$ ?y ?y1) FALSE))
 =>
   (bind ?plist (create$ ))
   (bind ?plist (create$ ?plist ?y))
   (assert (rel_name-sids ?conj ?x (sort my_string_cmp $?y1  ?plist)))
   (retract ?f ?f1)
 )
 ;Ex. Ulsoor lake is an ideal place for sightseeing, boating and shopping.
 ;------------------------------------------------------------------------------------------------------------------------
 ;printing conjunction-components.
 ;Ulsoor lake is an ideal place for sightseeing, boating and shopping.
 (defrule conj-comp-rule
 (declare (salience -1000))
 (rel_name-sids conj:and|conj:or  ?x $?ids  ?y)
 (parserid-word ?id and|or|well)
 (test (and (> (string_to_integer ?id) (string_to_integer ?x)) (< (string_to_integer ?id) (string_to_integer ?y))))
 =>
     (assert (conjunction-components   ?id   ?x  (implode$ $?ids)   ?y))
     (printout ?*fp* "(conjunction-components  "?id"   "?x"  "(implode$ $?ids)"   "?y")"crlf)
     (printout ?*dbug* "(conjunction-components    conj-comp-rule  "?id"   "?x"  "(implode$ $?ids)"   "?y")"crlf)
 )
 ; Ex. Your house and garden are very attractive.
 ;------------------------------------------------------------------------------------------------------------------------
(defrule agent
(declare(salience 200))
(rel_name-sids agent ?kriyA ?by_sub)
(basic_rel_name-sids prep ?kriyA ?prep)
(parserid-word ?prep  by);Added by manju (07-03-11)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  "?prep"     kriyA-by_saMbanXI    "?kriyA"        "?by_sub")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  "?prep"         agent     kriyA-by_saMbanXI    "?kriyA"    "?by_sub")"crlf)
)
 ; Ex. Dole was defeated by Clinton. That she lied was suspected by everyone . 
 ;------------------------------------------------------------------------------------------------------------------------

(defrule nsubjpass/csubjpass
(declare(salience 200))
(rel_name-sids agent ?kriyA ?by_sub)
(rel_name-sids nsubjpass|csubjpass ?kriyA ?sub)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -     kriyA-subject	"?kriyA"	"?sub")"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	nsubjpass/csubjpass	kriyA-subject	"?kriyA"	"?sub")"crlf)	
)
 ; Ex. Dole was defeated by Clinton. That she lied was suspected by everyone . 
;------------------------------------------------------------------------------------------------------------------------
(defrule nn
(rel_name-sids compound|nn  ?n1 ?n2)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     samAsa_viSeRya-samAsa_viSeRaNa   "?n1"        "?n2")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nn     samAsa_viSeRya-samAsa_viSeRaNa   "?n1"        "?n2   ")"crlf)
)
 ; Ex. The income tax proposal was rejected.
;------------------------------------------------------------------------------------------------------------------------
;Removed 'not' conditions as the rule is not working for the given eg. sentence. Also reduced salience as rule is default .
;Modified by Roja. Suggested by Sukhada 09-11-13.
;He concluded from their remarks that they were not in favour of the plan. 
(defrule ccomp
(declare(salience -200)) 
(rel_name-sids ccomp ?kriyA ?vAkyakarma)
(not (ccomp_mapped_to_preraka_kriyA ?kriyA))
;(not (rel_name-sids advmod ?vAkyakarma ?)) ;--->Added by Mahalaxmi.
;(not (rel_name-sids aux ?vAkyakarma ?)) ;--->Added by Mahalaxmi.
;(not (rel_name-sids nsubj ?vAkyakarma ?)) ;--->Added by Mahalaxmi.
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-vAkyakarma       "?kriyA"        "?vAkyakarma")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   ccomp	kriyA-vAkyakarma       "?kriyA"        "?vAkyakarma")"crlf)
)
 ; Ex.  He says that you like to swim .
;------------------------------------------------------------------------------------------------------------------------
(defrule acomp+nsubj
(rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
(rel_name-sids xcomp|acomp ?kriyA ?samA)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -     subject-subject_samAnAXikaraNa	"?sub"	"?samA")"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	acomp+nsubj	subject-subject_samAnAXikaraNa	"?sub"	"?samA")"crlf)	
)
 ; Ex. She looks beautiful. All the prisoners were set free. 
;------------------------------------------------------------------------------------------------------------------------
;Commenting this rules as Stanford parser removed 'attr' in latest version 3.3.1
;(defrule attr+nsubj
;(rel_name-sids nsubj ?kriyA ?samA)
;(rel_name-sids attr ?kriyA ?sub)
;=>
;(printout	?*fp*	"(prep_id-relation-parser_ids  -     subject-subject_samAnAXikaraNa	"?sub"	"?samA")"crlf)
;(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	attr+nsubj	subject-subject_samAnAXikaraNa	"?sub"	"?samA")"crlf)	
;)
; ; Ex. What is that?
;;------------------------------------------------------------------------------------------------------------------------
;Commenting this rules as Stanford parser removed 'attr' in latest version 3.3.1
;(defrule attr+aux
;(rel_name-sids cop|aux ?sam ?k)
;(rel_name-sids attr ?sam ?sub)
;=>
;(printout       ?*fp*   "(prep_id-relation-parser_ids  -     subject-subject_samAnAXikaraNa        "?sub"  "?sam")"crlf)
;(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-subject        "?k"  "?sub")"crlf)
;(printout       ?*dbug*   "(prep_id-Rule-Rel-ids  -   attr+aux     kriyA-subject        "?k"  "?sub")"crlf)
;(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   attr+aux      subject-subject_samAnAXikaraNa  "?sub"  "?sam")"crlf)
;)
 ; Ex. Who is afraid of the big bad wolf? 
;------------------------------------------------------------------------------------------------------------------------
(defrule cop+nsubj
(declare(salience 100))
(rel_name-sids nsubj|nsubjpass ?samAnAXikaraNa  ?sub)
(rel_name-sids cop  ?samAnAXikaraNa ?kriyA)
(parserid-word ?sub  ?word) ; It is not a good manner to eat alone. 
;(not (numberp ?word))
(test (neq (numberp ?word) TRUE)) ;The length of an object reported after measurement to be 287.5 cm has four significant figures the digits 287 are certain while the digit 5 is uncertain. 
(not (sub_id_decided ?sub))
=>
(if (or (eq (lowcase ?word)  it) (eq (lowcase ?word) there)) then
    (printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-dummy_subject    "?kriyA"        "?sub")"crlf)
    (printout      ?*dbug* "(prep_id-Rule-Rel-ids  -   cop+nsubj       kriyA-dummy_subject   "?kriyA"        "?sub")"crlf)
else
    (printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-subject    "?kriyA"        "?sub")"crlf)
    (printout      ?*dbug* "(prep_id-Rule-Rel-ids  -   cop+nsubj       kriyA-subject   "?kriyA"        "?sub")"crlf)
))
 ; Ex. Bill is big.  Bill is big and honest .
;------------------------------------------------------------------------------------------------------------------------
;'attr' is removed in version 3.3.1. To handle WHNP elements added if else loop.
(defrule cop+nsubj_2
(declare (salience 1000))
(rel_name-sids nsubj|nsubjpass ?samA  ?sub)
(rel_name-sids cop  ?samA ?kriyA)
(parserid-word ?samA ?word) ; What is the company's financial state?  Who is Rama?
(test (neq (numberp ?word) TRUE)) 
=>
(if (or (eq (lowcase ?word)  who) (eq (lowcase ?word) what)) then
    (printout      ?*fp*   "(prep_id-relation-parser_ids  -     subject-subject_samAnAXikaraNa   "?samA"  "?sub")"crlf)
    (printout      ?*dbug* "(prep_id-Rule-Rel-ids  -   cop+nsubj_2    subject-subject_samAnAXikaraNa  "?samA"  "?sub")"crlf)
 else
    (printout      ?*fp*   "(prep_id-relation-parser_ids  -     subject-subject_samAnAXikaraNa   "?sub"  "?samA")"crlf)
    (printout      ?*dbug* "(prep_id-Rule-Rel-ids  -   cop+nsubj_2    subject-subject_samAnAXikaraNa  "?sub"  "?samA")"crlf)
))
; ; Ex. Bill is big.
;------------------------------------------------------------------------------------------------------------------------
 (defrule cop+nsubj_for_it
 (declare(salience 101))
 ?f0<-(parserid-word ?sub It)
 (rel_name-sids nsubj|nsubjpass ?samAnAXikaraNa  ?sub)
 (rel_name-sids cop  ?samAnAXikaraNa ?kriyA)
 (not (rel_name-sids vmod ?samAnAXikaraNa ?)) ;Modified infmod to vmod as new version of Stanford 3.3.1
 =>
 (retract ?f0)
 (printout      ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-dummy_subject    "?kriyA"        "?sub")"crlf)
 (printout      ?*dbug* "(prep_id-Rule-Rel-ids  -   cop+nsubj_for_it       kriyA-dummy_subject   "?kriyA"        "?sub")"crlf)
 (printout      ?*fp*   "(prep_id-relation-parser_ids  -     subject-subject_samAnAXikaraNa   "?sub"  "?samAnAXikaraNa")"crlf)
 (printout      ?*dbug* "(prep_id-Rule-Rel-ids  -   cop+nsubj_for_it     subject-subject_samAnAXikaraNa  "?sub"  "?samAnAXikaraNa")"crlf)
 (assert (sub_id_decided ?sub))
 )
 ;Added by Shirisha Manju
 ;It is likely they will come .
;------------------------------------------------------------------------------------------------------------------------
(defrule dobj
(rel_name-sids dobj ?kriyA ?obj)
(not (found_kriyA-obj_rel ?kriyA))
(not  (parserid-word ?obj some))
(not (got_object_rel ?kriyA))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -     kriyA-object	"?kriyA"	"?obj")"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	dobj	kriyA-object	"?kriyA"	"?obj")"crlf)	
)
 ; Ex. Clinto defeated Dole.  
 ; Modified by Manju (23-11-09) -- added not condition Ex: I know some of the people .
;------------------------------------------------------------------------------------------------------------------------
(defrule nsubj+xcomp
(rel_name-sids nsubj ?obj_s ?obj)
(rel_name-sids xcomp ?kriyA ?obj_s)
(parser_id-cat_coarse ?obj_s adjective|noun)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     object-object_samAnAXikaraNa     "?obj"        "?obj_s")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nsubj+xcomp     object-object_samAnAXikaraNa     "?obj"        "?obj_s")"crlf)
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-object     "?kriyA"        "?obj")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nsubj+xcomp     kriyA-object     "?kriyA"        "?obj")"crlf)
)
; Ex.  I consider him intelligent. She calls me her friend.
;------------------------------------------------------------------------------------------------------------------------ 


(defrule nsubj_anaBihiwa
(declare (salience 290))
(rel_name-sids nsubj ?k ?s)
(rel_name-sids aux ?k ?to)
(parserid-word ?to to);I knew who would come to the party.
=>
(assert (got_kriyA-karwA_rel ?s))
(assert (got_kriyA-karwA_rel ?k))
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-anaBihiwa_subject     "?k"      "?s")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nsubj_anaBihiwa     kriyA-anaBihiwa_subject     "?k"    "?s")"crlf)
)
;I want the students to go.
;------------------------------------------------------------------------------------------------------------------------

(defrule nsubj+xcomp_1
(declare (salience 290))
(rel_name-sids nsubj ?k ?s)
(rel_name-sids ccomp ?k1 ?k)   ;
(rel_name-sids aux ?k ?to)
;(parserid-word ?to to);I knew who would come to the party.
=>
(assert (got_kriyA-vAkyakarma ?k1 ?k))
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-vAkyakarma  "?k1"      "?k")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nsubj+xcomp_1     kriyA-vAkyakarma    "?k1"   "?k")"crlf)
)
;I want the students to go.
;------------------------------------------------------------------------------------------------------------------------



;(defrule nsubj+xcomp_1
;(rel_name-sids nsubj ?obj_s ?obj)
;(rel_name-sids xcomp|ccomp ?kriyA ?obj_s)
;(rel_name-sids aux ?obj_s ?to)
;(parserid-word ?to to);I knew who would come to the party.
;(parser_id-cat_coarse ?obj_s verb)
;=>
;(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-karwA     "?kriyA"      "?obj")"crlf)
;(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nsubj+xcomp_1     kriyA-karwA     "?kriyA"    "?obj")"crlf)
;;(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-object     "?kriyA"        "?obj")"crlf)
;;(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   nsubj+xcomp_1     kriyA-object     "?kriyA"        "?obj")"crlf)
;)
;; Added by Shirisha Manju
; Ex. The instructor persuaded Mary to take that course . The parse is wrong for this sentence. 
; Modified by Sukhada for Help me finish translating this document. Help me to finish translating this document. I knew who would come to the party.
;------------------------------------------------------------------------------------------------------------------------
 
(defrule iobj
(rel_name-sids iobj ?kriyA ?obj_2)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -     kriyA-object_1	"?kriyA"	"?obj_2")"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  -  iobj      kriyA-object_1	"?kriyA"	"?obj_2")"crlf)	
)
 ;Ex. She gave me a raise.
;------------------------------------------------------------------------------------------------------------------------

(defrule dobj+iobj
(declare(salience 100))
?f0<-(rel_name-sids dobj ?kriyA ?obj)
(rel_name-sids iobj ?kriyA ?obj_2)
=>
(retract ?f0)
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-object_2     "?kriyA"        "?obj")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -       dobj+iobj       kriyA-object_2  "?kriyA"        "?obj")"crlf)
)
 ;Ex. She gave me a raise.
;------------------------------------------------------------------------------------------------------------------------


(defrule neg_1
(rel_name-sids neg ?kriyA ?not)
(not (rel_name-sids cop ?kriyA ?)) ;Added by Shirisha Manju Ex: It is not a good manner to eat alone .
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -     kriyA-kriyA_niReXaka	"?kriyA"	"?not")"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	neg_1	kriyA-kriyA_niReXaka	"?kriyA"	"?not")"crlf)	
)
 ; Ex. Bill does not drive.
;------------------------------------------------------------------------------------------------------------------------
 (defrule neg_cop
 (rel_name-sids cop ?v ?kriyA)
 (rel_name-sids neg ?v ?not)
 =>
 	(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-kriyA_niReXaka     "?kriyA"        "?not")"crlf)
	(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   neg_cop   kriyA-kriyA_niReXaka    "?kriyA"        "?not")"crlf)
 )
 ;Added by Shirisha Manju
 ; Ex: It is not a good manner to eat alone.
;------------------------------------------------------------------------------------------------------------------------
 (defrule poss
 (rel_name-sids nmod:poss ?RaRTI_viSeRya ?RaRTI_viSeRaNa)
 (not (got_viSeRya-RaRTI_viSeRaNa ?RaRTI_viSeRaNa))
 =>
 (printout   ?*fp*   "(prep_id-relation-parser_ids  -     viSeRya-RaRTI_viSeRaNa   "?RaRTI_viSeRya"        "?RaRTI_viSeRaNa")"crlf)
 (printout   ?*dbug* "(prep_id-Rule-Rel-ids  -   poss    viSeRya-RaRTI_viSeRaNa  "?RaRTI_viSeRya"        "?RaRTI_viSeRaNa")"crlf)
 )
 ; Ex.  He is John's cousin. Sam is my brother.
;------------------------------------------------------------------------------------------------------------------------
(defrule prt
(rel_name-sids compound:prt ?kriyA ?upasarga)
(not (got_preposition_obj_for_this ?upasarga))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -     kriyA-upasarga	"?kriyA"	"?upasarga")"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	prt	kriyA-upasarga	"?kriyA"	"?upasarga")"crlf)	
)
 ; Ex. They shut down the station.
;------------------------------------------------------------------------------------------------------------------------
(defrule purpcl
(rel_name-sids  purpcl ?kriyA ?kriyArWa_kriyA)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -     kriyA-kriyArWa_kriyA	"?kriyA"	"?kriyArWa_kriyA")"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	purpcl	kriyA-kriyArWa_kriyA	"?kriyA"	"?kriyArWa_kriyA")"crlf)	
)
 ; Ex. He talked to him in order to secure the account.
;------------------------------------------------------------------------------------------------------------------------
(defrule advcl
(rel_name-sids  advcl ?kri ?vAkya_vi)
(root-verbchunk-tam-chunkids ?r $?v ?vAkya_vi  $?t)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-vAkya_viSeRaNa  	"?kri"	"?vAkya_vi")"crlf)
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	advcl	kriyA-vAkya_viSeRaNa   	"?kri"	"?vAkya_vi")"crlf)
)
 ; Ex. The accident happened as the night was falling. 
;------------------------------------------------------------------------------------------------------------------------
(defrule advmod
(rel_name-sids advmod ?kri ?kri_viSeRaNa) 
(parser_id-cat_coarse ?kri verb) ;He is more intelligent than John.
(not  (got_viSeRya-jo_samAnAXikaraNa  ?kri_viSeRaNa))
(not (got_kriyA-aXikaraNavAcI_rel_for ?kri_viSeRaNa))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -     kriyA-kriyA_viSeRaNa	"?kri"	"?kri_viSeRaNa")"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	advmod	kriyA-kriyA_viSeRaNa	"?kri"	"?kri_viSeRaNa")"crlf)	
)
 ; Ex. I like genetically modified food.  He runs fast.  When you take the scissors, remember to put them back. When the dollar is in a fall, even central banks can not stop it.
;------------------------------------------------------------------------------------------------------------------------
(defrule advmod_1
(rel_name-sids  advmod   ?viSeRya ?viSeRaka)
(parser_id-cat_coarse ?viSeRya ~verb) 
(parser_id-cat_coarse ?viSeRaka ~verb) 
(not (got_kriyA_viSeRaNa_viSeRaka ?viSeRya)) ;They lived very simply.
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     viSeRya-viSeRaka     "?viSeRya"        "?viSeRaka")"crlf)      
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   advmod_1    viSeRya-viSeRaka    "?viSeRya"        "?viSeRaka")"crlf)
)
;Added by Shirisha Manju  Ex: She is very careful about her work . She is apparently an excellent pianist .
;------------------------------------------------------------------------------------------------------------------------
;PARSER FAILS FOR THIS SENTENCE.
;(defrule advmod_acomp
;(rel_name-sids advmod ?kriyA ?kriyA_viSeRaNa)
;(rel_name-sids acomp ? ?kriyA)
;=>
;(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-kriyA_viSeRaNa     "?kriyA"        "?kriyA_viSeRaNa")"crlf)      
;(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   advmod_acomp  kriyA-kriyA_viSeRaNa    "?kriyA"        "?kriyA_viSeRaNa")"crlf)      
;)
; ; Ex : I guess you are working very hard . ???	PARSER FAILS FOR THIS SENTENCE.
 ; Added by Shirisha Manju
;------------------------------------------------------------------------------------------------------------------------
(defrule advmod1
(declare (salience 100))
(rel_name-sids advmod ?kriyA_viSeRaNa  ?kriyA_viSeRaNa_viSeRaka)
(rel_name-sids advmod ?kriyA ?kriyA_viSeRaNa)
(not (rel_name-sids compound:prt ?kriyA ?))
=>
(assert (got_kriyA_viSeRaNa_viSeRaka ?kriyA_viSeRaNa))
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka     "?kriyA_viSeRaNa"        "?kriyA_viSeRaNa_viSeRaka")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   advmod1  kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka    "?kriyA_viSeRaNa"        "?kriyA_viSeRaNa_viSeRaka")"crlf)
)
 ;Ex. She works very carefully.
;------------------------------------------------------------------------------------------------------------------------
 (defrule advmd
 (declare (salience 100))
 (rel_name-sids advmod ?kriyA ?lupwa_p)
 (parser_id-cat_coarse ?kriyA verb)
 (parserid-word  ?lupwa_p  again|later|here|there|somewhere|anywhere|everywhere|now|outside|longer|alone|next|upstairs|downstairs|upwards|downwards|above|down)
 =>
 (assert (got_kriyA-aXikaraNavAcI_rel_for ?lupwa_p))
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-aXikaraNavAcI     "?kriyA"        "?lupwa_p")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   advmd  kriyA-aXikaraNavAcI    "?kriyA"        "?lupwa_p")"crlf)  
 )
 ;Ex. By going there you can earn more money. I am here.
;------------------------------------------------------------------------------------------------------------------------
 (defrule advmod4
 (rel_name-sids amod ?v ?vn)
 (rel_name-sids advmod ?vn ?vk)
 (parserid-word ?vn ?word&~much&~many)
 =>
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -      viSeRaNa-viSeRaka  "?vn"   "?vk")" crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   advmod4   viSeRaNa-viSeRaka  "?vn"   "?vk")" crlf)
 )
 ;We have very different ideas about disciplining children . 
 ; Added by Shirisha Manju
;------------------------------------------------------------------------------------------------------------------------
 (defrule det
 (rel_name-sids det|predet|preconj|cc:preconj|det:predet  ?vi ?det_vi)
 =>
 (printout	?*fp*	"(prep_id-relation-parser_ids  -     viSeRya-det_viSeRaNa	"?vi"	"?det_vi")"crlf)	
 (printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	det	viSeRya-det_viSeRaNa	"?vi"	"?det_vi")"crlf)
 )
 ; Ex. The baby is cute. 
;------------------------------------------------------------------------------------------------------------------------
 (defrule predet
 (rel_name-sids predettt ?vi ?det_vi);There are some generation problems when this relation comes therefore predet is made predettt to stop firing this rule. Once the generation prob is solved this can be replaced.
 =>
 (printout      ?*fp*   "(prep_id-relation-parser_ids  -     viSeRya-predet_viSeRaNa       "?vi"   "?det_vi")"crlf)
 (printout      ?*dbug* "(prep_id-Rule-Rel-ids  -       predet      viSeRya-predet_viSeRaNa    "?vi"   "?det_vi")"crlf)      
 )
 ; Ex. I found both these articles to be very helpful.
;------------------------------------------------------------------------------------------------------------------------
(defrule amod
(rel_name-sids amod ?viSeRya ?viSeRaNa)
(not (got_viSeRaNa-viSeRaka_rel ?viSeRaNa))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -     viSeRya-viSeRaNa	"?viSeRya"	"?viSeRaNa")"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	amod	viSeRya-viSeRaNa	"?viSeRya"	"?viSeRaNa")"crlf)	
)
 ; Ex. Sam eats red meat. There are many tissues of fat in our body . 
;------------------------------------------------------------------------------------------------------------------------
(defrule amod_1
(declare (salience 10))
(rel_name-sids amod ?viSeRya ?viSeRaNa)
(parserid-word ?viSeRaNa ?word&much|many)
(parser_id-cat_coarse ?viSeRya ?c&~noun)
=>
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     viSeRaNa-viSeRaka "?viSeRya"      "?viSeRaNa")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   amod_1    viSeRaNa-viSeRaka     "?viSeRya"      "?viSeRaNa")"crlf)
(assert (got_viSeRaNa-viSeRaka_rel ?viSeRaNa))
)
; Added by Shirisha Manju  Ex: How much more spilled ? 
;------------------------------------------------------------------------------------------------------------------------
(defrule vmod
(rel_name-sids vmod ?viSeRya ?kqxanwa_vi) ;Modified partmod to vmod as new version of Stanford 3.3.1
;(not (rel_name-sids aux ?kqxanwa_vi ?to)) ;But my efforts to win his heart have failed.Commented this for new version 3.4 
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -     viSeRya-kqxanwa_viSeRaNa	"?viSeRya"	"?kqxanwa_vi")"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	vmod	viSeRya-kqxanwa_viSeRaNa	"?viSeRya"	"?kqxanwa_vi")"crlf)	
)
 ; Ex. He talked to him in order to secure the account. Truffles picked during the spring are tasty. 
;------------------------------------------------------------------------------------------------------------------------
(defrule mark
(rel_name-sids mark ?kri ?conj)
(not (got_kriyA-vAkya_viBakwi_for ?conj))
(not (parserid-word ?conj to))
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-vAkya_viBakwi        "?kri"      "?conj")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   mark    kriyA-vAkya_viBakwi        "?kri"      "?conj")"crlf)
)

 ; Ex. The accident happened as the night was falling .
;------------------------------------------------------------------------------------------------------------------------
(defrule mark+cop
(declare (salience 200))
(rel_name-sids mark ?x  ?conj)
(rel_name-sids cop ?x ?kriyA) 
(not (parserid-word ?conj to))
=>
(assert (got_kriyA-vAkya_viBakwi_for ?conj))
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-vAkya_viBakwi        "?kriyA"      "?conj")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   mark+cop    kriyA-vAkya_viBakwi        "?kriyA"      "?conj")"crlf)
)
 ; Ex. He disputed that our program was superior.
;------------------------------------------------------------------------------------------------------------------------
(defrule conj+cc
(declare (salience 200))
(rel_name-sids ?cnj ?kri1 ?kri2)
(test (eq (sub-string 1 5 (implode$ (create$ ?cnj))) "conj:"))
(rel_name-sids cc ?kri1  ?conj)
(parser_id-cat_coarse ?kri1 verb)
(parser_id-cat_coarse ?kri2 verb)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     vAkya-vAkya_saMbanXI          "?kri1"      "?kri2")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   conj+cc    vAkya-vAkya_saMbanXI          "?kri1"      "?kri2")"crlf)
)
 ; Ex.We ran after him, but he escaped. 
;------------------------------------------------------------------------------------------------------------------------
(defrule conj_but
(rel_name-sids ?cnj ?kriyA ?kri)
(test (eq (sub-string 1 5 (implode$ (create$ ?cnj))) "conj:"))
(parserid-word ?conj_id but)
(test (and (> (string_to_integer ?conj_id) (string_to_integer ?kriyA)) (< (string_to_integer ?conj_id) (string_to_integer ?kri))))
(not (rel_name-sids conj:and ?kriyA ?kri))
(not (rel_name-sids conj:or ?kri ?))
(not (found_kriyA-sub_rel ?kri))
(not (rel_name-sids nsubj ?kri ?x))
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-vAkya_viBakwi        "?kri"      "?conj_id")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   conj_but   kriyA-vAkya_viBakwi        "?kri"      "?conj_id")"crlf)
)
 ; Ex. Petu ran fast but Betu could not run fast. 
;------------------------------------------------------------------------------------------------------------------------
(defrule vmod+nsubj+cop
(declare(salience 205))
(rel_name-sids vmod ?sub ?kqxanwa_viSeRaNa);Modified partmod to vmod as new version of Stanford 3.3.1
(rel_name-sids nsubj ?sub_samA ?sub)
?f0<-(rel_name-sids cop ?sub_samA ?kriyA)
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids  -     subject-subject_samAnAXikaraNa	"?sub"	"?sub_samA")"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	vmod+nsubj+cop	subject-subject_samAnAXikaraNa	"?sub"	"?sub_samA")"crlf)	
(printout	?*fp*	"(prep_id-relation-parser_ids  -     kriyA-subject	"?kriyA"	"?sub")"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	vmod+nsubj+cop	kriyA-subject	"?kriyA"	"?sub")"crlf)	
)
 ; Ex. Truffles picked during the spring are tasty .  
;------------------------------------------------------------------------------------------------------------------------
(defrule neg
(declare(salience 1000))
(rel_name-sids neg ?kriyA ?not)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -     niReXawmaka_vAkya)"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	neg	niReXawmaka_vAkya)"crlf)	
)
 ; Ex. Bill does not drive.
;------------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;Ex: John is more intelligent than Tom.
 ;------------------------------------------------------------------------------------------------------------------------
;Modifed by Sukhada on 29-10-11
(defrule prep+than+pobj
(declare(salience 1000))
(basic_rel_name-sids prep  ?m-up ?than)
(basic_rel_name-sids pobj ?than ?t-up)
?f0<-(parserid-word ?than than)
(parserid-word ?mr ?more)
(test (eq (- (string_to_integer ?m-up) 1) (string_to_integer ?mr)))
=>
(if (eq ?more more) then
(retract ?f0)
(printout     ?*fp*   "(prep_id-relation-parser_ids   "?than"     more_upameya-than_upamAna       "?m-up"  "?t-up")"crlf)
(printout     ?*dbug* "(prep_id-Rule-Rel-ids  "?than"   prep+than+pobj    more_upameya-than_upamAna  "?m-up"  "?t-up")"crlf)
)
(if (eq ?more less) then
(retract ?f0)
(printout     ?*fp*   "(prep_id-relation-parser_ids   "?than"     less_upameya-than_upamAna       "?m-up"  "?t-up")"crlf)
(printout     ?*dbug* "(prep_id-Rule-Rel-ids  "?than"   prep+than+pobj    less_upameya-than_upamAna  "?m-up"  "?t-up")"crlf)
)
)
; Ex.My talk at the university was more appreciated by the students than the faculty .Added by Mahalaxmi (18-12-09)
; Ex.My talk at the university was less appreciated by the students than the faculty 
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule single_prep_1
 (declare (salience 10))
 (basic_rel_name-sids prep  ?kri ?p)
 (or (basic_rel_name-sids pobj ?p ?p_saM)(basic_rel_name-sids pcomp ?p ?p_saM))
 (propogation_rel_name-sids ?prep_wd ?kri  ?p_saM)
 (propogation_rel_name-sids ?prep_wd1 ?kri  ?x)
 (parserid-word ?p ?word)
 (rel_name-sids conj:and|conj:or  ?p_saM ?x)
 (parserid-word ?id and|or)
 (parser_id-cat_coarse ?kri ?cat)
 (test (and (> (string_to_integer ?id) (string_to_integer ?p_saM)) (< (string_to_integer ?id) (string_to_integer ?x)) (eq ?prep_wd ?prep_wd1)))
 =>
 (assert (got_prepositional_rel ?p))
 (if (eq ?cat verb) then
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p" kriyA-"(lowcase ?word)"_saMbanXI "?kri" "?p_saM")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p"    single_prep_1  kriyA-"(lowcase ?word)"_saMbanXI  " ?kri" "?p_saM")"crlf)
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p" kriyA-"(lowcase ?word)"_saMbanXI "?kri" "?x")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p"    single_prep_1  kriyA-"(lowcase ?word)"_saMbanXI  " ?kri" "?x")"crlf)
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p" kriyA-"(lowcase ?word)"_saMbanXI "?kri" "?id")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p"    single_prep_1  kriyA-"(lowcase ?word)"_saMbanXI  " ?kri" "?id")"crlf)
 else
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p" viSeRya-"(lowcase ?word)"_saMbanXI "?kri" "?p_saM")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p"    single_prep_1  kriyA-"(lowcase ?word)"_saMbanXI  " ?kri" "?p_saM")"crlf)
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p" viSeRya-"(lowcase ?word)"_saMbanXI "?kri" "?x")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p"    single_prep_1  kriyA-"(lowcase ?word)"_saMbanXI  " ?kri" "?x")"crlf)
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p" viSeRya-"(lowcase ?word)"_saMbanXI "?kri" "?id")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p"    single_prep_1  kriyA-"(lowcase ?word)"_saMbanXI  " ?kri" "?id")"crlf)
 ) )
 ; Ex. Power is not something that is possessed like blue eyes or red hair but manifests itself in terms of relations with others. 
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule single_prep
 (declare (salience 1))
 (parserid-word ?p ?word)
?f1<-(rel_name-sids  ?nmod  ?kri  ?p_saM)
?f0<-(rel_name-sids  case  ?p_saM  ?p)
 (test (eq (sub-string 1 5 ?nmod) "nmod:"))
 (not (got_prepositional_rel ?p))
 (not (parserid-word  ?p_saM  ABBRdollar))
 (test (neq (numberp ?word) TRUE)) ; Added by Roja (24-05-13) Ex: Also on the takeover front, Jaguar's ADRs rose 1/4 to [13] 7/8 on turnover of 4.4 million.
 (parser_id-cat_coarse ?kri ?cat)
 =>
 (retract ?f0)
 (assert (got_prep_rel ?p_saM))
 (if (eq ?cat verb) then
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p" kriyA-"(lowcase ?word)"_saMbanXI "?kri" "?p_saM")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p"    single_prep  kriyA-"(lowcase ?word)"_saMbanXI  " ?kri" "?p_saM")"crlf)
  else
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p" viSeRya-"(lowcase ?word)"_saMbanXI "?kri" "?p_saM")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p"    single_prep  viSeRya-"(lowcase ?word)"_saMbanXI  " ?kri" "?p_saM")"crlf)
 )
)
 ;He lives at Chandinichok in Delhi in India. Of her childhood we know very little. 
 ; Ex. The people of Orissa are FACING grave adversities DUE TO the CYCLONE. 
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule double_p
 (declare (salience 100))
?f<-(rel_name-sids  case  ?p_saM  ?p-1)
(rel_name-sids  mwe  ?p-1  ?p)
?f1<-(rel_name-sids  ?nmod  ?kri  ?p_saM)
 (parserid-word ?p-1 ?word) (parserid-word ?p ?word1)
 (test (eq (sub-string 1 5 ?nmod) "nmod:"))
 (parser_id-cat_coarse ?kri ?cat)
 =>
 (retract ?f)
 (if (eq ?cat verb) then
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p-1" "?p" kriyA-"(lowcase ?word)"_"(lowcase ?word1)"_saMbanXI "?kri" "?p_saM")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p-1" "?p"  duble_prep  kriyA-"(lowcase ?word)"_"(lowcase ?word1)"_saMbanXI "?kri" "?p_saM")"crlf)
 else
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p-1" "?p" viSeRya-"(lowcase ?word)"_"(lowcase ?word1)"_saMbanXI "?kri" "?p_saM")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p-1" "?p"  duble_prep  viSeRya-"(lowcase ?word)"_"(lowcase ?word1)"_saMbanXI "?kri" "?p_saM")"crlf)
 ))
 ;Ex. Buyers stepped in to the futures pit. We stayed at home because of the bad weather.
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule duble_prep_conj
 (declare (salience 220))
 (basic_rel_name-sids prep  ?kri ?p)
 (basic_rel_name-sids pobj ?p ?p_saM)
 (basic_rel_name-sids  mwe  ?p   ?p-1)
 (rel_name-sids  prep_such_as  ?kri  ?p_saM)
 (rel_name-sids  prep_such_as  ?kri  ?x)
 (rel_name-sids conj:or ?x ?p_saM )
 (parser_id-cat_coarse ?kri ?cat)
 (parserid-word ?p-1 ?word) (parserid-word ?p ?word1)
 (parserid-word ?id and|or)
; (test (and (> (string_to_integer ?id) (string_to_integer ?p_saM)) (< (string_to_integer ?id) (string_to_integer ?x)) (eq ?prep_wds ?prep_wds1)))
 =>
 (if (eq ?cat verb) then
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p" "?p-1" kriyA-"(lowcase ?word)"_"(lowcase ?word1)"_saMbanXI "?kri" "?p_saM")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p" "?p-1"  duble_prep_conj  kriyA-"(lowcase ?word)"_"(lowcase ?word1)"_saMbanXI "?kri" "?p_saM")"crlf)
 else
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p" "?p-1" viSeRya-"(lowcase ?word)"_"(lowcase ?word1)"_saMbanXI "?kri" "?p_saM")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p" "?p-1"  duble_prep_conj  viSeRya-"(lowcase ?word)"_"(lowcase ?word1)"_saMbanXI "?kri" "?p_saM")"crlf)
 ))
 ; Ex. Power is not something that is possessed such as blue eyes or red hair but manifests itself in terms of relations with others.
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule duble_prep
 (declare (salience 10))
 ?f0<-(basic_rel_name-sids prep  ?kri ?p)
 (basic_rel_name-sids mwe  ?p   ?p-1)
 (basic_rel_name-sids pobj ?p ?p_saM)
 (parser_id-cat_coarse ?kri ?cat)
 (parserid-word ?p-1 ?word) (parserid-word ?p ?word1)
 =>
 (retract ?f0)
 (if (eq ?cat verb) then
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p" "?p-1" kriyA-"(lowcase ?word)"_"(lowcase ?word1)"_saMbanXI "?kri" "?p_saM")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p" "?p-1"  duble_prep  kriyA-"(lowcase ?word)"_"(lowcase ?word1)"_saMbanXI "?kri" "?p_saM")"crlf)
 else
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p" "?p-1" viSeRya-"(lowcase ?word)"_"(lowcase ?word1)"_saMbanXI "?kri" "?p_saM")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p" "?p-1"  duble_prep  viSeRya-"(lowcase ?word)"_"(lowcase ?word1)"_saMbanXI "?kri" "?p_saM")"crlf)
 ))
 ; Ex. The people of Orissa are facing grave adversities due to the cyclone.
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule triple_prep
 (declare (salience 110))
?f0<-(rel_name-sids  case  ?p_saM  ?p)
(rel_name-sids  mwe  ?p  ?p1)
(rel_name-sids  mwe  ?p  ?p2)
?f1<-(rel_name-sids  ?nmod  ?kri  ?p_saM)
 (test (eq (sub-string 1 5 ?nmod) "nmod:"))
 (test (neq ?p1 ?p2))
(test (>(string_to_integer ?p2)(string_to_integer ?p1)))
 (parser_id-cat_coarse ?kri ?cat)
 (parserid-word ?p ?word)  (parserid-word ?p1 ?word1)  (parserid-word ?p2 ?word2)
 =>
 (retract ?f0 ?f1)
 (if (eq ?cat verb) then
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p" "?p1" "?p2"  kriyA-"(lowcase ?word)"_"(lowcase ?word1)"_"(lowcase ?word2)"_saMbanXI "?kri" "?p_saM")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p" "?p1" "?p2"  triple_prep  kriyA-"(lowcase ?word)"_"(lowcase ?word1)"_"(lowcase ?word2)"_saMbanXI "?kri" "?p_saM")"crlf)
  else
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p" "?p1" "?p2"  viSeRya-"(lowcase ?word)"_"(lowcase ?word1)"_"(lowcase ?word2)"_saMbanXI "?kri" "?p_saM")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p" "?p1" "?p2"  triple_prep  viSeRya-"(lowcase ?word)"_"(lowcase ?word1)"_"(lowcase ?word2)"_saMbanXI "?kri" "?p_saM")"crlf)
 ))
 ; Ex. Who is acting on behalf of the defendant? Several people are in front of me in line. She has a pear tree in front of his house. 
 ;------------------------------------------------------------------------------------------------------------------------
 (defrule vi_prep
 (declare (salience 1))
 ?f0<-(basic_rel_name-sids prep  ?kri ?p)
 (or (basic_rel_name-sids pobj ?p ?p_saM) (basic_rel_name-sids pcomp ?p ?p_saM))
 (parser_id-cat_coarse ?kri ~verb)
 (parserid-word ?p ?word)
 =>
 (retract ?f0)
 (printout ?*fp* "(prep_id-relation-parser_ids  "?p"  viSeRya-"(lowcase ?word)"_saMbanXI "?kri" "?p_saM")"crlf)
 (printout ?*dbug* "(prep_id-Rule-Rel-ids  "?p"   vi_prep  viSeRya-"(lowcase ?word)"_saMbanXI  " ?kri" "?p_saM")"crlf)
 )
 ; Ex. The PEOPLE of ORISSA are facing grave adversities due to the cyclone.  
 ;------------------------------------------------------------------------------------------------------------------------
(defrule rel_1
(declare (salience 100))
(rel_name-sids  rel|dobj     ?rv ?jos)
(rel_name-sids  acl:relcl|rcmod   ?vi ?rv)
(rel_name-sids  compound:prt|prt     ?rv  ?p)
(parserid-word  ?jos    who|which|where|that)
(parserid-word  ?p      ?prep)
=>
(assert (got_preposition_obj_for_this ?p))
(printout       ?*fp*   "(prep_id-relation-parser_ids  "?p"     kriyA-"?prep"_saMbanXI     "?rv"   "?jos")"crlf)   
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  "?p"   rel_1     kriyA-"?prep"_saMbanXI     "?rv"   "?jos")"crlf)   
)
 ; Ex.  I will show you the house which we talked about. 
;------------------------------------------------------------------------------------------------------------------------
(defrule dobj_rcmod
(declare (salience 200))
(rel_name-sids dobj ?kriyA ?x)
(rel_name-sids acl:relcl|rcmod ?x ?kriyA)
(basic_rel_name-sids dobj ?kriyA ?obj) ; In new version dobj is given between 'called' and 'who' in basic rel
;(propogation_rel_name-sids rel ?kriyA ?obj) ; In new version  'rel' relation is missing so using above fact. Suggested by Chaitanya Sir
=>
(assert (got_object_rel ?kriyA))
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-object       "?kriyA"        "?obj")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -       dobj_rcmod   kriyA-object    "?kriyA"        "?obj")"crlf)
)
 ;The girl who you called yesterday has arrived.
;------------------------------------------------------------------------------------------------------------------------


(defrule nsubj_rcmod
(declare (salience 2000))
(rel_name-sids acl:relcl|rcmod ?x ?kriyA )
(basic_rel_name-sids nsubj ?kriyA ?sub)
=>
(assert (got_kriyA-subject ?kriyA))
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-subject       "?kriyA"        "?sub")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -       nsubj_rcmod   kriyA-subject    "?kriyA"        "?sub")"crlf)
)
 ;The snake who swallowed the rat hissed loudly.
;------------------------------------------------------------------------------------------------------------------------

(defrule rcmod_prep
(declare (salience 220))
(rel_name-sids  rcmod ?vi ?kri)
(basic_rel_name-sids  prep ?kri ?p)
(basic_rel_name-sids  pobj ?p ?js)
(parserid-word ?js who|which)
(not (got_viSeRya-jo_samAnAXikaraNa  ?vi));The mass of a body is thus an important parameter that determines the effect of force on its motion. 
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     viSeRya-jo_samAnAXikaraNa   "?vi" "?js")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   rcmod_prep     viSeRya-jo_samAnAXikaraNa   "?vi" "?js")"crlf)
(assert (got_viSeRya-jo_samAnAXikaraNa  ?vi))
 )

;The room in which you sang a song is good.
;------------------------------------------------------------------------------------------------------------------------

(defrule rcmod
(declare (salience 220))
(rel_name-sids  acl:relcl|rcmod ?vi ?kri)
(parserid-word ?js ?w)
;(test (eq (string_to_integer ?js) (+ (string_to_integer ?vi) 1))) ;commented for: In 1979, Hearst hired editor James Bellows, who brightened the editorial product considerably. 
(test (>(string_to_integer ?kri)(string_to_integer ?vi)))
=>
 (if (or (eq ?w who) (eq ?w whom) (eq ?w that) (eq ?w which)) then
    (printout       ?*fp*   "(prep_id-relation-parser_ids  -     viSeRya-jo_samAnAXikaraNa   "?vi" "?js")"crlf)
    (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   rcmod     viSeRya-jo_samAnAXikaraNa   "?vi" "?js")"crlf)
    (assert (got_viSeRya-jo_samAnAXikaraNa  ?vi))
 )
 (if (or (eq ?w when) (eq ?w where))then
    (printout       ?*fp*   "(prep_id-relation-parser_ids  -     viSeRya-jo_samAnAXikaraNa   "?vi" "?js")"crlf)
    (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   rcmod     viSeRya-jo_samAnAXikaraNa   "?vi" "?js")"crlf)
    (printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-aXikaraNavAcI  "?kri" "?js")"crlf)
    (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   rcmod     kriyA-aXikaraNavAcI  "?kri" "?js")"crlf)
    (assert (got_viSeRya-jo_samAnAXikaraNa  ?vi))
    (assert (got_viSeRya-jo_samAnAXikaraNa  ?js))
 )
)
 ;Ex. The girl who you called yesterday has arrived. The dog which Chris bought is really ugly. The dog who chased me was black. The snake who swallowed the rat hissed loudly. The boy who came yesterday from Delhi is my friend. I will show you the house where I met your mother. Power is not something that is possessed such as blue eyes or red hair but manifests itself in terms of relations with others. 
;------------------------------------------------------------------------------------------------------------------------
(defrule insert-who
(declare (salience 100))
(rel_name-sids  acl:relcl|rcmod   ?vi  ?rv)
(rel_name-sids  nsubj   ?rv  ?s)
(parserid-word ?vi ?vi_word)
(parserid-word ?s ?word&~who&~which&~when&~whom&~that)
(not (rel_name-sids  rel   ?rv  ?))
(not (rel_name-sids  dobj   ?rv  ?))
(not  (got_viSeRya-jo_samAnAXikaraNa  ?vi))
(test (eq (lexemep ?vi_word) TRUE)) ;lexemep = symbol or string
=>
(bind ?a (gdbm_lookup "animate.gdbm" ?vi_word))
(if (eq ?a "1") then
(printout       ?*fp*   "(prep_id-relation-parser_ids  -   viSeRya-jo_samAnAXikaraNa       "?vi"   10000)"crlf)
(printout       ?*fp*   "(prep_id-relation-parser_ids  -   kriyA-object    "?rv"       10000)"crlf)
(printout       ?*dbug*    "(prep_id-Rule-Rel-ids  -   insert-who   kriyA-object    "?rv"    10000)"crlf)
(printout       ?*dbug*    "(prep_id-Rule-Rel-ids  -   insert-who   viSeRya-jo_samAnAXikaraNa      "?vi"    10000)"crlf)
(printout       ?*hmng_fp*      "(id-HM-source  10000   jo      Relative_clause)"crlf)
(printout       ?*open-word*    "(id-word 10000  who)"crlf)
(printout       ?*open-orign*   "(id-original_word 10000  who)"crlf)
    (assert (got_viSeRya-jo_samAnAXikaraNa  ?vi))
))
;Ex.  The dog I chased was black . The man you saw is intelligent. 
;------------------------------------------------------------------------------------------------------------------------
(defrule insert-where
(declare (salience 100))
(rel_name-sids  acl:relcl|rcmod   ?vi  ?rv)
(parserid-word ?vi ?vi_word)
(not (rel_name-sids  dobj   ?rv  ?))
(not (rel_name-sids  rel   ?rv  ?x))
(not (got_viSeRya-jo_samAnAXikaraNa  ?vi))
(test (eq (lexemep ?vi_word) TRUE));Added by Shirisha Manju (lexemep = symbol or string)(21-06-11)
=>
(bind ?a (gdbm_lookup "place.gdbm" ?vi_word))
(if (eq ?a "1") then
    (printout       ?*fp*   "(prep_id-relation-parser_ids  -   viSeRya-jo_samAnAXikaraNa       "?vi"   10000)"       crlf)
    (printout       ?*dbug*    "(prep_id-Rule-Rel-ids  -   insert-where  viSeRya-jo_samAnAXikaraNa      "?vi"    10000)"crlf)
    (printout       ?*fp*   "(prep_id-relation-parser_ids  -   kriyA-aXikaraNavAcI       "?rv"   10000)"       crlf)
    (printout       ?*dbug*    "(prep_id-Rule-Rel-ids  -   insert-where  kriyA-aXikaraNavAcI       "?rv"  10000)"crlf)
    (printout       ?*hmng_fp*      "(id-HM-source  10000   jahAz      Relative_clause)"       crlf)
    (printout       ?*open-word*    "(id-word 10000  where)"  crlf)
    (printout       ?*open-orign*   "(id-original_word 10000  where)"   crlf)
    (assert (got_viSeRya-jo_samAnAXikaraNa  ?vi))
))
;Ex. This is the place I live.  
;------------------------------------------------------------------------------------------------------------------------
(defrule insert-where_2
(declare (salience 100))
(rel_name-sids  acl:relcl|rcmod   ?vi  ?rv)
(parserid-word ?vi ?vi_word)
(rel_name-sids  dobj   ?rv  ?obj)
(not (rel_name-sids  rel   ?rv  ?))
(not (got_viSeRya-jo_samAnAXikaraNa  ?vi))
(test (>(string_to_integer ?obj)(string_to_integer ?rv)))
(test (eq (lexemep ?vi_word) TRUE));Added by Shirisha Manju (lexemep = symbol or string)(21-06-11)
=>
(bind ?a (gdbm_lookup "place.gdbm" ?vi_word))
(if (eq ?a "1") then
    (printout       ?*fp*   "(prep_id-relation-parser_ids  -   viSeRya-jo_samAnAXikaraNa       "?vi"   10000)"crlf)
    (printout       ?*dbug*    "(prep_id-Rule-Rel-ids  -   insert-where_2  viSeRya-jo_samAnAXikaraNa      "?vi"    10000)"crlf)
    (printout       ?*fp*   "(prep_id-relation-parser_ids  -   kriyA-aXikaraNavAcI     "?rv"   10000)"crlf)
    (printout       ?*dbug*    "(prep_id-Rule-Rel-ids  -   insert-where_2  kriyA-aXikaraNavAcI     "?rv"   10000)"crlf)
    (printout       ?*hmng_fp*      "(id-HM-source  10000   jahAz      Relative_clause)"crlf)
    (printout       ?*open-word*    "(id-word 10000  where)"  crlf)
    (printout       ?*open-orign*   "(id-original_word 10000  where)"   crlf)
    (assert (got_viSeRya-jo_samAnAXikaraNa  ?vi))
    (assert (got_viSeRya-jo_samAnAXikaraNa  ?vi))
))
;Ex. This is the place I met them.
;------------------------------------------------------------------------------------------------------------------------
(defrule insert-when
(declare (salience 100))
(rel_name-sids  acl:relcl|rcmod   ?vi  ?rv)
(not (rel_name-sids  rel   ?rv  ?))
(parserid-word ?vi ?vi_word)
(test (eq (lexemep ?vi_word) TRUE));Added by Shirisha Manju (lexemep = symbol or string)(21-06-11) 
=>
(bind ?a (gdbm_lookup "time.gdbm" ?vi_word))
(if (eq ?a "1") then
    (printout       ?*fp*   "(prep_id-relation-parser_ids  -   viSeRya-jo_samAnAXikaraNa       "?vi"   10000)"       crlf)
    (printout       ?*dbug*    "(prep_id-Rule-Rel-ids  -   insert-when  viSeRya-jo_samAnAXikaraNa      "?vi"    10000)"crlf)
    (printout       ?*hmng_fp*      "(id-HM-source  10000   jaba      Relative_clause)"       crlf)
    (printout       ?*open-word*    "(id-word 10000  when)"  crlf)
    (printout       ?*open-orign*   "(id-original_word 10000  when)"   crlf)
    (assert (got_viSeRya-jo_samAnAXikaraNa  ?vi))
) )
;Ex. Winter is the season I met them. 
;------------------------------------------------------------------------------------------------------------------------
(defrule insert-which
(declare (salience 100))
(rel_name-sids  acl:relcl|rcmod   ?vi  ?rv)
(rel_name-sids  nsubj   ?rv  ?s)
(parserid-word ?s ?word&~who&~which&~that)
(not (rel_name-sids  dobj   ?rv  ?))
(not (rel_name-sids  rel   ?rv  ?))
(parserid-word ?rv ?wrd)
(test(and (neq ?wrd met)  (neq ?wrd meet)  (neq ?wrd meets)  (neq ?wrd meeting)))
(not (got_viSeRya-jo_samAnAXikaraNa  ?vi))
(test (eq (lexemep ?wrd) TRUE));Added by Shirisha Manju (lexemep = symbol or string)(21-06-11)
=>
(bind ?a (gdbm_lookup "transitive-verb-list.gdbm" ?wrd))
(if (eq ?a "1") then
    (printout       ?*fp*   "(prep_id-relation-parser_ids  -   viSeRya-jo_samAnAXikaraNa       "?vi"   10000)"crlf)
    (printout       ?*dbug*    "(prep_id-Rule-Rel-ids  -   insert-which  viSeRya-jo_samAnAXikaraNa      "?vi"    10000)"crlf)
    (printout       ?*fp*   "(prep_id-relation-parser_ids  -   kriyA-object    "?rv"       10000)"crlf)
    (printout       ?*dbug*    "(prep_id-Rule-Rel-ids  -   insert-which   kriyA-object    "?rv"    10000)"crlf)
    (printout       ?*hmng_fp*      "(id-HM-source  10000   jo      Relative_clause)"crlf)
    (printout       ?*open-word*    "(id-word 10000  which)"crlf)
    (printout       ?*open-orign*   "(id-original_word 10000  which)"crlf)
    (assert (got_viSeRya-jo_samAnAXikaraNa  ?vi))
)) 
;Ex. I will show you the house we talked about.
;------------------------------------------------------------------------------------------------------------------------
(defrule insert-which1
(rel_name-sids  acl:relcl|rcmod   ?vi  ?rv)
(not (got_viSeRya-jo_samAnAXikaraNa  ?vi))
(not (rel_name-sids  rel   ?rv  ?))
(not (rel_name-sids  advmod   ?rv  ?))
(not (parserid-word ?id which|who|that|whom|whoever|whichever|whomever)) ;Coaxial cable is a widely used wire medium, which offers a bandwidth of approximately 750 MHz. He succeeds Terrence D. Daniels, formerly a W.R. Grace vice chairman, who resigned. 
=>
    (printout       ?*fp*   "(prep_id-relation-parser_ids  -   viSeRya-jo_samAnAXikaraNa       "?vi"   10000)"crlf)
    (printout       ?*dbug*    "(prep_id-Rule-Rel-ids  -   insert-which1  viSeRya-jo_samAnAXikaraNa      "?vi"    10000)"crlf)
    (printout       ?*fp*   "(prep_id-relation-parser_ids  -   kriyA-object    "?rv"       10000)"crlf)
    (printout       ?*dbug*    "(prep_id-Rule-Rel-ids  -   insert-which1   kriyA-object    "?rv"    10000)"crlf)
    (printout       ?*hmng_fp*      "(id-HM-source  10000   jo      Relative_clause)"crlf)
    (printout       ?*open-word*    "(id-word 10000  which)"crlf)
    (printout       ?*open-orign*   "(id-original_word 10000  which)"crlf)
) 
;Ex.  
;------------------------------------------------------------------------------------------------------------------------
(defrule csubj
(rel_name-sids csubj|csubjpass ?kri ?sub)
(not (got_kriyA-vAkya_subject ?sub))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -     kriyA-vAkya_subject	"?kri"	"?sub")"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	csubj	kriyA-vAkya_subject   "?kri"	"?sub")"crlf)	
)
 ; Ex. What she said makes sense. That she lied was suspected by everyone.
;------------------------------------------------------------------------------------------------------------------------
(defrule csubj+cop
(declare (salience 100))
(rel_name-sids csubj|csubjpass ?x ?sub)
(rel_name-sids cop  ?x ?kri)
=>
(assert (got_kriyA-vAkya_subject ?sub))
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-vAkya_subject        "?kri"  "?sub")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -       csubj+cop    kriyA-vAkya_subject   "?kri"    "?sub")"crlf) 
)
 ; Ex. What she said is not true.
;------------------------------------------------------------------------------------------------------------------------

(defrule dep
(rel_name-sids dep ?governor ?dependent)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -     viSeRya-viSeRaNa	"?governor"	"?dependent")"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	dep	viSeRya-viSeRaNa	"?governor"	"?dependent")"crlf)	
)
 ; Ex.  
;------------------------------------------------------------------------------------------------------------------------
(defrule num
(rel_name-sids nummod|num ?vi ?sa-vi)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -     viSeRya-saMKyA_viSeRaNa	"?vi"	"?sa-vi")"crlf)	
(printout	?*dbug*	"(prep_id-Rule-Rel-ids  - 	num	viSeRya-saMKyA_viSeRaNa	"	?vi"	"?sa-vi")"crlf)	
)
 ; Ex. He eats 3 sheep. 
;------------------------------------------------------------------------------------------------------------------------
(defrule number
(rel_name-sids number ?s1 ?s2)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     saMKyA-saMKyA       "?s1"   "?s2")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   number     saMKyA-saMKyA "       ?s1"    "?s2")"crlf)
)
 ; Ex. I invited four thousand fifty four students.
;------------------------------------------------------------------------------------------------------------------------
(defrule measure
(rel_name-sids measure ?vi ?vi_n)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     viSeRya-viSeRaNa "?vi"    "?vi_n")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  - 	measure	viSeRya-viSeRaNa "?vi"    "?vi_n")"crlf)
)
 ; Ex. The director is 65 years old .  
;------------------------------------------------------------------------------------------------------------------------
(defrule aux_to
(rel_name-sids aux|mark  ?v ?to)
(parserid-word ?to to|To);Added "To" by Shirisha Manju(11-07-13)
(not (rel_name-sids cop ?v ?))
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     to-infinitive       "       ?to"    "?v")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   aux_to	to-infinitive       "       ?to"    "?v")"crlf)
)
 ; Ex. I want to go. Dick is important to fix the problem. To measure any time interval we need a clock.
;------------------------------------------------------------------------------------------------------------------------
 (defrule aux_cop
 (rel_name-sids aux|mark ?id ?to)
 (rel_name-sids cop ?id ?inf)
 (parserid-word ?to to)
;mark(rude-5, to-3)
;cop(rude-5, be-4)

 =>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     to-infinitive       "       ?to"    "?inf")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   aux_cop  to-infinitive       "       ?to"    "?inf")"crlf)
 )
 ;Ex: They seem to resemble each other .
 ;Added by Shirisha Manju
 ;------------------------------------------------------------------------------------------------------------------------
(defrule xcomp
(rel_name-sids xcomp  ?kri ?kq_vi)
(parser_id-cat_coarse ?kri verb)
(parser_id-cat_coarse ?kq_vi verb) ;She calls me her friend.
(not (rel_name-sids cop ?kq_vi ?)) ;Added by Shirisha Manju 
(not (parser_id-cat_coarse ?kq_vi adjective))
(not (kriyA-kriyArWa_kriyA_rel_has_been_dcd_by_xcomp+aux_rule ?kq_vi))
(not (got_kriyA-vAkyakarma ?k1 ?k))
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-kqxanwa_karma	"	?kri"    "?kq_vi")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   xcomp	kriyA-kqxanwa_karma	"	?kri"	"?kq_vi")"crlf)
)
 ; Ex. I want to go. 
 ;It struggled to force its body through that little hole . 
;------------------------------------------------------------------------------------------------------------------------
 ;Removed kriyA-object relation printing. Ex: I want to be volunteer.
 ;Modified by Roja. Suggested by Sukhada 09-11-13.
 (defrule xcomp+cop
 (rel_name-sids xcomp ?kri ?id)
 (rel_name-sids cop ?id ?kq_vi)
 =>
 	(printout	?*fp*   "(prep_id-relation-parser_ids  -     kriyA-kqxanwa_karma   "       ?kri"    "?kq_vi")"crlf)
	(printout	?*dbug* "(prep_id-Rule-Rel-ids  -   xcomp+cop   kriyA-kqxanwa_karma  "       ?kri"   "?kq_vi")"crlf)
;	(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-object     "?kq_vi"        "?id")"crlf)
;       (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   xcomp+cop    kriyA-object    "?kq_vi"        "?id")"crlf)
 )
 ;Added by Shirisha Manju
 ;Ex : They seem to resemble each other .
 ;Ex : His aim was to become president .
;------------------------------------------------------------------------------------------------------------------------
 (defrule xcomp+aux
 (declare (salience 11))
 (rel_name-sids xcomp ?id ?kri)
 (parser_id-cat_coarse ?id verb) ; added by Sukhada
 (rel_name-sids aux   ?kri ?to)
 (parserid-word ?to to)
 (not (got_kriyA-vAkyakarma ?id ?kri))
 =>
 (printout      ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-kriyArWa_kriyA   "?id"    "?kri")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   xcomp+aux   kriyA-kriyArWa_kriyA  "?id"   "?kri")"crlf)
 (assert (kriyA-kriyArWa_kriyA_rel_has_been_dcd_by_xcomp+aux_rule ?kri))
 )
 ;Added by Shirisha Manju
 ;I went there to buy a book . It struggled to force its body through that little hole .
;------------------------------------------------------------------------------------------------------------------------
(defrule ccomp_1
(rel_name-sids ccomp ?pre_kri ?kri)
(parserid-word  ?pre_kri made|make|makes|making|has|have|had|having|get|gets|got|getting)
=>
(assert (ccomp_mapped_to_preraka_kriyA ?pre_kri))
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-preraka_kriyA   "       ?kri"    "?pre_kri")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   ccomp_1   kriyA-preraka_kriyA  "       ?kri"   "?pre_kri")"crlf)
)
;Ex  I made him go. The teacher made the students stay after class. I got the car washed. 
;------------------------------------------------------------------------------------------------------------------------
(defrule ccomp+nsubj
(rel_name-sids ccomp ?pre_kri ?kri)
(rel_name-sids nsubj ?kri ?pra_karwA)
(parserid-word  ?pre_kri made|make|makes|making|has|have|had|having)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-prayojya_karwA   "       ?kri"    "?pra_karwA")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   ccomp+nsubj   kriyA-prayojya_karwA   "       ?kri"    "?pra_karwA")"crlf)
)
;Ex.  I made him go. The teacher made the students stay after class.
;------------------------------------------------------------------------------------------------------------------------
(defrule ccomp+nsubj_1
(rel_name-sids ccomp ?pre_kri ?kri)
(rel_name-sids nsubj ?kri ?obj)
(parserid-word  ?pre_kri get|gets|got|getting)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-object   "       ?kri"    "?obj")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   ccomp+nsubj_1   kriyA-object   "       ?kri"    "?obj")"crlf)
)
;Ex.  I got the house built. I got the car washed.
;------------------------------------------------------------------------------------------------------------------------
(defrule kri_sub_for_causative_verb
(declare (salience 500))
(verb_type-verb-causative_verb-tam causative $?v ?kri ?is_ing)
(rel_name-sids  nsubj  ?k  ?sub) 
(test (member$ ?k $?v))
=>
(assert (got_kri-sub_rel ?kri))
(assert (got_kri-sub_rel ?k))
(printout       ?*fp*   "(prep_id-relation-parser_ids  -	kriyA-subject  "?kri"    "?sub")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  - 	kri_sub_for_causative_verb	kriyA-subject	"?kri"    "?sub")"crlf)
)
;;Ex.  I made him go.The teacher made the students stay after class.
;------------------------------------------------------------------------------------------------------------------------
(defrule tmod
(rel_name-sids nmod:tmod  ?kri ?kAl)
(not (basic_rel_name-sids pobj ?p ?kAl))
;(not (got_prep_rel ?vi))
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-kAlavAcI        "       ?kri"    "?kAl")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   tmod	kriyA-kAlavAcI        "       ?kri"    "?kAl")"crlf)
)
 ; Ex.I will go tomorrow.; Last night , I swam in the pool. Though, tmod relation between swam and night is written for this sentence in Stanford Parser's documents but the Parser does not show any such relation in this sentence. 
;------------------------------------------------------------------------------------------------------------------------
(defrule quantmod
(rel_name-sids quantmod  ?vi ?vi_ka)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     viSeRya-viSeRaka        "?vi"    "?vi_ka")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   quantmod   viSeRya-viSeRaka        "?vi"    "?vi_ka")"crlf) 
)
 ; Ex. About 200 people came to the party .
;------------------------------------------------------------------------------------------------------------------------
(defrule vmod1 
(rel_name-sids vmod|xcomp|acl  ?saMjFA ?kqxanwa) ;Modified infmod to vmod as new version of Stanford 3.3.1
(parser_id-cat_coarse ?saMjFA ~verb) ;Added by Sukhada
(rel_name-sids aux|mark  ?kqxanwa ?to); Added by Sukhada. Ex. Truffles picked during the spring are tasty. 
(parserid-word ?to to|To)
;mark(go-6, to-5)
;acl(way-4, go-6)

 =>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     saMjFA-to_kqxanwa        "?saMjFA"    "?kqxanwa")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   vmod1   saMjFA-to_kqxanwa        "?saMjFA"    "?kqxanwa")"crlf)
)
 ; Ex. But my efforts to win his heart have failed . 
 ;Added by Mahalaxmi.
;------------------------------------------------------------------------------------------------------------------------
(defrule npadvmod
(rel_name-sids npadvmod|nmod:npmod  ?vi ?vi_Na)
 =>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     viSeRya-viSeRaNa        "?vi"    "?vi_Na")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   npadvmod viSeRya-viSeRaNa        "?vi"    "?vi_Na")"crlf)
)
 ; Ex. The director is 65 years old. 
;------------------------------------------------------------------------------------------------------------------------
 (defrule cc_rule
 (rel_name-sids cc ?k P1)
 (parserid-word P1 For|And|Nor|But|Or|Yet|So|However)
 =>
        (printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-vAkya_viBakwi "?k    " P1)"crlf)
        (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   cc_rule  kriyA-vAkya_viBakwi " ?k      " P1)"crlf)
 )
 ; Ex. But my efforts to win his heart have failed . 
 ;Added by Shirisha Manju
;------------------------------------------------------------------------------------------------------------------------
 (defrule prep_advmod_rule
 (declare (salience 100))
 ?f0<-(rel_name-sids prep|case ?kriyA ?prep)
 ?f1<-(rel_name-sids advmod ?kriyA ?prep_saM)
 (parserid-word ?prep ?prp&~than)
 (parserid-word ?prep_saM  ?word&where|what|Where|What|Who|who|Whom|whom)
 =>
 (printout      ?*fp*   "(prep_id-relation-parser_ids  "?prep"     kriyA-"(lowcase ?prp)"_saMbanXI        "?kriyA" "?prep_saM")"crlf)
 (printout      ?*dbug* "(prep_id-Rule-Rel-ids  "?prep"    prep_advmod_rule  kriyA-"?prp"_saMbanXI        "?kriyA" "?prep_saM")"crlf)
 )
  ; Ex : Where are you coming from ?
  ; Added by Shirisha Manju
;------------------------------------------------------------------------------------------------------------------------
 (defrule AjFArWaka_kri
 (rel_name-sids aux  ?kri ?i)
 (rel_name-sids neg  ?kri ?n)
 (parserid-word ?i Do)
 =>
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     AjFArWaka_kriyA      "?kri")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   AjFArWaka_kri   AjFArWaka_kriyA     "?kri")"crlf)
 )
 ; Ex.  Do not waste electricity. Do not disturb the sleeping kids. Do not forget to take your tiffin. Do not neglect your duties. 
;------------------------------------------------------------------------------------------------------------------------
 (defrule AjFArWaka_vAkya
 (parser_id-cat_coarse P1 verb)
 (not (rel_name-sids aux  ?kri P1))
 (not (rel_name-sids cop  ?kri P1))
 (not (rel_name-sids expl  P1  ?));Is there life beyond the grave?
 (parserid-word P1 ?wrd&~Is&~Am&~Are&~Was&~Were) ; Added for bllip parser Ex: Are a dog and a cat here?
 =>
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     AjFArWaka_vAkya)"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   AjFArWaka_vAkya   AjFArWaka_vAkya)"crlf)
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     AjFArWaka_kriyA      P1)"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   AjFArWaka_vAkya   AjFArWaka_kriyA    P1)"crlf)
 )
 ; Ex. Give me your phone number. Leave your coat in the hall.
;------------------------------------------------------------------------------------------------------------------------
 
 (defrule sent_opener
 (rel_name-sids ?p  ?kri ?sam)
 (rel_name-sids nsubj  ?kri ?s)
 (test (eq (sub-string 1 5 (implode$ (create$ ?p))) "prep_"))
 (test (and (> (string_to_integer ?kri) (string_to_integer ?sam)) (< (string_to_integer ?kri) (string_to_integer ?s)))) 
 =>
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-sentence_opener      "?kri"   "?sam")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   sent_opener   kriyA-sentence_opener      "?kri"   "?sam")"crlf)
 )
 ; Ex.  In the garden stood a statue.
;------------------------------------------------------------------------------------------------------------------------
 (defrule appos
 (propogation_rel_name-sids   appos ?saMj ?saMj_sa)
 =>
 (printout       ?*fp*   "(prep_id-relation-parser_ids  -     saMjFA-saMjFA_samAnAXikaraNa    "?saMj" "?saMj_sa")"crlf)
 (printout       ?*dbug* "(prep_id-Rule-Rel-ids  -       appos  saMjFA-saMjFA_samAnAXikaraNa  "?saMj" "?saMj_sa")"crlf)
 )
 ; Ex. In addition, Robert Sakowitz, chief executive of the Sakowitz chain, is seeking funds to buy out the Hooker interest in his company.
;------------------------------------------------------------------------------------------------------------------------
(defrule advmod_am_pm
(rel_name-sids advmod  ?vi ?vi_Na)
(parserid-word  ?vi_Na  AM|a.m|PM|p.m.)
 =>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     viSeRya-viSeRaNa        "?vi"    "?vi_Na")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -   advmod_am-pm   viSeRya-viSeRaNa        "?vi"    "?vi_Na")"crlf)
)
 ; Ex. The Dow industrials were down 55 points at 3 p.m. before the futures-trading halt.
;------------------------------------------------------------------------------------------------------------------------
(defrule parataxis
(rel_name-sids parataxis ?va ?k)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     kriyA-vAkyakarma   "?k"    "?va")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -      parataxis  kriyA-vAkyakarma  "?k"    "?va")"crlf)
)
; Ex. The guy, John said, left early in the morning.
;------------------------------------------------------------------------------------------------------------------------


(defrule dep+det
(rel_name-sids dep ?k ?jj)
(rel_name-sids det ?jj ?the)
(rel_name-sids dep ?k1 ?jj1)
(rel_name-sids det ?jj1 ?the1)
(parser_id-cat_coarse ?jj adjective)
(parser_id-cat_coarse ?jj1 adjective)
(test (> (string_to_integer ?jj1) (string_to_integer ?jj)))
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -    jiwanA-wulanAwmaka_viSeRaNa  "?the"    "?jj")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -     dep+det  jiwanA-wulanAwmaka_viSeRaNa  "?the"    "?jj")"crlf)

(printout       ?*fp*   "(prep_id-relation-parser_ids  -    uwanA-wulanAwmaka_viSeRaNa  "?the1"    "?jj1")"crlf)
(printout       ?*dbug* "(prep_id-Rule-Rel-ids  -     dep+det  uwanA-wulanAwmaka_viSeRaNa  "?the1"    "?jj1")"crlf)

)
; Ex. The faster it is, the more people will like it. 
;------------------------------------------------------------------------------------------------------------------------



;rel+nsubj rel+nsubj+wh rules are not working properly. Check them.

