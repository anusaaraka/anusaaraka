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
 )

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
  	(assert (id-number-src ?id  s Default))
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
 ?f2<-(id-root-category-suffix-number  ?id ? ? ? ?num1)
 (test (neq ?num1 -))
 =>
       (assert (id-number-src ?id  ?num1  Morph))
       (retract ?f1 ?f2)
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (suggested by sukhada )
 ;The sheep are jumping. The sheep is jumping.
 (defrule verb_rule
 (declare (salience 960))
 ?f1<-(id-number-src ?id ?num Default)
 (root-verbchunk-tam-chunkids ? ? ? ?id $? ?head)
 ?f2<-(id-root-category-suffix-number  ?id ? verb $?)
 (id-word ?id ?word)
 =>
        (retract ?f1 ?f2)
        (if (or (eq ?word are)(eq ?word were)) then
                (assert (id-number-src ?head  p  Word))
        else
                (if (eq ?word is) then
                        (assert (id-number-src ?head  s  Word))
                )
        )
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;The Danes are nice people.
 (defrule get_num_for_sub
 (declare (salience 900))
 ?f1<-(id-word ?kri are|were)
 (verb_agrmt-subject_id-head_id  subject  ?sub  ?kri)
 ?f2<- (id-number-src ?sub ? ?)
 =>
	(retract ?f1 ?f2)
	(assert (id-number-src ?sub  p  OL))
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;Getting number information from default dictionary.
 (defrule get_num_frm_plural_list
 (declare (salience 800))
 (id-word ?wid ?word&:(not (numberp ?word)))
 ?f<- (id-number-src  ?wid  s  ?)
 =>
        (bind ?a (gdbm_lookup "ol_parser_unused_words.gdbm" ?word))
        (if (neq ?a "FALSE") then
               (assert (id-number-src ?wid  p  ol_parser_unused_words.gdbm))
               (retract ?f)
        )
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;printing the number info into a file.
 (defrule  default_number
 (declare (salience 100))
 (id-number-src ?wid  ?num  ?src)
 ?f0<-(id-word ?wid ?)
 =>
	(retract ?f0)
	(assert (id-number-src ?wid  ?num  ?src))
 )
 ;----------------------------------------------------------------------------------------------------------- 
