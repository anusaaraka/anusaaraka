 (defglobal ?*fp* = open-file)
 (defglobal ?*rel_debug* = debug_fp)
 (defglobal ?*open-word* = open-word)
 (defglobal ?*open-orign* = open-orign)
 (defglobal ?*hmng_fp* = hmng_fp)
 
 (deffunction string_to_integer (?parser_id)
; Removes the first character from the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

 (deffunction my_string_cmp> (?a ?b)
  (> (str-compare ?a ?b) 0))
 ;------------------------------------------------------------------------------------------------------------------
 (deffunction never-called ()
 (assert (missing-level-id) )
 (assert (id-original_word))
 (assert (verb_type-verb-causative_verb-tam))
 (assert (verb_type-verb-kriyA_mUla-tam))
 (assert (No complete linkages found))
 (assert (link_name-link_expansion))
 (assert (link_name-link_lnode-link_rnode))
 (assert (root-verbchunk-tam-parser_chunkids))
 (assert (lwg_root-verbchunk-tam-chunkids))
 (assert (link_id-root))
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -100))
 =>
 (close ?*fp*)
 (close ?*rel_debug*)
 (close ?*open-word*)
 (close ?*open-orign*)
 (close ?*hmng_fp*)
 )

;NOTE: kriyA-lupwa_prep_saMbanXI is now changed to kriyA-aXikaraNavAcI_avyaya(Modified by Roja 28-12-10 Suggested by Sukhada)  ;----------------------------------------------------------------------------------------------------------------
;KRIYA-SUBJECT RELATION RULES:

(defrule kriyA-subject1
(link_name-link_expansion    ?lname    S ~F $?vars)
(link_name-link_lnode-link_rnode ?lname  ?lnode ?rnode)
(root-verbchunk-tam-parser_chunkids $?chunk_ids ?kri)
(test (or (member$ ?rnode $?chunk_ids) (eq ?kri ?rnode)))
(not (kriyA-subject_rel_has_been_deceded_by_'kriyA-subject_and'_rule ?kri))
(not (kriyA-subject_rel_has_been_decided_by_rule_subject_insertion ?kri))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -  	kriyA-subject	"?kri"	"?lnode	")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids - 	kriyA-subject1	kriyA-subject	"?kri"	"?lnode	")"crlf)	
)
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-subject3
(link_name-link_expansion    ?lname    S F ~I $?vars)
(link_name-link_lnode-link_rnode  ?lname  ?a ?b)
(link_name-link_lnode-link_rnode  Ost|Opt  ?b ?c)
(not (kriyA-subject_rel_has_been_deceded_by_'kriyA-subject_SF_and'_rule))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -  	kriyA-aBihiwa	"?b"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-subject3	kriyA-aBihiwa	"?b"	"?c")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -  	kriyA-dummy_subject	"?b"	"?a")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-subject3	kriyA-dummy_subject	"?b"	"?a")"crlf)	
)
;Ex.	There are flowers in the garden. There is a flower in the garden.
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-subject4
(declare (salience 720))
(link_name-link_expansion    ?lname    S $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode Pv ?y ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids    -	kriyA-subject	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-subject4	kriyA-subject	"?z"	"?x")"crlf)	
)
;Ex.	
;----------------------------------------------------------------------------------------------------------------

(defrule kriyA-subject5
(declare (salience 200))
?f0<- (link_name-link_expansion    ?lname    S F I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode   Ost|Opt  ?x ?z)
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids   -	kriyA-aBihiwa	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-subject5	kriyA-aBihiwa	"?x"	"?z")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids    -	kriyA-dummy_subject	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-subject5	kriyA-dummy_subject	"?x"	"?y")"crlf)	
)
;Ex.	 Is there  a flower in the garden? Are there  flowers in the garde?
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-subject_SFI
(link_name-link_expansion    ?lname    S F I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kri)
(test (or (member$ ?x $?chunk_ids) (eq ?kri ?x)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -  	kriyA-dummy_subject	"?kri"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-subject_SFI	kriyA-dummy_subject	"?kri"	"?y")"crlf)	
)
;Ex.   How important is it to turn the computer off? 
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-subject_SF
(declare (salience 200))
?f0<- (link_name-link_expansion    ?lname    S F ~I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(root-verbchunk-tam-parser_chunkids $? ?y $? ?kriyA)
(link_name-link_lnode-link_rnode Ost|Opt   ?kriyA ?sub)
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids  -  	kriyA-aBihiwa	"?kriyA"	"?sub")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-subject_SF	kriyA-aBihiwa	"?kriyA"	"?sub")"crlf)	
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-dummy_subject	"?kriyA"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-subject_SF	kriyA-dummy_subject	"?kriyA"	"?x")"crlf)	
)
;Ex.     There would be a party today
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-subject_SF_I
(declare (salience 100))
?f0<- (link_name-link_expansion    ?lname    S F ~I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode I ?x ?sub)
(root-verbchunk-tam-parser_chunkids $? ?y $? ?kriyA)
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?kriyA"	"?sub")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-subject_SF_I	kriyA-subject	"?kriyA"	"?sub")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-dummy_subject	"?kriyA"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-subject_SF_I	kriyA-dummy_subject	"?kriyA"	"?x")"crlf)	
)
;Ex.     To pretend that our program is usable in its current form would be silly
;----------------------------------------------------------------------------------------------------------------
(defrule subject_SF_I
(declare (salience 150))
(link_name-link_expansion    ?lname    S F ~I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode I ?x ?sub)
(link_name-link_lnode-link_rnode Ix ?y ?z)
(link_name-link_lnode-link_rnode Paf ?z ?samA)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?sub"	"?samA")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	subject_SF_I	subject-subject_samAnAXikaraNa	"?sub"	"?samA")"crlf)	
)
;Ex.     To pretend that our program is usable in its current form would be silly
;----------------------------------------------------------------------------------------------------------------
(defrule subj-samA
(declare (salience 150))
(link_name-link_expansion    ?S    S  $?vars)
(link_name-link_lnode-link_rnode ?S ?x ?y)
(link_name-link_lnode-link_rnode TO ?y ?z)
(link_name-link_lnode-link_rnode I  ?z ?v)
(link_name-link_lnode-link_rnode Paf|Pa ?v ?samA)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?x"	"?samA")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	subj-samA	subject-subject_samAnAXikaraNa	"?x"	"?samA")"crlf)	
)
;Ex.  I started to feel afraid of going out alone at night. 
;----------------------------------------------------------------------------------------------------------------
(defrule obj-samA
(declare (salience 150))
(link_name-link_expansion    ?S    S  $?vars)
(link_name-link_lnode-link_rnode ?S ?x ?y)
(link_name-link_lnode-link_rnode TOo ?y ?z)
(link_name-link_expansion    ?O   O $?var)
(link_name-link_lnode-link_rnode ?O ?y ?ob)
(link_name-link_lnode-link_rnode Ix  ?z ?v)
(link_name-link_lnode-link_rnode Paf ?v ?samA)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	object-object_samAnAXikaraNa	"?ob"	"?samA")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	obj-samA	object-object_samAnAXikaraNa	"?ob"	"?samA")"crlf)	
)
;Ex.    If you want the rules to be effective , you must explicitly state your requirements 
;----------------------------------------------------------------------------------------------------------------
(defrule subject_SFI
(declare (salience 150))
(link_name-link_expansion    ?lname    S F I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_expansion    ?I  I $?v)
(link_name-link_lnode-link_rnode ?I ?x ?kriyA)
;(root-verbchunk-tam-link_chunkids $? ?x $? ?kriyA)[commented by sheetal for sent. - He made a request that there be an investigation .(4-12-09)]
(link_name-link_lnode-link_rnode Ost|Opt  ?kriyA ?sub)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-aBihiwa	"?kriyA"	"?sub")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	subject_SFI	kriyA-aBihiwa	"?kriyA"	"?sub")"crlf)	
)
;Ex. would there be a party today.   He made a request that there be an investigation.
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-subject6
(or (link_name-link_expansion    ?lname    S I $?vars)(link_name-link_expansion    ?lname    S X I))
?f0<-(link_name-link_lnode-link_rnode ?lname ?x ?y)
(root-verbchunk-tam-parser_chunkids ? ? $?chunks ?kriyA)
(test (member$ ?x $?chunks))
(not (kriyA-subject_rel_has_been_deceded_by_'kriyA-subject_invertion_and'_rule))
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?kriyA"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-subject6	kriyA-subject	"?kriyA"	"?y")"crlf)	
)	
;Ex.	 Did you eat?
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-subject8
(link_name-link_lnode-link_rnode        S       ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-subject8	kriyA-subject	"?y"	"?x")"crlf)	
)
;Ex.      HAILSTORMS beat against the windows.
;---------------------------------------------------------------------------------------------------------------- 
(defrule rule24
(declare (salience 200))
?f0<- (link_name-link_lnode-link_rnode ALx ?x ?y)
?f1<- (link_name-link_lnode-link_rnode Jp ?x ?z)
(link_name-link_expansion ?sub S $?var)
?f2<- (link_name-link_lnode-link_rnode ?sub ?x ?s)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kri)
(test (or (member$ ?s $?chunk_ids) (eq ?kri ?s)))
=>
(retract ?f0 ?f1 ?f2) 
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-det_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule24	viSeRya-det_viSeRaNa	"?z"	"?x")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?kri"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule24	kriyA-subject	"?kri"	"?z")"crlf)	
)
;Ex.	ALL THE people are here. All our sisters are coming . 
;----------------------------------------------------------------------------------------------------------------
(defrule rule24_1
(declare (salience 250))
(link_name-link_lnode-link_rnode ALx ?x ?y)
(link_name-link_lnode-link_rnode Jp ?x ?z)
(link_name-link_expansion ?O O $?var)
(link_name-link_lnode-link_rnode ?O ?s ?x)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-det_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule24_1	viSeRya-det_viSeRaNa	"?z"	"?x")"crlf)	
)
;Ex.   He left all his money to the orphanage.
;----------------------------------------------------------------------------------------------------------------
(defrule prep-all
(declare (salience 200))
(link_name-link_lnode-link_rnode Pp ?kriyA ?x)
?f1<-(link_name-link_lnode-link_rnode J ?x ?y)
?f0<- (link_name-link_lnode-link_rnode Jp ?y ?head)
(link_name-link_lnode-link_rnode ALx ?a ?b)
(root-verbchunk-tam-parser_chunkids $?c ?kriyA)
(parserid-word ?x ?viBakwi )
;(parserid-word ?x ?viBakwi ?)
=>
(retract ?f0 ?f1)
(printout	?*fp*	"(prep_id-relation-parser_ids "?x"	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?x"	prep-all	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)	
)
;Ex.   The shame of the priest is on all our minds. 
;----------------------------------------------------------------------------------------------------------------
(defrule prep-idiom
(declare (salience 400))
(link_name-link_lnode-link_rnode Pp ?kriyA ?x)
(link_name-link_lnode-link_rnode J|Jp|Js ?x ?y)
(parserid-word ?x ?viBakwi )
;(parserid-word ?x ?viBakwi ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?x"	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?x"	prep-idiom	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?y")"crlf)	
)
;Ex.   His bed was next to the room's only window.
;----------------------------------------------------------------------------------------------------------------
(defrule prep_FM
(declare (salience 200))
(link_name-link_lnode-link_rnode MVp ?kriyA ?x)
(link_name-link_lnode-link_rnode FM  ?x ?y)
(link_name-link_expansion    ?J   J  $?vars)
(link_name-link_lnode-link_rnode ?J  ?y ?head)
(parserid-word ?y ?viBakwi )
;(parserid-word ?y ?viBakwi ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?y"	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?y"	prep_FM	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)	
)
;Ex.   From in back of the shed , I heard a scream that seemed to come from on top of the garage.
;----------------------------------------------------------------------------------------------------------------
(defrule prep_FM_1
(declare (salience 200))
(link_name-link_expansion    ?CO  C O  $?var)
(link_name-link_lnode-link_rnode ?CO  ?x ?d)
(link_name-link_lnode-link_rnode FM  ?x ?y)
(link_name-link_expansion    ?ID  I D $?vari)
(link_name-link_lnode-link_rnode ?ID  ?viSeRya ?y)
(link_name-link_expansion    ?J   J  $?vars)
(link_name-link_lnode-link_rnode ?J  ?y ?head)
(parserid-word ?y ?viBakwi )
;(parserid-word ?y ?viBakwi ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?y"	viSeRya-"?viBakwi"_saMbanXI	"?viSeRya"	"?head")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?y"	prep_FM_1	viSeRya-"?viBakwi"_saMbanXI	"?viSeRya"	"?head")"crlf)	
)
;Ex.   From in back of the shed , I heard a scream that seemed to come from on top of the garage.
;----------------------------------------------------------------------------------------------------------------
(defrule prep_FM_2
(declare (salience 200))
(link_name-link_lnode-link_rnode MVp  ?v ?x)
(link_name-link_lnode-link_rnode FM  ?x ?y)
(link_name-link_expansion    ?ID  I D $?vari)
(link_name-link_lnode-link_rnode ?ID  ?viSeRya ?y)
(link_name-link_expansion    ?J   J  $?vars)
(link_name-link_lnode-link_rnode ?J  ?y ?head)
(parserid-word ?y ?viBakwi )
;(parserid-word ?y ?viBakwi ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?y"	viSeRya-"?viBakwi"_saMbanXI	"?viSeRya"	"?head")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?y"	prep_FM_2	viSeRya-"?viBakwi"_saMbanXI	"?viSeRya"	"?head")"crlf)	
)
;Ex.   From in back of the shed , I heard a scream that seemed to come from on top of the garage.
;----------------------------------------------------------------------------------------------------------------
(defrule subj_MVp
(declare (salience 200))
(link_name-link_lnode-link_rnode MVp  ?v ?s-s)
(not (link_name-link_lnode-link_rnode FM|J|Js|Jp|FL|IN|ON|Mgp|PF  ?s-s ?y)) ;Her family founded the college in 1895. she has no objection in staying overnight. I wonder where John is?
(not (link_name-link_lnode-link_rnode Yd ?a ?s-s));We swam three miles away.
(link_name-link_expansion    ?S  S ~F $?vari) ;ex. 4 this "~F" condition . There is a dog and a cat here .
(link_name-link_lnode-link_rnode ?S  ?s ?v)
(not (parserid-word ?s-s  aboard|about|above|across|after|against|along|alongside|amid|amidst|among|amongst|around|as|aside|astride|at|athwart|atop|barring|before|behind|below|beneath|beside|besides|between|beyond|but|by|circa|concerning|despite|down|during|except|excluding|failing|following|for|from|given|in|including|inside|into|like|mid|minus|near|next|notwithstanding|of|off|on|onto|opposite|out|outside|over|pace|past|per|plus|qua|regarding|round|save|since|than|through|throughout|till|times|to|toward|towards|under|underneath|unlike|until|up|upon|versus|via|with|within|without|worth ));The planet that we live on is of medium size.
;(not (parserid-word ?s-s  aboard|about|above|across|after|against|along|alongside|amid|amidst|among|amongst|around|as|aside|astride|at|athwart|atop|barring|before|behind|below|beneath|beside|besides|between|beyond|but|by|circa|concerning|despite|down|during|except|excluding|failing|following|for|from|given|in|including|inside|into|like|mid|minus|near|next|notwithstanding|of|off|on|onto|opposite|out|outside|over|pace|past|per|plus|qua|regarding|round|save|since|than|through|throughout|till|times|to|toward|towards|under|underneath|unlike|until|up|upon|versus|via|with|within|without|worth ?));The planet that we live on is of medium size.
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?s"	"?s-s")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	subj_MVp	subject-subject_samAnAXikaraNa	"?s"	"?s-s"	)"crlf)	
)
;Ex.  The third tree was cut into large pieces and left alone in the dark . 
;----------------------------------------------------------------------------------------------------------------
(defrule det-all
(declare (salience 200))
(link_name-link_lnode-link_rnode Pp ?kriyA ?x)
?f1<-(link_name-link_lnode-link_rnode J ?x ?y)
?f0<- (link_name-link_lnode-link_rnode Jp ?y ?head)
(link_name-link_lnode-link_rnode ALx ?a ?b)
(root-verbchunk-tam-parser_chunkids $?c ?kriyA)
(parserid-word ?x ?viBakwi )
;(parserid-word ?x ?viBakwi ?)
=>
(retract ?f0 ?f1)
(printout	?*fp*	"(prep_id-relation-parser_ids "?x"	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?x"	det-all	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)	
)
;Ex.   The shame of the priest is on all our minds. 
;----------------------------------------------------------------------------------------------------------------
(defrule rule82
(link_name-link_lnode-link_rnode SI|SIs|SIp|SIs*b|SIpx|SXI ?z ?y)
(not (kriyA-subject_rel_has_been_deceded_by_'kriyA-subject_invertion_and'_rule))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule82	kriyA-subject	"?z"	"?y")"crlf)	
)
;Ex.	Is Anand  a doctor, Are you a doctor
;----------------------------------------------------------------------------------------------------------------
(defrule rule136
(link_name-link_lnode-link_rnode SFs|SFsi ?x ?y)
(link_name-link_lnode-link_rnode Osi ?y ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule136	kriyA-subject	"?y"	"?z")"crlf)	
)
;Ex.	It is likely that Jane will go. 
;----------------------------------------------------------------------------------------------------------------
(defrule rule140
(declare (salience 180))
(link_name-link_expansion    ?lname   S I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode B*w|Bsw|Bpw|Bsm|Bpm|Bpmt ?z ?kri)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kri);ex. Who did you play tennis with ?
(test (member$ ?kri $?chunk_ids));What did John say that he thought you should do? 
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?kri"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule140	kriyA-subject	"?kri"	"?y")"crlf)	
)
;Ex.	Which book do you want? Who did you see yesterday?
;----------------------------------------------------------------------------------------------------------------
(defrule rule177
(declare (salience 710))
(link_name-link_lnode-link_rnode Spx ?i ?j)
(link_name-link_lnode-link_rnode Pv ?k ?l)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?l"	"?i")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule177	kriyA-subject	"?l"	"?i")"crlf)	
)
;Ex.	These fruits are to be eaten.

;KRIYA-OBJECT RELATION RULES:
;----------------------------------------------------------------------------------------------------------------
(defrule rule_O_TI
(or (root-verbchunk-tam-parser_chunkids $?c ?kriyA) (link_name-link_lnode-link_rnode If ?to ?kriyA)  (link_name-link_lnode-link_rnode I ?to ?kriyA)) ; ex. 4 'If' condition: "He was to become president." ex. 4 condition 'I' They seem to resemble each other .
(link_name-link_lnode-link_rnode  O|TI  ?kriyA ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?kriyA"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule_O_TI	kriyA-object	"?kriyA"	"?y")"crlf)	
)
;Ex.    A party is taking place so if you would like to show up you should do so. She was named president of the company .
;----------------------------------------------------------------------------------------------------------------

(defrule rule_O_I_for_Let
(root-verbchunk-tam-parser_chunkids $?c ?kriyA) 
(link_name-link_expansion    ?lname    O x)
(link_name-link_lnode-link_rnode  ?lname ?let ?obj)
(link_name-link_lnode-link_rnode  I  ?let  ?kriyyA)
(parserid-word ?let let )
;(parserid-word ?let let ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?kriyA"	"?obj")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule_O_I_for_let	kriyA-object	"?kriyA"	"?obj")"crlf)	
)
; Added by Shirisha Manju (suggested by Sheetal)
;Ex : Let us go to the market.
;----------------------------------------------------------------------------------------------------------------

(defrule object_0
(link_name-link_lnode-link_rnode MVzo  ?kriyA1 ?ob)
(link_name-link_lnode-link_rnode Bc ?ob  ?kriyA2)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?kriyA2"	"?ob")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	object_0	kriyA-object	"?kriyA2"	"?ob")"crlf)	
)
;Ex.   Take as much time as you like .
;----------------------------------------------------------------------------------------------------------------
(defrule object_1
(link_name-link_lnode-link_rnode BT ?ob ?kriyA)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?kriyA"	"?ob")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	object_1	kriyA-object	"?kriyA"	"?ob")"crlf)	
)
;Ex. How many years did it last? NOTE: second parse for this sentence is correct.
;----------------------------------------------------------------------------------------------------------------
(defrule det_vi
(link_name-link_lnode-link_rnode TQ ?det ?vi)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-det_viSeRaNa	"?vi"	"?det")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	det_vi	viSeRya-det_viSeRaNa	"?vi"	"?det")"crlf)	
)
;Ex. How many years did it last? NOTE: second parse for this sentence is correct.
;----------------------------------------------------------------------------------------------------------------
(defrule rule2
(and (link_name-link_expansion    ?lname    O ~N $?v) (link_name-link_expansion    ?lname    O ~F $?v)  (link_name-link_expansion    ?lname    O $?vars ~t) (link_name-link_expansion    ?lname    O $?vars ~c));This "~t" condition is to restrict kriyA-object relation between 'is' and 'doctor' in "He is a doctor".
(or (link_name-link_lnode-link_rnode  ?lname  ?x ?y)(link_name-link_lnode-link_rnode  O  ?x ?y))
(parserid-word ?x ~let ) ;Added by Manju Ex : Let us go to the market
;(parserid-word ?x ~let ?) ;Added by Manju Ex : Let us go to the market
(not (or (kriyA-object_rel_has_been_deceded_by_'kriyA-object_and'_rule ?x) (kriyA-object_2_rel_has_been_deceded_by_'kriyA-object_2_and'_rule ?x)));I knocked my cup and saucer and spilled the coffee .
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule2	kriyA-object	"?x"	"?y")"crlf)	
)
;Ex	."The dog CHASED the CAT"."The dog CHASED the CATS". As a mark of respect he TOOK off his HAT.
 ; Ex : Let us go to the market
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-object_bit
(declare (salience 715))
?f0<- (link_name-link_expansion    ?O    O $?vars )
(link_name-link_lnode-link_rnode  ?O  ?x ?y)
(parserid-word ?y  bit|some )
;(parserid-word ?y  bit|some  ?)
(link_name-link_lnode-link_rnode  Mp  ?y ?prep)
(link_name-link_expansion    ?J    J $?var )
(link_name-link_lnode-link_rnode  ?J  ?prep ?object)
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?x"	"?object")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-object_bit	kriyA-object	"?x"	"?object")"crlf)	
)
;Ex     I ATE a bit of BICUIT. I know some of the people.
;----------------------------------------------------------------------------------------------------------------
(defrule rule13
(declare (salience 2))
(or(link_name-link_expansion    ?lname    B s ~t)(link_name-link_expansion    ?lname    B p ~t)(link_name-link_expansion    ?lname    B * ~t) (link_name-link_expansion    ?lname    B s )(link_name-link_expansion    ?lname    B p) )
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(not (or (link_name-link_lnode-link_rnode Rn ?x ?z) (link_name-link_lnode-link_rnode MVp ?a ?y)  (link_name-link_lnode-link_rnode RS ?b ?y) (link_name-link_lnode-link_rnode R ?x ?c)))
;Ex. The boy who you called yesterday has arrived. Which of your parents do you feel closer to?
(not (got_relation_for_R_link)) ;this condition is to stop this rule in "The boy who you called yesterday has arrived" such sentences
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule13	kriyA-object	"?y"	"?x")"crlf)	
)
;Ex.	WHO did you SEE yesterday?
;----------------------------------------------------------------------------------------------------------------

;This rule is written to show kriyA-object_1 and kriyA-object_2 relations in the sentences that have ditransitive verbs.
;Date 21/02/09

(defrule rule15
(declare (salience 999))
?f0<-(link_name-link_expansion    ?lname    O $?vars n) 
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
?f1<-(link_name-link_expansion    ?O    O $?var ~n)
(link_name-link_lnode-link_rnode  ?O  ?x ?z)
(not (kriyA-object_2_rel_has_been_deceded_by_'kriyA-object_2_and'_rule))
=>
(retract ?f1 ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object_2	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule15	kriyA-object_2	"?x"	"?y")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object_1	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule15	kriyA-object_1	"?x"	"?z")"crlf)	
)
;Ex.	I gave him on Tuesday five  expensive presents, I gave him on Tuesday an  expensive present
;----------------------------------------------------------------------------------------------------------------
(defrule rule30
(link_name-link_lnode-link_rnode BW ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule30	kriyA-object	"?y"	"?x")"crlf)	
)
;Ex.	 "WHAT do you THINK?".
;----------------------------------------------------------------------------------------------------------------
(defrule  kriyA-obj
(declare (salience 200))
?f0<- (link_name-link_lnode-link_rnode ALx ?x ?y)
?f1<- (link_name-link_lnode-link_rnode Jp ?x ?z)
(link_name-link_expansion ?O O $?var)
?f2<- (link_name-link_lnode-link_rnode ?O ?kriyA ?s)
=>
(retract ?f0 ?f1 ?f2)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?kriyA"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-obj	kriyA-object	"?kriyA"	"?z")"crlf)	
)
;Ex. One may not have all the competence necessary for doing a task.
;----------------------------------------------------------------------------------------------------------------
(defrule rule36
(link_name-link_lnode-link_rnode AM ?a ?b)
(link_name-link_lnode-link_rnode Oy ?c ?b)
(parserid-word ?b much )
;(parserid-word ?b much ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?c"	"?a","?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule36	kriyA-object	"?c"	"?a","?b")"crlf)	
)
;Ex.	He earns as much  as was expected. He earns as much.

;I NEED TO DISCUSS RULES 54 & 55 
;----------------------------------------------------------------------------------------------------------------
(defrule rule68
(declare (salience 105))
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(link_name-link_lnode-link_rnode Paf ?y ?z)
(link_name-link_lnode-link_rnode B ?z ?a)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-raised_subject	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule68	kriyA-raised_subject	"?y"	"?x")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?y"	"?a")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule68	kriyA-object	"?y"	"?a")"crlf)	
)
;Ex.	John is easy to  hit. I am easy to  hit
;THIS RULE IS INCOMPLETE 
;----------------------------------------------------------------------------------------------------------------
(defrule rule144
(declare (salience 290))
(link_name-link_lnode-link_rnode R ?a ?b)
(link_name-link_lnode-link_rnode RS ?b ?c)
(link_name-link_lnode-link_rnode Pv ?c ?d)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?d"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule144	kriyA-subject	"?d"	"?b")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?d"	"?a")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule144	kriyA-object	"?d"	"?a")"crlf)	
)
;Ex.	The dog which was chased by the man died.
;----------------------------------------------------------------------------------------------------------------
(defrule rule144_1
(declare (salience 290))
(link_name-link_lnode-link_rnode RS ?b ?c)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?c"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule144_1	kriyA-subject	"?c"	"?b")"crlf)	
)
;Ex.   God helps those who help themselves.
;----------------------------------------------------------------------------------------------------------------
(defrule kqxanwa_kriyA-prep
(link_name-link_expansion    ?O O $?v)
(link_name-link_lnode-link_rnode ?O ?a ?b)
(link_name-link_lnode-link_rnode Mv ?b ?c)
(link_name-link_lnode-link_rnode MVp ?c ?d)
(link_name-link_expansion    ?J J $?va)
(link_name-link_lnode-link_rnode ?J ?d ?e)
(parserid-word ?d ?viBakwi )
;(parserid-word ?d ?viBakwi ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?d"	kriyA-"?viBakwi"_saMbanXI	"?b"	"?e")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?d"	kqxanwa_kriyA-prep	kriyA-"?viBakwi"_saMbanXI	"?b"	"?e")"crlf)	
)
;Ex.   This is a sample sentence given by me. This is a sample sentence written in this room. 
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-aXi
(declare (salience 200))
(or (link_name-link_expansion    ?S   S ~F $?vars)(link_name-link_expansion  ?S  S ~I $?vars))
(link_name-link_lnode-link_rnode ?S ?x ?y)
(link_name-link_expansion    ?DT   D T  $?var)
(link_name-link_lnode-link_rnode  ?DT ?det ?aXi)
?f0<- (link_name-link_lnode-link_rnode  Mpn ?x ?aXi)
(root-verbchunk-tam-parser_chunkids $? ?y ?head)
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?head"	"?aXi")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-aXi	kriyA-kAlavAcI	"?head"	"?aXi")"crlf)	
)
;Ex.    The party that NIGHT had BEEN a big success
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-aXi_1
(or (link_name-link_expansion    ?S   S ~F $?vars)(link_name-link_expansion  ?S  S ~I $?vars))
(link_name-link_lnode-link_rnode ?S ?x ?y)
(link_name-link_expansion    ?DT   D T  $?var)
(link_name-link_lnode-link_rnode  ?DT ?det ?aXi)
(link_name-link_lnode-link_rnode  Mpn ?x ?aXi)
(root-verbchunk-tam-parser_chunkids $? ?head)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?head"	"?aXi")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-aXi_1	kriyA-kAlavAcI	"?head"	"?aXi")"crlf)	
)
;Ex.    The party that NIGHT was a big success
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-aXi_2
(declare (salience 520))
(or (link_name-link_expansion    ?S   S ~F $?vars)(link_name-link_expansion  ?S  S ~I $?vars))
(link_name-link_lnode-link_rnode ?S ?x ?y)
(link_name-link_expansion    ?DT   D T  $?var)
(link_name-link_lnode-link_rnode  ?DT ?det ?aXi)
(link_name-link_expansion    ?CO C O $?vari)
(link_name-link_lnode-link_rnode  ?CO ?aXi ?x)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?y"	"?aXi")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-aXi_2	kriyA-kAlavAcI	"?y"	"?aXi")"crlf)	
)
;Ex.     Last week I saw a great movie.
;----------------------------------------------------------------------------------------------------------------
;KRIYA-AXIKARANA RELATION RULES:
(defrule rule16
(declare (salience 97))
(link_name-link_lnode-link_rnode MVp ?a ?b)
(link_name-link_lnode-link_rnode IN ?b ?c)
(link_name-link_lnode-link_rnode TA ?d ?c)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-viSeRaNa	"?d"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule16	viSeRya-viSeRaNa	"?d"	"?c")"crlf)	
)
;Ex.	I did it in late December.
;----------------------------------------------------------------------------------------------------------------
(defrule rule17
(link_name-link_lnode-link_rnode PF ?x ?y)
(parserid-word ?x when )
;(parserid-word ?x when ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule17	kriyA-kAlavAcI	"?y"	"?x")"crlf)	
)
;Ex.	When will it be?
;----------------------------------------------------------------------------------------------------------------
(defrule where_1
(link_name-link_lnode-link_rnode PF|WR ?x ?y)
(parserid-word ?x where )
;(parserid-word ?x where ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-aXikaraNavAcI_avyaya	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	where_1	kriyA-aXikaraNavAcI_avyaya	"?y"	"?x")"crlf)	
)
;Ex.    Where are you? Where did you put the milk?
;----------------------------------------------------------------------------------------------------------------
(defrule rule18
(declare (salience 510))
(link_name-link_lnode-link_rnode TD ?x ?y)
?f0<- (link_name-link_lnode-link_rnode MVpn ?z ?x)
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule18	kriyA-kAlavAcI	"?z"	"?y")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-viSeRaNa	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule18	viSeRya-viSeRaNa	"?x"	"?y")"crlf)	
)
;Ex.	We will do it Monday morning
;----------------------------------------------------------------------------------------------------------------
(defrule rule41
(declare (salience 525))
(link_name-link_lnode-link_rnode DTi ?x ?y)
?f0<- (link_name-link_lnode-link_rnode MVpn ?z ?y)
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule41	kriyA-kAlavAcI	"?z"	"?y")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule41	viSeRya-viSeRaNa	"?y"	"?x")"crlf)	
)
;Ex.	"I'm going to London NEXT WEEK".
;----------------------------------------------------------------------------------------------------------------
(defrule rule43
(declare (salience 535))
(link_name-link_lnode-link_rnode DTn ?x ?y)
(link_name-link_lnode-link_rnode MVpn ?z ?y)
(not (link_name-link_lnode-link_rnode Pa|Paf ?a ?z)) ;to stop this rel in the such sents: "The yield of kharif crops was not good this season."
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule43	kriyA-kAlavAcI	"?z"	"?y")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-det_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule43	viSeRya-det_viSeRaNa	"?y"	"?x")"crlf)	
)
;Ex.	I'm going to London THIS MONDAY
;----------------------------------------------------------------------------------------------------------------
(defrule rule64
(link_name-link_lnode-link_rnode MVp ?a ?b)
(link_name-link_lnode-link_rnode TY ?c ?d)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?a"	"?d")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule64	kriyA-kAlavAcI	"?a"	"?d")"crlf)	
)
;Ex.	I saw him on January 21 , 1990
;----------------------------------------------------------------------------------------------------------------
(defrule rule65
(link_name-link_lnode-link_rnode MVp ?a ?b)
(link_name-link_lnode-link_rnode TM ?c ?d)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?a"	"?d")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule65	kriyA-kAlavAcI	"?a"	"?d")"crlf)	
)
;Ex.	I saw him on January 21 , 1990
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-kAlavAcI_1
(link_name-link_lnode-link_rnode MVpn ?a ?b)
(link_name-link_lnode-link_rnode Ye ?b ?d)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?a"	"?d")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-kAlavAcI_1	kriyA-kAlavAcI	"?a"	"?d")"crlf)	
)
;Ex.    Someone is mugged in New York every five minutes. We swim every three weeks.
;----------------------------------------------------------------------------------------------------------------
(defrule rule66
(link_name-link_lnode-link_rnode MVp|Ix ?a ?b)
(link_name-link_lnode-link_rnode TW ?c ?d)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?a"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule66	kriyA-kAlavAcI	"?a"	"?c")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?a"	"?d")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule66	kriyA-kAlavAcI	"?a"	"?d")"crlf)	
)
;Ex.	The meeting will be on MONDAY, JANUARY 21
;----------------------------------------------------------------------------------------------------------------
(defrule rule67
(link_name-link_lnode-link_rnode MVp|Ix ?a ?b)
(link_name-link_lnode-link_rnode TM ?c ?d)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?a"	"?d")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule67	kriyA-kAlavAcI	"?a"	"?d")"crlf)	
)
;Ex.	The meeting will be on Monday, January 21 
;----------------------------------------------------------------------------------------------------------------
(defrule rule83
(link_name-link_lnode-link_rnode Q ?a ?b)
(root-verbchunk-tam-parser_chunkids ? ? $?chunks ?kriyA)
(test (member$ ?b $?chunks))
(parserid-word ?a when )
;(parserid-word ?a when ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?kriyA"	"?a")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule83	kriyA-kAlavAcI	"?kriyA"	"?a")"crlf)	
)
;Ex.	When did he go?  When are you going?
;----------------------------------------------------------------------------------------------------------------
(defrule MVs+Mv
(link_name-link_lnode-link_rnode MVs ?a ?b)
(link_name-link_lnode-link_rnode Mv  ?b ?c)
(parserid-word ?b when )
;(parserid-word ?b when ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	MVs+Mv	kriyA-kAlavAcI	"?a"	"?b")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?c"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	MVs+Mv	kriyA-kAlavAcI	"?c"	"?b")"crlf)	
)
;Ex.   She cried when asked about it.
;----------------------------------------------------------------------------------------------------------------
(defrule where
(link_name-link_lnode-link_rnode Q ?a ?b)
(link_name-link_lnode-link_rnode I*d|I ?b ?c)
(parserid-word ?a where )
;(parserid-word ?a where ?)
(not(link_name-link_lnode-link_rnode MVp ?c ?y)) ;Ex. 4 this condition: "Where did they come from?"
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-aXikaraNavAcI_avyaya	"?c"	"?a")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	where	kriyA-aXikaraNavAcI_avyaya	"?c"	"?a")"crlf)	
)
;Ex.    Where did he go.
;----------------------------------------------------------------------------------------------------------------
(defrule where-con
(link_name-link_expansion    ?S S $?var)
(link_name-link_lnode-link_rnode ?S ?a ?v)
(link_name-link_lnode-link_rnode MVp ?v ?prep)
(parserid-word ?prep ?viBakwi )
;(parserid-word ?prep ?viBakwi ?)
(link_name-link_lnode-link_rnode Cs  ?c ?a)
(parser_id-root ?prep ?now)
(not (parser_id-root ?prep again|later|here|there|somewhere|anywhere|everywhere|now|outside|longer))
(not (link_name-link_lnode-link_rnode J|Js|Jp ?prep ?n))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?prep"	kriyA-"?viBakwi"_saMbanXI	"?v"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?prep"	where-con	kriyA-"?viBakwi"_saMbanXI	"?v"	"?c")"crlf)	
)
;Ex.    Can you tell us where those strange ideas came from?
;----------------------------------------------------------------------------------------------------------------
(defrule rule125
(link_name-link_lnode-link_rnode MVpn ?z ?x)
(not (link_name-link_lnode-link_rnode Pa|Paf ?y ?z)) ;to stop this rel in the such sents: "The yield of kharif crops was not good this season."
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule125	kriyA-kAlavAcI	"?z"	"?x")"crlf)	
)
;Ex.	He came early today.
;----------------------------------------------------------------------------------------------------------------
(defrule S_Pa_MVpn
(link_name-link_expansion    ?S S $?var)
(link_name-link_lnode-link_rnode ?S ?s ?v)
(link_name-link_expansion    ?Pa P a $?vari)
(link_name-link_lnode-link_rnode ?Pa  ?v ?p)
(link_name-link_lnode-link_rnode MVpn ?p ?kal)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?v"	"?kal")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	S_Pa_MVpn	kriyA-kAlavAcI	"?v"	"?kal")"crlf)	
)
;Ex.   The yield of kharif crops was not good this season.
;----------------------------------------------------------------------------------------------------------------
;VISERYA-VISERANA RELATION RULES:
(defrule rule71
(declare (salience 1))
?f0<- (link_name-link_lnode-link_rnode ALx ?x ?y)
?f1<- (link_name-link_lnode-link_rnode Jp ?x ?z)
=>
(retract ?f0 ?f1)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule71	viSeRya-viSeRaNa	"?z"	"?x")"crlf)	
)
;Ex.	we worked all the time
;----------------------------------------------------------------------------------------------------------------
(defrule rule74
(link_name-link_expansion    ?lname    D $?vars)
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(link_name-link_lnode-link_rnode La ?x ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-viSeRaNa	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule74	viSeRya-viSeRaNa	"?y"	"?z")"crlf)	
)
;Ex.	He has the biggest room, he has the biggest bats, he has the biggest bat,  he has the biggest car
;----------------------------------------------------------------------------------------------------------------
(defrule rule3
(link_name-link_lnode-link_rnode  A|Ah  ?x ?y) ;ex. 4 'Ah':The e-mail message which you sent finally arrived yesterday.
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule3	viSeRya-viSeRaNa	"?y"	"?x")"crlf)	
)
;Ex.	The BIG BLACK UGLY DOG chased me.
;----------------------------------------------------------------------------------------------------------------
(defrule L_viSeRya-viSeRaNa
(declare (salience 700))
(link_name-link_expansion    ?D    D $?vars)
(link_name-link_lnode-link_rnode  ?D  ?x ?y)
(link_name-link_lnode-link_rnode  L|Lf|La  ?x ?z);ex. 4 'Lf': Can we open a second browser window?  
(parser_id-cat_coarse ?z adjective|-)
;(parserid-word ?z ? adjective|-)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-viSeRaNa	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	L_viSeRya-viSeRaNa	viSeRya-viSeRaNa	"?y"	"?z")"crlf)	
)
;Ex.   We caught the last bus for home.
;----------------------------------------------------------------------------------------------------------------

;VISERYA-det_VISERANA RELATION RULES:
(defrule rule4
(link_name-link_expansion    ?lname    D $?vars)
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(not (viSeRya-det_viSeRaNa_rel_has_been_deceded_by_'viSeRya_det_viSeRaNa_and'rule ?x))
(not (viSeRya-det_viSeRaNa_rel_has_been_decided_by_rule_viSeRya-saMKyA_vi_DD ?y))
(not (link_name-link_lnode-link_rnode  YS|YP  ?z ?x)) ;ex. 4 this cond. His bed was next to the room's only window.
(not (viSeRya-det_viSeRaNa_rel_has_been_decided_by_rule_RaRTI_saMbanXI_1 ?x))
(not (got_RaRTI_viSeRaNa_rel ?y))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-det_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule4	viSeRya-det_viSeRaNa	"?y"	"?x")"crlf)	
)
;Ex.	"THE DOG chased A CAT and SOME BIRDS"."I saw SOME BIRDS"."he eats 	MUCH RICE"."THE DOG barks"."She was such A good PROGRAMMER that they had to keep her.""WHICH BOOK do you want?""WHICH BOOK do you want?"
;----------------------------------------------------------------------------------------------------------------
(defrule rule77
(link_name-link_lnode-link_rnode NSa ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-det_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule77	viSeRya-det_viSeRaNa	"?y"	"?x")"crlf)	
)
;Ex.	I saw him A WEEK ago". ,"I saw him AN YEAR ago".
;----------------------------------------------------------------------------------------------------------------
;kriyA-kriyA_viSeRaNa RELATION RULES:
(defrule rule5
(link_name-link_lnode-link_rnode  MVa  ?x ?y)
(not(link_name-link_lnode-link_rnode Yt ?z ?y)) ;Ex. 4 this condition: "I saw him three weeks ago."
(not(link_name-link_lnode-link_rnode Pa|Paf|Pam ?z ?x)) ;Ex. 4 this condition: "It was biting cold outside."
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule5	kriyA-kriyA_viSeRaNa	"?x"	"?y")"crlf)	
)
;Ex. 	He runs quickly",
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA_vi_kala
(link_name-link_lnode-link_rnode  MVa|MVs  ?x ?y)
(link_name-link_lnode-link_rnode Yt ?z ?y)
(parserid-word ?y ?viBakwi )
;(parserid-word ?y ?viBakwi ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?y"	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?y"	kriyA_vi_kala	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?x"	"?y")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA_vi_kala	kriyA-kAlavAcI	"?x"	"?y")"	crlf)	
)
;Ex. I saw him three weeks ago. I saw him a week ago.
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA_vi
(link_name-link_lnode-link_rnode  MVl|MVb  ?x ?y)
(not (parserid-word ?y later|after ));ex. I saw her again a year and a half later.
;(not (parserid-word ?y later|after ?));ex. I saw her again a year and a half later.
(not (kriyA-kriyA_viSeRaNa_rel_has_been_dcd_by_kriyA_vi_Pa_rule ?y))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA_vi	kriyA-kriyA_viSeRaNa	"?x"	"?y")"crlf)	
)
;Ex. Such flowers are found mainly in Europe. Certain phenomena can be approached better by certain techniques.
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA_vi_Pa
(declare (salience 200))
(link_name-link_lnode-link_rnode Pa|Paf ?a ?x)
(link_name-link_lnode-link_rnode  MVl|MVb  ?x ?y)
=>
(assert (kriyA-kriyA_viSeRaNa_rel_has_been_dcd_by_kriyA_vi_Pa_rule ?y))
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?a"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA_vi_Pa	kriyA-kriyA_viSeRaNa	"?a"	"?y")"crlf)	
)
;Ex. It was cold there even in summer. 
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA_vi_1
(link_name-link_lnode-link_rnode  Q  ?x ?y)
(link_name-link_expansion   ?I I $?vars)
(link_name-link_lnode-link_rnode ?I ?y ?z)
(parserid-word ?x how )
;(parserid-word ?x how ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA_vi_1	kriyA-kriyA_viSeRaNa	"?z"	"?x")"crlf)	
)
;Ex. HOW do you OPERATE this machine?
;----------------------------------------------------------------------------------------------------------------
(defrule wh_word_hewuvAcI
(link_name-link_lnode-link_rnode  Q  ?x ?y)
(or (link_name-link_expansion   ?l P g $?vars)  (link_name-link_expansion   ?l I $?var)  (link_name-link_expansion   ?l P P $?va))
(link_name-link_lnode-link_rnode ?l ?y ?z)
(parserid-word ?x why )
;(parserid-word ?x why ?)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -      kriyA-wh_word_hewuvAcI    "?z"    "?x")"crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids -  wh_word_hewuvAcI      kriyA-wh_word_hewuvAcI    "?z"    "?x")"crlf)
)
;Ex. Why are you not doing your homework? Why have you done this? Why do you sleep in the night?
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA_vi_2
(link_name-link_lnode-link_rnode  EI  ?x ?y)
(link_name-link_expansion   ?MV   M V $?vars)
(link_name-link_lnode-link_rnode ?MV   ?v   ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?v"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA_vi_2	kriyA-kriyA_viSeRaNa	"?v"	"?x")"crlf)	
)
;Ex. I left soon after I saw you.
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA_vi_vi
(link_name-link_lnode-link_rnode  EEh  ?x ?y)
(parserid-word ?x how )
(not (parserid-word ?y much )) ;Ex. How much more efficient are they?
;(parserid-word ?x how ?)
;(not (parserid-word ?y much ?)) ;Ex. How much more efficient are they?
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA_vi_vi	kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka	"?y"	"?x")"crlf)	
)
;Ex.   I wonder how quickly Jane ran.
;----------------------------------------------------------------------------------------------------------------
(defrule vi_vi_1
(link_name-link_expansion   ?EE   E E x $?var)
(link_name-link_lnode-link_rnode  ?EE  ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	vi_vi_1	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)	
)
;Ex.  Of her childhood we know very littl. 
; Modified by manju (09-11-09) To generalise the rule
;       Ex: It is hard to absorb so much information . in this link name is EExk

;----------------------------------------------------------------------------------------------------------------
(defrule viSeRya_vi
(link_name-link_expansion    ?EC   E C $?vars)
(link_name-link_lnode-link_rnode  ?EC  ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viSeRya_vi	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)	
)
;Ex.  How much more efficient are they?
;----------------------------------------------------------------------------------------------------------------
(defrule rule32
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode Ca ?z	 ?x)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kri)
(test (or (member$ ?y $?chunk_ids) (eq ?kri ?y)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?kri"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule32	kriyA-kriyA_viSeRaNa	"?kri"	"?z")"crlf)	
)
;Ex.	I wonder how QUICKLY Jane RAN?
;----------------------------------------------------------------------------------------------------------------
(defrule ruleEm
(link_name-link_lnode-link_rnode E|Em ?x ?head_id)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kri)
(test (or (member$ ?head_id $?chunk_ids) (eq ?kri ?head_id)))
(not (wall_conjunction_rel_has_been_dcd_by_rule'rule119' ?a))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?kri"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	ruleEm	kriyA-kriyA_viSeRaNa	"?kri"	"?x")"crlf)	
)
;Ex.    He is APPARENTLY LEAVING.
;The "Em" vaalii condition is added to handle this sentence:  He has been frequently coming. 
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-kriyA_vi
(link_name-link_expansion    ?EB   E B $?vars)
(link_name-link_lnode-link_rnode ?EB ?x ?y)
(root-verbchunk-tam-parser_chunkids  $?ids ?kri)
(parserid-word ?y ?word&~not ) 
;(parserid-word ?y ?word&~not ?) 
(test (or (member$ ?x $?ids) (eq ?kri ?x)));ex.: There is still a ray of hope that the missing child will be found.
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?kri"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-kriyA_vi	kriyA-kriyA_viSeRaNa	"?kri"	"?y")"crlf)	
)
;Ex.He IS APPARENTLY a good programmer. A man , APPARENTLY in a bad mood , WAS there.
;----------------------------------------------------------------------------------------------------------------
(defrule rule47
(link_name-link_lnode-link_rnode EEh ?x ?y)
(link_name-link_lnode-link_rnode Qe ?y ?z)
(root-verbchunk-tam-parser_chunkids  $?ids ?kri); I do not know how much longer I can tolerate this.
(test (member$ ?z $?ids))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?kri"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule47	kriyA-kriyA_viSeRaNa	"?kri"	"?y")"crlf)	
)
;Ex.	"How QUICKLY did you RUN"
;----------------------------------------------------------------------------------------------------------------
(defrule  rule48
(link_name-link_lnode-link_rnode MVa ?x ?y)
(link_name-link_lnode-link_rnode I*d ?a ?b)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?b"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule48	kriyA-kriyA_viSeRaNa	"?b"	"?y")"crlf)	
)
;Ex.
;----------------------------------------------------------------------------------------------------------------
(defrule rule49
(link_name-link_lnode-link_rnode EF ?x ?y)
(link_name-link_lnode-link_rnode MVa ?a ?b)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule49	kriyA-kriyA_viSeRaNa	"?a"	"?b")"crlf)	
)
;Ex.	"He didn't run QUICKLY ENOUGH". 
;----------------------------------------------------------------------------------------------------------------
(defrule rule_EF
(declare (salience 600))
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kri);Ex. this condition is to stop "
(link_name-link_expansion    ?S    S $?var)
(link_name-link_lnode-link_rnode  ?S ?s ?v)
(link_name-link_expansion    ?Pa   P a $?vars)
(link_name-link_lnode-link_rnode  ?Pa ?kri ?y)
(link_name-link_lnode-link_rnode EF  ?y ?z)
=>
(assert (got_relation_for_pa))
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?s"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule_EF	subject-subject_samAnAXikaraNa	"?s"	"?z"	)"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRaNa-viSeRaka	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule_EF	viSeRaNa-viSeRaka	"?z"	"?y")"crlf)	
)
;Ex.    "He is GOOD ENOUGH.",  
;----------------------------------------------------------------------------------------------------------------
(defrule rule_MXpx
(link_name-link_lnode-link_rnode MVp ?a ?b)
(link_name-link_expansion    ?J    J $?vars)
(link_name-link_lnode-link_rnode  ?J ?b ?c)
(link_name-link_lnode-link_rnode MXpx ?c ?d)
(link_name-link_expansion    ?J1    J $?var)
(link_name-link_lnode-link_rnode  ?J1 ?d ?e)
(parserid-word ?d ?viBakwi )
;(parserid-word ?d ?viBakwi ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?d"	kriyA-"?viBakwi"_saMbanXI	"?a"	"?e")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?d"	rule_MXpx	kriyA-"?viBakwi"_saMbanXI	"?a"	"?e")"crlf)	
)
;Ex.    We like to eat at restaurants , particularly on weekends .
;----------------------------------------------------------------------------------------------------------------
(defrule saMKyA-saMKyA
(link_name-link_expansion    ?NN N N $?vars)
(link_name-link_lnode-link_rnode ?NN ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	saMKyA-saMKyA	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	saMKyA-saMKyA	saMKyA-saMKyA	"?x"	"?y")"crlf)	
)
;Ex.	Four hundred thousand million people live here. 
;----------------------------------------------------------------------------------------------------------------
(defrule rule100
(link_name-link_lnode-link_rnode Em ?x ?y)
(link_name-link_lnode-link_rnode MVi ?z ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule100	kriyA-kriyA_viSeRaNa	"?z"	"?x")"crlf)	
)
;Ex.	I had to run fast to catch the bus.
;----------------------------------------------------------------------------------------------------------------
(defrule rule135
(link_name-link_lnode-link_rnode SFs|SFsi ?x ?y)
(link_name-link_lnode-link_rnode Paf ?y ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule135	kriyA-kriyA_viSeRaNa	"?y"	"?z")"crlf)	
)
;Ex.	It is likely that Jane will go. 
;----------------------------------------------------------------------------------------------------------------
(defrule rule9
(link_name-link_lnode-link_rnode Us ?i ?j)
(parserid-word ?i per )
;(parserid-word ?i per ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-det_viSeRaNa	"?j"	"?i")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule9	viSeRya-det_viSeRaNa	"?j"	"?i")"crlf)	
)
;Ex.	We spend four dollars  per student.
;----------------------------------------------------------------------------------------------------------------
(defrule rule14
(link_name-link_lnode-link_rnode YP|YS ?x ?y)
(link_name-link_expansion    ?lname    D $?vars)
(link_name-link_lnode-link_rnode  ?lname ?x ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-RaRTI_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule14	viSeRya-RaRTI_viSeRaNa	"?z"	"?x")"crlf)	
)
;Ex.	John 's dog is black". The students' rooms are large
;----------------------------------------------------------------------------------------------------------------
(defrule RaRTI_saMbanXI
(declare (salience 535))
(link_name-link_expansion    ?lname    D $?vars)
?f0<-(link_name-link_lnode-link_rnode  ?lname ?x ?y)
(parserid-word ?x  his|her|my|our|your|their|its|My )
;(parserid-word ?x  his|her|my|our|your|their|its  ?)
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-RaRTI_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	RaRTI_saMbanXI	viSeRya-RaRTI_viSeRaNa	"?y"	"?x")"crlf)	
)
;Ex.	This is HIS BOOK. What is YOUR NAME?
;----------------------------------------------------------------------------------------------------------------
(defrule RaRTI_saMbanXI_1
(declare (salience 545))
?f0<-(link_name-link_lnode-link_rnode  DD ?x ?y)
(parserid-word ?x  his|her|my|our|your|their|its|My  )
;(parserid-word ?x  his|her|my|our|your|their|its  ?)
(link_name-link_expansion    ?D   D $?var)
(link_name-link_lnode-link_rnode  ?D ?y ?z)
=>
(retract ?f0)
(assert (viSeRya-det_viSeRaNa_rel_has_been_decided_by_rule_RaRTI_saMbanXI_1 ?z))
(assert (viSeRya-det_viSeRaNa_rel_has_been_decided_by_rule_RaRTI_saMbanXI_1 ?y))

(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-saMKyA_viSeRaNa	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	RaRTI_saMbanXI_1	viSeRya-saMKyA_viSeRaNa	"?z"	"?y")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-RaRTI_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	RaRTI_saMbanXI_1	viSeRya-RaRTI_viSeRaNa	"?z"	"?x")"crlf)	
)
;Ex.   My three sisters are coming next week.
;----------------------------------------------------------------------------------------------------------------
(defrule viSeRya-saMKyA_vi_DD
(declare (salience 55))
(link_name-link_lnode-link_rnode  DD ?x ?y)
(link_name-link_expansion    ?D   D $?var)
(link_name-link_lnode-link_rnode  ?D ?y ?z)
=>
(assert (viSeRya-det_viSeRaNa_rel_has_been_decided_by_rule_viSeRya-saMKyA_vi_DD ?z))
(assert (viSeRya-det_viSeRaNa_rel_has_been_decided_by_rule_viSeRya-saMKyA_vi_DD ?y))
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-saMKyA_viSeRaNa	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viSeRya-saMKyA_vi_DD	viSeRya-saMKyA_viSeRaNa	"?z"	"?y")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-det_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viSeRya-saMKyA_vi_DD	viSeRya-det_viSeRaNa	"?z"	"?x")"crlf)	
)
;Ex.  Do you think these two colours match ? 
;----------------------------------------------------------------------------------------------------------------
(defrule rule20
(link_name-link_lnode-link_rnode Pa**j ?x ?y)
(link_name-link_lnode-link_rnode Os|Op|Ox ?x ?z)
(not (object-object_samAnAXikaraNa_rel_has_been_deceded_by_'object_samAnAXikaraNa_and'_rule))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	object-object_samAnAXikaraNa	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule20	object-object_samAnAXikaraNa	"?z"	"?y")"crlf)	
)
;Ex.	 "I MADE him HAPPY", "You MAKE me HAPPY".
;----------------------------------------------------------------------------------------------------------------
(defrule sub-s_s
(link_name-link_expansion ?SI    S I $?var)
(link_name-link_lnode-link_rnode ?SI ?x ?sub)
(link_name-link_lnode-link_rnode Pam   ?kriyA  ?s_s)
(link_name-link_expansion ?I I $?vari)
(link_name-link_lnode-link_rnode ?I ?x ?kriyA)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?sub"	"?s_s")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	sub-s_s	subject-subject_samAnAXikaraNa	"?sub"	"?s_s")"crlf)	
)
;Ex. Which of your parents do you feel closer to?
;----------------------------------------------------------------------------------------------------------------
(defrule sub-s_s_1
(link_name-link_expansion ?S    S  $?var)
(link_name-link_lnode-link_rnode ?S ?sub ?v)
(link_name-link_lnode-link_rnode Pv ?v ?p_v)
(link_name-link_expansion ?Pa    P a  $?vari)
(link_name-link_lnode-link_rnode ?Pa    ?p_v ?s_s)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?sub"	"?s_s")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	sub-s_s_1	subject-subject_samAnAXikaraNa	"?sub"	"?s_s")"crlf)	
)
;Ex. 
;----------------------------------------------------------------------------------------------------------------
(defrule subject_samAnAXikaraNa
(declare (salience 300))
(link_name-link_lnode-link_rnode AF|AFm ?x ?y)
(link_name-link_expansion  ?SI  S I $?vars)
(link_name-link_lnode-link_rnode  ?SI   ?y ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?z"	"?x")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	subject_samAnAXikaraNa	subject-subject_samAnAXikaraNa	"?z"	"?x"	)"crlf)	
)
;Ex.	How good are your friends? How big is it? How much better is it? 
;----------------------------------------------------------------------------------------------------------------
(defrule subject_samAnAXikaraNa1
(declare (salience 300))
(link_name-link_lnode-link_rnode AF|AFm ?x ?y)
(link_name-link_expansion  ?S  S ~I $?vars)
(link_name-link_lnode-link_rnode  ?S   ?z ?y)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?y $?chunk_ids))
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -      subject-subject_samAnAXikaraNa  "?z"    "?x")"  crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids -  subject_samAnAXikaraNa1  subject-subject_samAnAXikaraNa  "?z"    "?x"    )"crlf)
)
;Ex : I wonder how big the department is .
;----------------------------------------------------------------------------------------------------------------
(defrule sub-samA_RS_Pa
(link_name-link_lnode-link_rnode RS ?x ?y)
(link_name-link_lnode-link_rnode Pa ?y ?z)
(not (subject-subject_samAnAXikaraNa_rel_has_been_deceded_by_'subject_samAnAXikaraNa_and'_rule))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	sub-samA_RS_Pa	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
)
;Ex.  The snake which was injured hissed loudly.  
;----------------------------------------------------------------------------------------------------------------
(defrule rule26
(link_name-link_lnode-link_rnode AN ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	samAsa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule26	samAsa	"?y"	"?x")"crlf)	
)
;Ex.	The TAX PROPOSAL was rejected.
;----------------------------------------------------------------------------------------------------------------
(defrule rule27
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode BIt ?y ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule27	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
)
;Ex.	He is president of the company.
;----------------------------------------------------------------------------------------------------------------
(defrule rule28
(link_name-link_lnode-link_rnode MVp|Pp|MVx ?z ?x)
(link_name-link_lnode-link_rnode Js|Jp|J|IN|ON|TI ?x ?y) ;"TI" is added for the ex. "Mr . John Smith , 66 years old , will succeed him as president."
(parserid-word ?x ?viBakwi )
;(parserid-word ?x ?viBakwi ?)
(not (got_relation_for_MVp_link))
(not (link_name-link_lnode-link_rnode Pg|Pgf|Paf ?a ?z)) 
(not (link_name-link_lnode-link_rnode MF ?xx ?x));ex. 4 this: Many people were injured , some of them children. 
(not (kriyA-'viBakwi'_saMbanXI_rel_has_been_deceded_by_'kriyA-'viBakwi'_saMbanXI_and'_rule ?x))
(not (kriyA-'viBakwi'_saMbanXI_rel_has_been_deceded_by_'kri-viB_sam_MVl'_rule ?y))
(not (has_been_included_in_larger_group_by_rule_prep_IDIOM-MVp ?y));Added by Shirisha Manju (01-03-11)Ex:The camels can adjust their body temperature according to the external temperature. 
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?x"	kriyA-"?viBakwi"_saMbanXI	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?x"	rule28	kriyA-"?viBakwi"_saMbanXI	"?z"	"?y")"crlf)	
)
;Ex. the dog RAN in the YARD". We did it in December. I saw him on January 21. Ravana was killed by RAma.  There are flowers in the garden. He was in the yard. John left ,   with the dog. 
;----------------------------------------------------------------------------------------------------------------
(defrule Paf_MVp
(declare (salience 200))
(link_name-link_lnode-link_rnode Pa|Paf ?v ?x)
(link_name-link_lnode-link_rnode MVp|Pp|MVx ?x ?y)
(link_name-link_lnode-link_rnode Js|Jp|J|IN|ON|FM|FL ?y ?z)
(parserid-word ?y ?viBakwi )
;(parserid-word ?y ?viBakwi ?)
=>
(assert (kriyA-viBakwi_saMbanXI_rel_has_been_dcd_by_'Paf_MVp'_rule ?x))
(printout	?*fp*	"(prep_id-relation-parser_ids "?y"	kriyA-"?viBakwi"_saMbanXI	"?v"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?y"	Paf_MVp	kriyA-"?viBakwi"_saMbanXI	"?v"	"?z")"crlf)	
)
;Ex.  These shoes that I bought will look nice with that hat. Running is good for health. It will look nice for long.
;----------------------------------------------------------------------------------------------------------------
(defrule rule_MF
(link_name-link_lnode-link_rnode Pv ?kri ?z)
(link_name-link_lnode-link_rnode MVp|Pp|MVx ?z ?x)
(link_name-link_lnode-link_rnode Js|Jp|J|IN|ON ?x ?y)
(link_name-link_lnode-link_rnode MF  ?a ?x)
(link_name-link_expansion  ?ID   I D  $?vars)
(link_name-link_lnode-link_rnode ?ID  ?prep ?x)
(parserid-word ?prep ?viBakwi )
;(parserid-word ?prep ?viBakwi ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?prep"	kriyA-"?viBakwi"_saMbanXI	"?kri"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?prep"	rule_MF	kriyA-"?viBakwi"_saMbanXI	"?kri"	"?y")"crlf)	
)
;Ex. Many people were injured , some of them children.
;----------------------------------------------------------------------------------------------------------------
(defrule prep-kriyA_vi
(declare (salience 300))
(link_name-link_lnode-link_rnode MVl ?x ?y)
?f0<- (link_name-link_lnode-link_rnode MVp ?y ?z)
(link_name-link_expansion    ?J   J $?vars)
(or(link_name-link_lnode-link_rnode ?J ?z ?a) (link_name-link_lnode-link_rnode IN ?z ?a)(link_name-link_lnode-link_rnode ON ?z ?a))
(parserid-word ?z ?viBakwi )
(not (parser_id-cat_coarse ?x  adjective));It was cold there even in summer .
;(parserid-word ?z ?viBakwi ?)
;(not (parserid-word ?x ? adjective));It was cold there even in summer .
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids "?z"	kriyA-"?viBakwi"_saMbanXI	"?x"	"?a")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?z"	prep-kriyA_vi	kriyA-"?viBakwi"_saMbanXI	"?x"	"?a")"crlf)	
)
;Ex. Such flowers are found mainly in Europe.  
;----------------------------------------------------------------------------------------------------------------
(defrule rule29
(link_name-link_expansion    ?lname   S I $?vars)
(or (link_name-link_lnode-link_rnode ?lname ?x ?y)(link_name-link_lnode-link_rnode SXI ?x ?y))
(link_name-link_lnode-link_rnode BIt ?x ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule29	subject-subject_samAnAXikaraNa	"?y"	"?z")"crlf)	
)
;Ex.	"IS he PRESIDENT of the company".
;----------------------------------------------------------------------------------------------------------------
(defrule s-s_s
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_expansion  ?Pa P a $?va)
(link_name-link_lnode-link_rnode ?Pa ?y ?z)
(link_name-link_lnode-link_rnode EAy ?a ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	s-s_s	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
)
;Ex.    
;----------------------------------------------------------------------------------------------------------------
(defrule rule34
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode Pa|Paf ?y ?z)
(link_name-link_lnode-link_rnode Pafc ?a ?b)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?x"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule34	subject-subject_samAnAXikaraNa	"?x"	"?b")"crlf)	
)
;Ex.	HE is more intelligent than ATTRACTIVE.
;----------------------------------------------------------------------------------------------------------------
(defrule  subject_samAnAXikaraNa_2
(declare (salience 300))
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
?f1<- (link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode  ALx  ?x ?s)
(link_name-link_lnode-link_rnode  Jp ?x ?sub)
?f0<- (link_name-link_lnode-link_rnode Paf ?y ?z)
=>
(retract ?f0 ?f1)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?sub"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	subject_samAnAXikaraNa_2	subject-subject_samAnAXikaraNa	"?sub"	"?z")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?y"	"?sub")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	subject_samAnAXikaraNa_2	subject-subject_samAnAXikaraNa	"?y"	"?sub")"crlf)	
)
;Ex.    All his books are good.
;----------------------------------------------------------------------------------------------------------------
(defrule  lupwa_subject_kriyA
(link_name-link_lnode-link_rnode Wi ?x ?y)
(link_name-link_lnode-link_rnode Pa|Paf|Pafm|Pam|Ost|Opt ?y ?z)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -      lupwa_subject_kriyA-subject_samAnAXikaraNa  "?y"  "?z")"crlf)
(printout       ?*rel_debug* "(prep_id-Rule-Rel-ids -  lupwa_subject_kriyA   lupwa_subject_kriyA-subject_samAnAXikaraNa  "?y"  "?z")"crlf)
)
;Ex.  Be quiet, she said. Be a doctor.
;----------------------------------------------------------------------------------------------------------------
(defrule subject_samAnAXikaraNa_1
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode Pa|Paf|Pafm|Pam ?z ?a);ex. 4 Pafm: Their program is better than ours. for Pam: The rabit is faster than the tortoise. 
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?y $?chunk_ids)) ;this & the below condition is added to handle cases where Pa* and S* links are not directly related.
(test (member$ ?z $?chunk_ids))
(not (or (subject-subject_samAnAXikaraNa_rel_has_been_deceded_by_'subject_samAnAXikaraNa_and'_rule) (object-object_samAnAXikaraNa_rel_has_been_deceded_by_'object_samAnAXikaraNa_and'_rule)))
(not (subject-subject_samAnAXikaraNa_rel_has_been_deceded_by_'subject_samAnAXikaraNa_and_1'_rule ?a))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?x"	"?a")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	subject_samAnAXikaraNa_1	subject-subject_samAnAXikaraNa	"?x"	"?a")"crlf)	
)
;Ex.	 you should be proud of your achievment. These shoes that I bought will look nice with that hat.
;----------------------------------------------------------------------------------------------------------------
(defrule subject_samAnAXi3
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode TO ?y ?z)
(link_name-link_lnode-link_rnode Ix  ?z ?b)
(link_name-link_expansion  ?Pa P a $?)
(link_name-link_lnode-link_rnode ?Pa ?b ?a)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?x"	"?a")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	subject_samAnAXi3	subject-subject_samAnAXikaraNa	"?x"	"?a")"crlf)	
)
;Ex.   
;----------------------------------------------------------------------------------------------------------------
(defrule rule37
(link_name-link_lnode-link_rnode AA ?x ?y)
(link_name-link_lnode-link_rnode Ds ?y ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule37	viSeRya-viSeRaNa	"?z"	"?x")"crlf)	
)
;Ex.	How BIG A dog was it?

;----------------------------------------------------------------------------------------------------------------
(defrule rule39
(link_name-link_expansion    ?K   K $?vars) ;this condition is added for ex.  "We put the pie straight in." where 'Kx' and 'Ky' links are used.
(link_name-link_lnode-link_rnode ?K ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-upasarga	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule39	kriyA-upasarga	"?x"	"?y")"crlf)	
)
;Ex.	"He STOOD UP and WALKED OUT"
;----------------------------------------------------------------------------------------------------------------
(defrule rule42
(link_name-link_expansion    ?lname   S I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode Pa ?x ?z)
(not (subject-subject_samAnAXikaraNa_rel_has_been_deceded_by_'subject_samAnAXikaraNa_and'_rule))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule42	subject-subject_samAnAXikaraNa	"?y"	"?z")"crlf)	
)
;Ex.	 Are you ready for next week
;----------------------------------------------------------------------------------------------------------------
(defrule rule45
(link_name-link_lnode-link_rnode EAy|EAh|EA|EAm|EAxk|Ec|Em ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule45	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)	
)
;Ex.    She is a VERY GOOD player. John is less intelligent than Tom. John is more intelligent than Tom.We must adopt only good values from other cultures. "HOW STUPID can you be?" He was not as late as I expected. He is as smart.
;----------------------------------------------------------------------------------------------------------------
(defrule rule46
(link_name-link_lnode-link_rnode EE ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule46	kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka	"?y"	"?x")"crlf)	
)
;Ex.	"He ran VERY QUICKLY". 
;----------------------------------------------------------------------------------------------------------------
(defrule rule50
(link_name-link_lnode-link_rnode DG ?a ?b)
(link_name-link_lnode-link_rnode DG ?c ?d)
(link_name-link_lnode-link_rnode ER ?b ?d)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	jiwanA-wulanAwmaka_viSeRaNa	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule50	jiwanA-wulanAwmaka_viSeRaNa	"?a"	"?b")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	uwanA-wulanAwmaka_viSeRaNa	"?c"	"?d")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule50	uwanA-wulanAwmaka_viSeRaNa	"?c"	"?d")"crlf)	
)
;Ex.	The FASTER it is, the MORE they will like it
;----------------------------------------------------------------------------------------------------------------
(defrule rule52
(link_name-link_lnode-link_rnode G ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	proper_noun-waxviSiRta_proper_noun	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule52	proper_noun-waxviSiRta_proper_noun	"?x"	"?y")"crlf)	
)
;Ex.	"GEORGE HERBERT WALKER BUSH is here."
;----------------------------------------------------------------------------------------------------------------
(defrule rule53
(link_name-link_lnode-link_rnode GN ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	saMjFA-saMjFA_samAnAXikaraNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule53	saMjFA-saMjFA_samAnAXikaraNa	"?y"	"?x")"crlf)	
)
;Ex.	 "The ACTOR Eddie MURPHY attended the event".
;----------------------------------------------------------------------------------------------------------------
(defrule rule56
(link_name-link_lnode-link_rnode MG ?x ?y)
(link_name-link_lnode-link_rnode JG ?y ?z)
(parserid-word ?y ?viBakwi )
;(parserid-word ?y ?viBakwi ?)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?y"	viSeRya-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?y"	rule56	viSeRya-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)	
)
;Ex.	 "The EMIR OF Kuwait is here".
;----------------------------------------------------------------------------------------------------------------
(defrule vi_ya-viB_vi_Na
(declare (salience 200))
(link_name-link_lnode-link_rnode Pa  ?v  ?vi_ya)
(link_name-link_lnode-link_rnode MVp ?vi_ya ?prep)
(link_name-link_expansion    ?J J $?ver)
(link_name-link_lnode-link_rnode ?J  ?prep ?vi_Na)
(parserid-word ?prep  ?viBakwi )
;(parserid-word ?prep  ?viBakwi ?)
=>
(assert (got_relation_for_MVp_link))
(printout	?*fp*	"(prep_id-relation-parser_ids "?prep"	viSeRya-"?viBakwi"_saMbanXI	"?vi_ya"	"?vi_Na")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?prep"	vi_ya-viB_vi_Na	viSeRya-"?viBakwi"_saMbanXI	"?vi_ya"	"?vi_Na")"crlf)	
)
;Ex.     She is very careful about her work. She is angry about the decision.
;----------------------------------------------------------------------------------------------------------------
(defrule vi_ya-viB_vi_Na_1
(declare (salience 200))
(link_name-link_lnode-link_rnode Ma  ?v  ?vi_ya)
(link_name-link_lnode-link_rnode MVp ?vi_ya ?prep)
(link_name-link_expansion    ?J J $?ver)
(link_name-link_lnode-link_rnode ?J  ?prep ?vi_Na)
(parserid-word ?prep  ?viBakwi )
;(parserid-word ?prep  ?viBakwi ?)
=>
(assert (got_relation_for_MVp_link))
(printout	?*fp*	"(prep_id-relation-parser_ids "?prep"	viSeRya-"?viBakwi"_saMbanXI	"?vi_ya"	"?vi_Na")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?prep"	vi_ya-viB_vi_Na_1	viSeRya-"?viBakwi"_saMbanXI	"?vi_ya"	"?vi_Na")"crlf)	
)
;Ex.     We need a programmer knowledgeable about Lisp.
;----------------------------------------------------------------------------------------------------------------
(defrule dummy-jo_samAnAXikaraNa
(declare (salience 200))
(root-verbchunk-tam-parser_chunkids ? ? $?chunks ?y)
(link_name-link_lnode-link_rnode Bp|Bs ?z ?y)
(link_name-link_expansion    ?lname1 R n $?vars1)
(link_name-link_lnode-link_rnode ?lname1 ?z ?a)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-jo_samAnAXikaraNa	"?z"	"10000")"	crlf)	
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?y	"	10000)"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	dummy-jo_samAnAXikaraNa	kriyA-object	"?y"	10000)"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	dummy-jo_samAnAXikaraNa	viSeRya-jo_samAnAXikaraNa	"?z"	"10000")"	crlf)	
(printout	?*hmng_fp*	"(id-HM-source	10000	jo	Relative_clause)"	crlf)	
(printout	?*open-word*	"(id-word 10000	 who)"	crlf)
(printout       ?*open-orign*   "(id-original_word 10000  who)"   crlf)	
)
;Ex.  The dog I chased was black .
;----------------------------------------------------------------------------------------------------------------
(defrule dummy-viBakwi_saMbanXI
(declare (salience 200))
(parserid-word ?prep  aboard|about|above|across|after|against|along|alongside|amid|amidst|among|amongst|around|as|aside|astride|at|athwart|atop|barring|before|behind|below|beneath|beside|besides|between|beyond|but|by|circa|concerning|despite|down|during|except|excluding|failing|following|for|from|given|in|including|inside|into|like|mid|minus|near|next|notwithstanding|of|off|on|onto|opposite|out|outside|over|pace|past|per|plus|qua|regarding|round|save|since|than|through|throughout|till|times|to|toward|towards|under|underneath|unlike|until|up|upon|versus|via|with|within|without|worth )
(link_name-link_lnode-link_rnode Bp|Bs ?z ?prep)
(link_name-link_expansion    ?lname1 R n $?vars1)
(link_name-link_lnode-link_rnode ?lname1 ?z ?a)
(link_name-link_lnode-link_rnode MVp ?kri ?prep)
(parserid-word ?prep ?viBakwi )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  "?prep"	kriyA-"?viBakwi"_saMbanXI	"?kri"	"10000")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?prep"	dummy-viBakwi_saMbanXI	kriyA-"?viBakwi"_saMbanXI	"?kri"	"10000")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-jo_samAnAXikaraNa	"?z"	"10000")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	dummy-viBakwi_saMbanXI	viSeRya-jo_samAnAXikaraNa	"?z"	"10000")"	crlf)	
(printout	?*hmng_fp*	"(id-HM-source	10000	jo	Relative_clause)"	crlf)	
(printout	?*open-word*	"(id-word 10000  who)"	crlf)
(printout       ?*open-orign*   "(id-original_word 10000  who)"   crlf)	
)
;Ex. The man I play tennis with is here.
;----------------------------------------------------------------------------------------------------------------
(defrule subject_insertion
(declare (salience 200))
(link_name-link_expansion    ?S   S $?var)
(link_name-link_lnode-link_rnode  ?S  ?x ?y)
(id-original_word ?id0 ?word);to get word, that can be inserted as subject
(link_name-link_lnode-link_rnode  Pv|MVp  ?y ?z);The cat sat on a mat and scratched itself loudly .(2nd-parse)
(link_name-link_expansion    ?S1   S $?vari)
(link_name-link_lnode-link_rnode  ?S1  ?x ?verb)
(root-verbchunk-tam-parser_chunkids ? ? ? $?c_ids ?kri)
(parserid-wordid  ?x ?id0);including this line the next two lines are to purely integer ids bcoz in link relations the ids we've are in term of Pids, e.g. P1, P2 etc.
(parserid-wordid  ?y ?id1)
(parserid-wordid  ?verb ?id2)
(test (and (> ?id2 ?id1) (or (member$ ?verb $?c_ids)(eq ?kri ?verb))));the > function is to stop firing this relation with the first verb (asked) in the sentence
(id-original_word =(- ?id2 1) but|and);"I went to the store , got a gallon of milk , and returned the eggs." in this sent after subject insertion verb agrees with object which is expected there4 'and' is also added.
(parser_id-root ?x ?subj)
=>
(assert (kriyA-subject_rel_has_been_decided_by_rule_subject_insertion ?kri))
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?kri"	"10001")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	subject_insertion	kriyA-subject	"?kri"	"10001")"	crlf)	
(if (or (eq ?subj i) (eq ?subj I)) then
(printout       ?*hmng_fp*      "(id-HM-source  10001   mEM    subject_insertion)"       crlf)
(printout       ?*hmng_fp*      "(id-inserted_sub_id  "?id0"  10001)" crlf); Modified (id-HM-source-sub_id) fact to (id-inserted_sub_id) and printing directly the data in hindi_meaning.dat file. ;Modified by Mahalaxmi (07-04-11)
else 
(printout       ?*hmng_fp*      "(id-HM-source  10001   vaha    subject_insertion)"       crlf)
(printout       ?*hmng_fp*      "(id-inserted_sub_id  "?id0"  10001)" crlf))
;else
;(printout       ?*hmng_fp*      "(id-HM-source-sub_id  10001   vaha    subject_insertion  "?id0")"       crlf))
;the HM 'vaha' is only for the sents where apertium analysis does not exist.

(printout	?*open-word*	"(id-word 10001  "(lowcase ?word)")"	crlf)	
(printout       ?*open-orign*   "(id-original_word 10001  "?word")"       crlf)
)
;Ex.  She was asked about the pay increase but made no comment .
;     The cat sat on a mat and scratched itself loudly .(2nd-parse)
;----------------------------------------------------------------------------------------------------------------
(defrule dummy_id
(link_name-link_lnode-link_rnode  MVs  ?x ?y)
(link_name-link_lnode-link_rnode  Mv   ?y ?z)
(parserid-word ?b when )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	wall_conjunction	1000)"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	dummy_id	wall_conjunction	1000)"	crlf)	
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?x	"	1000)"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	dummy_id	kriyA-kAlavAcI	"?x"	1000)"	crlf)	
(printout	?*hmng_fp*	"(id-HM-source	1000	waba	Relative_clause)"	crlf)	
(printout	?*open-word*	"(id-word 1000  then)"	crlf)
(printout       ?*open-orign*    "(id-original_word 1000  then)"  crlf)
)
;Ex.  We will go when you are ready. She cried when asked about it.
;----------------------------------------------------------------------------------------------------------------
(defrule rule_OF_kqxanwa
(declare (salience 500)) 
(link_name-link_expansion  ?D  D $?)
(link_name-link_lnode-link_rnode ?D ?det ?a)
?f0 <-(link_name-link_lnode-link_rnode OF ?a ?b)
(link_name-link_expansion  ?J  J $?var)
(link_name-link_lnode-link_rnode ?J ?b ?c)
(parserid-word ?b ?viBakwi )
=>
(retract ?f0);This condition is added to stop rule2, which shows kriyA_object relation
(printout	?*fp*	"(prep_id-relation-parser_ids "?b"	kqxanwa-"?viBakwi"_saMbanXI	"?a"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?b"	rule_OF_kqxanwa	kqxanwa-"?viBakwi"_saMbanXI	"?a"	"?c")"crlf)	
)
;Ex. He made a mistake in the inviting of John.
;----------------------------------------------------------------------------------------------------------------
(defrule rule60
(declare (salience 103))
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(link_name-link_lnode-link_rnode Ost|Opt ?y ?z)
(link_name-link_lnode-link_rnode Bs|Bp ?z ?a)
(link_name-link_lnode-link_rnode R ?b ?c)
=>
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule60	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
)
;Ex. those are the boys who want to do it", They were my parents who wanted to do it
;----------------------------------------------------------------------------------------------------------------
(defrule sub-sub_s
(declare (salience 103))
(link_name-link_expansion    ?lname   S I $?vars)
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(link_name-link_lnode-link_rnode Ost|Opt  ?x  ?z)
(not (subject-subject_samAnAXikaraNa_rel_has_been_deceded_by_'subject_samAnAXikaraNa_and_SI'_rule))
=>
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	sub-sub_s	subject-subject_samAnAXikaraNa	"?y"	"?z")"crlf)	
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?y"	"?z")"crlf)	
)
;Ex. Is he my brother.
;----------------------------------------------------------------------------------------------------------------
(defrule OF_1
(declare (salience 500))
?f0 <- (link_name-link_lnode-link_rnode OF ?a ?b)
(link_name-link_lnode-link_rnode J|Js|Jp ?b ?c)
(link_name-link_lnode-link_rnode Pa ?d ?a)
=>
(retract ?f0);This condition is added to stop rule2, which shows kriyA_object relation) ;Date 21/02/09
(printout	?*fp*	"(prep_id-relation-parser_ids "?b"	kriyA-of_saMbanXI	"?d"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?b"	OF_1	kriyA-of_saMbanXI	"?d"	"?c")"crlf)	
)
;Ex.I am proud of Rama". are they proud of him".I am proud of  you.
;----------------------------------------------------------------------------------------------------------------
(defrule OF_2
(declare (salience 5))
?f0 <- (link_name-link_lnode-link_rnode OF ?a ?b)
(link_name-link_lnode-link_rnode J|Js|Jp ?b ?c)
(not(link_name-link_lnode-link_rnode Wq ?which ?a)) ;Ex.4 this condition is: Which of your parents do you feel closer to?
=>
(retract ?f0);This condition is added to stop rule2, which shows kriyA_object relation) ;Date 21/02/09
(printout	?*fp*	"(prep_id-relation-parser_ids "?b"	kriyA-of_saMbanXI	"?a"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?b"	OF_2	kriyA-of_saMbanXI	"?a"	"?c")"crlf)	
)
;Ex.   He talks, mostly of revolution.	
;----------------------------------------------------------------------------------------------------------------
(defrule OF_3
(declare (salience 215))
(link_name-link_expansion  ?CO    C O $?vari)
(link_name-link_lnode-link_rnode  ?CO  ?a  ?y)
(link_name-link_expansion  ?S     S  $?var)
(link_name-link_lnode-link_rnode  ?S  ?y ?v) 
?f0 <- (link_name-link_lnode-link_rnode OF ?a ?b)
(link_name-link_lnode-link_rnode J|Js|Jp ?b ?c)
=>
(retract ?f0);This condition is added to stop rule2, which shows kriyA_object relation) ;Date 21/02/09
(printout	?*fp*	"(prep_id-relation-parser_ids "?b"	viSeRya-of_saMbanXI	"?a"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?b"	OF_3	viSeRya-of_saMbanXI	"?a"	"?c")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids "?b"	kriyA-of_saMbanXI	"?v"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?b"	OF_3	kriyA-of_saMbanXI	"?v"	"?c")"crlf)	
)
;Ex.   Because of the rain we decided to stay home.
;----------------------------------------------------------------------------------------------------------------
(defrule  kriyA-prep_saMbanXI
(declare (salience 500))
(link_name-link_lnode-link_rnode Pam ?kriyA ?s_s)
(link_name-link_lnode-link_rnode MVp ?s_s ?prep)
(link_name-link_lnode-link_rnode Wq ?a ?v_s)
(parserid-word ?prep ?viBakwi )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?prep"	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?v_s")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?prep"	kriyA-prep_saMbanXI	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?v_s")"crlf)	
)
;Ex.  Which of your parents do you feel closer to?
;----------------------------------------------------------------------------------------------------------------
(defrule rule_OF
(declare (salience 500)) ;This condition is added to stop rule2, which shows kriyA_object relation. ;Date 21/02/09 
?f0 <-(link_name-link_lnode-link_rnode OF ?a ?b)
(link_name-link_lnode-link_rnode Mgp ?b ?c)
(link_name-link_lnode-link_rnode Pa ?d ?a)
=>
(retract ?f0);This condition is added to stop rule2, which shows kriyA_object relation)
(printout	?*fp*	"(prep_id-relation-parser_ids "?b"	kriyA-of_saMbanXI	"?d"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?b"	rule_OF	kriyA-of_saMbanXI	"?d"	"?c")"crlf)	
)
;Ex. I have always been afraid of flying .
;----------------------------------------------------------------------------------------------------------------
(defrule rule_OF_PP
(declare (salience 500)) ;This condition is added to stop rule2, which shows kriyA_object relation.
?f0 <-(link_name-link_lnode-link_rnode OF ?a ?b)
(link_name-link_lnode-link_rnode Mgp ?b ?c)
(link_name-link_lnode-link_rnode PP ?d ?a)
=>
(retract ?f0);This condition is added to stop rule2, which shows kriyA_object relation)
(printout	?*fp*	"(prep_id-relation-parser_ids "?b"	kriyA-of_saMbanXI	"?a"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?b"	rule_OF_PP	kriyA-of_saMbanXI	"?a"	"?c")"crlf)	
)
;Ex. I have often dreamed of going to distant places .
;----------------------------------------------------------------------------------------------------------------
(defrule rule62
(link_name-link_lnode-link_rnode OD ?a ?b)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-measurement	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule62	kriyA-measurement	"?a"	"?b")"crlf)	
)	;ex.	
;Ex.	GM stock fell five points".GM stock fell 2%". GM stock fell 2 1/2". the water column rose four feet
;----------------------------------------------------------------------------------------------------------------
(defrule rule55
(declare (salience 102))
(link_name-link_lnode-link_rnode Pa ?b ?x)
(link_name-link_lnode-link_rnode TO ?x ?y)
(link_name-link_lnode-link_rnode I ?y ?z)
(link_name-link_lnode-link_rnode Os|Op|Ox ?z ?a)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -      kriyA-object    "?b"    "?a")"crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids -  rule55  kriyA-object    "?b"    "?a")"crlf)

(printout       ?*fp*   "(prep_id-relation-parser_ids  -      kriyA-kriyA_mUla        "?b"    "?x")"crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids -  rule55  kriyA-kriyA_mUla        "?b"    "?x")"crlf)
)
;Ex. I am eager to read it
;----------------------------------------------------------------------------------------------------------------
(defrule rule63
(declare (salience 104))
(link_name-link_lnode-link_rnode Pa ?b ?x)
(link_name-link_lnode-link_rnode TO|TOt ?x ?y)
(link_name-link_lnode-link_rnode I ?y ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_mUla	"?b"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule63	kriyA-kriyA_mUla	"?b"	"?x")"crlf)	
)
;Ex. I am eager to read 
;	NOTE: I HAVE WRITTEN TWO DIFFERENT RULES; RULE55 AND RULE63 TO HANDLE THE SENTENCES LIKE  "I am eager to read it" AND "I am eager to read" BECAUSE THE 55TH RULE WAS NOT WORKING FOR "I am eager to read"
;----------------------------------------------------------------------------------------------------------------
(defrule subject_opener_1
(or (link_name-link_expansion  ?CO    C O $? ~q) (link_name-link_expansion  ?CO    C O ))
(link_name-link_lnode-link_rnode  ?CO ?x ?y)
(link_name-link_expansion  ?S    S $?)
(link_name-link_lnode-link_rnode  ?S ?y ?z)
(not  (got_relation_for_CO))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-sentence_opener	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	subject_opener_1	kriyA-sentence_opener	"?z"	"?x")"crlf)	
)
;Ex.  Once upon a time there was a king whose name was Ashoka. 
;This is a general rule to handle sentence openers.
;----------------------------------------------------------------------------------------------------------------
(defrule rule75
(link_name-link_lnode-link_rnode LI ?x ?y)
(parserid-word ?y ?viBakwi )
(link_name-link_expansion ?J J $?vari)
(link_name-link_lnode-link_rnode ?J ?y ?z)
(link_name-link_expansion ?S S $?var)
(link_name-link_lnode-link_rnode ?S ?sub ?kri)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kriyA)
(test (or (member$ ?kri $?chunk_ids) (eq ?kri ?kriyA)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?y"	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?y"	rule75	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?z")"crlf)	
)
;Ex.	"I FEEL LIKE a fool." I am feeling like a fool
;----------------------------------------------------------------------------------------------------------------
(defrule rule78
(link_name-link_lnode-link_rnode NT ?x ?y)
(link_name-link_lnode-link_rnode I ?y ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_niReXaka	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule78	kriyA-kriyA_niReXaka	"?z"	"?x")"crlf)	
)
;Ex.	I told you not to come.
;----------------------------------------------------------------------------------------------------------------
(defrule N_kriyA_niReXaka 
(link_name-link_expansion    ?S   S  $?vars)
(link_name-link_lnode-link_rnode ?S  ?x  ?y)
(link_name-link_lnode-link_rnode NT|N  ?y ?z)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kri)
(test (or (member$ ?y $?chunk_ids) (eq ?kri ?y)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_niReXaka	"?kri"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	N_kriyA_niReXaka	kriyA-kriyA_niReXaka	"?kri"	"?z")"crlf)	
)
;Ex. He is not coming. He is not related to me.
;----------------------------------------------------------------------------------------------------------------
(defrule rule81
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kri)
(link_name-link_expansion    ?lname   S ~F $?vars)
(link_name-link_lnode-link_rnode ?lname  ?y  ?z)
(link_name-link_lnode-link_rnode Ost|Opt ?kri ?x)
(not (subject-subject_samAnAXikaraNa_rel_has_been_deceded_by_'subject_samAnAXikaraNa_and'_rule))
(not (subject-subject_samAnAXikaraNa_rel_has_been_deceded_by_'subject_samAnAXikaraNa_and_1'_rule ?x))
(test (or (member$ ?z $?chunk_ids) (eq ?kri ?z)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule81	subject-subject_samAnAXikaraNa	"?y"	"?x")"crlf)	
)
;Modified by Manju : added root-verbchunk-tam-parser_chunkids fact and test condition
; Ex:  Tomorrow might be a good time for the meeting .
;Ex.	I am a player, Anand is a player, Is Anand  a doctor, Are you a doctor
;----------------------------------------------------------------------------------------------------------------
(defrule sub_samA_been
(link_name-link_expansion    ?S   S ~F $?vars)
(link_name-link_lnode-link_rnode ?S  ?y  ?z)
(link_name-link_lnode-link_rnode PPf  ?z  ?been)
(link_name-link_lnode-link_rnode Ost|Opt|Pa|Paf ?been ?sub_samA)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?y"	"?sub_samA")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	sub_samA_been	subject-subject_samAnAXikaraNa	"?y"	"?sub_samA")"crlf)	
)
;Ex.    The Richard Milhous Nixon LIBRARY has been a big SUCCESS. The coverage on TV and on the radio has been terrible. I have always been afraid of flying. 
;----------------------------------------------------------------------------------------------------------------
(defrule rule85_3
(declare (salience 250))
(link_name-link_expansion  ?Js J $?vari)
(link_name-link_lnode-link_rnode ?Js  ?x ?b)
?f0<- (link_name-link_lnode-link_rnode Jw|JQ ?x ?y)
?f1<- (link_name-link_lnode-link_rnode Wj|Mj ?z ?x)
(link_name-link_lnode-link_rnode Qd|Cs  ?x ?kri)
(link_name-link_expansion  ?S S  $?var)
(link_name-link_lnode-link_rnode ?S  ?kri ?sub)
(parserid-word ?x ?viBakwi )
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kriyA)
(test (or (member$ ?kri $?chunk_ids)(eq ?kri ?kriyA)))
=>
(retract ?f0 ?f1)
(printout	?*fp*	"(prep_id-relation-parser_ids "?x"	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?x"	rule85_3	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?b")"crlf)	
)
;Ex.   To which person were you speaking?, The man to whom I was speaking was tall. 
;----------------------------------------------------------------------------------------------------------------
(defrule rule85
(declare (salience 200))
?f0<- (link_name-link_lnode-link_rnode Jw|JQ ?x ?y)
?f1<- (link_name-link_lnode-link_rnode Wj|Mj ?z ?x)
(link_name-link_lnode-link_rnode Qd|Cs ?x ?sub)
(link_name-link_expansion  ?S S  $?var)
(link_name-link_lnode-link_rnode ?S ?sub  ?kriyA)
(parserid-word ?x ?viBakwi )
=>
(retract ?f0 ?f1)
(printout	?*fp*	"(prep_id-relation-parser_ids "?x"	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?x"	rule85	kriyA-"?viBakwi"_saMbanXI_11111	"?kriyA"	"?y")"crlf)	
)
;Ex.	To whom were you speaking? To which person were you speaking?, The man to whom I was speaking was tall. The man with whom I play tennis is here. Is that the film in which he kills his mother?
;----------------------------------------------------------------------------------------------------------------
(defrule rule85_1
(declare (salience 210))
(link_name-link_expansion    ?Js    J $?var)
(link_name-link_lnode-link_rnode  ?Js  ?x ?head)
?f0<- (link_name-link_lnode-link_rnode Jw|JQ ?x ?y)
?f1<- (link_name-link_lnode-link_rnode Wj|Mj ?z ?x)
(link_name-link_lnode-link_rnode Qd|Cs ?x ?sub)
(link_name-link_expansion  ?S S  $?vari)
(link_name-link_lnode-link_rnode ?S ?sub  ?kriyA)
(parserid-word ?x ?viBakwi )
=>
(retract ?f0 ?f1)
(printout	?*fp*	"(prep_id-relation-parser_ids "?x"	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?x"	rule85_1	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)	
)
;Ex.    To which person were you speaking?
;----------------------------------------------------------------------------------------------------------------
(defrule rule87
(link_name-link_lnode-link_rnode Zs|Zc ?x ?y)
(parserid-word ?x as )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule87	kriyA-kriyA_viSeRaNa	"?y"	"?x")"crlf)	
)
;Ex.	As we expected, he was late". He was not as late as I expected
;----------------------------------------------------------------------------------------------------------------
(defrule rule90
(link_name-link_lnode-link_rnode NIa ?a ?b)
(link_name-link_lnode-link_rnode NId ?a ?c)
(link_name-link_lnode-link_rnode NIc ?a ?d)
(parserid-word ?b ?word )
(parserid-word ?d ?word1)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	"?word"	se	"?word1"	waka	"?b",	"?c",	"?d",	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule90	"?word"	se	"?word1"	waka	"?b",	"?c",	"?d",	"?c")"crlf)	
)
;Ex.	I have between 5 and 20 dogs
;----------------------------------------------------------------------------------------------------------------


;kaaraka relations:-

;aXikaraNa_kAraka:	 rule16, rule17, rule18, rule19, rule41, rule43, rule64, rule65, rule66, rule67 rule83 and rule125 are also for aXikaraNa kAraka

(defrule rule93
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(root-verbchunk-tam-parser_chunkids $? ?y ?head)
(link_name-link_lnode-link_rnode Ss*q|Spxq ?a ?b)
(test (neq ?lname Ss*q))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-vAkyasamAnAXikarNa	"?a"	"?head")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule93	subject-vAkyasamAnAXikarNa	"?a"	"?head")"crlf)	
)
;Ex.	The question is who killed Nicole.  The question was  who killed Nicole.  The questions are  who killed Nicole.
;----------------------------------------------------------------------------------------------------------------
(defrule rule94
(declare (salience 3))
(link_name-link_lnode-link_rnode EAh ?x ?y)
(link_name-link_lnode-link_rnode SI|SIs|SIs*b|SIp|SIp*i|SIpx|SXI ?z ?a)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?a"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule94	subject-subject_samAnAXikaraNa	"?a"	"?y")"crlf)	
)
;Ex.	"How stupid  can you be?"
;----------------------------------------------------------------------------------------------------------------
(defrule rule95
(declare (salience 4))
(link_name-link_lnode-link_rnode EBm ?x ?y)
(parserid-word ?y not )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_niReXaka	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule95	kriyA-kriyA_niReXaka	"?x"	"?y")"crlf)	
)
;Ex.	you are not late. he is not late.  He is not a doctor
;----------------------------------------------------------------------------------------------------------------
(defrule rule99
(link_name-link_expansion    ?lname    D $?vars)
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(link_name-link_lnode-link_rnode ECn ?z ?x)
(link_name-link_lnode-link_rnode H ?a ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	idiom_type_2	"?a"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule99	idiom_type_2	"?a"	"?z")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	idiom_type_2	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule99	idiom_type_2	"?z"	"?x")"crlf)	
)
;Ex.	How much more money do you have? 
; Vineet Sir says to name this relatin as idiom_type_Sukhada because this is a kind of idiomatic expression defined by Sukhada (me).
;----------------------------------------------------------------------------------------------------------------
(defrule rule101
(link_name-link_lnode-link_rnode MVi ?z ?y)
(link_name-link_expansion ?I I $?var)
(link_name-link_lnode-link_rnode ?I ?y ?a)
(not (link_name-link_lnode-link_rnode Pa|Paf|Pam ?x ?z))
(not (kriyA-kriyArWa_kriyA_rel_has_been_dcd_by_'kriyArWa_kriyA_and'_rule ?a))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyArWa_kriyA	"?z"	"?a")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule101	kriyA-kriyArWa_kriyA	"?z"	"?a")"crlf)	
)
;Ex.	I had to run fast to catch the bus. I went to read.
;Ex.	I had to run fast to catch the bus.  went to walk. I went to read. I want to do it
;----------------------------------------------------------------------------------------------------------------
(defrule rule104
(link_name-link_lnode-link_rnode EN ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule104	viSeRya-viSeRaka	"?y"	"?x")"crlf)	
)
;Ex.	"The class has NEARLY FIFTY students". It will cost almost 400 million dollars.  They died    almost 400 million years ago. "I have about 50 dollars".
;----------------------------------------------------------------------------------------------------------------
(defrule rule106
(link_name-link_lnode-link_rnode QI*d ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-praSnavAcI	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule106	kriyA-praSnavAcI	"?x"	"?y")"crlf)	
)
;Ex.	I wonder what  to buy. I wonder where  to go.  I wonder when  to go. I am wondering which question to ask first. 
;----------------------------------------------------------------------------------------------------------------
(defrule why_Q	
(link_name-link_lnode-link_rnode Q ?x ?y)
(link_name-link_lnode-link_rnode I*d ?y ?z)
(root-verbchunk-tam-parser_chunkids  $?ids ?kri)
(test (member$ ?y $?ids))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-praSnavAcI	"?kri"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	why_Q	kriyA-praSnavAcI	"?kri"	"?x")"crlf)	
)
;Ex.   But why did you send him that nasty note
;----------------------------------------------------------------------------------------------------------------
(defrule QI+R+B
(link_name-link_expansion ?QI   Q I $?var d)
(link_name-link_lnode-link_rnode  ?QI    ?x ?ob)
(link_name-link_expansion ?B    B $?vars)
(link_name-link_lnode-link_rnode  ?B     ?ob ?v)
(link_name-link_expansion ?R    R $?vari)
(link_name-link_lnode-link_rnode  ?R     ?ob  ?sub)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?v"	"?ob")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	QI+R+B	kriyA-object	"?v"	"?ob")"crlf)	
)
;Ex.    I wonder what  to buy. I wonder where  to go.  I wonder when  to go. I am wondering which question to ask first. 
;----------------------------------------------------------------------------------------------------------------
(defrule MVp_QI
(link_name-link_lnode-link_rnode QI ?x ?y)
(link_name-link_lnode-link_rnode MVp	?z ?x)
(parserid-word ?x ?viBakwi )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?x"	kriyA-"?viBakwi"_saMbanXI	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?x"	MVp_QI	kriyA-"?viBakwi"_saMbanXI	"?z"	"?y")"crlf)	
)
;Ex.    We had an argument over whether it was a good movie.
;----------------------------------------------------------------------------------------------------------------
(defrule rule109
(link_name-link_lnode-link_rnode Om ?x ?y)
(link_name-link_lnode-link_rnode MVa ?x ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule109	kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka	"?z"	"?y")"crlf)	
)
;Ex.	He runs more quickly. He runs more quickly than do I .
;----------------------------------------------------------------------------------------------------------------
(defrule rule110
(link_name-link_lnode-link_rnode Jr ?x ?y)
(parserid-word ?x of )
(parserid-word ?y whom)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	nirXArya-nirXAraNa	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule110	nirXArya-nirXAraNa	"?x"	"?y")"crlf)	
)
;Ex.	The doctors, many of whom are surgeons, were angry.
;----------------------------------------------------------------------------------------------------------------
(defrule rule111
(link_name-link_lnode-link_rnode EEy ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule111	kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka	"?y"	"?x")"crlf)	
)
;Ex.	He runs as quickly. He runs as fast.
;----------------------------------------------------------------------------------------------------------------
(defrule rule111_1
(link_name-link_lnode-link_rnode EZ ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule111_1	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)	
)
;Ex.  I did it almost as quickly as he did.
;----------------------------------------------------------------------------------------------------------------
(defrule rule111_2
(link_name-link_lnode-link_rnode  MVzp   ?x ?y)
(link_name-link_lnode-link_rnode  CX     ?y ?v)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?v"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule111_2	kriyA-kriyA_viSeRaNa	"?v"	"?y")"crlf)	
)
;Ex.  I did it almost as quickly as he did.
;----------------------------------------------------------------------------------------------------------------
(defrule rule113
(link_name-link_lnode-link_rnode AM ?a ?b)
(parserid-word ?b much )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRaNa-viSeRaka	"?b"	"?a")"crlf).	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule113	viSeRaNa-viSeRaka	"?b"	"?a")"crlf)	
)
;Ex.	He earns as much money.
;----------------------------------------------------------------------------------------------------------------
(defrule E_A
(declare (salience 400))
(link_name-link_lnode-link_rnode E   ?a ?b)
(link_name-link_lnode-link_rnode A   ?b ?c)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -       viSeRaNa-viSeRaka	"?b"	"?a")"crlf)
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	E_A	viSeRaNa-viSeRaka	"?b"	"?a")"crlf)
)
;Ex    A typically priced meal will be around $ 10.
;----------------------------------------------------------------------------------------------------------------
(defrule rule119
(declare (salience 400))
(link_name-link_lnode-link_rnode E   ?a ?b)
(link_name-link_lnode-link_rnode Wi   ?w ?b)
=>
(assert (wall_conjunction_rel_has_been_dcd_by_rule'rule119' ?a))
(printout	?*fp*	"(prep_id-relation-parser_ids  -	 wall_conjunction	"?a")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule119	 wall_conjunction  "?a")"crlf)	
)	
;Ex	Only you would say that. Even you would say that.
;----------------------------------------------------------------------------------------------------------------
(defrule rule121
(link_name-link_lnode-link_rnode H ?a ?b)
(parserid-word ?b many|much|long )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	idiom_type_2	"?b"	"?a")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule121	idiom_type_2	"?b"	"?a")"crlf)	
)
;Ex.	How many years did it last? How much more money do you have?  How long will it last ?
;----------------------------------------------------------------------------------------------------------------
(defrule rule123
(link_name-link_lnode-link_rnode EL ?a ?b)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-viSeRaNa	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule123	viSeRya-viSeRaNa	"?a"	"?b")"crlf)	
)
;Ex.	What else is new? Someone else is coming.
;----------------------------------------------------------------------------------------------------------------
(defrule rule133
(link_name-link_lnode-link_rnode Eq ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-vAkyakarma	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule133	kriyA-vAkyakarma	"?x"	"?y")"crlf)	
)
;Ex.	The players, she said, played well.
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-vAkyakarma
(link_name-link_lnode-link_rnode  Wi ?x ?y)
(link_name-link_lnode-link_rnode Pa  ?y ?z)
(root-verbchunk-tam-chunkids ? said $? ?said)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-vAkyakarma	"?said"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-vAkyakarma	kriyA-vAkyakarma	"?said"	"?y")"crlf)	
)
;Ex.    keep quiet, she said. Be careful, she said.
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-kqxanwa_karma
(link_name-link_lnode-link_rnode  QI   ?x ?y)
(link_name-link_lnode-link_rnode  TOn  ?y ?z)
(link_name-link_lnode-link_rnode  I    ?z ?a)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kqxanwa_karma	"?x"	"?a")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-kqxanwa_karma	kriyA-kqxanwa_karma	"?x"	"?a")"crlf)	
)
;Ex. I wonder where to go. 
;Ex. I wonder, where to go. Parser failed in this sentence.  
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-vAkyakarma_2
(link_name-link_expansion ?S S $?var)
(link_name-link_lnode-link_rnode  ?S   ?x ?y)
(link_name-link_expansion ?I  I $?vari d)
(link_name-link_lnode-link_rnode  ?I   ?y ?kri)
(link_name-link_expansion ?QI Q I $?va)
(link_name-link_lnode-link_rnode  ?QI   ?kri  ?z)
(link_name-link_lnode-link_rnode  H  ?z ?a)
(link_name-link_expansion ?B B $?varia)
(link_name-link_lnode-link_rnode  ?B  ?a  ?va_k)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-vAkyakarma	"?kri"	"?va_k")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-vAkyakarma_2	kriyA-vAkyakarma	"?kri"	"?va_k")"crlf)	
)
;Ex. I did not know how much to bring.
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-vAkyakarma_3
(link_name-link_expansion ?I  I $?var)
(link_name-link_lnode-link_rnode  ?I   ?x ?y)
(link_name-link_lnode-link_rnode  MVz  ?y ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-vAkyakarma	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-vAkyakarma_3	kriyA-vAkyakarma	"?y"	"?z")"crlf)	
)
;Ex.  
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-vAkyakarma_5
(link_name-link_expansion ?QI  Q I $?var)
(link_name-link_lnode-link_rnode  ?QI   ?kri ?que)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kriyA1)
(test (or (member$ ?kri $?chunk_ids)(eq ?kri ?kriyA1)))
(link_name-link_expansion ?S  S $?vari)
(link_name-link_lnode-link_rnode  ?S  ?que ?kri2)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_id2 ?kriyA)
(test (or (member$ ?kri2 $?chunk_id2)(eq ?kri2 ?kriyA)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-vAkyakarma	"?kriyA1"	"?kriyA")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-vAkyakarma_5	kriyA-vAkyakarma	"?kriyA1"	"?kriyA")"crlf)	
)
;Ex. Either I or my friend know what happened .
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-dummy_sub 
(link_name-link_expansion ?S S F $?var)
?f0<- (link_name-link_lnode-link_rnode ?S ?x ?y)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kri)
(test (or (member$ ?y $?chunk_ids)(eq ?kri ?y)))
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-dummy_subject	"?kri"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-dummy_subj	kriyA-dummy_subject	"?kri"	"?x")"crlf)	
)
;Ex.  It may not be possible to fix the problem. 
;Ex.    It is likely that Jane will go. It  is Jane who wants to do it.
;----------------------------------------------------------------------------------------------------------------
(defrule rule_vi-jo_samA
(declare (salience 200))
(link_name-link_lnode-link_rnode Mp ?x ?y)
(link_name-link_lnode-link_rnode Js|Jp ?y ?z)
(link_name-link_lnode-link_rnode Bp|Bs ?z ?c)
(link_name-link_lnode-link_rnode R ?z ?jo)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -      viSeRya-jo_samAnAXikaraNa       "?z"    "?jo")"crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids -  rule_vi-jo_samA  viSeRya-jo_samAnAXikaraNa       "?z"    "?jo")"crlf)
)
;Ex. This book is intended for a diverse range of people who want to learn how to write programmes that analyse written language . 
;----------------------------------------------------------------------------------------------------------------
(defrule vi-jo_s
(declare (salience 200))
(link_name-link_lnode-link_rnode   Mr   ?x ?y)
(link_name-link_expansion          ?D   D  $?var)
(link_name-link_lnode-link_rnode   ?D   ?y ?z)
=>
(assert (got_RaRTI_viSeRaNa_rel ?z))
(printout       ?*fp*   "(prep_id-relation-parser_ids  -     viSeRya-jo_samAnAXikaraNa       "?x"    "?z")"crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids  -    vi-jo_s  viSeRya-jo_samAnAXikaraNa       "?x"    "?z")"crlf)
(printout       ?*fp*   "(prep_id-relation-parser_ids   -   viSeRya-RaRTI_viSeRaNa       "?z"    "?y")"crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids  vi-jo_s  - viSeRya-RaRTI_viSeRaNa      "?z"    "?y")"crlf)
)
;Ex. The dog whose owner died was black. The dog whose owner John hit was black. 
;----------------------------------------------------------------------------------------------------------------
(defrule rule138
(declare (salience 200))
(link_name-link_lnode-link_rnode SFs|SFsi ?x ?y)
(link_name-link_lnode-link_rnode Osi ?y ?z)
(link_name-link_lnode-link_rnode R ?y ?c)
(link_name-link_lnode-link_rnode RS ?c ?a)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-jo_samAnAXikaraNa	"?x"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule138	viSeRya-jo_samAnAXikaraNa	"?x"	"?c")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?a"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule138	kriyA-subject	"?a"	"?c")"crlf)	
)	
;Ex. It is Jane who wants to do it
;----------------------------------------------------------------------------------------------------------------
(defrule rule141
(link_name-link_lnode-link_rnode Pg|Pgf ?a ?b)
(not (link_name-link_lnode-link_rnode MVp  ?b ?x))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule141	kriyA-object	"?a"	"?b")"crlf)	
)
;Ex.	I enjoy running. The students enjoyed taking that course.
;----------------------------------------------------------------------------------------------------------------
(defrule kri-viB_sam
(link_name-link_lnode-link_rnode MVp  ?b ?x)
(link_name-link_lnode-link_rnode J|Js|Jp|IN|ON|FL|Jm ?x ?y)
(parserid-word ?x ?viBakwi )
(not (kriyA-viBakwi_saMbanXI_rel_has_been_dcd_by_'Paf_MVp'_rule ?b))
(not (got_relation_for_MVp_link))
(not (link_name-link_lnode-link_rnode Mvl ?z ?b));It was cold there even in summer . 
(not (kriyA-'viBakwi'_saMbanXI_rel_has_been_deceded_by_'kri-viB_sam_MVl'_rule ?y))
(not (kriyA-'viBakwi'_saMbanXI_rel_has_been_deceded_by_'kriyA-'viBakwi'_saMbanXI_and'_rule ?x))
(not (has_been_included_in_larger_group_by_rule_prep_IDIOM-MVp ?y));Added by Shirisha Manju (01-03-11)Ex:The camels can adjust their body temperature according to the external temperature.
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?x"	kriyA-"?viBakwi"_saMbanXI	"?b"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?x"	kri-viB_sam	kriyA-"?viBakwi"_saMbanXI	"?b"	"?y")"crlf)	
)
;Ex.   I saw her sitting in the garden. I did not wait for long. He did it in more.
;----------------------------------------------------------------------------------------------------------------
(defrule kri-viB_sam_MVl
(declare (salience 200))
(link_name-link_lnode-link_rnode Pa|Paf ?v ?a)
(link_name-link_lnode-link_rnode MVl ?a ?b)
(link_name-link_lnode-link_rnode MVp  ?b ?x)
(link_name-link_lnode-link_rnode J|Js|Jp|IN|ON|FL ?x ?y)
(parserid-word ?x ?viBakwi )
(not (kriyA-'viBakwi'_saMbanXI_rel_has_been_deceded_by_'kriyA-'viBakwi'_saMbanXI_and'_rule ?x))
=>
(assert (kriyA-'viBakwi'_saMbanXI_rel_has_been_deceded_by_'kri-viB_sam_MVl'_rule ?y))
(printout	?*fp*	"(prep_id-relation-parser_ids "?x"	kriyA-"?viBakwi"_saMbanXI	"?v"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?x"	kri-viB_sam_MVl	kriyA-"?viBakwi"_saMbanXI	"?v"	"?y")"crlf)	
)
;Ex.   It was cold there even in summer .
;----------------------------------------------------------------------------------------------------------------
(defrule rule142
(link_name-link_lnode-link_rnode Mp ?z ?x)
(link_name-link_lnode-link_rnode J|Js|Jp|IN|ON|Mgp ?x ?y)
(parserid-word ?x ?viBakwi )
(parserid-word ?z ?bit )
=>
(if (or ( eq ?bit bit) ( eq ?bit some))then  ;Ex. I ate a bit of biscuit. I know some of the people.
(printout	?*fp*	"(prep_id-relation-parser_ids "?x"	viSeRya-"?viBakwi"_saMbanXI	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?x"	rule142	viSeRya-"?viBakwi"_saMbanXI	"?y"	"?z")"crlf)	
else
(printout	?*fp*	"(prep_id-relation-parser_ids "?x"	viSeRya-"?viBakwi"_saMbanXI	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?x"	rule142	viSeRya-"?viBakwi"_saMbanXI	"?z"	"?y")"crlf)	
)
)
;Ex. 	The SALARIES of the PROGRAMMERS are excellent. Some of the programmers are excellent. There were three cacti in front of us. I like the idea of living in the countryside but I am not sure I would like the reality .
;----------------------------------------------------------------------------------------------------------------
(defrule prep_IDIOM_1
(declare (salience 500))
(link_name-link_lnode-link_rnode Mp  ?x ?y)
(link_name-link_expansion ?ID I D $?Var)
(link_name-link_lnode-link_rnode ?ID ?z ?y)
(link_name-link_lnode-link_rnode J|Js|Jp|Jw  ?y ?a)
(parserid-word ?z ?viBakwi )
(parserid-word ?y ?viBakwi1 )
(not (has_been_included_in_larger_group_by_rule_prep_IDIOM_2))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?z"_"?y"	viSeRya-"?viBakwi"_"?viBakwi1"_saMbanXI	"?x"	"?a")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?z"_"?y"	prep_IDIOM_1	viSeRya-"?viBakwi"_"?viBakwi1"_saMbanXI	"?x"	"?a")"crlf)	
)
;Ex. They are having a party in front of the building. The children left dirty marks all over the kitchen floor.
;----------------------------------------------------------------------------------------------------------------
(defrule prep_IDIOM-MVp
(declare (salience 500))
(link_name-link_lnode-link_rnode MVp  ?x ?y)
(link_name-link_expansion ?ID I D $?Var)
(link_name-link_lnode-link_rnode ?ID ?z ?y)
(link_name-link_lnode-link_rnode J|Js|Jp|Jw  ?y ?a)
(parserid-word ?z ?viBakwi )
(parserid-word ?y ?viBakwi1 )
(not (has_been_included_in_larger_group_by_rule_prep_IDIOM_2))
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids "?z"  " ?y"      kriyA-"?viBakwi"_"?viBakwi1"_saMbanXI "?x"    "?a")"crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids "?z"  "?y"  prep_IDIOM-MVp	kriyA-"?viBakwi"_"?viBakwi1"_saMbanXI "?x"    "?a")"crlf)   
(assert (has_been_included_in_larger_group_by_rule_prep_IDIOM-MVp ?a))
)
;Ex. The work was done according to his instructions.
;----------------------------------------------------------------------------------------------------------------
(defrule prep_IDIOM_2
(declare (salience 1000))
(link_name-link_lnode-link_rnode Mp|MVp  ?x ?y)
(link_name-link_expansion ?ID I D $?Var)
(link_name-link_lnode-link_rnode ?ID ?a ?b)
(link_name-link_expansion ?ID1 I D $?Va)
(link_name-link_lnode-link_rnode ?ID1 ?b ?y)
(link_name-link_lnode-link_rnode J|Js|Jp|Jw  ?y ?c)
(parserid-word ?a ?viBakwi )
(parserid-word ?b ?viBakwi1 )
(parserid-word ?y ?viBakwi2)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?a" " ?b" "?y"	viSeRya-"?viBakwi"_"?viBakwi1"_"?viBakwi2"_saMbanXI	"?x"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?a" " ?b" "?y"	prep_IDIOM_2	viSeRya-"?viBakwi"_"?viBakwi1"_"?viBakwi2"_saMbanXI	"?x"	"?c")"crlf)	
(assert (has_been_included_in_larger_group_by_rule_prep_IDIOM_2))
)
;Ex. They are having a party in front of the building.
;See the second linkage of this sentence for this rule.
;----------------------------------------------------------------------------------------------------------------
(defrule  rule145
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?x) ;Ex. this condition is to stop "kriyA-kqxanwa_viSeRaNa" in "It is important to note that it does not denote absolute past time ."
(link_name-link_expansion ?TO_MVi   T O $?var)
(link_name-link_lnode-link_rnode ?TO_MVi ?x ?y)
(link_name-link_expansion ?I   I $?vari)
(link_name-link_lnode-link_rnode ?I ?y ?z) 
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kqxanwa_karma	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule145	kriyA-kqxanwa_karma	"?x"	"?z")"crlf)	
; (assert (generated_relation_for_id ?y))
)
;Ex.     I am trying to be a good learner.  From in back of the shed , I heard a scream that seemed to come from on top of the garage
;----------------------------------------------------------------------------------------------------------------
(defrule  kriyA-kq_vi
(link_name-link_lnode-link_rnode AF ?x ?kriyA)
(link_name-link_expansion ?TO   T O $?var)
(link_name-link_lnode-link_rnode ?TO ?x ?y)
(link_name-link_lnode-link_rnode I ?y ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kqxanwa_karma	"?kriyA"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-kq_vi	kriyA-kqxanwa_karma	"?kriyA"	"?z")"crlf)	
)
;Ex.     
;----------------------------------------------------------------------------------------------------------------
(defrule  kriyA-kq_vi1
(link_name-link_expansion ?S   S $?var)
(link_name-link_lnode-link_rnode ?S ?s ?kriyA)
(link_name-link_lnode-link_rnode MVg ?kriyA ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kqxanwa_kriyA_viSeRaNa	"?kriyA"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-kq_vi1	kriyA-kqxanwa_kriyA_viSeRaNa	"?kriyA"	"?z")"crlf)	
)
;Ex.  He walked out of the room, glaring coldly at Sarah. 
;Link Parser's second linkage is correct for this sentence. In this sentence the relation between walked and glaring be "kriyA-kqxanwa_viSeRaNa" or kriyA-kqxanwa_kriyA_viSeRaNa" ?
;----------------------------------------------------------------------------------------------------------------
(defrule  kriyA-kq_vi2
(link_name-link_lnode-link_rnode Pg|Mg    ?kriyA  ?kq_vi)
(link_name-link_lnode-link_rnode Ox|Os|Op    ?kriyA  ?o)
(link_name-link_lnode-link_rnode MVp   ?kq_vi  ?x)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kqxanwa_kriyA_viSeRaNa	"?kriyA"	"?kq_vi")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-kq_vi2	kriyA-kqxanwa_kriyA_viSeRaNa	"?kriyA"	"?kq_vi")"crlf)	
)
;Ex.    I saw her sitting in the garden.
;----------------------------------------------------------------------------------------------------------------
(defrule  rule_MVi
(link_name-link_lnode-link_rnode Pa|Paf|Pam ?x ?y)
(link_name-link_lnode-link_rnode MVi ?y ?z)
(link_name-link_lnode-link_rnode I ?z ?a)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kri)
(test (or (member$ ?x $?chunk_ids)(eq ?kri ?x)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kqxanwa_viSeRaNa	"?kri"	"?a")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule_MVi	kriyA-kqxanwa_viSeRaNa	"?kri"	"?a")"crlf)	
)
;Ex.   Dick is important to fix the problem.
;????????? should it be  kriyA-kqxanwa_viSeRaNa or kriyA-kqxanwa_karma ? 
;----------------------------------------------------------------------------------------------------------------
(defrule  rule148
(link_name-link_lnode-link_rnode QI ?x ?y)
(link_name-link_lnode-link_rnode I ?a ?b)
(not (got_relation_for_when))
(parserid-word ?y ?how )
=>
(if (eq ?how how)then
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?b	"	"?y")"	crlf)	;Ex.	We	should	teach	children	how	to	read	and	write.	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule148	kriyA-kriyA_viSeRaNa	"?b	"	"?y")"	crlf)	
	
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-praSnavAcI	"?b"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule148	kriyA-praSnavAcI	"?b"	"?y")"crlf)	

else

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-praSnavAcI	"?b"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule146	kriyA-praSnavAcI	"?b"	"?y")"crlf)	
)
)
;Ex.     I wonder when he will come. He wondered why she will not go. I wonder where to go.
;----------------------------------------------------------------------------------------------------------------
(defrule  rule149
(link_name-link_lnode-link_rnode Cs ?x ?y)
(link_name-link_expansion ?S  S $?v)
(link_name-link_lnode-link_rnode ?S ?y ?k)
(root-verbchunk-tam-parser_chunkids $?chunk_ids ?kri)
(test (or (member$ ?k $?chunk_ids) (eq ?kri ?k)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-conjunction	"?kri"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule149	kriyA-conjunction	"?kri"	"?x")"crlf)	
)
;Ex.     I wonder when he will come. He wondered why she will not go. Nobody knows when he will arrive.
;----------------------------------------------------------------------------------------------------------------
(defrule  viXi_vAkyakarma_1
(declare (salience 1625))
(link_name-link_expansion ?TS T S $?vars)
(link_name-link_lnode-link_rnode ?TS ?x ?y)
(or (link_name-link_expansion ?S S I $?var) (link_name-link_expansion ?S S F I $?va))
(link_name-link_lnode-link_rnode ?S  ?y ?subjn)
(link_name-link_expansion ?I  I ?v j)
(link_name-link_lnode-link_rnode ?I ?y ?verb)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kri)
(test (or (member$ ?verb $?chunk_ids)(eq ?kri ?verb)))
(parserid-word ?subjn ?word )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viXi_vAkya	)"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viXi_vAkyakarma_1	viXi_vAkya	)"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-viXi_vAkyakarma	"?x"	"?kri")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viXi_vAkyakarma_1	kriyA-viXi_vAkyakarma	"?x"	"?kri")"crlf)	
(if (eq ?word there ) then
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-dummy_subject	"?kri"	"?subjn")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viXi_vAkyakarma_1	kriyA-dummy_subject	"?kri"	"?subjn")"crlf)	
else
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?kri"	"?subjn")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viXi_vAkyakarma_1	kriyA-subject	"?kri"	"?subjn")"crlf)	
)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-conjunction	"?kri"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viXi_vAkyakarma_1	kriyA-conjunction	"?kri"	"?y")"crlf)	
)
;Ex.     They were asked that he be allowed to go.
;Ex.     I suggested that  he go.
;Ex. He made a request that there be an investigation .
;----------------------------------------------------------------------------------------------------------------
(defrule  viXi_vAkyakarma_2
(declare (salience 1625))
(link_name-link_expansion ?S S I $?var j)
(link_name-link_lnode-link_rnode ?S  ?y ?subjn)
(link_name-link_expansion ?I  I ?v j)
(link_name-link_lnode-link_rnode ?I ?y ?verb)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kri)
(test (or (member$ ?verb $?chunk_ids)(eq ?kri ?verb)))
(not (link_name-link_lnode-link_rnode TSi ? ?y))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viXi_vAkya	)"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viXi_vAkyakarma_2	viXi_vAkya	)"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-viXi_vAkyakarma	"?y"	"?kri")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viXi_vAkyakarma_2	kriyA-viXi_vAkyakarma	"?y"	"?kri")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?kri"	"?subjn")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viXi_vAkyakarma_2	kriyA-subject	"?kri"	"?subjn")"crlf)	
)
;Ex.    I suggested he go to the party. 
;----------------------------------------------------------------------------------------------------------------
(defrule  viXi_vAkya_sub-sub_samA
(declare (salience 1625))
(link_name-link_expansion ?S S I $?var j)
(link_name-link_lnode-link_rnode ?S  ?y ?subjn)
(link_name-link_expansion ?I  I ?v j)
(link_name-link_lnode-link_rnode ?I ?y ?verb)
(link_name-link_lnode-link_rnode Pa  ?verb ?s_s)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?subjn"	"?s_s")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viXi_vAkya_sub-sub_samA	subject-subject_samAnAXikaraNa	"?subjn"	"?s_s")"crlf)	
)
;Ex.    
;----------------------------------------------------------------------------------------------------------------
(defrule  rule153
(link_name-link_lnode-link_rnode MVp ?kri ?x)
(link_name-link_lnode-link_rnode Ys ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?kri"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule153	kriyA-kAlavAcI	"?kri"	"?y")"crlf)	
)
;Ex.    I'd like to see him 100 times a day.
;----------------------------------------------------------------------------------------------------------------
(defrule  MVp_DG
(link_name-link_lnode-link_rnode MVp ?kri ?x)
(link_name-link_lnode-link_rnode DG ?y ?x)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -      kriyA-kAlavAcI  "?kri"  "?x")"crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids -  MVp_DG kriyA-kAlavAcI  "?kri"  "?x")"crlf)
)
;Ex.  I am going to Europe the day I graduate .
;----------------------------------------------------------------------------------------------------------------
(defrule  viSeRya-saMKyA
(link_name-link_lnode-link_rnode ND|NSn ?x ?y)
(not (viSeRya-saMKyA_viSeRaNa_has_been_decided_by_rule_viSeRya-saMKyA_D* ?x))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-saMKyA_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viSeRya-saMKyA	viSeRya-saMKyA_viSeRaNa	"?y"	"?x")"crlf)	
)
;Ex.    I saw him three weeks ago. FIFTY PERCENT of them were women. THREE OTHER people are coming.
;----------------------------------------------------------------------------------------------------------------
(defrule  viSeRya-saMKyA_D*
(link_name-link_lnode-link_rnode ND|NSn ?x ?y)
(link_name-link_expansion    ?D D $?va)
(link_name-link_lnode-link_rnode   ?D   ?y   ?z)
=>
(assert (viSeRya-saMKyA_viSeRaNa_has_been_decided_by_rule_viSeRya-saMKyA_D* ?x))
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-saMKyA_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viSeRya-saMKyA_D*	viSeRya-saMKyA_viSeRaNa	"?z"	"?x")"crlf)	
)
;Ex. Five other costumes got prizes.
;----------------------------------------------------------------------------------------------------------------
(defrule  viSeRya-saMKyA_1
(link_name-link_lnode-link_rnode ND ?x ?y)
(link_name-link_lnode-link_rnode Ytm  ?y ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-saMKyA_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viSeRya-saMKyA_1	viSeRya-saMKyA_viSeRaNa	"?z"	"?x")"crlf)	
)
;Ex.   
;----------------------------------------------------------------------------------------------------------------
(defrule  saMKyA_samAsa
(link_name-link_lnode-link_rnode NW ?x ?y)
(link_name-link_lnode-link_rnode NF ?y ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	saMKyA_idiom	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	saMKyA_samAsa	saMKyA_idiom	"?x"	"?y")"crlf)	
)
;Ex.    He lives TWO THIRDS of a mile from here.
;----------------------------------------------------------------------------------------------------------------
(defrule  saMKyA_ID
(link_name-link_lnode-link_rnode Yt  ?x ?y)
(link_name-link_expansion    ?CO  C O $?vars)
(link_name-link_lnode-link_rnode ?CO  ?y ?z)
(link_name-link_expansion    ?S  S $?var)
(link_name-link_lnode-link_rnode ?S  ?z ?kri)
(root-verbchunk-tam-parser_chunkids  $?ids ?kriyA)
(test (or (member$ ?kri $?ids) (eq ?kri ?kriyA)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?kriyA"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	saMKyA_ID	kriyA-kAlavAcI	"?kriyA"	"?x")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-aXikaraNavAcI_avyaya	"?kriyA"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	saMKyA_ID	kriyA-aXikaraNavAcI_avyaya	"?kriyA"	"?y")"crlf)	
)
;Ex.   Millions of years ago , the earth was covered with ice.
;----------------------------------------------------------------------------------------------------------------
(defrule  rule157
(link_name-link_lnode-link_rnode Ye ?x ?y)
(parserid-word ?x every )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-det_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule157	viSeRya-det_viSeRaNa	"?y"	"?x")"crlf)	
)
;Ex.    We swim every three weeks
;----------------------------------------------------------------------------------------------------------------
(defrule rule159
(link_name-link_lnode-link_rnode MVp ?x ?y)
(link_name-link_lnode-link_rnode Yd ?z ?y)
(not (link_name-link_lnode-link_rnode J|Js|Jp  ?y ?a))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-aXikaraNavAcI_avyaya	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule159	kriyA-aXikaraNavAcI_avyaya	"?x"	"?y")"crlf)	
)
;Ex.	We swam three miles away.
;----------------------------------------------------------------------------------------------------------------
(defrule Yd+ND
(link_name-link_lnode-link_rnode MVp|Pp ?x ?y)
(link_name-link_lnode-link_rnode Yd ?z ?y)
(link_name-link_lnode-link_rnode ND ?a ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-measurement	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	Yd+ND	kriyA-measurement	"?x"	"?z")"crlf)	
)
;Ex.   We swam three miles away. It is eight hundred feet above the sea level. 
;----------------------------------------------------------------------------------------------------------------
(defrule Yd
(link_name-link_lnode-link_rnode Yd ?viSeRya ?y)
(link_name-link_expansion    ?J   J  $?vars)
(link_name-link_lnode-link_rnode ?J  ?y ?head)
(parserid-word ?y ?viBakwi )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?y"	viSeRya-"?viBakwi"_saMbanXI	"?viSeRya"	"?head")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?y"	Yd	viSeRya-"?viBakwi"_saMbanXI	"?viSeRya"	"?head")"crlf)	
)
;Ex.   He lives two thirds of a mile from here. 
;----------------------------------------------------------------------------------------------------------------
(defrule Yd_1
(link_name-link_lnode-link_rnode MVp ?x ?y)
(link_name-link_lnode-link_rnode Yd ?z ?y)
(link_name-link_lnode-link_rnode NJ ?prep ?z)
(parserid-word ?prep ?viBakwi )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?prep"	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?prep"	Yd_1	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)	
)
;Ex.   He lives two thirds of a mile from here. 
;----------------------------------------------------------------------------------------------------------------

(defrule  rule160
(link_name-link_lnode-link_rnode Ya ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule160	viSeRya-viSeRaNa	"?y"	"?x")"crlf)	
)
;Ex.    He is three FEET TALL.
;----------------------------------------------------------------------------------------------------------------
(defrule  rule161
(link_name-link_lnode-link_rnode WN ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-jo_samAnAXikaraNa	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule161	viSeRya-jo_samAnAXikaraNa	"?x"	"?y")"crlf)	
)
;Ex.	The YEAR WHEN we lived in England was wonderful.
;----------------------------------------------------------------------------------------------------------------
(defrule  that_conj
(link_name-link_lnode-link_rnode TH|THi|THb|THc ?x ?y)
(link_name-link_expansion ?Ce   C e $?var)
(link_name-link_lnode-link_rnode  ?Ce ?y ?z)
(parserid-word ?z ?word&~there  );Added by Shirisha Manju Ex: You are lucky that there is no exam today .
(link_name-link_expansion ?S  S $?v)
(link_name-link_lnode-link_rnode ?S ?z ?k)
(root-verbchunk-tam-parser_chunkids $?chunk_ids ?kri)
(test (or (member$ ?k $?chunk_ids) (eq ?kri ?k)))

=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-conjunction	"?kri"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	that_conj	kriyA-conjunction	"?kri"	"?y")"crlf)	
)
;Ex.    The problem IS THAT John is coming.
;----------------------------------------------------------------------------------------------------------------
; RULES ABOUT SENTENCE TYPES
	
(defrule sAmAnya_vAkya
(declare (salience 1520)) 
(link_name-link_expansion ?lname ?var&~N)
(link_name-link_lnode-link_rnode Wd|Wdc ?x ?y)
(not (niReXAwmaka_vAkya_rel_has_been_dcd_by_niReXAwmaka_vAkya))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	sAmAnya_vAkya)"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	sAmAnya_vAkya	sAmAnya_vAkya)"crlf)	
)
;Ex.	I told him to leave. He is working hard.
;----------------------------------------------------------------------------------------------------------------
(defrule AjFArWaka_vAkya
(declare (salience 1510))
(link_name-link_lnode-link_rnode Wi ?x ?y)
(root-verbchunk-tam-parser_chunkids $?chunk_ids ?kri)
(test (or (member$ ?y $?chunk_ids) (eq ?kri ?y)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	AjFArWaka_vAkya)"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	AjFArWaka_vAkya	AjFArWaka_vAkya)"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	AjFArWaka_kriyA	"	?kri")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	AjFArWaka_vAkya	AjFArWaka_kriyA	"	?kri")"crlf)	
)
;Ex.	Go to the class. GO away. Do not waste electricity.
;----------------------------------------------------------------------------------------------------------------
(defrule subject_question_wh_type
(declare (salience 1500))
(link_name-link_lnode-link_rnode Ws ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject_question_wh_type)"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	subject_question_wh_type	subject_question_wh_type)"crlf)	
)
;Ex.	Who did you hit? Who is coming? What is your name?
;----------------------------------------------------------------------------------------------------------------
(defrule yes_no_question
(declare (salience 1501))
(link_name-link_lnode-link_rnode Qd ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	yes_no_question)"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	yes_no_question	yes_no_question)"crlf)	
)
;Ex.	 Is there any water in the glass? Could I go to the library?
;----------------------------------------------------------------------------------------------------------------
(defrule wh_question
(declare (salience 1502))
(link_name-link_lnode-link_rnode Wq|Wj ?x ?y)
(parserid-word ?y ?word&~here )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	wh_question)"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	wh_question	wh_question)"crlf)	
)
;Ex.	Who did you hit? Who is coming? Is there any water in the glass? Could I go to the library? To whom did you speak?
;----------------------------------------------------------------------------------------------------------------
(defrule niReXAwmaka_vAkya
(declare (salience 1550))
(or (link_name-link_expansion    ?Wd  W d $?vars)(link_name-link_expansion  ?Wd  W d $?vars))
?f0<-(link_name-link_lnode-link_rnode ?Wd ?a ?b) ;This condition is to retract Wd link so that rule "sAmAnya_vAkya" won't fire.
(link_name-link_lnode-link_rnode N ?x ?y)
=>
(assert (niReXAwmaka_vAkya_rel_has_been_dcd_by_niReXAwmaka_vAkya))
(printout	?*fp*	"(prep_id-relation-parser_ids  -	niReXAwmaka_vAkya)"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	niReXAwmaka_vAkya	niReXAwmaka_vAkya)"crlf)	
)
;Ex.    He had not gone. He was not speaking to Fred. I will not do it.
;----------------------------------------------------------------------------------------------------------------
(defrule rule174
(declare (salience 610))
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
?f0<- (link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode Pa|Paf|Pam  ?y ?z)
(link_name-link_lnode-link_rnode Os|Op|Ox  ?y ?a)
(not (object-object_samAnAXikaraNa_rel_has_been_deceded_by_'object_samAnAXikaraNa_and'_rule))
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	object-object_samAnAXikaraNa	"?a"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule174	object-object_samAnAXikaraNa	"?a"	"?z")"crlf)	
)
;Ex.	 I found HIM INTELLIGENT.
;----------------------------------------------------------------------------------------------------------------
(defrule object_samAnAXikaraNa
(declare (salience 610))
(link_name-link_expansion    ?O   O $?vars)
(link_name-link_lnode-link_rnode ?O ?x ?y)
(link_name-link_lnode-link_rnode Ma  ?y ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	object-object_samAnAXikaraNa	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	object_samAnAXikaraNa	object-object_samAnAXikaraNa	"?y"	"?z")"crlf)	
)
;Ex.	We need a programmer knowledgeable about Lisp. These are people unhappy about the economy. 
;----------------------------------------------------------------------------------------------------------------
(defrule obj_samA
(declare (salience 610))
(link_name-link_expansion    ?O   O $?vars)
(link_name-link_lnode-link_rnode ?O ?x ?y)
(link_name-link_lnode-link_rnode ALx|AL ?y ?z)
(link_name-link_lnode-link_rnode Jp  ?y ?obj)
(link_name-link_lnode-link_rnode Ma  ?obj ?obj-s)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	object-object_samAnAXikaraNa	"?obj"	"?obj-s")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	obj_samA	object-object_samAnAXikaraNa	"?obj"	"?obj-s")"crlf)	
)
;Ex.   One may not have all the competence necessary for doing a task. 
;----------------------------------------------------------------------------------------------------------------
(defrule obj_samA_1
(link_name-link_expansion ?O O $?var)
(link_name-link_lnode-link_rnode ?O ?x ?ob)
(link_name-link_lnode-link_rnode AZ ?x ?as)
(link_name-link_lnode-link_rnode Paf ?as ?ob_s)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	object-object_samAnAXikaraNa	"?ob"	"?ob_s")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	obj_samA_1	object-object_samAnAXikaraNa	"?ob"	"?ob_s")"crlf)	
)
;Ex.    He viewed HIM as STUPID.
;----------------------------------------------------------------------------------------------------------------
(defrule subj_samAnAXikaraNa
(declare (salience 610))
(link_name-link_expansion    ?S   S $?vars)
(link_name-link_lnode-link_rnode ?S ?x ?y)
(link_name-link_lnode-link_rnode Ma  ?x ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	subj_samAnAXikaraNa	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
)
;Ex.  Voters angry about the economy will probably vote for Clinton. 
;----------------------------------------------------------------------------------------------------------------
(defrule object_samAnAXikaraNa_1
(declare (salience 610))
(link_name-link_expansion    ?O   O X $?vars)
(link_name-link_lnode-link_rnode ?O ?x ?obj)
(link_name-link_expansion    ?TO   T O $?var)
(link_name-link_lnode-link_rnode ?TO ?x ?y)
(link_name-link_lnode-link_rnode Ix  ?y ?z)
(link_name-link_lnode-link_rnode Paf ?z ?o_s)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	object-object_samAnAXikaraNa	"?obj"	"?o_s")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	object_samAnAXikaraNa_1	object-object_samAnAXikaraNa	"?obj"	"?o_s")"crlf)	
)
;Ex.   
;----------------------------------------------------------------------------------------------------------------
(defrule sub_samAnAXikaraNa_1
(declare (salience 610))
(link_name-link_expansion    ?S   S $?vari)
(link_name-link_lnode-link_rnode ?S ?b ?x)
(link_name-link_expansion    ?O   O $?vars)
(link_name-link_lnode-link_rnode ?O ?x ?y)
(link_name-link_expansion    ?J   J $?var)
(link_name-link_lnode-link_rnode ?J  ?y ?z)
(link_name-link_lnode-link_rnode Ma   ?z ?a)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?b"	"?a")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	sub_samAnAXikaraNa_1	subject-subject_samAnAXikaraNa	"?b"	"?a")"crlf)	
)
;Ex.    The river is half a mile wide here and 300 feet deep. 
;----------------------------------------------------------------------------------------------------------------
(defrule rule176
(link_name-link_lnode-link_rnode DG ?a ?b)
(link_name-link_lnode-link_rnode DG ?c ?d)
(link_name-link_lnode-link_rnode ER ?b ?d)
(link_name-link_lnode-link_rnode AF ?b ?e)
(link_name-link_lnode-link_rnode Ss ?f ?e)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?e"	"?f")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule176	kriyA-subject	"?e"	"?f")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?e"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule176	subject-subject_samAnAXikaraNa	"?e"	"?b")"crlf)	
)
;Ex.	The FASTER it IS, the more they will like it.
;----------------------------------------------------------------------------------------------------------------
(defrule rule179
(link_name-link_lnode-link_rnode Am ?x ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-wulanAwmaka_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule179	viSeRya-wulanAwmaka_viSeRaNa	"?y"	"?x")"crlf)	
)
;Ex.	He is a TALLER MAN. The little young girl will present a beautiful doll to her YOUNGER BROTHER.
;----------------------------------------------------------------------------------------------------------------
(defrule rule180
(link_name-link_lnode-link_rnode MVp ?x ?y)
(link_name-link_lnode-link_rnode Bs|Bp ?a ?y)
(link_name-link_lnode-link_rnode Rn|R ?a ?b)
(parserid-word ?y ?viBakwi )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?y"	kriyA-"?viBakwi"_saMbanXI	"?x"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?y"	rule180	kriyA-"?viBakwi"_saMbanXI	"?x"	"?b")"crlf)	
)	
;Ex	The planet that we live on is of medium size. These are the principles which we all believe in.
;----------------------------------------------------------------------------------------------------------------
(defrule rule181
(declare (salience 715))
(link_name-link_lnode-link_rnode B*w|Bsw|Bsm|Bpm ?x ?y)
(link_name-link_lnode-link_rnode MVp ?z ?y)
(parserid-word ?y ?viBakwi )
(root-verbchunk-tam-parser_chunkids $?ch ?z) ;Ex. 4 this condition: Which of your parents do you feel closer to?
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?y"	kriyA-"?viBakwi"_saMbanXI	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?y"	rule181	kriyA-"?viBakwi"_saMbanXI	"?z"	"?x")"crlf)	
)
;Ex.	WHICH place are you COMING from ?
;----------------------------------------------------------------------------------------------------------------
(defrule rule182
(link_name-link_lnode-link_rnode MVp|MVb|Pp ?a ?b)
(parserid-word ?b again|later|here|there|somewhere|anywhere|everywhere|now|outside|longer|alone|next|upstairs|downstairs|upwards|downwards|above|down )
(not (link_name-link_lnode-link_rnode J|Jp|Js|IN|ON ?b ?x));ex. I went outside of the room.
(not (parser_id-cat_coarse ?a  adjective));It was cold there even in summer .
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-aXikaraNavAcI_avyaya	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule182	kriyA-aXikaraNavAcI_avyaya	"?a"	"?b")"crlf)	
)
;Ex.	I WENT THERE. He IS HERE. I will do it later. He talked longer than usual. He was sitting next to Mohan's brother .
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-lupwa_prep_Pa
(link_name-link_lnode-link_rnode Pa|Paf ?x ?a)
(link_name-link_lnode-link_rnode MVp|MVb|Pp ?a ?b)
(parserid-word ?b again|later|here|there|somewhere|anywhere|everywhere|now|outside|longer|alone|next|upstairs|downstairs|upwards|downwards|above|down )
(parserid-word ?x is|are|am|was|were )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-aXikaraNavAcI_avyaya	"?x"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-lupwa_prep_Pa	kriyA-aXikaraNavAcI_avyaya	"?x"	"?b")"crlf)	
)
;Ex.   It was cold there even in summer .
;----------------------------------------------------------------------------------------------------------------
(defrule rule183
(link_name-link_expansion  ?ID    I D $?)
(link_name-link_lnode-link_rnode  ?ID ?a ?b)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	idiom_type_1	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule183	idiom_type_1	"?a"	"?b")"crlf)	
)
;Ex. 	 Passion is a must to reach your potential.
;----------------------------------------------------------------------------------------------------------------
(defrule how-to-drive
(link_name-link_lnode-link_rnode  TOn ?how ?to)
(link_name-link_lnode-link_rnode  I ?to ?drive)
(parserid-word ?how how )
(parserid-word ?to to )
(parserid-word ?drive drive )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	idiom_type_1	"?how"	"?to")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	how-to-drive	idiom_type_1	"?how"	"?to"	"?drive")"crlf)	
)
;Ex.	She knows how to drive a car .
;----------------------------------------------------------------------------------------------------------------
(defrule MVx+ID
(link_name-link_expansion  ?ID    I D $?)
(link_name-link_lnode-link_rnode  ?ID ?a ?b)
(link_name-link_lnode-link_rnode  Pa|Pv ?z ?c)
(link_name-link_lnode-link_rnode MVx  ?c ?b)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?c"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	MVx+ID	kriyA-kriyA_viSeRaNa	"?c"	"?b")"crlf)	
)
;Ex. The project was finished on schedule, as usual. 
;----------------------------------------------------------------------------------------------------------------
(defrule MVp+ID
(link_name-link_expansion  ?ID    I D $?)
(link_name-link_lnode-link_rnode  ?ID ?a ?b)
(link_name-link_lnode-link_rnode  Pa|Pv ?z ?c)
(link_name-link_lnode-link_rnode MVp  ?c ?b)
(parserid-word ?a ?viBakwi )
(not (has_been_included_in_larger_group_by_rule_prep_IDIOM-MVp ?a))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?a"	kriyA-"?viBakwi"_saMbanXI	"?c"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?a"	MVp+ID	kriyA-"?viBakwi"_saMbanXI	"?c"	"?b")"crlf)	
)
;Ex. The project was finished on schedule, as usual. 
;----------------------------------------------------------------------------------------------------------------
(defrule rule112
(declare (salience 108))
(link_name-link_expansion    ?lname   S $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y) 
(link_name-link_lnode-link_rnode I*j|Ifj ?y ?z)
(test (not (or (member$ I $?vars) (member$ F $?vars) (member$ j $?vars)))) ;ex. 4 this:  "I suggested he go to the party."
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-preraka_kriyA	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule112	kriyA-preraka_kriyA	"?z"	"?y")"crlf)	
)
;Ex.	I made him go. The teacher made the students stay after class. She had her children cook dinner for her. Peter made her do her homework. Smith HAD the mechanic TAKE out the brakes.
;----------------------------------------------------------------------------------------------------------------
(defrule rule184
(declare (salience 505))
(link_name-link_lnode-link_rnode TO ?a ?b)
(link_name-link_lnode-link_rnode I ?b ?c)
(link_name-link_lnode-link_rnode I*j|Ifj ?c ?d)
(parserid-word ?a have|has|had )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-preraka_kriyA	"?d"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule184	kriyA-preraka_kriyA	"?d"	"?c")"crlf)	
)
;Ex.	 She had to make her children cook dinner for her.
;----------------------------------------------------------------------------------------------------------------
(defrule rule185
(declare (salience 505))
(link_name-link_lnode-link_rnode I*j|Ifj ?c ?d)
(link_name-link_expansion    ?object        O $?)
(link_name-link_lnode-link_rnode  ?object ?c ?e)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-prayojya_karwA	"?d"	"?e")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule185	kriyA-prayojya_karwA	"?d"	"?e")"crlf)	
)
;The object of the first verb (i.e. causative verb) becomes prayojya_karwA according to Sanskrit grammar, so we have given this object a prayojya_karwA relation but we are also showing the prayojya_karwA as an object of the causative verb. e.g. "Peter made her(1) do her homework." here 'her(1)' is prayojya_karwA and is the object of 'made'.

;Ex.	 She had to make her children cook dinner for her.
;----------------------------------------------------------------------------------------------------------------
(defrule rule186
(declare (salience 510))
(link_name-link_lnode-link_rnode Pg*b|Pgfb|Pgf|PP|I|Ix|If ?y ?z)
(link_name-link_lnode-link_rnode I*j|Ifj ?z ?d)
(parserid-word ?y is|are|am|was|had|has|have|were|been|be )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-preraka_kriyA	"?d"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule186	kriyA-preraka_kriyA	"?d"	"?z")"crlf)	
)
;Ex.	 She has made her children cook dinner for her.
;----------------------------------------------------------------------------------------------------------------
(defrule rule187
(link_name-link_expansion  ?lname  S ~I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode AFdi ?z ?y)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-conjunction	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule187	kriyA-conjunction	"?y"	"?z")"crlf)	
)
;Ex	It is more likely that Joe will come than it is that Fred will go.
;----------------------------------------------------------------------------------------------------------------
(defrule rule188
(link_name-link_lnode-link_rnode MVs ?x ?y)
(link_name-link_lnode-link_rnode Mgp ?y ?z)
(or(parser_id-cat_coarse ?z  verb)(parser_id-cat_coarse ?z verbal_noun))	
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-samAnakAlika_kriyA	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule188	kriyA-samAnakAlika_kriyA	"?x"	"?z")"crlf)	
)
;Ex	Rama was TALKING while EATING fruits.
;----------------------------------------------------------------------------------------------------------------
(defrule viSeRya-kqxanwa_viSeRaNa
(link_name-link_lnode-link_rnode Mg|Mv ?x ?y);ex. 4 Mv: The 5 thousand people invited by Bob attended.
(not  (kriyA-kqxanwa_karma_relation_has_been_decided_by_rule_kri-kqxanwa_karma))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-kqxanwa_viSeRaNa	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viSeRya-kqxanwa_viSeRaNa	viSeRya-kqxanwa_viSeRaNa	"?x"	"?y")"crlf)	
)
;Ex	The boy running in the garden plucked the flower. The dog chasing the man died.
;----------------------------------------------------------------------------------------------------------------
(defrule kri-kqxanwa_karma
(link_name-link_expansion ?O O $?var)
(link_name-link_lnode-link_rnode  ?O ?kriyA ?obj)
(link_name-link_lnode-link_rnode Mg ?obj ?kq_k)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kqxanwa_karma	"?kriyA"	"?kq_k")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kri-kqxanwa_karma	kriyA-kqxanwa_karma	"?kriyA"	"?kq_k")"crlf)	
(assert (kriyA-kqxanwa_karma_relation_has_been_decided_by_rule_kri-kqxanwa_karma))
)
;Ex  She felt something crawling on her neck.
;----------------------------------------------------------------------------------------------------------------
(defrule rule189
(link_name-link_expansion  ?V    V $?)
(link_name-link_lnode-link_rnode  ?V ?a ?b)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	idiom_type_2	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule189	idiom_type_2	"?a"	"?b")"crlf)	
)
;Ex. 	 He did nothing but complain. I took him for granted. I held him responsible. He kept watch.
;----------------------------------------------------------------------------------------------------------------
(defrule rule190
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_expansion  ?object    O $?)
(link_name-link_lnode-link_rnode  ?object ?y ?z)
(link_name-link_lnode-link_rnode Pv ?y ?a)
(parserid-word ?y have|has|had )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-preraka_kriyA	"?a"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule190	kriyA-preraka_kriyA	"?a"	"?y")"crlf)	
)
;Ex.	 I had my hair cut yesterday.
;----------------------------------------------------------------------------------------------------------------
(defrule rule191
(declare (salience 510))
(link_name-link_lnode-link_rnode Pg*b|Pgfb|Pgf|PP|I|Ix|If ?y ?z)
(link_name-link_expansion  ?object    O $?)
(link_name-link_lnode-link_rnode  ?object ?z ?a)
(link_name-link_lnode-link_rnode Pv ?z ?b)
(parserid-word ?y is|are|am|was|had|has|have|were|been|be )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-preraka_kriyA	"?b"	"?z")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule191	kriyA-preraka_kriyA	"?b"	"?z")"crlf)	
)
;Ex.	 I have had the walls painted.
;----------------------------------------------------------------------------------------------------------------
(defrule rule192
(link_name-link_lnode-link_rnode MVp ?x ?y)
(link_name-link_lnode-link_rnode Mgp ?y ?z)
(parserid-word ?y ?viBakwi )
(or(parser_id-cat_coarse ?z verb)(parser_id-cat_coarse ?z  verbal_noun))	
(not  (kriyA-'viBakwi'_saMbanXI_rel_has_been_deceded_by_'kriyA-'viBakwi'_saMbanXI_and'_rule ?y))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?y"	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?y"	rule192	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)	
)
;Ex	He wants to go out for playing.
;----------------------------------------------------------------------------------------------------------------
(defrule rule192_1
(declare (salience 200))
(link_name-link_lnode-link_rnode MVp ?x ?y)
(link_name-link_lnode-link_rnode Mgp ?y ?z)
(link_name-link_lnode-link_rnode Mgn ?z ?a)
(parserid-word ?y ?viBakwi )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?y"	kriyA-"?viBakwi"_saMbanXI	"?x"	"?a")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?y"	rule192_1	kriyA-"?viBakwi"_saMbanXI	"?x"	"?a")"crlf)	
)
;Ex   I prevented her from doing it by praising her for not doing it. 
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-prep_saM
(link_name-link_lnode-link_rnode Pp ?x ?y)
(link_name-link_lnode-link_rnode Mgp ?y ?z)
(parserid-word ?y ?viBakwi )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?y"	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?y"	kriyA-prep_saM	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)	
)
;Ex    This was in keeping with the convention of warships being launched by a lady.
;----------------------------------------------------------------------------------------------------------------
(defrule pUrva_kriyA-ananwara_kriyA
(link_name-link_expansion    ?S    S ~F $?vars)
(link_name-link_lnode-link_rnode ?S  ? ?x)
(link_name-link_lnode-link_rnode MVs ?x ?y)
(link_name-link_lnode-link_rnode Cs  ?y ?z)
(parserid-word ?y after )
(link_name-link_expansion    ?S1    S ~F $?vars)
(link_name-link_lnode-link_rnode ?S1  ?z ?a)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids -	kriyA-conjunction	"?a"	"?y")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	pUrva_kriyA-ananwara_kriyA	kriyA-conjunction       "?a"    "?y")"crlf)
)
;Ex	The man I SAW after I LEFT your party is here .
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-samAnakAlika_kriyA
(declare (salience 34))
(link_name-link_expansion    ?S    S ~F $?vars)
(link_name-link_lnode-link_rnode ?S  ? ?x)
(link_name-link_lnode-link_rnode MVs ?x ?y)
(link_name-link_lnode-link_rnode Cs  ?y ?z)
(parserid-word ?y when )
(link_name-link_expansion    ?S1    S ~F $?vars)
(link_name-link_lnode-link_rnode ?S1  ?z ?a)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-samAnakAlika_kriyA	"?a"	"?x")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-samAnakAlika_kriyA	kriyA-samAnakAlika_kriyA	"?a"	"?x")"	crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?a"	"?y")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-samAnakAlika_kriyA	kriyA-kAlavAcI	"?a"	"?y")"	crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?x"	"?y")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-samAnakAlika_kriyA	kriyA-kAlavAcI	"?x"	"?y")"	crlf)	
)
;Ex	I LEFT when I SAW you .
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-samAnakAlika_kriyA_1
(link_name-link_expansion    ?S    S ~F $?vars)
(link_name-link_lnode-link_rnode ?S  ?b ?x)
(link_name-link_expansion    ?CO   C O $?var)
(link_name-link_lnode-link_rnode ?CO ?y ?z)
(link_name-link_lnode-link_rnode Cs  ?y ?b)
(parserid-word ?y when )
(link_name-link_expansion    ?S1    S ~F $?va)
(link_name-link_lnode-link_rnode ?S1  ?z ?a)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-samAnakAlika_kriyA	"?x"	"?a")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-samAnakAlika_kriyA_1	kriyA-samAnakAlika_kriyA	"?x"	"?a")"	crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?x"	"?y")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-samAnakAlika_kriyA_1	kriyA-kAlavAcI	"?x"	"?y")"	crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kAlavAcI	"?a"	"?y")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-samAnakAlika_kriyA_1	kriyA-kAlavAcI	"?a"	"?y")"	crlf)	
)
;Ex	When I SAW you, I LEFT  .
;----------------------------------------------------------------------------------------------------------------
(defrule saMjFA-samA
(link_name-link_expansion  ?MX M X $?var)
(link_name-link_lnode-link_rnode ?MX  ?a ?b) 
(not (link_name-link_lnode-link_rnode J|Js|Jp  ?b ?x))
(not (rel_for_MX_link_has_been_dcd_by_vi-jo_samA_rule ?a))
(not (rel_for_MX_link_has_been_dcd_by_vi-jo_samA_MX_rule ?a))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	saMjFA-saMjFA_samAnAXikaraNa	"?a"	"?b")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	saMjFA-samA	saMjFA-saMjFA_samAnAXikaraNa	"?a"	"?b")"	crlf)	
)
;Ex    Rama gave a book to DASHARAT, the KING of Ayodhya.
;----------------------------------------------------------------------------------------------------------------
(defrule vi-jo_samA
(declare (salience 200))
(link_name-link_expansion  ?MX M X $?var r)
(link_name-link_lnode-link_rnode ?MX  ?a ?b)
(link_name-link_expansion  ?S S $?vari)
(link_name-link_lnode-link_rnode ?S  ?b ?rel)
(link_name-link_expansion  ?S1 S  $?vars)
(link_name-link_lnode-link_rnode ?S1  ?a ?mu_kri)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kriyA)
(test (or (member$ ?mu_kri $?chunk_ids) (eq ?mu_kri ?kriyA)))
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids1 ?kriyA1)
(test (or (member$ ?rel $?chunk_ids1) (eq ?rel ?kriyA1)))
(not (link_name-link_lnode-link_rnode J|Js|Jp  ?b ?x))
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -	viSeRya-jo_samAnAXikaraNa       "?a"    "?b")"  crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids -	vi-jo_samAA	viSeRya-jo_samAnAXikaraNa       "?a"    "?b")"  crlf)
(assert (rel_for_MX_link_has_been_dcd_by_vi-jo_samA_rule ?a))
)
;Ex    The DOG, WHO was black, barked loudly.
;----------------------------------------------------------------------------------------------------------------
(defrule vi-jo_samA_MX
(declare (salience 100))
(link_name-link_expansion  ?MX M X $?var r)
(link_name-link_lnode-link_rnode ?MX  ?a ?b)
(link_name-link_expansion  ?S S $?vari)
(link_name-link_lnode-link_rnode ?S  ?b ?rel)
(link_name-link_expansion  ?O  O  $?vars)
(link_name-link_lnode-link_rnode ?O  ?mu_kri ?a)
(link_name-link_lnode-link_rnode Wi  ?wall ?mu_kri)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kriyA)
(test (or (member$ ?mu_kri $?chunk_ids) (eq ?mu_kri ?kriyA)))
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids1 ?kriyA1)
(test (or (member$ ?rel $?chunk_ids1) (eq ?rel ?kriyA1)))
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -      viSeRya-jo_samAnAXikaraNa       "?a"    "?b")"  crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids -	vi-jo_samA_MX	viSeRya-jo_samAnAXikaraNa       "?a"    "?b")"  crlf)
(assert (rel_for_MX_link_has_been_dcd_by_vi-jo_samA_MX_rule ?a))
)
;Ex    Please send John, who is my friend, to England.
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA_mUla
(link_name-link_lnode-link_rnode   Wi  ?a ?b)
(link_name-link_lnode-link_rnode Pa  ?b ?c)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_mUla	"?b"	"?c")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA_mUla	kriyA-kriyA_mUla	"?b"	"?c")"	crlf)	
)
;Ex     keep quiet, she said. Be careful, she said.
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA_mUla_1
(declare (salience 1000))
(or (link_name-link_expansion ?I I $?var)(link_name-link_expansion ?I S ~I $?vars))
(link_name-link_lnode-link_rnode ?I ?x ?kri)
(link_name-link_expansion ?Pa P a $?vari)
(link_name-link_lnode-link_rnode ?Pa ?kri ?kri_mUla)
(or (link_name-link_expansion ?O O $?v) (link_name-link_expansion ?O N))
(or (link_name-link_lnode-link_rnode ?O ?kri ?z)(link_name-link_lnode-link_rnode ?O ?x ?y))
(not (parserid-word ?kri be ));To pretend that our program is usable in its current form would be silly.
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_mUla	"?kri"	"?kri_mUla")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA_mUla_1	kriyA-kriyA_mUla	"?kri"	"?kri_mUla")"crlf)	
)
;Ex. There is no reason to get so upset about it. I made it clear that I was angry .
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA_karwA
(link_name-link_expansion    ?O    O $?vars)
(link_name-link_lnode-link_rnode   ?O  ?a ?b)
(link_name-link_lnode-link_rnode TOo  ?a ?c)
(link_name-link_lnode-link_rnode I ?c ?d)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-karwA	"?d"	"?b")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA_karwA	kriyA-karwA	"?d"	"?b")"	crlf)	
)
;Ex   I want the students to go. I want Rama to go. I want him to go
;----------------------------------------------------------------------------------------------------------------
(defrule wall-conjunction
(link_name-link_lnode-link_rnode   Wc  ?a ?b)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	wall_conjunction	"?b")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	wall-conjunction	wall_conjunction	"?b")"	crlf)	
)
;Ex   But my efforts to win his heart have failed. And Jane screamed.
; This rule is just to give a name to the sentence initial conjunctions and this is not a relation.
;----------------------------------------------------------------------------------------------------------------
(defrule wall-conjunction_1
(declare (salience 510))
(link_name-link_expansion    ?W   W $?var)
(link_name-link_lnode-link_rnode   ?W  ?a ?b)
(link_name-link_expansion    ?CO   C O $?vars)
?f0<-(link_name-link_lnode-link_rnode   ?CO  ?c  ?b)
(not (got_relation_for_CO_link))
(not (link_name-link_lnode-link_rnode   TI  ?c ?x)) ;Ex. As president of the company , it is my decision.
(not (link_name-link_lnode-link_rnode   IN  ?c ?x)) ;Ex. In January 1990 , a historic new law was passed . 
=>
(assert (got_relation_for_CO))
(printout	?*fp*	"(prep_id-relation-parser_ids  -	wall_conjunction	"?c")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	wall-conjunction_1	wall_conjunction	"?c")"	crlf)	
)
;Ex  However the user needs some training to use the software effectively
;----------------------------------------------------------------------------------------------------------------
(defrule wall-conjunction_2
(declare (salience 520))
(link_name-link_expansion    ?W   W $?var)
(link_name-link_lnode-link_rnode   ?W  ?a ?b)
(link_name-link_expansion    ?CO   C O $?vars)
?f0<-(link_name-link_lnode-link_rnode   ?CO  ?c  ?b)
(link_name-link_expansion    ?J    J $?vari)
(link_name-link_lnode-link_rnode  ?J  ?c ?d)
=>
(assert (got_relation_for_CO_link))
(printout	?*fp*	"(prep_id-relation-parser_ids  -	wall_conjunction	"?d")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	wall-conjunction_2	wall_conjunction	"?d")"	crlf)	
)
;Ex  Of her childhood we know very little.
;----------------------------------------------------------------------------------------------------------------
(defrule wall-conjunction_3
(declare (salience 540))
(link_name-link_expansion    ?W   W $?var)
(link_name-link_lnode-link_rnode   ?W  ?a ?b)
(link_name-link_expansion    ?CO   C O $?vars)
(link_name-link_lnode-link_rnode   ?CO  ?c  ?b)
(link_name-link_lnode-link_rnode  Mgp  ?c ?d)
=>
(assert (got_relation_for_CO_link))
(printout	?*fp*	"(prep_id-relation-parser_ids  -	wall_conjunction	"?d")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	wall-conjunction_3	wall_conjunction	"?d")"	crlf)	
)
;Ex  By going there you can earn more money.
;----------------------------------------------------------------------------------------------------------------
(defrule sub-conj
(link_name-link_lnode-link_rnode   CC  ?a ?c)
(link_name-link_expansion    ?W   W $?vars)
(link_name-link_lnode-link_rnode   ?W  ?c  ?b)
(link_name-link_expansion ?S  S $?v)
(link_name-link_lnode-link_rnode ?S ?b ?k)
(root-verbchunk-tam-parser_chunkids $?chunk_ids ?kri)
(test (or (member$ ?k $?chunk_ids) (eq ?kri ?k)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-conjunction	"?kri"	"?c")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	sub-conj	kriyA-conjunction	"?kri"	"?c")"	crlf)	
)
;Ex We caught him up although he was walking very fast.
;----------------------------------------------------------------------------------------------------------------
(defrule sub-conj1
(link_name-link_lnode-link_rnode   CC  ?a ?c)
(link_name-link_lnode-link_rnode   Wq  ?c  ?b)
(link_name-link_lnode-link_rnode   Q   ?b ?d)
(link_name-link_expansion    ?SI   S I $?vars)
(link_name-link_lnode-link_rnode   ?SI  ?d  ?k)
(root-verbchunk-tam-parser_chunkids $?chunk_ids ?kri)
(test (or (member$ ?k $?chunk_ids) (eq ?kri ?k)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-conjunction	"?kri"	"?c")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	sub-conj1	kriyA-conjunction	"?kri"	"?c")"	crlf)	
)
;Ex.   I know you hate Bill , but why did you send him that nasty note .
;----------------------------------------------------------------------------------------------------------------
(defrule sub-conj_but
(link_name-link_lnode-link_rnode   Wd  ?a ?b)
(link_name-link_lnode-link_rnode   Wd  ?a ?c)
(link_name-link_expansion    ?S    S  $?vars)
(link_name-link_lnode-link_rnode   ?S  ?c  ?k)
(root-verbchunk-tam-parser_chunkids $?chunk_ids ?kri)
(test (or (member$ ?k $?chunk_ids) (eq ?kri ?k)))
(parser_id-root ?but but)
(test (neq ?b ?c))
(test (< (string_to_integer ?but) (string_to_integer ?c)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-conjunction	"?kri"	"?but")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	sub-conj_but	kriyA-conjunction	"?kri"	"?but")"	crlf)	
)
;Ex.  There was a problem , but we solved it .
;----------------------------------------------------------------------------------------------------------------
(defrule wall_prep_saM
(declare (salience 530))
(link_name-link_expansion    ?CO   C O $?vars)
(link_name-link_lnode-link_rnode   ?CO  ?c  ?b)
?f0<-(link_name-link_lnode-link_rnode   Mgp|OF  ?c  ?d)
(link_name-link_expansion    ?S   S $?vari)
(link_name-link_lnode-link_rnode   ?S  ?b ?kri)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kriyA)
(test (or (member$ ?kri $?chunk_ids) (eq ?kri ?kriyA)))
(parserid-word ?c ?viBakwi )
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids "?c"	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?d")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?c"	wall_prep_saM	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?d")"crlf)	
)
;Ex  By going there you can earn more money.
;Ex  By going there you earn more money.
;----------------------------------------------------------------------------------------------------------------
(defrule wall_prep_saM_2
(declare (salience 530))
(link_name-link_expansion    ?CO   C O $?vars)
(link_name-link_lnode-link_rnode   ?CO  ?c  ?b)
(link_name-link_lnode-link_rnode  IN ?c  ?d)
(link_name-link_lnode-link_rnode  TY ?d  ?e)
(link_name-link_expansion    ?S   S $?vari)
(link_name-link_lnode-link_rnode   ?S  ?b ?kri)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kriyA)
(test (or (member$ ?kri $?chunk_ids) (eq ?kri ?kriyA)))
(parserid-word ?c ?viBakwi )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?c"	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?e")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?c"	wall_prep_saM_2	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?e")"crlf)	
)
;Ex In January 1990 , a historic new law was passed 
;----------------------------------------------------------------------------------------------------------------
(defrule nAma-saMkRipwa
(link_name-link_lnode-link_rnode  MX   ?nAma      ?saMkRipwa_nAma)
(link_name-link_lnode-link_rnode  Xd   ?punc      ?saMkRipwa_nAma)
(link_name-link_lnode-link_rnode  Xc   ?saMkRipwa_nAma     ?punc1) 
(parserid-wordid   ?saMkRipwa_nAma   ?id) 
(id-word_cap_info ?id  all_caps) ;to stop this rule in "This is Rama, a doctor." type sentences.
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	nAma-saMkRipwa_nAma	"?nAma"	"?saMkRipwa_nAma")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	nAma-saMkRipwa	nAma-saMkRipwa_nAma	"?nAma"	"?saMkRipwa_nAma	")"	crlf)	
)
;Ex   The International Institute of Information Technology (IIIT) is good.
;----------------------------------------------------------------------------------------------------------------
(defrule saMjFA-kqxanwa_rule
(declare (salience 100))
(link_name-link_expansion ?Tname T O $?)
(link_name-link_lnode-link_rnode ?Tname ?Tlnode ?Trnode)
(link_name-link_lnode-link_rnode I|If ?Trnode ?Irnode)
(not (root-verbchunk-tam-parser_chunkids $? ?Tlnode $?)) ;The public seem to love him, no matter what he does. I managed to go. It  is Jane who wants to do it.
(test (neq ?Tname TOfc)) ;Our program is easier to use than to understand.
=>
(printout	?*fp*	"(prep_id-relation-parser_ids -	saMjFA-to_kqxanwa	"?Tlnode	"	"?Irnode")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	saMjFA-kqxanwa_rule	saMjFA-to_kqxanwa   "?Tlnode"	"?Irnode")"crlf)	
)
;Ex He wasted his golden opportunity to play in the national team
;----------------------------------------------------------------------------------------------------------------
(defrule vi_Na-to_inf
(declare (salience 100))
(link_name-link_lnode-link_rnode TOi ?Tlnode ?Trnode)
(link_name-link_lnode-link_rnode I|If ?Trnode ?Irnode)
(parser_id-cat_coarse ?Tlnode ~verb) ;How many years did it take to do it?
=>
(printout	?*fp*	"(prep_id-relation-parser_ids -	saMjFA-to_kqxanwa	"?Tlnode	"	"?Irnode")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	vi_Na-to_inf	saMjFA-to_kqxanwa	"?Tlnode"	"?Irnode")"crlf)	
)
;Ex	It is fun   to try to beat the program.
;----------------------------------------------------------------------------------------------------------------
(defrule to_inf-to_inf
(declare (salience 100))
(link_name-link_lnode-link_rnode I ?y ?z)
(link_name-link_expansion ?TO_1  T O $?va)
(link_name-link_lnode-link_rnode ?TO_1 ?z ?a)
(link_name-link_lnode-link_rnode I ?a ?b)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kqxanwa-kqxanwa	"?z	"	"?b")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	to_inf-to_inf	kqxanwa-kqxanwa	"?z	"	"?b")"	crlf)	
)
;Ex  It is fun   to try to beat the program.
;----------------------------------------------------------------------------------------------------------------
(defrule to_inf_sub
(declare (salience 100))
(link_name-link_expansion ?SF S F $?v)
(link_name-link_lnode-link_rnode ?SF ?x ?y)
(link_name-link_lnode-link_rnode I ?x ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?y	"	"?z")"	crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	to_inf_sub	kriyA-subject	"?y	"	"?z")"	crlf)	
)
;Ex  to beat the program is fun.
;----------------------------------------------------------------------------------------------------------------
(defrule idiom_rule
(root-verbchunk-tam-parser_chunkids $? ?rnode)
(link_name-link_lnode-link_rnode Pv ?rnode ?z)
(link_name-link_expansion ?ID I D $?)
(link_name-link_lnode-link_rnode ?ID ?w ?z)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kqxanwa_viSeRaNa	"?rnode"	"?z")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	idiom_rule	kriyA-kqxanwa_viSeRaNa	"?rnode"	"?z")"crlf)	
)
;Ex Ravan is dead. This table is made up of wood
;?????? This should be viSeRya-kqxanwa_viSeRaNa
; this kqxanwa_viSeRaNa occurs always in predicative position.
;----------------------------------------------------------------------------------------------------------------
(defrule wh-stranded_prep
(link_name-link_lnode-link_rnode MVp ?kriyA  ?prep)
(link_name-link_expansion ?Q  Q $?)
(link_name-link_lnode-link_rnode ?Q ?wh ?aux)
(root-verbchunk-tam-parser_chunkids $? ?aux $? ?kriyA)
(parserid-word ?prep ?viBakwi )
(not (link_name-link_lnode-link_rnode Js|Jp ?prep ?pobj));Ex 4 this: Why do you sleep in the night?
(not (link_name-link_lnode-link_rnode Qd ?wh ?aux)) ;Ex 4 this: Can you tell us where those strange ideas came from?
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?prep"	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?wh")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?prep"	wh-stranded_prep	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?wh")"crlf)	
)
;Ex. Where is the figure taken from? Where are you coming from? Where is she coming from?
;----------------------------------------------------------------------------------------------------------------
(defrule CO_link
(link_name-link_expansion ?CO  C O $?)
(link_name-link_lnode-link_rnode ?CO ?prep ?sub)
(link_name-link_expansion ?S  S  $?)
(link_name-link_lnode-link_rnode ?S ?sub ?kriyA)
(root-verbchunk-tam-parser_chunkids $? ?kriyA)
(link_name-link_expansion ?J  J $?)
(link_name-link_lnode-link_rnode ?J ?prep ?noun)
(parserid-word ?prep ?viBakwi )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?prep"	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?noun")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?prep"	CO_link	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?noun")"crlf)	
)
;Ex.  In this world no one lives without air.
;----------------------------------------------------------------------------------------------------------------
(defrule CO_link_1
(link_name-link_expansion ?CO  C O $?)
(link_name-link_lnode-link_rnode ?CO ?prep ?sub)
(link_name-link_expansion ?S  S  $?)
(link_name-link_lnode-link_rnode ?S ?sub ?kriyA)
(root-verbchunk-tam-parser_chunkids $? ?kriyA $? ?head)
(link_name-link_expansion ?J  J $?)
(link_name-link_lnode-link_rnode ?J ?prep ?noun)
(parserid-word ?prep ?viBakwi )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?prep"	kriyA-"?viBakwi"_saMbanXI	"?head"	"?noun")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?prep"	CO_link_1	kriyA-"?viBakwi"_saMbanXI	"?head"	"?noun")"crlf)	
)
;Ex. In this world no one can live without air. 
;----------------------------------------------------------------------------------------------------------------
(defrule rule80
(link_name-link_lnode-link_rnode Paf ?verb ?m-up)
(link_name-link_lnode-link_rnode EAm ?m ?m-up)
(link_name-link_lnode-link_rnode MVt ?m-up ?t)
(parserid-word ?m ?more )
(link_name-link_expansion  ?O O ? c)
?f0<-(link_name-link_lnode-link_rnode ?O  ?t ?t-up)
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids  "?t"	"?more"_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?t"	rule80	"?more"_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
)
;Ex.    He is more intelligent than John. He is more intelligent than the boys
;----------------------------------------------------------------------------------------------------------------
(defrule rule23
(link_name-link_lnode-link_rnode Paf ?x ?m-up)
(link_name-link_lnode-link_rnode EAm ?m ?m-up)
(link_name-link_lnode-link_rnode MVta ?m-up ?t)
(link_name-link_expansion ?C  C $?)
(link_name-link_lnode-link_rnode ?C ?t ?t-up)
(link_name-link_lnode-link_rnode AFd ?t ?verb)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	rule23	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
)
;Ex.    He is more intelligent than I am.
;----------------------------------------------------------------------------------------------------------------
(defrule more-than
(link_name-link_lnode-link_rnode MVt ?x ?y)
(link_name-link_expansion ?O  O $?)
(link_name-link_lnode-link_rnode ?O ?x ?m-up)
(link_name-link_expansion ?D  D m $?)
(link_name-link_lnode-link_rnode ?D ?m ?m-up)
(link_name-link_lnode-link_rnode Osc|Opc  ?y ?t-up)
(parserid-word ?m ?more )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	"?more"_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	more-than	"?more"_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
)
;Ex. He has more MONEY than TIME.
;----------------------------------------------------------------------------------------------------------------
(defrule more-than_1
(link_name-link_lnode-link_rnode MVt ?x ?than)
(link_name-link_lnode-link_rnode MVp ?y ?prep)
(link_name-link_expansion ?J  J $?)
(link_name-link_lnode-link_rnode ?J ?prep ?more_upameya)
(link_name-link_lnode-link_rnode MVpt ?than ?prep1)
(link_name-link_expansion ?J1  J $?)
(link_name-link_lnode-link_rnode ?J1 ?prep1 ?upamAna)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	more_upameya-than_upamAna	"?more_upameya"	"?upamAna")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	more-than_1	more_upameya-than_upamAna	"?more_upameya"	"?upamAna")"crlf)	
)
;Ex. We do this more for pleasure than for money.
;----------------------------------------------------------------------------------------------------------------
(defrule upameyopamAna
(link_name-link_lnode-link_rnode EBmm|EB*m ?x ?y)
(link_name-link_lnode-link_rnode Paf ?x ?a)
(link_name-link_lnode-link_rnode MVt ?a ?b)
(link_name-link_lnode-link_rnode Pafc ?b ?c)
(parserid-word ?y ?more )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	"?more"_upameya-than_upamAna	"?a"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	upameyopamAna	"?more"_upameya-than_upamAna	"?a"	"?c")"crlf)	
)
;Ex.    He is more intelligent than attractive.
;----------------------------------------------------------------------------------------------------------------
(defrule upameyopamAna_1
(link_name-link_expansion ?S  S $?)
(link_name-link_lnode-link_rnode ?S ?m-up ?x)
(link_name-link_expansion ?Pa  P a $?v)
(link_name-link_lnode-link_rnode ?Pa ?x ?up)
(link_name-link_lnode-link_rnode MVt ?up ?t)
(link_name-link_expansion ?O O ? c)
(link_name-link_lnode-link_rnode ?O ?t ?t-up)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids   "?t"	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids  "?t"	upameyopamAna_1	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
)
;Ex.    He is stronger than me.
;----------------------------------------------------------------------------------------------------------------
(defrule upameyopamAna_2
(link_name-link_expansion ?Ot  O $? t)
(link_name-link_lnode-link_rnode ?Ot ?v ?m-up)
(link_name-link_lnode-link_rnode EBmm ?v ?m)
(link_name-link_lnode-link_rnode MVt ?v ?t)
(link_name-link_expansion ?O O $? c)
(link_name-link_lnode-link_rnode ?O ?t ?t-up)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	upameyopamAna_2	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
)
;Ex.    He is more a teacher than a scholar.
;----------------------------------------------------------------------------------------------------------------
(defrule upameyopamAna_3
(link_name-link_lnode-link_rnode MVb ?v ?m-up)
(link_name-link_lnode-link_rnode MVt ?v ?t-up)
(link_name-link_expansion ?ID I D $?)
(link_name-link_lnode-link_rnode ?ID ?t ?t-up)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	upameyopamAna_3	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-kriyA_viSeRaNa	"?v"	"?m-up")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	upameyopamAna_3	kriyA-kriyA_viSeRaNa	"?v"	"?m-up")"crlf)	
)
;Ex.   He talked longer than usual. He is working harder than usual. 
;----------------------------------------------------------------------------------------------------------------
(defrule upameyopamAna_4
(declare (salience 495))
(link_name-link_lnode-link_rnode   MVt   ?v  ?t)
?f0<- (link_name-link_lnode-link_rnode    Om   ?v  ?obj)     
(link_name-link_expansion  ?O  O ? c)
(link_name-link_lnode-link_rnode   ?O    ?t   ?paxa_head)
(link_name-link_expansion    ?D D $?va)
(link_name-link_lnode-link_rnode   ?D       ?det   ?paxa_head)
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?v"	"?paxa_head")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	upameyopamAna_4	kriyA-object	"?v"	"?paxa_head")"crlf)	
)
;Ex.   Jerry has more than five dollars.
;----------------------------------------------------------------------------------------------------------------
(defrule upameyopamAna_5
(declare (salience 495))
(link_name-link_expansion    ?S S $?var)
(link_name-link_lnode-link_rnode   ?S       ?sub   ?v)
(link_name-link_expansion  ?O  O ? t)
?f0<- (link_name-link_lnode-link_rnode   ?O   ?v  ?x)
(link_name-link_lnode-link_rnode   Mam   ?x  ?paxa_head)
(link_name-link_expansion    ?D D $?va)
(link_name-link_lnode-link_rnode   ?D       ?det   ?x)
=>
(retract ?f0)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?sub"	"?paxa_head")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	upameyopamAna_5	subject-subject_samAnAXikaraNa	"?v"	"?paxa_head")"crlf)	
)
;Ex.  Gorge is five years older than Margaret.
;----------------------------------------------------------------------------------------------------------------
(defrule upameyopamAna_6
(declare (salience 595))
(link_name-link_expansion    ?S S $?var)
(link_name-link_lnode-link_rnode   ?S       ?m-up   ?v)
(link_name-link_expansion  ?O  O ? t)
(link_name-link_lnode-link_rnode   ?O   ?v  ?x)
(link_name-link_lnode-link_rnode   Mam   ?x  ?y)
(link_name-link_lnode-link_rnode   MVt   ?y  ?t)
(link_name-link_expansion    ?Oc O ? c)
(link_name-link_lnode-link_rnode   ?Oc       ?t   ?t-up)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	upameyopamAna_6	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
)
;Ex.  Gorge is five years older than Margaret.
;----------------------------------------------------------------------------------------------------------------
(defrule upameyopamAna_7
(declare (salience 595))
(link_name-link_expansion    ?S S $?var)
(link_name-link_lnode-link_rnode   ?S       ?w-up   ?v)
(link_name-link_expansion  ?Pa  P a $?va)
(link_name-link_lnode-link_rnode   ?pa   ?v  ?s-s)
(link_name-link_lnode-link_rnode   EAy ?as1 ?s-s) 
(link_name-link_lnode-link_rnode   MVp   ?s-s  ?as) 
(link_name-link_expansion    ?J J $?)
(link_name-link_lnode-link_rnode   ?J       ?as   ?up)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	wulya_upameya-upamAna	"?w-up"	"?up")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	upameyopamAna_7	wulya_upameya-upamAna	"?w-up"	"?up")"crlf)	
)
;Ex. I am as intelligent as John. It was as frail as eggshell. 
;----------------------------------------------------------------------------------------------------------------
(defrule upameyopamAna_8
(declare (salience 595))
(link_name-link_expansion    ?E    E A $?var)
(link_name-link_lnode-link_rnode   ?E   ?more  ?x)
(parserid-word ?more ?mor_or_less )
(link_name-link_expansion    ?LE   L E $?vari)
(link_name-link_lnode-link_rnode   ?LE    ?x   ?than)
(root-verbchunk-tam-parser_chunkids ? ? $?chunk ?m_up)
(root-verbchunk-tam-parser_chunkids ? ? $?chunks ?t_up)
(test (> (string_to_integer ?m_up) (string_to_integer ?x)))
(test (> (string_to_integer ?t_up) (string_to_integer ?than)))
(test (neq ?m_up ?t_up))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	"?mor_or_less"_upameya-than_upamAna	"?m_up"	"?t_up")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	upameyopamAna_8	"?mor_or_less"_upameya-than_upamAna	"?m_up"	"?t_up")"crlf)	
)
;Ex. It is more likely that Joe will go than that Fred will go.
;----------------------------------------------------------------------------------------------------------------
(defrule upameyopamAna_9
(declare (salience 595))
(link_name-link_expansion    ?E    E A $?var)
(link_name-link_lnode-link_rnode   ?E   ?more  ?x)
(parserid-word ?more ?mor_or_less )
(link_name-link_expansion    ?LE   L E $?vari)
(link_name-link_lnode-link_rnode   ?LE    ?x   ?than)
(link_name-link_lnode-link_rnode   I   ?more  ?x)
(root-verbchunk-tam-parser_chunkids ? ? $?chunk ?m_up)
(root-verbchunk-tam-parser_chunkids ? ? $?chunks ?t_up)
(test (> (string_to_integer ?m_up) (string_to_integer ?x)))
(test (> (string_to_integer ?t_up) (string_to_integer ?than)))
(test (neq ?m_up ?t_up))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	"?mor_or_less"_upameya-than_upamAna	"?m_up"	"?t_up")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	upameyopamAna_9	"?mor_or_less"_upameya-than_upamAna	"?m_up"	"?t_up")"crlf)	
)
;Ex.  He is less likely to go than to stay.
;----------------------------------------------------------------------------------------------------------------
(defrule upameyopamAna_10
(declare (salience 595))
(link_name-link_expansion    ?S1    S ?not_i $?varia)
(link_name-link_lnode-link_rnode   ?S1   ?m_up ?v1)
(link_name-link_expansion    ?MVt    M V t $?var)
(link_name-link_lnode-link_rnode   ?MVt   ?v1  ?t)
(link_name-link_expansion    ?C    C $?vars)
(link_name-link_lnode-link_rnode   ?C   ?t  ?v2)
(link_name-link_expansion    ?S   S ?s_v_i $?vari)
(link_name-link_lnode-link_rnode   ?S   ?v2  ?t_up)
=>
(if (eq ?s_v_i I)then
(printout	?*fp*	"(prep_id-relation-parser_ids  -	more_upameya-than_upamAna	"?m_up"	"?t_up")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	upameyopamAna_10	more_upameya-than_upamAna	"?m_up"	"?t_up")"crlf)	
else
(printout	?*fp*	"(prep_id-relation-parser_ids  -	more_upameya-than_upamAna	"?m_up"	"?v2")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	upameyopamAna_10????????	more_upameya-than_upamAna	"?m_up"	"?v2")"crlf)	
)
)
;Ex. He has more money than does Joe.
;----------------------------------------------------------------------------------------------------------------
(defrule upameyopamAna_11
(declare (salience 595))
(link_name-link_expansion    ?S    S ~I $?varia)
(link_name-link_lnode-link_rnode   ?S   ?m_up ?v1)
(link_name-link_expansion    ?MVt    M V t $?var)
(link_name-link_lnode-link_rnode   ?MVt   ?v1  ?t)
;(link_name-link_expansion    ?C    C $?vars)
;(link_name-link_lnode-link_rnode   ?C   ?t  ?v2)
(link_name-link_expansion    ?O   O $? c)
(link_name-link_lnode-link_rnode   ?O   ?t  ?t_up)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  "?t"      more_upameya-than_upamAna       "?m_up" "?t_up")"crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids "?t"  upameyopamAna_11	more_upameya-than_upamAna	"?m_up"	"?t_up")"crlf)
)
;Ex. Our program works better than yours.
;----------------------------------------------------------------------------------------------------------------
(defrule upameyopamAna_12
(declare (salience 595))
(link_name-link_expansion    ?P    P a $?v m)
(link_name-link_lnode-link_rnode   ?P  ?x ?y)
(link_name-link_expansion    ?To    T O $?var)
(link_name-link_lnode-link_rnode   ?To   ?y  ?to)
(link_name-link_expansion    ?I   I $?)
(link_name-link_lnode-link_rnode   ?I   ?to  ?m_up)
(link_name-link_expansion    ?L    L E $?vars)
(link_name-link_lnode-link_rnode   ?L  ?y ?t)
(link_name-link_expansion    ?Toc    T O $?vari c)
(link_name-link_lnode-link_rnode   ?Toc   ?t  ?to1)
(link_name-link_expansion    ?I1   I $?z)
(link_name-link_lnode-link_rnode   ?I1   ?to1  ?t_up)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  "?t"      more_upameya-than_upamAna       "?m_up" "?t_up")"crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids "?t"  upameyopamAna_12   more_upameya-than_upamAna       "?m_up" "?t_up")"crlf)
)
;Ex. Our program is easier to use than to understand.
;----------------------------------------------------------------------------------------------------------------
(defrule to-inf
(link_name-link_expansion    ?TO   T O $?vars)
(link_name-link_lnode-link_rnode ?TO ?x ?to)
(link_name-link_expansion    ?I   I $?var)
(link_name-link_lnode-link_rnode ?I  ?to ?inf)
(not (parserid-word ?x have|has|had ))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	to-infinitive	"?to"	"?inf")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	to-inf	to-infinitive	"?to"	"?inf")"crlf)	
)
;Ex.    I had to run fast TO CATCH the bus. I went to read. I want to do it
;----------------------------------------------------------------------------------------------------------------
(defrule to-inf1
(link_name-link_expansion  ?R   R $?vars)
(link_name-link_lnode-link_rnode ?R  ?x ?to)
(link_name-link_lnode-link_rnode I  ?to ?inf)
(parserid-word ?to to )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	to-infinitive	"?to"	"?inf")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	to-inf1	to-infinitive	"?to"	"?inf")"crlf)	
)
;Ex.    I wonder what  to buy. I am wondering which question to ask first. 
;----------------------------------------------------------------------------------------------------------------
(defrule to-inf2
(link_name-link_lnode-link_rnode I|If  ?to ?inf)
(parserid-word ?to to )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	to-infinitive	"?to"	"?inf")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	to-inf1	to-infinitive	"?to"	"?inf")"crlf)	
)
;Ex.  A fat ugly boy had to eat too many fruits to lose his weight.  Passion is a must to reach your potential. 
    ; I had to run fast to catch the bus .   
;----------------------------------------------------------------------------------------------------------------

(defrule sub-jo_s
(declare (salience 200))
(link_name-link_expansion ?B   B $?var)
(link_name-link_lnode-link_rnode ?B   ?sub  ?y)
(link_name-link_expansion ?R    R $?vari)
(link_name-link_lnode-link_rnode ?R  ?sub  ?s_s)
(not (link_name-link_lnode-link_rnode Rn|Rw  ?sub  ?s_s)) ;Ex. for Rw cond.: How much more money do you have?
(not (link_name-link_lnode-link_rnode Osi  ?sub  ?s)); This is 4 ex. "It is Jane who wants to do it."
(not (got_relation_for_O))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-jo_samAnAXikaraNa	"?sub"	"?s_s")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	sub-jo_s	viSeRya-jo_samAnAXikaraNa	"?sub"	"?s_s")"crlf)	
)
;Ex.  The dog who chased me was black. the book which you read yesterday is here.
;----------------------------------------------------------------------------------------------------------------
(defrule relc-sub-sub_s
(declare (salience 410))
(link_name-link_expansion  ?SI   S I $?vars)
(link_name-link_lnode-link_rnode  ?SI  ?mu_kri ?s)
(link_name-link_expansion  ?O   O $?vari)
(link_name-link_lnode-link_rnode  ?O  ?mu_kri ?s_s)
(link_name-link_lnode-link_rnode  Mj  ?s_s ?prep)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?s"	"?s_s")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	relc-sub-sub_s	subject-subject_samAnAXikaraNa	"?s"	"?s_s")"crlf)	
)
;Ex. Is that the film in which he will kill his mother.
;----------------------------------------------------------------------------------------------------------------
(defrule relc-ob-jo_s
(declare (salience 410))
(link_name-link_expansion  ?O   O $?vari)
(link_name-link_lnode-link_rnode  ?O  ?mu_kri ?ob)
(link_name-link_expansion  ?R   R $?va)
(link_name-link_lnode-link_rnode  ?R  ?ob  ?jo_s)
=>
(assert (got_relation_for_O))
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-jo_samAnAXikaraNa	"?ob"	"?jo_s")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	relc-ob-jo_s	viSeRya-jo_samAnAXikaraNa	"?ob"	"?jo_s")"crlf)	
)
;Ex.  I know a woman who has two children. 
;----------------------------------------------------------------------------------------------------------------
(defrule rule58
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(link_name-link_lnode-link_rnode Bp|Bs ?z ?y1)      
(link_name-link_lnode-link_rnode Cr ?a ?x)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kri)
(test (or (member$ ?y1 $?chunk_ids) (eq ?kri ?y1)))
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -      kriyA-object    "?kri"  "?a")"crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids -  rule58  kriyA-object    "?kri"  "?a")"crlf)
)
;Ex. The dogs who I chased were black. The boy who you called yesterday has arrived.
;----------------------------------------------------------------------------------------------------------------
(defrule jo_sub
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(link_name-link_lnode-link_rnode Bp|Bs ?x ?kri)
(link_name-link_lnode-link_rnode RS ?sub ?kri)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (eq ?kri (nth$ 1 $?chunk_ids)))
=>
(bind ?id (nth$ (length$ $?chunk_ids) $?chunk_ids)) 
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?id"	"?sub")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	jo_sub	kriyA-subject	"?id"	"?sub")"crlf)	
)
;Ex. The girl who was crying is here. 
;----------------------------------------------------------------------------------------------------------------
(defrule  nirXArya-nirXAraNa
(link_name-link_expansion  ?J   J $?vars)
(link_name-link_lnode-link_rnode ?J  ?prep ?nir)
(link_name-link_lnode-link_rnode OF  ?which ?prep)
(parserid-word ?which which|Which )
(parserid-word ?prep of )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	nirXArya-nirXAraNa	"?which"	"?nir")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	nirXArya-nirXAraNa	nirXArya-nirXAraNa	"?which"	"?nir")"crlf)	
)
;The other name for this relation may be avayava-samuxAya, or samUha-upasamUha.
;Ex. Which of your parents do you feel closer to. 
;----------------------------------------------------------------------------------------------------------------
(defrule  nirXArya-nirXAraNa_1
(link_name-link_expansion  ?ID   I D  $?vars)
(link_name-link_lnode-link_rnode ?ID  ?prep ?nirXAraNa)
(link_name-link_lnode-link_rnode  MF  ?nir ?nirXAraNa)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	nirXArya-nirXAraNa	"?nir"	"?nirXAraNa")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	nirXArya-nirXAraNa_1	nirXArya-nirXAraNa	"?nir"	"?nirXAraNa")"crlf)	
)
;Ex. Many people were injured , some of them children.
;----------------------------------------------------------------------------------------------------------------
(defrule CO_TI
(link_name-link_expansion    ?CO C O $?var)
(link_name-link_lnode-link_rnode ?O ?a ?b)
(link_name-link_lnode-link_rnode TI ?a ?c)
(link_name-link_expansion   ?S S $?va)
(link_name-link_lnode-link_rnode ?S ?b ?v)
(parserid-word ?a ?viBakwi )
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?a"	kriyA-"?viBakwi"_saMbanXI	"?v"	"?c")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?a"	CO_TI	kriyA-"?viBakwi"_saMbanXI	"?v"	"?c")"crlf)	
)
;Ex.  As president of the company , it is my decision.
;----------------------------------------------------------------------------------------------------------------
(defrule MVs_QI_Cs
(link_name-link_lnode-link_rnode  MVs ?a ?b)
(link_name-link_expansion    ?QI Q I $?var)
(link_name-link_lnode-link_rnode  ?QI   ?b ?c)
(or (link_name-link_lnode-link_rnode  Cs ?c ?s)  (link_name-link_lnode-link_rnode  Rn ?c ?s))
(link_name-link_expansion    ?S    S  $?vars)
(link_name-link_lnode-link_rnode   ?S  ?s  ?k)
(root-verbchunk-tam-parser_chunkids $?chunk_ids ?kri)
(test (or (member$ ?k $?chunk_ids) (eq ?kri ?k)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-conjunction	"?kri"	"?b")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	MVs_QI_Cs	kriyA-conjunction	"?kri"	"?b")"crlf)	
)
;Ex.  I will follow you no matter where you go. The public seem to love him , no matter what he does.
;----------------------------------------------------------------------------------------------------------------
 
;Added by sheetal(8-01-10).
(defrule Rn_Sp_I
(link_name-link_lnode-link_rnode Rn ?x ?y)
(link_name-link_lnode-link_rnode Sp ?y ?z)
(link_name-link_lnode-link_rnode I ?z ?a)
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?a"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	Rn_Sp_I	kriyA-object	"?a"	"?x")"crlf)	
)
;The question is who we should invite .
;----------------------------------------------------------------------------------------------------------------

;Rules for and/or related subject, object, subject_samAnAXikaraNa and object_samAnAXikaraNa etc.
(defrule kriyA-subject_and
(declare (salience 1000))
(link_name-link_expansion    ?S   S $?vars)
(link_name-link_lnode-link_rnode ?S ?x ?kri)
(link_name-link_expansion    ?S1  S $?var)
(link_name-link_lnode-link_rnode ?S1 ?y ?kri)
(parser_id-root ?and and|or)
(test (and (< (string_to_integer ?x) (string_to_integer ?and)) (< (string_to_integer ?and) (string_to_integer ?y))))
(not (kriyA-subject_rel_has_been_deceded_by_'kriyA-subject_inver_and'_rule))
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kriyA)
(test (or  (member$ ?kri $?chunk_ids) (eq  ?kri  ?kriyA)))
(not (conjunction-components ?and))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?kriyA"	"?and")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-subject_and	kriyA-subject	"?kriyA"	"?and")"crlf)	
(assert (kriyA-subject_rel_has_been_deceded_by_'kriyA-subject_and'_rule ?kriyA))
(assert (conjunction-components	?and	?x ?y))	
)
;Ex. He and I are friends.
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-subject_SF_and
(declare (salience 1000))
(link_name-link_expansion    ?S   S F $?vars)
(link_name-link_lnode-link_rnode ?S ?x ?kri)
(link_name-link_expansion    ?O  O $?var t)
(link_name-link_lnode-link_rnode ?O ?kri ?y)
(link_name-link_expansion    ?O1  O $?va t)
(link_name-link_lnode-link_rnode ?O1  ?kri ?z)
(parser_id-root ?and and|or)
(test (or  (> (string_to_integer ?y) (string_to_integer ?z))  (< (string_to_integer ?y) (string_to_integer ?z))))
(not (kriyA-subject_rel_has_been_deceded_by_'kriyA-subject_inver_and'_rule))
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kriyA)
(test (or (member$ ?kri $?chunk_ids) (eq ?kri ?kriyA)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-aBihiwa	"?kriyA"	"?and")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-subject_SF_and	kriyA-aBihiwa	"?kriyA"	"?and")"crlf)	
(assert (kriyA-subject_rel_has_been_deceded_by_'kriyA-subject_SF_and'_rule))
(assert (conjunction-components	?and  ?y  ?z))	
)
;Ex. There are three boys and four girls in the park.
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-subject_invertion_and
(declare (salience 1005))
(link_name-link_expansion    ?S   S $?vars)
(test (member$ I $?vars))
(link_name-link_lnode-link_rnode ?S  ?kri ?x)
(link_name-link_expansion    ?S1  S $?var)
(test (member$ I $?var))
(link_name-link_lnode-link_rnode ?S1  ?kri ?y)
(parser_id-root ?and and|or)
(test (< (string_to_integer ?and) (string_to_integer ?y)))
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kriyA)
(test (or (member$ ?kri $?chunk_ids) (eq ?kri ?kriyA)))
(test (< (string_to_integer ?x) (string_to_integer ?y)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-subject	"?kriyA"	"?and")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-subject_inver_and	kriyA-subject	"?kriyA"	"?and")"crlf)	
(assert (kriyA-subject_rel_has_been_deceded_by_'kriyA-subject_invertion_and'_rule))
(assert  (conjunction-components ?and	?x  ?y))	
)
;Ex. Are John or I invited?
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-object_and
(declare (salience 1000))
(link_name-link_expansion    ?O   O $?vars ~t)
(link_name-link_lnode-link_rnode ?O  ?kri ?obj)
(link_name-link_expansion    ?O1  O $?var ~t)
(link_name-link_lnode-link_rnode ?O1  ?kri ?obj1)
(parser_id-root ?and and|or)
(test (and ( > (string_to_integer ?and ) (string_to_integer ?obj1)) (<(string_to_integer ?and ) (string_to_integer ?obj))));I knocked my mug and the coffee spilled .
(not  (kriyA-object_2_rel_has_been_deceded_by_'kriyA-object_2_and'_rule))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?kri"	"?and")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-object_and	kriyA-object	"?kri"	"?and")"crlf)	
(assert (kriyA-object_rel_has_been_deceded_by_'kriyA-object_and'_rule ?kri))
(assert (conjunction-components	?and  ?obj1  ?obj))	
)
;Ex. He ate fruits and nuts.
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-object_2_and
(declare (salience 1005))
(link_name-link_expansion    ?O   O $?vars ~n)
(link_name-link_lnode-link_rnode ?O  ?kri ?obj)
(link_name-link_expansion    ?O1  O $?var n)
(link_name-link_lnode-link_rnode ?O1  ?kri ?obj2)
(parser_id-root ?and and|or)
(test (< (string_to_integer ?and) (string_to_integer ?obj2)))
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kriyA)
(test (or (member$ ?kri $?chunk_ids) (eq ?kri ?kriyA)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object	"?kriyA"	"?obj")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-object_2_and	kriyA-object	"?kriyA"	"?obj")"crlf)	

(printout	?*fp*	"(prep_id-relation-parser_ids  -	kriyA-object_2	"?kriyA"	"?and")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	kriyA-object_2_and	kriyA-object_2	"?kriyA"	"?and")"crlf)	
(assert (kriyA-object_2_rel_has_been_deceded_by_'kriyA-object_2_and'_rule))
(assert (conjunction-components	?and  ?obj ?obj2))	
)
;Ex. 
;----------------------------------------------------------------------------------------------------------------
(defrule subject_samAnAXikaraNa_and
(declare (salience 1000))
(link_name-link_expansion    ?S   S $?vars)
(link_name-link_lnode-link_rnode ?S  ?s ?kri)
(link_name-link_expansion    ?S1  S $?var)
(link_name-link_lnode-link_rnode ?S1  ?s1 ?kri)
(link_name-link_lnode-link_rnode Pa|Paf|Opt|Ost|O*t  ?kri ?s_s)
(parser_id-root ?and and|or)
(test (< (string_to_integer ?and) (string_to_integer ?s1) ))
(test (< (string_to_integer ?s) (string_to_integer ?s1)));Danish is a wonderful language , Danish food is great , and the Danish are nice people.
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?and"	"?s_s")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	subject_samAnAXikaraNa_and	subject-subject_samAnAXikaraNa	"?and"	"?s_s")"crlf)	
(assert (subject-subject_samAnAXikaraNa_rel_has_been_deceded_by_'subject_samAnAXikaraNa_and'_rule))
(assert (conjunction-components	?and  ?s  ?s1))	
)
;Ex.    Your house and garden are very attractive.
;----------------------------------------------------------------------------------------------------------------
(defrule subject_samAnAXikaraNa_and_1
(declare (salience 1000))
(link_name-link_expansion    ?S   S ~ F $?vars)
(link_name-link_lnode-link_rnode ?S  ?s ?kri)
(link_name-link_lnode-link_rnode Pa|Paf|Opt|Ost|O*t  ?kri ?s_s)
(link_name-link_lnode-link_rnode Pa|Paf|Opt|Ost|O*t  ?kri ?s_s_1)
(parser_id-root ?and and|or)
;test (< ?s_s_1 ?s_s))
;test (< (string_to_integer ?and) (string_to_integer ?s_s) ))
(test (and (< (string_to_integer ?s_s) (string_to_integer ?and)) (< (string_to_integer ?and) (string_to_integer ?s_s_1))))
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -      subject-subject_samAnAXikaraNa  "?s"  "?and")"crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids -  subject_samAnAXikaraNa_and_1      subject-subject_samAnAXikaraNa  "?s"  "?and")"crlf)
(assert (subject-subject_samAnAXikaraNa_rel_has_been_deceded_by_'subject_samAnAXikaraNa_and_1'_rule ?s_s))
(assert (subject-subject_samAnAXikaraNa_rel_has_been_deceded_by_'subject_samAnAXikaraNa_and_1'_rule ?s_s_1))
(assert (conjunction-components     ?and    ?s_s   ?s_s_1))
)

(defrule subject_samAnAXikaraNa_and_2
(declare (salience 1000))
(link_name-link_expansion    ?S   S ~ F $?vars)
(link_name-link_lnode-link_rnode ?S  ?s ?kri)
(link_name-link_lnode-link_rnode Pa|Paf|Opt|Ost|O*t  ?kri ?and)
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids -      subject-subject_samAnAXikaraNa  "?s"  "?and")"crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids -  subject_samAnAXikaraNa_and_2      subject-subject_samAnAXikaraNa  "?s"  "?and")"crlf)
(assert (subject-subject_samAnAXikaraNa_rel_has_been_deceded_by_'subject_samAnAXikaraNa_and_2'_rule ?and))
(assert (subject-subject_samAnAXikaraNa_rel_has_been_deceded_by_'subject_samAnAXikaraNa_and_2'_rule ?and))
)
;Ex.    He is a devoted husband and a father .
;----------------------------------------------------------------------------------------------------------------
(defrule conj-comp
(declare (salience 1000))
(or (link_name-link_expansion    ?S   S J l $?vars)(link_name-link_expansion    ?S   A J l $?vars))
(or (link_name-link_expansion    ?S1   S J r $?var)(link_name-link_expansion    ?S1   A J r $?var))
(link_name-link_lnode-link_rnode ?S  ?x ?and)
(link_name-link_lnode-link_rnode ?S1  ?and ?y)
=>
(assert (conjunction-components  ?and  ?x  ?y))
)
;Ex.    He is a devoted husband and a father .
;----------------------------------------------------------------------------------------------------------------
(defrule subject_samAnAXikaraNa_and_SI
(declare (salience 1000))
(link_name-link_expansion    ?S   S I $?vars)
(link_name-link_lnode-link_rnode ?S  ?kri ?s)
(link_name-link_expansion    ?S1  S I $?var)
(link_name-link_lnode-link_rnode ?S1  ?kri ?s1)
(link_name-link_lnode-link_rnode Pa|Paf|Opt|Ost  ?kri ?s_s)
(parser_id-root ?and and|or)
(test (< (string_to_integer ?and) (string_to_integer ?s1) ))
(test (< (string_to_integer ?s) (string_to_integer ?s1)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	subject-subject_samAnAXikaraNa	"?and"	"?s_s")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	subject_samAnAXikaraNa_and_SI	subject-subject_samAnAXikaraNa	"?and"	"?s_s")"crlf)	
(assert (subject-subject_samAnAXikaraNa_rel_has_been_deceded_by_'subject_samAnAXikaraNa_and_SI'_rule))
(assert (conjunction-components	 ?and  ?s  ?s1))	
)
;Ex.   Are he and I friends ? 
;----------------------------------------------------------------------------------------------------------------
(defrule object_samAnAXikaraNa_and
(declare (salience 1000))
(link_name-link_expansion    ?O   O $?vars)
(link_name-link_lnode-link_rnode ?O   ?kri ?obj)
(link_name-link_expansion    ?Pa  P a $?var)
(link_name-link_lnode-link_rnode ?Pa   ?kri ?obj_s)
(link_name-link_expansion    ?Pa1  P a $?va)
(link_name-link_lnode-link_rnode ?Pa1  ?kri ?obj_s1)
(parser_id-root ?and and|or)
(test (< (string_to_integer ?and) (string_to_integer ?obj_s1)))
(test (< (string_to_integer ?obj_s) (string_to_integer ?obj_s1)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids  -	object-object_samAnAXikaraNa	"?obj"	"?and")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	object_samAnAXikaraNa_and	object-object_samAnAXikaraNa	"?obj"	"?and")"crlf)	
(assert (object-object_samAnAXikaraNa_rel_has_been_deceded_by_'object_samAnAXikaraNa_and'_rule))
(assert  (conjunction-components  ?and  ?obj_s  ?obj_s1))	

)
;Ex.   I consider him intelligent and beautiful.
;----------------------------------------------------------------------------------------------------------------
(defrule kriyA-'viBakwi'_saMbanXI_and
(declare (salience 1000))
(link_name-link_lnode-link_rnode MVp  ?kri ?x)
(link_name-link_lnode-link_rnode J|Js|Jp|IN|ON|FL|Mgp ?x ?y)
(link_name-link_lnode-link_rnode J|Js|Jp|IN|ON|FL|Mgp ?x ?z)
(parser_id-root ?and and|or)
(test (and (< (string_to_integer ?and) (string_to_integer ?y)) (> (string_to_integer ?and) (string_to_integer ?z))))
(parserid-word ?x ?viBakwi )
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?kriyA)
(test (or (member$ ?kri $?chunk_ids) (eq ?kri ?kriyA)))
=>
(printout	?*fp*	"(prep_id-relation-parser_ids "?x"	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?and")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids "?x"	kriyA-'viBakwi'_saMbanXI_and	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?and")"crlf)	
(assert (kriyA-'viBakwi'_saMbanXI_rel_has_been_deceded_by_'kriyA-'viBakwi'_saMbanXI_and'_rule ?x))
(assert (conjunction-components	 ?and	?z   ?y))	
)
;Ex.	He was an exotic creature with short red hair and brilliant green eyes. Acetylene that helps in cutting and welding burns with bright flame .
;----------------------------------------------------------------------------------------------------------------
(defrule viSeRya_RaRTI_viSeRaNa_and
(declare (salience 1000))
(link_name-link_expansion    ?D    D $?vars)
?f0<-(link_name-link_lnode-link_rnode  ?D ?x ?y)
(link_name-link_expansion    ?D1    D $?var)
?f1<-(link_name-link_lnode-link_rnode  ?D1 ?x ?z)
(parserid-word ?x  his|her|my|our|your|their|its  )
(parser_id-root ?and and|or)
(test (and ( > (string_to_integer ?and ) (string_to_integer ?y)) (< (string_to_integer ?and ) (string_to_integer ?z))));I knocked my cup and saucer and spilled the coffee
(test (< (string_to_integer ?y) (string_to_integer ?z)));Passion is a must to excel and to reach your potential.
=>
(retract ?f0 ?f1)
(printout	?*fp*	"(prep_id-relation-parser_ids  -	viSeRya-RaRTI_viSeRaNa	"?and"	"?x")"crlf)	
(printout	?*rel_debug*	"(prep_id-Rule-Rel-ids -	viSeRya_RaRTI_viSeRaNa_and	viSeRya-RaRTI_viSeRaNa	"?and"	"?x")"crlf)	
(assert (conjunction-components	?and  ?y  ?z))	
)
;Ex.    Your house and garden are very attractive .
;----------------------------------------------------------------------------------------------------------------
(defrule kriyArWa_kriyA_and
(link_name-link_lnode-link_rnode MVi ?x ?y)
(link_name-link_lnode-link_rnode MVi ?x ?z)
(link_name-link_expansion ?I I $?var)
(link_name-link_lnode-link_rnode ?I ?y ?a)
(link_name-link_expansion ?I_1 I $?var)
(link_name-link_lnode-link_rnode ?I_1 ?z ?b)
(parser_id-root ?and and|or)
(test (and ( < (string_to_integer ?a ) (string_to_integer ?and)) (< (string_to_integer ?and ) (string_to_integer ?b))))
(not (link_name-link_lnode-link_rnode Pa|Paf|Pam ?x ?z))
=>
(printout       ?*fp*   "(prep_id-relation-parser_ids  -      kriyA-kriyArWa_kriyA    "?x"    "?and")"crlf)
(printout       ?*rel_debug*    "(prep_id-Rule-Rel-ids -	kriyArWa_kriyA_and	kriyA-kriyArWa_kriyA    "?x"    "?and")"crlf)
(assert (conjunction-components  ?and  ?a  ?b))
(assert (kriyA-kriyArWa_kriyA_rel_has_been_dcd_by_'kriyArWa_kriyA_and'_rule ?a))
(assert (kriyA-kriyArWa_kriyA_rel_has_been_dcd_by_'kriyArWa_kriyA_and'_rule ?b))
)
;Ex.   Passion is a must to excel and to reach your potential.
 ;----------------------------------------------------------------------------------------------------------------
 ;Added by Roja (23-08-11)
 ;For a same  conjunction , getting all its components into one single list.
 (defrule decide_conj_rel
 (declare (salience -900))
 ?f<-(conjunction-components ?conj  ?x ?y)
 ?f1<-(conjunction-components ?conj  $?x1 ?y)
 (test (eq (member$ ?x $?x1) FALSE))
 =>
   (bind ?plist (create$ ))
   (bind ?plist (create$ ?plist ?x))
   (assert (conjunction-components ?conj  (sort my_string_cmp> $?x1  ?plist) ?y))
   (retract ?f ?f1)
 )
 ;Ex. Mary, Joe and Louise are coming to the party.
 ;---------------------------------------------------------------------------------------------------------------
 ;Added by Roja (23-08-11)
 ;printing conjunction-components.
 ;Mary, Joe and Louise are coming to the party.
 (defrule print_conj-comp
 (declare (salience -1000))
 ?f<-(conjunction-components ?id  ?x $?ids  ?y)
 (parserid-word ?id and|or)
 (test (and (> (string_to_integer ?id) (string_to_integer ?x)) (< (string_to_integer ?id) (string_to_integer ?y))))
 =>
     (printout ?*fp* "(conjunction-components  "?id"   "?x"  "(implode$ $?ids)"   "?y")"crlf)
     (printout ?*rel_debug* "(conjunction-components    print_conj-comp  "?id"   "?x"  "(implode$ $?ids)"   "?y")"crlf)
     (retract ?f)
 )
 ;---------------------------------------------------------------------------------------------------------------
