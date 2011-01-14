 (defglobal ?*vachan_file* = vachan_fp)
 (defglobal ?*agmt_cntrl_file* = agmt_cntrl_fp)
 (defglobal ?*pada_cntrl_file* = pada_cntrl_fp)
 (defglobal ?*ol_pada_fp* = ol_pada_file)
 (defglobal ?*debug_fp* = ol_pada_debug_fp)

 (deffacts dummy_facts 
 (missing-level-id) 
 (using-parser-ids)
 (parserid-wordid)
 (ol_res_id-word_id-word)
 (root-verbchunk-tam-parser_chunkids)
 (current_id-group_members)
 (addition-level-word-sid)
 (split_tranlevel-ptype-headid-grpids)
 (parser_id-cat_coarse)
 )

 (deffunction print_in_ctrl_fact_files (?paxa_head)
        (printout       ?*vachan_file*  "(vachan_to_be_decided  "       ?paxa_head      ")"     crlf)
        (printout       ?*agmt_cntrl_file*      "(agmt_control_fact     "       ?paxa_head      ")"     crlf)
        (printout       ?*pada_cntrl_file*      "(pada_control_fact     "       ?paxa_head      ")"     crlf)
 )

 (deffunction string_to_integer (?link_id); [Removes the first character from the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?link_id)))

 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))
;----------------------------------------------------------------------------------------------------------------------- 
(defrule prep_pada1
(declare (salience 2500))
?f<-(ol_res_id-word_id-word ?prep   ?word_id     from|aboard|about|above|across|after|against|along|alongside|amid|amidst|among|amongst|around|as|aside|astride|at|athwart|atop|barring|before|behind|below|beneath|beside|besides|between|beyond|by|circa|concerning|despite|down|during|except|excluding|failing|following|for|from|in|including|inside|into|like|mid|minus|near|notwithstanding|of|off|on|onto|opposite|out|outside|over|pace|past|per|plus|qua|regarding|round|save|since|than|through|throughout|till|times|to|toward|towards|under|underneath|unlike|until|up|upon|versus|via|with|within|without|worth)
?f1<-(split_tranlevel-ptype-headid-grpids tran3 PP ?head $?ids)
?f3<-(split_tranlevel-ptype-headid-grpids tran3 PP ?prep ?prep)
?f2<-(word-type-id ?word ?type ?prep)
(test (eq (string_to_integer ?prep) (- (string_to_integer (implode$ (first$ (create$ $?ids))))1)))
=>
(retract ?f ?f1 ?f2 ?f3)
(assert (has_been_included_in_pada ?head))
(assert (has_been_included_in_pada $?ids))
(assert (pada_info (group_head_id ?head) (group_cat PP) (group_ids $?ids) (preposition ?prep) ))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids  prep_pada1    "?head"   PP  "(implode$ (create$ $?ids ?prep))")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule prep_pada2
(declare (salience 2400))
?f<-(ol_res_id-word_id-word ?prep   ?word_id     from|aboard|about|above|across|after|against|along|alongside|amid|amidst|among|amongst|around|as|aside|astride|at|athwart|atop|barring|before|behind|below|beneath|beside|besides|between|beyond|by|circa|concerning|despite|down|during|except|excluding|failing|following|for|from|in|including|inside|into|like|mid|minus|near|notwithstanding|of|off|on|onto|opposite|out|outside|over|pace|past|per|plus|qua|regarding|round|save|since|than|through|throughout|till|times|to|toward|towards|under|underneath|unlike|until|up|upon|versus|via|with|within|without|worth)
?f1<-(split_tranlevel-ptype-headid-grpids tran3 PP ?head ?prep $?ids)
?f2<-(word-type-id ?word ?type ?prep)
(test (or (>(length$ $?ids) 1 ) (eq (length$ $?ids) 1 )))
(test  (eq (string_to_integer ?prep) (- (string_to_integer (implode$ (first$ (create$ $?ids))))1)))
(not (has_been_included_in_pada ?prep))
(not (has_been_included_in_pada ?head))
=>
(retract ?f ?f1 ?f2)
(assert (has_been_included_in_pada ?prep))
(assert (has_been_included_in_pada $?ids))
(assert (pada_info (group_head_id ?head) (group_cat PP) (group_ids $?ids) (preposition ?prep) ))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids  prep_pada2     "?head"   PP  "(implode$ (create$ $?ids ?prep))")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule prep_pada3
(declare (salience 2400))
?f<-(ol_res_id-word_id-word ?prep   ?word_id     from|aboard|about|above|across|after|against|along|alongside|amid|amidst|among|amongst|around|as|aside|astride|at|athwart|atop|barring|before|behind|below|beneath|beside|besides|between|beyond|by|circa|concerning|despite|down|during|except|excluding|failing|following|for|from|in|including|inside|into|like|mid|minus|near|notwithstanding|of|off|on|onto|opposite|out|outside|over|pace|past|per|plus|qua|regarding|round|save|since|than|through|throughout|till|times|to|toward|towards|under|underneath|unlike|until|up|upon|versus|via|with|within|without|worth)
?f1<-(split_tranlevel-ptype-headid-grpids tran3 PP ?head ?prep $?ids)
(not (word-type-id ?w ?i ?prep))
(not (has_been_included_in_pada ?prep))
(not (has_been_included_in_pada ?head))
(test (or (>(length$ $?ids) 1 ) (eq (length$ $?ids) 1 )))
=>
(retract ?f ?f1 )
(assert (has_been_included_in_pada ?prep))
(assert (has_been_included_in_pada ?head))
(assert (pada_info (group_head_id ?head) (group_cat PP) (group_ids $?ids) (preposition ?prep) ))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids  prep_pada3     "?head"   PP  "(implode$ (create$ $?ids ?prep))")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Ex. We restrict ourselves to a discussion of pressure in fluids at rest and in equilibrium.
(defrule prep_pada_and
(declare (salience 2500))
?f<-(ol_res_id-word_id-word ?prep   ?word_id     from|aboard|about|above|across|after|against|along|alongside|amid|amidst|among|amongst|around|as|aside|astride|at|athwart|atop|barring|before|behind|below|beneath|beside|besides|between|beyond|by|circa|concerning|despite|down|during|except|excluding|failing|following|for|from|in|including|inside|into|like|mid|minus|near|notwithstanding|of|off|on|onto|opposite|out|outside|over|pace|past|per|plus|qua|regarding|round|save|since|than|through|throughout|till|times|to|toward|towards|under|underneath|unlike|until|up|upon|versus|via|with|within|without|worth)
?f1<-(split_tranlevel-ptype-headid-grpids tran3 PP ?head ?prep $?ids ?and)
?f2<-(word-type-id ?word ?type ?prep)
(ol_res_id-word_id-word ?and ?id and)
(test (or (>(length$ $?ids) 1 ) (eq (length$ $?ids) 1 )))
(test  (eq (string_to_integer ?prep) (- (string_to_integer (implode$ (first$ (create$ $?ids))))1)))
(not (has_been_included_in_pada ?prep))
(not (has_been_included_in_pada ?head))
=>
(retract ?f ?f1 ?f2)
(assert (has_been_included_in_pada ?prep))
(assert (has_been_included_in_pada $?ids))
(bind ?h_id (nth$ (length$ $?ids) $?ids))
(assert (pada_info (group_head_id ?h_id) (group_cat PP) (group_ids $?ids) (preposition ?prep) ))
(printout ?*debug_fp* "(Rule-pada_head-pada_type-ids  prep_pada_and  "?h_id"  PP "(implode$ (create$ $?ids ?prep))")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Ex. It may so happen that the type of the expression and the type of the variable on the left-hand side of the assignment operator may not be same.
(defrule prep_pada_and_2
(declare (salience 2500))
?f<-(ol_res_id-word_id-word ?prep ?word_id     of)
?f1<-(split_tranlevel-ptype-headid-grpids tran3 PP ?head  ?prep $?ids ?and $?p2)
?f2<-(split_tranlevel-ptype-headid-grpids tran3 PP ?h  $?p1)
?f3<-(word-type-id ?word ?type ?prep)
(ol_res_id-word_id-word ?and ?id and)
(test (eq (string_to_integer ?prep) (+ (string_to_integer (nth$ (length$ $?p1) $?p1))1)))
=>
(assert (has_been_included_in_pada ?prep))
(assert (has_been_included_in_pada $?ids))
(assert (has_been_included_in_pada ?and))
(assert (has_been_included_in_pada $?p2))
(bind ?h_1 (nth$ (length$ $?ids) $?ids))
(bind ?h_2 (nth$ (length$ $?p2) $?p2))
(assert (pada_info (group_head_id ?h_1) (group_cat PP) (group_ids $?ids) (preposition ?prep) ))
(assert (pada_info (group_head_id ?h_2) (group_cat PP) (group_ids $?p2)))
(assert (pada_info (group_head_id ?and) (group_cat PP) (group_ids ?and)))
(printout ?*debug_fp* "(Rule-pada_head-pada_type-ids  prep_pada_and_2  "?h_1"  PP "(implode$ (create$ $?ids ?prep))")"crlf)
(printout ?*debug_fp* "(Rule-pada_head-pada_type-ids  prep_pada_and_2  "?h_2"  PP "(implode$ (create$ $?p2))")"crlf)
(printout ?*debug_fp* "(Rule-pada_head-pada_type-ids  prep_pada_and_2  "?and"  PP "(implode$ (create$ ?and))")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Ex. He is working harder THAN USUAL.
(defrule split_prep_than
(declare (salience 2000))
(ol_res_id-word_id-word ?prep ?word_id than)
?f<-(split_tranlevel-ptype-headid-grpids tran3 PP ?n  $?ids ?prep $?ids1 ?n)
=>
(bind ?g (create$ $?ids))
(bind ?g1 (create$ $?ids1 ?n))
(bind ?id (nth$ (length$ $?ids) $?ids))
(print_in_ctrl_fact_files  ?id)
(print_in_ctrl_fact_files  ?n)
(assert (pada_info  (group_head_id ?id) (group_cat PP) (group_ids ?g)))
(assert (pada_info  (group_head_id ?n) (group_cat PP) (group_ids ?g1) (preposition ?prep)))
(retract ?f)
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids  split_prep_than    "?id"   PP  "(implode$ (create$  ?g))")"crlf)
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids  split_prep_than    "?n"   PP  "(implode$ (create$  ?g1 ?prep))")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule det_pada
(declare (salience 1100))
?f1<-(split_tranlevel-ptype-headid-grpids tran3 PP ?head  $?ids)
(not (has_been_included_in_pada ?head))
=>
(retract ?f1 )
(assert (has_been_included_in_pada ?head))
(assert (pada_info (group_head_id ?head) (group_cat PP) (group_ids $?ids)))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids  det_pada       "?head"   PP  "(implode$ (create$ $?ids))")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;I am quite excited about next week.
(defrule vp_pada
(declare (salience 1100))
?f1<-(tranlevel-ptype-headid-grpids - VP ?head  ?id ?head)
(ol_res_id-word_id-word ?prep ?word_id excited|worried)
=>
(retract ?f1 )
(assert (has_been_included_in_pada ?head))
(assert (has_been_included_in_pada ?id))
(assert (pada_info (group_head_id ?id) (group_cat VP) (group_ids  ?id) ))
(assert (pada_info (group_head_id ?head) (group_cat VP) (group_ids  ?head) ))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids  vp_pada     "?head"   VP   "?head")"crlf)
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids  vp_pada     "?id"    VP   "?id")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule vp_pada_1
(declare (salience 1000))
?f1<-(tranlevel-ptype-headid-grpids - VP ?head $?ids ?head)
=>
(retract ?f1 )
(assert (has_been_included_in_pada ?head))
(assert (pada_info (group_head_id ?head) (group_cat VP) (group_ids $?ids ?head) ))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids  vp_pada       "?head"   VP  "(implode$ (create$ $?ids ?head))")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule non_fininte_pada
(declare (salience 1000))
?f1<-(root-verbchunk-tam-parser_chunkids   - ?working verbal-noun  ?head)
=>
(retract ?f1 )
(assert (has_been_included_in_pada ?head))
(assert (pada_info (group_head_id ?head) (group_cat PP) (group_ids  ?head) ))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids  non_finite_pada  "?head"   PP   "?head")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Ex. The blacksmith made an assay of iron ore.
(defrule samAsa_pada_head
(declare (salience 1800))
?f<-(pada_info (group_head_id ?lid))
(ol_res_id-word_id-word   ?lid      ?headid $?words)
(current_id-group_members  ?headid ?com ?head)
=>
(modify ?f (group_head_id  ?head))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids  samAsa_pada_head  "?head"   PP   "?head")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Ex. He works according to my instructions.
(defrule samAsa_prep
(declare (salience 1800))
?f5<-(split_tranlevel-ptype-headid-grpids tran3 PP ?headid  ?l $?ids)
?f1<-(using-parser-ids samAsa ?l)
?f2<-(ol_res_id-word_id-word ?l ?id $?words)
?f3<-(current_id-group_members ?id ?prep ?prep1)
?f4<-(word-type-id ?a ?b ?l)
=>
(retract ?f1 ?f2 ?f3 ?f4 ?f5)
(bind ?prp (string-to-field(str-cat ?prep "_" ?prep1)))
(assert (pada_info (group_head_id ?headid) (group_cat PP) (group_ids $?ids) (preposition ?prp)))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids   samAsa_prep   "?headid"   PP  "(implode$ (create$ $?ids ))" "?prp")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;It is true that you are my friend but I can not go along with you on this issue.
(defrule samAsa_prep_1
(declare (salience 1800))
?f5<-(split_tranlevel-ptype-headid-grpids tran3 PP ?headid  $?ids)
?f1<-(using-parser-ids samAsa ?l)
?f2<-(ol_res_id-word_id-word ?l ?id $?words)
?f3<-(current_id-group_members ?id ?prep ?prep1)
?f4<-(word-type-id ?a ?b ?l)
(test  (eq (string_to_integer ?l) (- (string_to_integer (implode$ (first$ (create$ $?ids))))1)))
=>
(retract ?f1 ?f2 ?f3 ?f4 ?f5)
(bind ?prp (string-to-field(str-cat ?prep "_" ?prep1)))
(assert (pada_info (group_head_id ?headid) (group_cat PP) (group_ids $?ids) (preposition ?prp)))
(assert (has_been_included_in_pada ?l)) ;Added by Roja for the same example given to this rule.(30-11-10)
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids   samAsa_prep_1   "?headid"   PP  "(implode$ (create$ $?ids ))" "?prp")"crlf)
)
;----------------------------------------------------------------------------------------------------------------------- 
;A more massive object changes its motion more slowly in response to a given force.
(defrule samAsa_prep_2
(declare (salience 1800))
?f5<-(split_tranlevel-ptype-headid-grpids tran3 PP ?headid  ?l $?ids)
?f2<-(ol_res_id-word_id-word ?l ?id $?words)
?f3<-(current_id-group_members ?id ?prep ?prep1 ?prep2 )
?f4<-(word-type-id ?a ?b ?l)
=>
(retract ?f2 ?f3 ?f4 ?f5)
(bind ?prp (string-to-field(str-cat ?prep "_" ?prep1"_" ?prep2)))
(assert (pada_info (group_head_id ?headid) (group_cat PP) (group_ids $?ids) (preposition ?prp)))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids   samAsa_prep_2   "?headid"   PP  "(implode$ (create$ $?ids ))" "?prp")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;He gave up his lucrative law practice for the sake of the country.
(defrule samAsa_prep2
(declare (salience 1800))
?f5<-(split_tranlevel-ptype-headid-grpids tran3 PP ?headid  ?l $?ids)
?f2<-(ol_res_id-word_id-word ?l ?id $?words)
?f3<-(current_id-group_members ?id ?prep ?prep1 ?prep2 ?prep3 )
?f4<-(word-type-id ?a ?b ?l)
=>
(retract ?f2 ?f3 ?f4 ?f5)
(bind ?prp (string-to-field(str-cat ?prep "_" ?prep1"_" ?prep2 "_" ?prep3 )))
(assert (pada_info (group_head_id ?headid) (group_cat PP) (group_ids $?ids) (preposition ?prp)))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids   samAsa_prep2   "?headid"   PP  "(implode$ (create$ $?ids ))" "?prp")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Keep on the right side of the road.
(defrule samAsa_prep1
(declare (salience 1800))
?f5<-(split_tranlevel-ptype-headid-grpids tran3 PP ?headid  ?l $?ids)
?f2<-(ol_res_id-word_id-word ?l ?id $?words)
?f3<-(current_id-group_members ?id ?prep ?prep1 ?prep2 ?prep3 ?prep4)
?f4<-(word-type-id ?a ?b ?l)
=>
(retract ?f2 ?f3 ?f4 ?f5)
(bind ?prp (string-to-field(str-cat ?prep "_" ?prep1"_" ?prep2 "_" ?prep3 "_" ?prep4)))
(assert (pada_info (group_head_id ?headid) (group_cat PP) (group_ids $?ids) (preposition ?prp)))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids   samAsa_prep1   "?headid"   PP  "(implode$ (create$ $?ids ))" "?prp")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Ex. The train left on time.
(defrule assert_missing_pada
(declare (salience 1800))
?f1<-(missing-level-id tran3 ?prep)
?f2<-(word-type-id ?p ?i ?prep)
?f3<-(split_tranlevel-ptype-headid-grpids tran3 PP ?head $?ids)
(test (eq (string_to_integer ?prep) (- (string_to_integer (implode$ (first$ (create$ $?ids))))1)))
(not (has_been_included_in_pada ?head))
(not (has_been_included_in_pada  ?prep))
(not (using-parser-ids kriyA-upasarga  ?k ?prep))
=>
(retract ?f1 ?f2 ?f3)
(assert (pada_info (group_head_id ?head) (group_cat PP) (group_ids $?ids) (preposition ?prep) ))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids  assert_missing_pada    "?head"   PP   "$?ids" "?prep")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule assert_missing_pada_1
(declare (salience 1800))
?f1<-(missing-level-id tran3 ?obj)
?f2<-(word-type-id ?p ?i ?prep)
(not (using-parser-ids kriyA-upasarga  ?k ?prep))
(test (eq (string_to_integer ?prep) (- (string_to_integer ?obj )1)))
(not (has_been_included_in_pada ?obj))
=>
(retract ?f1 ?f2 )
(assert (pada_info (group_head_id ?obj) (group_cat PP) (group_ids ?obj) (preposition ?prep) ))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids  assert_missing_pada_1  "?obj"  PP   "?obj" "?prep")"crlf)
(assert (has_been_included_in_pada ?prep))
(assert (has_been_included_in_pada ?obj))
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule assert_missing_pada_2
(declare (salience 800))
?f1<-(missing-level-id tran3 ?p)
(not (has_been_included_in_pada $? ?p $?))
(not (ol_res_id-word_id-word ?p    ?id    punctuation_mark));When we heat ice, it melts.
=>
(retract ?f1)
(assert (pada_info (group_head_id ?p) (group_cat PP) (group_ids ?p) ))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids  assert_missing_pada_2    "?p"  PP  "?p")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;
(defrule assert_prep_pada
(declare (salience 1900))
(ol_res_id-word_id-word ?prep   ?word_id    from|aboard|about|above|across|after|against|along|alongside|amid|amidst|among|amongst|around|as|aside|astride|at|athwart|atop|barring|before|behind|below|beneath|beside|besides|between|beyond|by|circa|concerning|despite|down|during|except|excluding|failing|following|for|from|in|including|inside|into|like|mid|minus|near|notwithstanding|of|off|on|onto|opposite|out|outside|over|pace|past|per|plus|qua|regarding|round|save|since|than|through|throughout|till|times|to|toward|towards|under|underneath|unlike|until|up|upon|versus|via|with|within|without|worth) 
?f<-(missing-level-id tran3 ?prep)
?f1<-(split_tranlevel-ptype-headid-grpids tran3 PP  ?head ?head $?ids)
(test  (eq (string_to_integer ?prep) (- (string_to_integer ?head)1 )))
(not (using-parser-ids kriyA-upasarga  ?k ?prep))
(not (has_been_included_in_pada ?prep))
(not (has_been_included_in_pada ?head))
=>
(retract ?f ?f1 )
(assert (has_been_included_in_pada ?prep))
(assert (has_been_included_in_pada ?head))

(assert (pada_info (group_head_id ?head) (group_cat PP) (group_ids ?head $?ids) (preposition ?prep) ))
(printout       ?*debug_fp*     "(Rule-pada_head-pada_type-ids  assert_prep_pada     "?head"   PP  "(implode$ (create$ ?head $?ids ?prep))")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule delete_prep_pada
(declare (salience 200))
(ol_res_id-word_id-word	?punc 	 ?id	punctuation_mark)
(ol_res_id-word_id-word	?prep	?word_id	to|from|in)
(ol_res_id-word_id-word	?head	?head_id	where|who|which)
?f<-(pada_info (group_head_id ?punc) (group_cat PP) (group_ids ?punc) (preposition ?prep))
?f1<-(pada_info (group_head_id ?head) (group_cat PP) (group_ids  ?head) (preposition ?L))
?f2<-(pada_info (group_head_id ?prep) (group_cat PP) (group_ids ?prep) (preposition ?L))
=>
(print_in_ctrl_fact_files  ?head)
(assert (pada_info (group_head_id ?head) (group_cat PP) (group_ids  ?head) (preposition ?prep)))
(retract ?f ?f1 ?f2)
(printout ?*debug_fp* "(Rule-pada_head-pada_type-ids  delete_prep_pada "?head"  PP   "?head"     "?prep")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule delete_prep_pada_1
(declare (salience 1999))
(ol_res_id-word_id-word ?L_to   ?to_id        to)
(not (ol_res_id-word_id-word ?L_had   =(- ?to_id 1)    had|have))
(ol_res_id-word_id-word ?L_kri   =(+ ?to_id 1)       ?kri_wrd)
(using-parser-ids to-infinitive  ?L_to ?L_kri)
=>
(print_in_ctrl_fact_files  ?L_kri)
(assert (has_been_included_in_pada  ?L_to))
(assert (has_been_included_in_pada  ?L_kri))
(assert (pada_info (group_head_id ?L_kri) (group_cat infinitive) (group_ids  ?L_to ?L_kri)))
(printout ?*debug_fp* "(Rule-pada_head-pada_type-ids  delete_prep_pada_1  "?L_kri"   infinitive  "?L_kri"  "?L_to")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Dick is important to fix the problem.
(defrule to-inf
(declare (salience 1999))
(ol_res_id-word_id-word ?L_to   ?to_id        to)
(using-parser-ids to-infinitive  ?L_to ?L_kri)
(missing-level-id tran3 ?L_to)
(missing-level-id tran3 ?L_kri)
=>
(print_in_ctrl_fact_files  ?L_kri)
(assert (has_been_included_in_pada ?L_to))
(assert (has_been_included_in_pada  ?L_kri))
(assert (pada_info (group_head_id ?L_kri) (group_cat infinitive) (group_ids  ?L_to ?L_kri )))
(printout ?*debug_fp* "(Rule-pada_head-pada_type-ids  to-inf  "?L_kri"   infinitive  "?L_to"  "?L_kri")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
 ;Ex. On hearing the news of his father's death Sachin returned back to India .
 (defrule RaRTI_viSeRaNa_paxa
 (declare (salience 1100))
 (pada_info (group_head_id ?) (group_cat PP) (group_ids $?grp_ids) (preposition ?prep))
 (using-parser-ids viSeRya-RaRTI_viSeRaNa   ?viSeRya  ?RaRTI_viSeRaNa)
 (test (and (member$ ?viSeRya $?grp_ids) (member$ ?RaRTI_viSeRaNa $?grp_ids)))
 =>
 (print_in_ctrl_fact_files  ?RaRTI_viSeRaNa)
 (assert (pada_info (group_head_id ?RaRTI_viSeRaNa) (group_cat PP) (group_ids  ?RaRTI_viSeRaNa)(vibakthi kA)))
 (printout ?*debug_fp* "(Rule-pada_head-pada_type-ids  RaRTI_viSeRaNa_paxa   "?RaRTI_viSeRaNa"   PP  "?RaRTI_viSeRaNa")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;Ex. On hearing the news of his father's death Sachin returned back to India .
 (defrule viSeRya_paxa
 (declare (salience 1050))
 ?f<- (pada_info (group_head_id ?) (group_cat PP) (group_ids $?grp_ids) (preposition ?prep))
 (using-parser-ids viSeRya-RaRTI_viSeRaNa   ?viSeRya  ?RaRTI_viSeRaNa)
 (test (and (member$ ?viSeRya $?grp_ids) (member$ ?RaRTI_viSeRaNa $?grp_ids)))
 =>
 (print_in_ctrl_fact_files  ?viSeRya)
 (retract ?f)
 (assert (pada_info (group_head_id ?viSeRya) (group_cat PP) (group_ids  ?viSeRya) (preposition ?prep) ))
 (printout ?*debug_fp* "(Rule-pada_head-pada_type-ids  viSeRya_paxa   "?viSeRya"   PP  "?viSeRya"  "?prep")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 ;Ex. of viSeRya-viSeRaNa: All our beloved sisters are coming .
 ;Ex. of viSeRya-det_viSeRaNa: All our sisters are coming.
 ;Ex. of samAsa: This is my first sentence.
 ;Ex. of viSeRya-saMKyA_viSeRaNa: My three sisters are coming next week.
 (defrule add_viSeRaNa_to_its_viSeRya
 (declare (salience 1001))
 ?f<-(pada_info (group_head_id ?viSeRya) (group_cat PP) (group_ids $?viSeRya_grp) (preposition ?prep))
 (using-parser-ids viSeRya-RaRTI_viSeRaNa   ?viSeRya  ?RaRTI_viSeRaNa)
 ?f0<-(using-parser-ids ?viSeRya-viSeRaNa ?viSeRya ?viSeRaNa)
 (test (or (eq ?viSeRya-viSeRaNa viSeRya-viSeRaNa)  (eq ?viSeRya-viSeRaNa viSeRya-det_viSeRaNa) (eq ?viSeRya-viSeRaNa samAsa) (eq ?viSeRya-viSeRaNa viSeRya-saMKyA_viSeRaNa )))

; (or (using-parser-ids viSeRya-viSeRaNa ?viSeRya ?viSeRaNa)(using-parser-ids viSeRya-det_viSeRaNa ?viSeRya ?viSeRaNa) (using-parser-ids samAsa  ?viSeRya ?viSeRaNa) (using-parser-ids viSeRya-saMKyA_viSeRaNa   ?viSeRya  ?viSeRaNa))
  =>
  (bind ?g (create$ ?viSeRaNa $?viSeRya_grp))
  (modify ?f  (group_ids  ?g))
  (retract ?f ?f0)
  )
  ;-----------------------------------------------------------------------------------------------------------------------
 ;He is a devoted husband and a father.
 (defrule RaRTI_viSeRaNa_rul_conj_and_or
 (declare (salience 1100))
 ?f<- (pada_info (group_head_id ?) (group_cat PP) (group_ids $?grp_ids) (preposition ?prep))
 ?f0<-(using-parser-ids viSeRya-RaRTI_viSeRaNa   ?viSeRya  ?RaRTI_viSeRaNa)
 (ol_res_id-word_id-word ?id   ?word_id and|or)
 (test (and (member$ ?viSeRya $?grp_ids)  (member$ ?RaRTI_viSeRaNa $?grp_ids) (member$ ?id $?grp_ids) ))
 =>
 (retract ?f ?f0)
 (print_in_ctrl_fact_files ?id)
 (print_in_ctrl_fact_files  ?RaRTI_viSeRaNa)
 (bind ?pada_with_and (delete-member$ $?grp_ids ?RaRTI_viSeRaNa))
 (bind ?RaRTyanwa_pada (nth$ 1 $?grp_ids))
 (bind ?head (nth$  (length $?grp_ids) $?grp_ids))
 (assert (pada_info (group_head_id ?RaRTyanwa_pada) (group_cat PP) (group_ids  ?RaRTyanwa_pada) (vibakthi kA)))
 (printout  ?*debug_fp* "(Rule-pada_head-pada_type-ids  RaRTI_viSeRaNa_rul_conj_and_or  "?RaRTyanwa_pada" PP "?RaRTyanwa_pada")"crlf)

 (if (neq ?prep 0) then
 (assert (pada_info (group_head_id ?head) (group_cat PP) (group_ids  ?pada_with_and) (preposition ?prep) ))
        (printout       ?*debug_fp* "(Rule-pada_head-pada_type-ids  RaRTI_viSeRaNa_rul_conj_and_or  "?head"        PP      "(implode$      $?grp_ids)      ")"crlf)
 else
 (assert (pada_info (group_head_id ?id) (group_cat PP) (group_ids  ?pada_with_and) ))
        (printout       ?*debug_fp* "(Rule-pada_head-pada_type-ids  RaRTI_viSeRaNa_rul_conj_and_or  "?id"  PP      "(implode$      ?pada_with_and) ")"crlf)
 )
)
;-----------------------------------------------------------------------------------------------------------------------
 ;Ex. Police are still hoping to find the dead woman's killer . 
 (defrule add_viSeRaNa_to_its_RaRTI_viSeRaNa
 (declare (salience 1001))
 ?f<-(pada_info (group_head_id ?RaRTI_viSeRaNa) (group_cat PP) (group_ids $?RaRTI_viSeRaNa_grp) (preposition ?prep))
 ?f0<-(using-parser-ids viSeRya-RaRTI_viSeRaNa   ?viSeRya  ?RaRTI_viSeRaNa)
 (using-parser-ids viSeRya-viSeRaNa ?RaRTI_viSeRaNa ?viSeRaNa)
 (using-parser-ids viSeRya-det_viSeRaNa ?RaRTI_viSeRaNa ?det)
  =>
  (bind ?g (create$ ?det ?viSeRaNa $?RaRTI_viSeRaNa_grp))
  (modify ?f  (group_ids  ?g))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
 (defrule add_viSeRaNa_to_and_viSeRya
 (declare (salience 1502))
 ?f<-(pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids $?viSeRya_grp))
 (ol_res_id-word_id-word ?paxa_head ?id and|or)
 (conjunction-components  ?paxa_head $?ids)
 (or (viSeRya-viSeRaNa ?x ?viSeRaNa)(viSeRya-det_viSeRaNa ?x ?viSeRaNa) (viSeRya-RaRTI_viSeRaNa   ?x  ?viSeRaNa))
 (test (member$ ?x $?ids))
 (test (eq (member$  ?viSeRaNa  $?viSeRya_grp) FALSE))
  =>
  (if (member$ ?x $?viSeRya_grp) then
  (bind ?g (create$ ?viSeRaNa $?viSeRya_grp))
  else
  (bind ?g (create$ ?viSeRaNa ?x $?viSeRya_grp)))
  (modify ?f  (group_ids  ?g))
  (assert (has_been_included_in_paxa ?g))
 )
 ;-----------------------------------------------------------------------------------------------------------------------
;Ex. Rama and Mohan went to the shop. Rama, Mohan, Shyam  and Gita went to the school.
 (defrule and_pada
 (declare (salience 1001))
 (using-parser-ids subject-subject_samAnAXikaraNa ?kriya ?paxa_head)
 (conjunction-components  ?paxa_head $?ids)
 (ol_res_id-word_id-word ?paxa_head ?i and|or)
 (not (has_been_included_in_pada $? ?paxa_head $?))
=>
        (print_in_ctrl_fact_files  ?paxa_head)
        (bind ?g (create$ ?paxa_head $?ids))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids   ?g)))
        (assert (has_been_included_in_pada ?g))
        (printout ?*debug_fp* "(Rule_name-pada_head_id-pada_type-ids  and_sub "?paxa_head"  PP "(implode$ (create$ ?g))")"crlf)
 )
 ;-----------------------------------------------------------------------------------------------------------------------
(defrule write_remaining_padas
?f1<-(pada_info (group_head_id ?head) (group_cat ?cat) (group_ids  $?ids) (vibakthi ?viB) (gender ?gen) (number ?num) (case ?c) (person ?per) (H_tam ?tam) (tam_source ?t_s) (preceeding_part_of_verb ?pos) (preposition ?prep) (Hin_position ?h_pos))
=>
(printout ?*ol_pada_fp* "(pada_info (group_head_id "?head") (group_cat "?cat") (group_ids  "(implode$ $?ids)") (vibakthi "?viB") (gender "?gen") (number "?num") (case "?c") (person "?per") (H_tam "?tam") (tam_source "?t_s") (preceeding_part_of_verb "?pos") (preposition "?prep") (Hin_position "?h_pos"))"crlf)
(print_in_ctrl_fact_files  ?head)
)
;-----------------------------------------------------------------------------------------------------------------------
;;;Added by Roja
;Where were you coming from?
(defrule delete_prep_pada2
(declare (salience 500))
(ol_res_id-word_id-word ?prep   ?word_id        to|from|in|with)
(ol_res_id-word_id-word ?head   ?head_id        where|who|which)
(using-parser-ids  kriyA-to_saMbanXI|kriyA-from_saMbanXI|kriyA-in_saMbanXI|kriyA-with_saMbanXI      ?kri   ?head)
?f<-(pada_info (group_head_id ?head) (group_cat PP) (group_ids  ?head) )
?f1<-(pada_info (group_head_id ?prep) (group_cat PP) (group_ids ?prep) )
=>
(print_in_ctrl_fact_files  ?head)
(assert (pada_info (group_head_id ?head) (group_cat PP) (group_ids  ?head) (preposition ?prep) ))
(printout ?*debug_fp* "(Rule_name-pada_head_id-pada_type-ids  delete_prep_pada2   "?head"  PP "(implode$ (create$ ?head ?prep))")"crlf)
(retract ?f ?f1)
)
;-----------------------------------------------------------------------------------------------------------------------
;Who did you play tennis with?
(defrule delete_prep_pada3
(declare (salience 500))
(ol_res_id-word_id-word ?prep   ?word_id        with)
(ol_res_id-word_id-word ?head   ?head_id        who)
(using-parser-ids  kriyA-with_saMbanXI      ?kri   ?head)
?f<-(pada_info (group_head_id ?head) (group_cat PP) (group_ids  ?head))
?f1<-(word-type-id to|from|in|with ?i ?prep)
=>
(print_in_ctrl_fact_files  ?head)
(assert (pada_info (group_head_id ?head) (group_cat PP) (group_ids  ?head) (preposition ?prep)))
(printout ?*debug_fp* "(Rule_name-pada_head_id-pada_type-ids  delete_prep_pada3   "?head"  PP "(implode$ (create$ ?head ?prep))")"crlf)
(retract ?f ?f1)
)
;-----------------------------------------------------------------------------------------------------------------------
;As you are aware, this is not a new problem.
;As had been expected, the party was a big success.
(defrule delete_prep_pada4
(declare (salience 500))
(using-parser-ids  wall_conjunction ?Lid)
?f<-(pada_info (group_head_id ?Lid) (group_cat PP) (group_ids  ) (preposition ?Lid))
=>
(retract ?f)
(assert (pada_info (group_head_id ?Lid) (group_cat PP) (group_ids  ?Lid) (preposition 0)))
(printout ?*debug_fp* "(Rule_name-pada_head_id-pada_type-ids  delete_prep_pada4   "?Lid"  PP "(implode$ (create$ ?Lid))")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;I count the cars as they pass by the office.
(defrule delete_prep_pada5
(declare (salience 500))
(using-parser-ids  kriyA-conjunction ?sub  ?conj)
?f<-(pada_info (group_head_id ?Lid) (group_cat PP) (group_ids  ) (preposition ?Lid))
=>
(retract ?f)
(assert (pada_info (group_head_id ?Lid) (group_cat PP) (group_ids  ?Lid) (preposition 0)))
(printout ?*debug_fp* "(Rule_name-pada_head_id-pada_type-ids  delete_prep_pada5   "?Lid"  PP "(implode$ (create$ ?Lid))")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;I want her to know about it, but the telling will not be easy.
(defrule delete_pada_1
(declare (salience 500))
(pada_info (group_head_id ?Lid) (group_cat VP) (group_ids ?id ?id1 ?Lid))
?f<-(pada_info (group_head_id ?id) (group_cat PP) (group_ids ?id))
?f1<-(pada_info (group_head_id ?id1) (group_cat PP) (group_ids ?id1))
=>
(retract ?f ?f1)
)
;-----------------------------------------------------------------------------------------------------------------------
;I left the party after seeing Ann there.
(defrule delete_pada1
(declare (salience 1500))
(using-parser-ids  kriyA-after_saMbanXI ?L3 ?L7)
(ol_res_id-word_id-word ?after ?word_id after)
?f1<-(split_tranlevel-ptype-headid-grpids tran3 PP ?after ?after)
?f0<-(missing-level-id tran1 ?L7)
(test (eq (string_to_integer ?after) (- (string_to_integer ?L7)1)))
=>
(retract ?f0 ?f1)
(assert (has_been_included_in_pada ?L7))
(assert (pada_info (group_head_id ?L7) (group_cat PP) (group_ids  ?L7) (preposition ?after)))
(printout ?*debug_fp* "(Rule_name-pada_head_id-pada_type-ids  delete_pada1   "?L7"  PP "?L7" "?after")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule end
 (declare (salience -1000))
 =>
        (close ?*vachan_file*)
        (close ?*agmt_cntrl_file*)
        (close ?*pada_cntrl_file*)
        (close ?*ol_pada_fp*)
 )
;-----------------------------------------------------------------------------------------------------------------------
