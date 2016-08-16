 (deffunction never-called () 
 (assert (id-word))
 (assert (id-last_word))
 (assert (id-wsd_root))
 (assert (id-wsd_number))
 (assert (id-wsd_root_mng))
 (assert (id-wsd_word_mng))
 (assert (affecting_id-affected_ids-wsd_group_root_mng))
 (assert (affecting_id-affected_ids-wsd_group_word_mng))
 (assert (kriyA_id-object_viBakwi))
 (assert (kriyA_id-object1_viBakwi))
 (assert (kriyA_id-object2_viBakwi))
 (assert (kriyA_id-subject_viBakwi))
 (assert (make_verbal_noun) )
 (assert (id-H_vib_mng))
 (assert (meaning_has_been_decided))
 (assert (id-root-category-suffix-number))
 (assert (root-verbchunk-tam-chunkids))
 (assert (verb_agrmt-subject_id-head_id))
 (assert (verb_agrmt-object_id-head_id))
 (assert (verb_type-verb-kriyA_mUla-tam))
 (assert (verb_type-verb-causative_verb-tam))
 (assert (verb_agrmt-head_id))
 (assert (id-attach_emphatic))
 (assert (id-preceeding_part_of_verb))
 (assert (id-eng-src))
 (assert (id-attach_eng_mng))
 (assert (id-wsd_viBakwi))
 (assert (id-domain_type))
 (assert (compound_meaning_decided))
 (assert (prep_id-relation-anu_ids))
 (assert (conjunction-components))
 (assert (conj_head-left_head-right_head))
 )

 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))



 ; Added by Roja.(06-11-10)
 ; Stanford parser, Number information was taken from morph(apertium).
 ; OL parser itself gives its own Number information.
 ; Link parser itself gives its own Number information.
 ; Following rules are added to decide in which priority the number information should be taken.

 ;-----------------------------------------------------------------------------------------------------------
 ; Generate Default num info for stanford parser
 ; Added by Shirisha Manju (28-02-11)
 (defrule generate_dummy_num
 (declare (salience 1001))
 (std-parser-num)
 (id-word ?id ?)
 (not (number_decided ?id))
 =>
  	(assert (id-number-src ?id  - Default))
	(assert (number_decided ?id))
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;get num from wsd
 (defrule number_frm_wsd
 (declare (salience 1000))
 ?f0<- (id-wsd_number ?id ?num)
 ?f1<- (id-number-src ?id ? ?)
  =>
        (retract ?f0 ?f1)
        (assert (id-number-src ?id  ?num  WSD))
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;Getting number information from MORPH(morph.dat)
 ;Rama ate some SWEETS.
 (defrule get_num_frm_morph
 (declare (salience 950))
 (id-word ?id ?wrd)
 ?f1<-(id-number-src ?id ?num Default)
 (id-root-category-suffix-number  ?id ? ? ? ?num1)
 (test (neq ?num1 -))
 =>
       (assert (id-number-src ?id  ?num1  Morph))
       (retract ?f1)
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (suggested by sukhada )
 ;The sheep are jumping. The sheep is jumping.
 (defrule verb_rule
 (declare (salience 960))
 ?f1<-(id-number-src ?head ?num Default)
 (root-verbchunk-tam-chunkids ? ? ? ?id $? ?head)
 (prep_id-relation-anu_ids   ?   kriyA-subject  ?head ?sub)
 (id-word ?id ?word&are|were|is|was)
 ?f2<-(id-number-src ?sub ? Default)
; ?f3<-(id-number-src ?head - Default) ;Added by Roja(30-01-14) To avoid duplication fact Ex:The draft of soldiers were sent in different directions.
 =>
        (retract ?f1 ?f2)
        (if (or (eq ?word are)(eq ?word were)) then
                (assert (id-number-src ?head  p  Word))
                (assert (id-number-src ?sub  p  Word))
;		(retract ?f3) ;Added by Roja(30-01-14) To avoid duplication fact
        else
                (if (or (eq ?word is) (eq ?word was)) then
                        (assert (id-number-src ?head  s  Word))
	                (assert (id-number-src ?sub  s  Word))
;			(retract ?f3);Added by Roja(30-01-14) To avoid duplication fact
                )
        )
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju Suggested by Chaitanya Sir 24-02-15
 ;if morph generates number as 'p' then this rule decides number as 's' using determinar 'a'
 ;The spectrum appears as a [series] of bright lines.
 ;inake spektrama meM camakIlI reKAoM kI eka [SqfKalA] xiKAI xewI hE .
 (defrule get_num_using_det
 (declare (salience 950))
 (id-root-category-suffix-number  ?id ? ? ? p)
 ?f2<- (id-number-src ?id ? ?s&~Word)
 (id-word =(- ?id 1) a)
 =>
        (retract ?f2)
        (assert (id-number-src ?id  s  Word))
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;The Danes are nice people.
 (defrule get_num_for_sub
 (declare (salience 900))
 (id-word ?kri are|were)
 ?f<-(verb_agrmt-subject_id-head_id  subject  ?sub  ?kri)
 ?f2<- (id-number-src ?sub ? ?)
 =>
	(retract ?f ?f2)
	(assert (id-number-src ?sub  p  OL))
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;Getting number information from default dictionary.
 (defrule get_num_frm_plural_list
 (declare (salience 800))
 (id-word ?wid ?word&:(not (numberp ?word)))
 ?f<- (id-number-src  ?wid  ?n&s|-  ?)
 =>
        (bind ?a (gdbm_lookup "ol_parser_unused_words.gdbm" ?word))
        (if (neq ?a "FALSE") then
               (assert (id-number-src ?wid  p  ol_parser_unused_words.gdbm))
               (retract ?f)
        )
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju Suggested by Chaitanya Sir 09-07-16
 ;It was in Hastinapur that [twelve Kalyanaks] of Shree Shantinath Prabhu, Kunthanath Prabhu and Shri Arahanath Prabhu occurred.
 (defrule get_num_from_numerals
 (declare (salience 700))
 ?f<-(id-number-src ?h - ?)
 (pada_info (group_head_id ?h) (group_ids $? ?id ?h))
 (id-root-category-suffix-number ?id ?w&~one&~1 number ? ?) 
 (id-word ?h ?)
 =>
	(retract ?f)
	(assert (id-number-src ?h p number))
 )	
 ;-----------------------------------------------------------------------------------------------------------
 ;printing the number info into a file.
; (defrule  default_number
; (declare (salience 100))
; (id-number-src ?wid  ?num  ?src)
; ?f0<-(id-word ?wid ?)
; =>
;	(retract ?f0)
;	(assert (id-number-src ?wid  ?num  ?src))
; )
 ;----------------------------------------------------------------------------------------------------------- 
