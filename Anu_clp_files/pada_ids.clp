
(deffunction string_to_integer (?parser_id); [Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

 (deffacts dummy_facts 
 (No complete linkages found)
 (id-cat)
 (id-cat_coarse)
 (link_name-link_expansion)
 (link_name-lnode-rnode)
 (to_be_included_in_paxa)
 (id-word)
 (id-last_word)
 (root-verbchunk-tam-chunkids)
 (relation-anu_ids)
 (verb_type-verb-kriyA_mUla-tam)
 (verb_type-verb-causative_verb-tam)
 (conjunction-components)
 )
 
 (defglobal ?*agmt_cntrl_file* = agmt_cntrl_fp)
 (defglobal ?*pada_cntrl_file* = pada_cntrl_fp)
 (defglobal ?*dbug* = pada_debug_fp)
 (defglobal ?*errfp* = err_file)
 (defglobal ?*p_list* = (create$ ))
 
 (defrule end
 (declare (salience -100))
 =>
	(close ?*agmt_cntrl_file*)
	(close ?*pada_cntrl_file*)
	(close ?*dbug*)
        (close ?*errfp*)
 )  
 ;----------------------------------------------------------------------------------------------------------------------
 (deffunction print_in_ctrl_fact_files (?paxa_head)
	(printout	?*agmt_cntrl_file*	"(agmt_control_fact	"	?paxa_head	")"	crlf)	
	(printout	?*pada_cntrl_file*	"(pada_control_fact	"	?paxa_head	")"	crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule pada_count
 (declare (salience 10000))
 (to_be_included_in_paxa 1)
 =>
 (assert (count 0))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule default_pada
 (declare (salience -4))
 ?f0<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 (id-cat_coarse ?paxa_head ?cat&~preposition)
 (not( has_been_included_in_paxa $?id ?paxa_head $?id1))
 (not (No complete linkages found))
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (if (eq ?cat verb) then 
		(assert (pada_info (group_head_id ?paxa_head) (group_cat VP) (group_ids  ?paxa_head)))
		(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	default_pada	P"?paxa_head	"	VP	"(implode$	(create$	?paxa_head	))	")"	crlf)	

	else 
	        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?paxa_head)))
		(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	default_pada	P"?paxa_head	"	PP	"(implode$	(create$	?paxa_head	))	")"	crlf)	
	)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (1-03-11)
 ;Where are you coming from?
 (defrule add_single_prep
 (declare (salience 1301))
 (relation-anu_ids wh_question|yes_no_question)
 (relation-anu_ids   ?rel  ?x ?prep_saM)
 ?f1<-(pada_info (group_head_id ?id)(group_ids $?ids)(preposition ?prep))
 (test (and (neq (str-index "-" ?rel)  FALSE)(neq (str-index "_" ?rel)  FALSE)))
 (test (or (eq (sub-string 1 5 ?rel) "kriyA") (eq (sub-string 1 7 ?rel) "viSeRya")))
 (id-word ?prep_id ?w)
 (test (eq (string-to-field (sub-string (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel) 1) ?rel)) ?w))
 (test (eq (sub-string (+ (str-index  (str-cat ?w "_") ?rel) (length ?w)) 1000 ?rel) "_saMbanXI")) ;to take only single prep  relation. Ex: kriyA-from_saMbanXI
 ?f<-(to_be_included_in_paxa ?prep_id)
 (test(and (or (eq ?prep_saM ?id)(member$ ?prep_saM $?ids))(> ?prep_id ?prep_saM)))
 =>
        (retract ?f)
        (modify ?f1 (preposition  ?prep_id))
        (assert (has_been_decided ?prep_id))
        (assert (has_been_decided ?prep_saM))
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Modified by Roja(26-01-11)
 ;Added "kqxanwa" by Manju Ex : He made a mistake in the inviting of John. (kqxanwa-of_saMbanXI inviting john) (01-03-11)
 (defrule add_single_prep1
 (declare (salience 1300))
 (relation-anu_ids   ?rel  ?x ?prep_saM)
 ?f1<-(pada_info (group_head_id ?id)(group_ids $?ids)(preposition ?prep))
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (neq (str-index "_" ?rel)  FALSE))
 (test (or (eq (sub-string 1 5 ?rel) "kriyA") (eq (sub-string 1 7 ?rel) "viSeRya")(eq (sub-string 1 7 ?rel) "kqxanwa")))
 (id-word ?prep_id ?w)
 (test (eq (string-to-field (sub-string (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel) 1) ?rel)) ?w))
 (test (eq (sub-string (+ (str-index  (str-cat ?w "_") ?rel) (length ?w)) 1000 ?rel) "_saMbanXI")) ;to take only single prep  relation. Ex: kriyA-from_saMbanXI
 ?f<-(to_be_included_in_paxa ?prep_id)
 (test(and (or (eq ?prep_saM ?id)(member$ ?prep_saM $?ids))(< ?prep_id ?prep_saM))) ;Ulsoor lake is an ideal place for sightseeing, boating and shopping. I waited for Seeta for hours.
 (not  (has_been_decided ?prep_saM))
 =>
        (retract ?f)
        (modify ?f1 (preposition  ?prep_id))
        (assert (has_been_decided ?prep_id))
        (assert (has_been_decided ?prep_saM))
 )
 ;Ex. Mohan fell from the top of the house. 
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule get_VP_pada
 (declare (salience 500))
 (root-verbchunk-tam-chunkids  ? ? ?  $?chunk_ids ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?paxa_head)
  ?f<-(count ?count)
 =>
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (retract ?f ?f0)
        (print_in_ctrl_fact_files  ?paxa_head)
        (bind ?chunks (implode$ $?chunk_ids))
        (assert (has_been_included_in_paxa ?paxa_head))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat VP) (group_ids $?chunk_ids ?paxa_head)))
        (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  get_VP_pada     P"?paxa_head    "       VP      "       ?chunks "       "?paxa_head     ")"     crlf)
        (bind ?length (length $?chunk_ids))
        (loop-for-count (?i  1 ?length)
                (bind ?id (nth$ ?i $?chunk_ids))
                (assert (has_been_included_in_pada ?id))
        )

 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Checking the consistency between the LWG and CHUNKER grouping in case if No complete linkages found for a sentence.
 (defrule print_error_msg
 (declare (salience 500))
 (root-verbchunk-tam-chunkids  ? ? ?  $?lwg_ids ?paxa_head)
 (No complete linkages found)
 (chunk_ids VP $?chunk_ids ?paxa_head $?chunk_ids1)
  =>
 (bind $?lwg_grp (create$ $?lwg_ids ?paxa_head))
 (bind $?chunker_grp (create$ $?chunk_ids ?paxa_head $?chunk_ids1))
  (if (neq $?lwg_grp $?chunker_grp)  then
     (printout ?*errfp* "lwg_group  :: " $?lwg_grp " ------------ chunker_group  :: " $?chunker_grp  "---- Both differ" crlf)
  )
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule retract_id
 (declare (salience 450))
 (has_been_included_in_pada ?id)
 ?f0<-(to_be_included_in_paxa ?id)
 =>
       (retract ?f0)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. I know a woman who has two children .
 (defrule asserted_who
 (declare (salience 508))
 (relation-anu_ids  viSeRya-jo_samAnAXikaraNa ?vi ?jo)
 (id-original_word 10000 who)
 ?f<-(count ?count)
 (not (has_been_included_in_paxa 10000))
 =>
        (retract ?f )
        (print_in_ctrl_fact_files  10000)
        (assert (has_been_included_in_paxa 10000))
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (pada_info (group_head_id 10000)(group_cat PP)(group_ids 10000)))
        (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  asserted_who    P"10000 "       PP      "10000  ")"crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. The man I play tennis with is here .
 (defrule asserted_who_1
 (declare (salience 550))
 (id-original_word 10000 who)
 (relation-anu_ids  viSeRya-jo_samAnAXikaraNa  ?x 10000)
 (link_name-lnode-rnode   Bs|Bp   ?x ?prep)
 ?f<-(count ?count)
 (not (has_been_included_in_paxa 10000))
 =>
        (retract ?f )
        (print_in_ctrl_fact_files  10000)
        (assert (has_been_included_in_paxa 10000))
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert(has_been_included_in_paxa ?prep))
        (assert (pada_info (group_head_id 10000)(group_cat PP)(group_ids 10000) (preposition ?prep)))
        (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  asserted_who_1    P"10000 "       PP      "10000"  "?prep")"crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. She was asked about the pay increase but made no comment. 
 (defrule subject_insertion
 (declare (salience 508))
 (relation-anu_ids  kriyA-subject  ?kriyA 10001)
 ?f<-(count ?count)
 (not (has_been_included_in_paxa 10001))
 =>
        (retract ?f )
        (print_in_ctrl_fact_files  10001)
        (assert (has_been_included_in_paxa 10001))
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (pada_info (group_head_id 10001)(group_cat PP)(group_ids 10001)))
        (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  subject_insertion    P"10001 "       PP      "10001  ")"crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule det-noun
 (declare (salience 5))
 ?f0<-(relation-anu_ids viSeRya-det_viSeRaNa      ?paxa_head ?det)
 ?f1<-(to_be_included_in_paxa ?det)
 ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 (not (has_been_included_in_paxa $?id ?paxa_head $?id1))
 (not (has_been_included_in_paxa $?id ?det $?id1))
=>
 	(print_in_ctrl_fact_files ?paxa_head)
	(retract ?f ?f0 ?f1 ?f2)
	(bind ?ids (create$ ))
	(loop-for-count (?loop  ?det  ?paxa_head)do
 		(bind ?ids (insert$ ?ids 1 ?loop))
		(bind ?ids (sort > ?ids))
	)
        (assert (has_been_included_in_paxa ?ids))
	(bind ?count (+ ?count 1))
	(assert (count ?count))       
	(assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?ids)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	det-noun	P"?paxa_head	"	PP	"(implode$	?ids	)")"crlf)	
    
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. The other man had to spend all his time flat on his back .
 (defrule det_det-noun
 (declare (salience 10))
 ?f0<-(relation-anu_ids  viSeRya-det_viSeRaNa   ?det1 ?det)
 (relation-anu_ids  viSeRya-det_viSeRaNa        ?paxa_head ?det1)
 ?f1<-(to_be_included_in_paxa ?det)  ?f2<-(to_be_included_in_paxa ?det1)  ?f3<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 (not (has_been_included_in_paxa $?id ?paxa_head $?id1))
 (not (has_been_included_in_paxa $?id ?det $?id1))
 (not (has_been_included_in_paxa $?id ?det1 $?id1))
 =>
        (print_in_ctrl_fact_files ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2 ?f3)
        (bind ?ids (create$ ))
        (loop-for-count (?loop  ?det  ?paxa_head)do
                (bind ?ids (insert$ ?ids 1 ?loop))
                (bind ?ids (sort > ?ids))
        )
        (assert (has_been_included_in_paxa ?ids))
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?ids)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	det_det-noun	P"?paxa_head	"	PP	"(implode$	?ids	)")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. Ex. I saw THE FAT UGLY DIRTY DOGS in the garden. I saw THE FAT DOGS. I saw A  FAT UGLY DIRTY DOG in the garden.
 ; Rule for handling determinars & adjectives.
 (defrule det-adj/s-noun
 (declare (salience 300))
 ?f0<-(relation-anu_ids  viSeRya-det_viSeRaNa      ?paxa_head ?det)
 ?f1<- (relation-anu_ids viSeRya-viSeRaNa       ?paxa_head ?adj)
 ?f2<-(to_be_included_in_paxa ?det)
 ?f3<-(to_be_included_in_paxa ?paxa_head)
 ?f4<-(to_be_included_in_paxa ?adj)
 ?f<-(count ?count)
 (not (has_been_included_in_paxa $?pre ?paxa_head $?post))
 (not (has_been_included_in_paxa $?pre ?adj $?post))
 (not (has_been_included_in_paxa $?pre ?det $?post))
 =>
	(print_in_ctrl_fact_files  ?paxa_head)
	(retract ?f ?f0 ?f1 ?f2 ?f3 ?f4)
	(bind ?ids (create$ ))
        (loop-for-count (?loop  ?det  ?paxa_head)do
		(bind ?ids (insert$ ?ids 1 ?loop))
		(bind ?ids (sort > ?ids))
        )
        (assert (has_been_included_in_paxa ?ids))
        (bind ?count (+ ?count 1))
        (assert (count ?count))
	(assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?ids)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	det-adj/s-noun	P"?paxa_head	"	PP	"(implode$	?ids)	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule det-num_adj/s-noun
 (declare (salience 400))
 ?f0<-(relation-anu_ids  viSeRya-det_viSeRaNa      ?paxa_head ?det)
 (relation-anu_ids  viSeRya-saMKyA_viSeRaNa  ?paxa_head ?num)
 ?f1<- (relation-anu_ids  viSeRya-viSeRaNa       ?num ?vi)
 ?f2<-(to_be_included_in_paxa ?det)
 ?f3<-(to_be_included_in_paxa ?paxa_head)
 ?f4<-(to_be_included_in_paxa ?adj)
 ?f<-(count ?count)
 (not (has_been_included_in_paxa $?pre ?paxa_head $?post))
 (not (has_been_included_in_paxa $?pre ?num $?post))
 (not (has_been_included_in_paxa $?pre ?vi $?post))
 (not (has_been_included_in_paxa $?pre ?det $?post))
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2 ?f3 ?f4)
        (bind ?ids (create$ ))
        (loop-for-count (?loop  ?det  ?paxa_head)do
                (bind ?ids (insert$ ?ids 1 ?loop))
                (bind ?ids (sort > ?ids))
        )
        (assert (has_been_included_in_paxa ?ids))
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?ids)))
        (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  det-num_adj/s-noun  P"?paxa_head    "       PP      "(implode$      ?ids)   ")"crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Added by Manju (09-11-09)
 ; Ex: It is hard to absorb so much information .
 (defrule det-viSeRaNa-viSeRaka
 (declare (salience 300))
 ?f0<-(relation-anu_ids  viSeRya-det_viSeRaNa      ?paxa_head ?det)
 ?f1<- (relation-anu_ids  viSeRaNa-viSeRaka       ?det ?vi)
 ?f2<-(to_be_included_in_paxa ?det)
 ?f3<-(to_be_included_in_paxa ?paxa_head)
 ?f4<-(to_be_included_in_paxa ?vi)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2 ?f3 ?f4)
        (bind ?ids (create$ ))
        (loop-for-count (?loop  ?vi  ?paxa_head)do
                (bind ?ids (insert$ ?ids 1 ?loop))
                (bind ?ids (sort > ?ids))
        )
        (assert (has_been_included_in_paxa ?ids))
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?ids)))
        (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  det-adj/s-noun  P"?paxa_head    "       PP      "(implode$      ?ids)   ")"crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex.  Ex. I saw  FAT UGLY DIRTY DOGS in the garden. I saw  FAT DOGS.
 ; Rule for handling adjectives & nouns without determinars.
 (defrule adj/s-noun
 (declare (salience 200))
 ?f1<- (relation-anu_ids  viSeRya-viSeRaNa      ?paxa_head ?adj)
 (not  (relation-anu_ids  viSeRya-viSeRaNa     ?adj1&:(< ?adj1 ?adj)?paxa_head))
 ?f3<-(to_be_included_in_paxa ?paxa_head)
 ?f4<-(to_be_included_in_paxa ?adj)
 ?f<-(count ?count)
 (not (No complete linkages found))
 (not (has_been_included_in_paxa $?pre ?adj $?post))
 (not (has_been_included_in_paxa $?pre ?paxa_head $?post))
 =>
	(print_in_ctrl_fact_files  ?paxa_head)
	(retract ?f ?f1 ?f3 ?f4) 
	(bind ?ids (create$ ))
        (loop-for-count (?loop  ?adj  ?paxa_head)do
		(bind ?ids (insert$ ?ids 1 ?loop))
		(bind ?ids (sort > ?ids))
        )
	(assert (has_been_included_in_paxa ?ids))
	(bind ?count (+ ?count 1))
        (assert (count ?count))
	(assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?ids)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	adj/s-noun	P"?paxa_head	"	PP	"(implode$	?ids)	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. Each one of them recorded the narratives from twenty participants 
 (defrule det-prep-nouns
 (declare (salience 300))
 ?f0<-(relation-anu_ids viSeRya-det_viSeRaNa      ?paxa_head ?det)
 ?f1<- (relation-anu_ids viSeRya-viSeRaNa       ?paxa_head ?adj)
 ?f2<-(to_be_included_in_paxa ?det)
 ?f3<-(to_be_included_in_paxa ?paxa_head)
 ?f4<-(to_be_included_in_paxa ?adj)
 ?f<-(count ?count)
 (not (has_been_included_in_paxa $?pre ?paxa_head $?post))
 (not (has_been_included_in_paxa $?pre ?adj $?post))
 (not (has_been_included_in_paxa $?pre ?det $?post))
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2 ?f3 ?f4)
        (bind ?ids (create$ ))
        (loop-for-count (?loop  ?det  ?paxa_head)do
                (bind ?ids (insert$ ?ids 1 ?loop))
                (bind ?ids (sort > ?ids))
        )
        (assert (has_been_included_in_paxa ?ids))
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?ids)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	det-prep-nouns	P"?paxa_head	"	PP	"(implode$	?ids)	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. We have very different ideas about disciplining children . 
 (defrule viSeRaNa-viSeRaka-viSeRya
 (declare (salience 300))
 (relation-anu_ids viSeRaNa-viSeRaka ?vi_N ?vi_k)
 (relation-anu_ids viSeRya-wulanAwmaka_viSeRaNa  ?paxa_head ?vi_N)
 ?f2<-(to_be_included_in_paxa ?vi_k)
 ?f3<-(to_be_included_in_paxa ?paxa_head)
 ?f4<-(to_be_included_in_paxa ?vi_N)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f2 ?f3 ?f4)
        (bind ?ids (create$ ))
        (loop-for-count (?loop  ?vi_k  ?paxa_head)do
                (bind ?ids (insert$ ?ids 1 ?loop))
                (bind ?ids (sort > ?ids))
        )
        (assert (has_been_included_in_paxa ?ids))
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?ids)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	viSeRaNa-viSeRaka-viSeRya	P"?paxa_head	"	PP	"(implode$	?ids)	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. VERY FAT BOYS are coming .
 (defrule viSeRaNa_viSeRaka-noun
 (declare (salience 220))
 ?f0<- (relation-anu_ids viSeRya-viSeRaNa      ?paxa_head ?adj)
 ?f1<-(relation-anu_ids viSeRaNa-viSeRaka  ?adj ?adv)
 (not  (relation-anu_ids viSeRya-viSeRaNa     ?adj1&:(< ?adj1 ?adj)?paxa_head))
 ?f3<-(to_be_included_in_paxa ?paxa_head)
 ?f4<-(to_be_included_in_paxa ?adj)
 ?f<-(count ?count)
 (not (has_been_included_in_paxa $?pre ?paxa_head $?post))
 (not (has_been_included_in_paxa $?pre ?adj $?post))
 =>
	(print_in_ctrl_fact_files  ?paxa_head)
	(retract ?f ?f0 ?f1 ?f3 ?f4)
	(bind ?ids (create$ ))
        (loop-for-count (?loop  ?adv  ?paxa_head)do
		(bind ?ids (insert$ ?ids 1 ?loop))
		(bind ?ids (sort > ?ids))
        )
        (assert (has_been_included_in_paxa ?ids))
	(bind ?count (+ ?count 1))
        (assert (count ?count))
	(assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?ids)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	viSeRaNa_viSeRaka-noun	P"?paxa_head	"	PP	"(implode$	?ids)	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. Of her childhood we know very little .
 (defrule vi-viSeRaNa_viSeRaka
 (declare (salience 210))
;(or (relation-anu_ids viSeRaNa-viSeRaNa_viSeRaka  ?paxa_head ?adv)  (relation-anu_ids viSeRaNa-viSeRaka  ?paxa_head ?adv) (relation-anu_ids viSeRya-viSeRaka  ?paxa_head ?adv)  (relation-anu_ids kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka ?paxa_head ?adv))
 (relation-anu_ids  viSeRaNa-viSeRaNa_viSeRaka|viSeRaNa-viSeRaka|viSeRya-viSeRaka|kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka ?paxa_head ?adv)
 ?f3<-(to_be_included_in_paxa ?paxa_head)
 ?f4<-(to_be_included_in_paxa ?adv)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f3 ?f4)
        (bind ?ids (create$ ))
        (loop-for-count (?loop  ?adv  ?paxa_head)do
                (bind ?ids (insert$ ?ids 1 ?loop))
                (bind ?ids (sort > ?ids))
        )
        (assert (has_been_included_in_paxa ?ids))
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?ids)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	vi-viSeRaNa_viSeRaka	P"?paxa_head	"	PP	"(implode$	?ids)	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule getting_ids-complex_prep
 (declare (salience 2))
 (relation-anu_ids   ?rel  ?x ?prep_saM)
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (neq (str-index "_" ?rel)  FALSE))
 (test (or (eq (sub-string 1 5 ?rel) "kriyA") (eq (sub-string 1 7 ?rel) "viSeRya")))
 (test (eq (sub-string (- (length ?rel) 7) 1000 ?rel) "saMbanXI"))
 (not (has_been_decided ?prep_saM))
 ?f<-(id-word ?id ?word)
 (not (has_been_decided ?id))
 ?f1<-(pada_info (group_head_id ?id)(preposition ?p)) ;retracting pada which has prep has head. 
 (test (neq (str-index (str-cat ?word "_") ?rel) FALSE))
 =>

                        (retract ?f )
                        (bind ?*p_list* (create$ ?*p_list* ?id )) ;Getting ids of complex prep Ex: kriyA-along_with_saMbanXI
                        (bind ?*p_list* (sort > ?*p_list*))
                        (printout t ?*p_list*)

 )
 ;It is true that you are my friend but I can not go ALONG WITH you on this issue. 
 ;The people of Orissa are facing grave adversities DUE TO the cyclone. 
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule  add_complex_prep
 (declare (salience 1))
 (relation-anu_ids   ?rel  ?x ?prep_saM)
 ?f1<-(pada_info (group_head_id ?prep_saM)(preposition ?prep))
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (neq (str-index "_" ?rel)  FALSE))
 (test (eq (sub-string (- (length ?rel) 7) 1000 ?rel) "saMbanXI"));relation last part should be saMbanXI else we get kriyA-dummy_subject ,viSeRya-RaRTI_viSeRaNa etc also.
 (not (has_been_decided ?prep_saM))
 =>
        (bind ?len (length ?*p_list*))
           (bind ?pl (str-cat (nth$ 1 ?*p_list*)"_"))
           (loop-for-count (?i 2 ?len) do
                 (if (< ?i ?len) then
                    (bind ?pl (str-cat ?pl (nth$ ?i ?*p_list* )"_"))
                  else
                    (bind ?pl (str-cat ?pl (nth$ ?i ?*p_list* )))
                 )
           )
           (modify ?f1  (preposition  (string-to-field ?pl)))
           (assert (has_been_decided ?prep_saM))
 )
 ;It is true that you are my friend but I can not go ALONG WITH you on this issue. 
 ;The people of Orissa are facing grave adversities DUE TO the cyclone.
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. She runs FAST .
 (defrule kriyA_viSeRaNa
 (relation-anu_ids kriyA-kriyA_viSeRaNa  ?kriyA ?paxa_head)
 ?f<-(count ?count)
 ?f1<-(to_be_included_in_paxa  ?paxa_head)
 =>
	(retract ?f ?f1)
 	(print_in_ctrl_fact_files  ?paxa_head)
	(bind ?count (+ ?count 1))
        (assert (count ?count))
	(assert (has_been_included_in_paxa ?paxa_head))
	(assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?paxa_head)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	kriyA_viSeRaNa	P"?paxa_head	"	PP	"?paxa_head")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. Your house and garden are very attractive.  They were discussing their hopes and dreams. Her hard work and talent will take her to the top. I saw her sister or freind.
 (defrule RaRTI_viSeRaNa_rul_conj_and_or
 (declare (salience 1100))
 (pada_info (group_head_id ?) (group_cat English_PP) (group_ids $?grp_ids) (preposition ?prep))
 ?f0<-(relation-anu_ids viSeRya-RaRTI_viSeRaNa   ?viSeRya  ?RaRTI_viSeRaNa)
 (id-word ?id and|or)
 (test (and (member$ ?viSeRya $?grp_ids)  (member$ ?RaRTI_viSeRaNa $?grp_ids) (member$ ?id $?grp_ids) ))
 ?f<-(count ?count)
 (not (has_been_included_in_paxa $? ?RaRTI_viSeRaNa $?)) ;this conditions stopes from refiring this rule
 (not (has_been_included_in_paxa $? ?viSeRya $?))
 =>
 (retract ?f ?f0)
 (print_in_ctrl_fact_files ?id)
 (print_in_ctrl_fact_files  ?RaRTI_viSeRaNa)
 (bind ?pada_with_and (delete-member$ $?grp_ids ?RaRTI_viSeRaNa)) ;this condition to get the pada ids other then RaRTI_viSeRaNa
 (bind ?RaRTyanwa_pada (nth$ 1 $?grp_ids)) ;this condition to get the pada of RaRTI_viSeRaNa
 (bind ?head (nth$  (length $?grp_ids) $?grp_ids)) ;here v r taking the last 'veSeRya' id as pada_head, because v've more then 1 'veSeRya' in English_PP
 (assert (pada_info (group_head_id ?RaRTyanwa_pada) (group_cat PP) (group_ids  ?RaRTyanwa_pada) (vibakthi kA)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	RaRTI_viSeRaNa_rul_conj_and_or	P"?RaRTyanwa_pada"	PP	"?RaRTyanwa_pada")"crlf)	

 (if (neq ?prep 0) then
 (assert (pada_info (group_head_id ?head) (group_cat PP) (group_ids  ?pada_with_and) (preposition ?prep) ))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	RaRTI_viSeRaNa_rul_conj_and_or	P"?head"	PP	"(implode$	$?grp_ids)	")"crlf)	
 else
 (assert (pada_info (group_head_id ?id) (group_cat PP) (group_ids  ?pada_with_and) ))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	RaRTI_viSeRaNa_rul_conj_and_or	P"?id"	PP	"(implode$	?pada_with_and)	")"crlf)	
 )
 (bind ?count (+ ?count 2))
 (assert (count ?count))
 (assert (has_been_included_in_paxa ?pada_with_and ))
 (assert (has_been_included_in_paxa ?RaRTI_viSeRaNa))
 (assert (has_been_included_in_paxa ?viSeRya ))
)
;----------------------------------------------------------------------------------------------------------------------
 ;Ex. On hearing the news of his father's death Sachin returned back to India .
 (defrule RaRTI_viSeRaNa_paxa
 (declare (salience 1000))
 (pada_info (group_head_id ?) (group_cat English_PP) (group_ids $?grp_ids) (preposition ?prep))
 ?f0<-(relation-anu_ids viSeRya-RaRTI_viSeRaNa   ?viSeRya  ?RaRTI_viSeRaNa)
 (test (and (member$ ?viSeRya $?grp_ids)  (member$ ?RaRTI_viSeRaNa $?grp_ids)))
 ?f<-(count ?count)
 (not (has_been_included_in_paxa $? ?RaRTI_viSeRaNa $?))
 =>
 (retract ?f )
 (print_in_ctrl_fact_files  ?RaRTI_viSeRaNa)
 (assert (viSeRya-RaRTI_viSeRaNa_PF ?viSeRya  ?RaRTI_viSeRaNa))
 (assert (pada_info (group_head_id ?RaRTI_viSeRaNa) (group_cat PP) (group_ids  ?RaRTI_viSeRaNa)(vibakthi kA)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	RaRTI_viSeRaNa_paxa	P"?RaRTI_viSeRaNa"	PP	"?RaRTI_viSeRaNa")"crlf)	
 (assert (has_been_included_in_paxa ?RaRTI_viSeRaNa))
 (bind ?count (+ ?count 1))
 (assert (count ?count))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. On hearing the news of his father's death Sachin returned back to India .
 (defrule viSeRya_paxa
 (declare (salience 1000))
 (pada_info (group_head_id ?) (group_cat English_PP) (group_ids $?grp_ids) (preposition ?prep))
 ?f0<-(relation-anu_ids viSeRya-RaRTI_viSeRaNa   ?viSeRya  ?RaRTI_viSeRaNa)
 (test (and (member$ ?viSeRya $?grp_ids)  (member$ ?RaRTI_viSeRaNa $?grp_ids)))
 ?f<-(count ?count)
 (not (has_been_included_in_paxa $? ?viSeRya $?))
 =>
 (retract ?f)
 (print_in_ctrl_fact_files  ?viSeRya)
 (if (neq ?prep 0) then
 (assert (pada_info (group_head_id ?viSeRya) (group_cat PP) (group_ids  ?viSeRya) (preposition ?prep) ))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	viSeRya_paxa	P"?viSeRya"	PP	"?viSeRya" " ?prep")"crlf)	
  else
  (assert (pada_info (group_head_id ?viSeRya) (group_cat PP) (group_ids  ?viSeRya)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	viSeRya_paxa	P"?viSeRya"	PP	"?viSeRya")"crlf)	
 )
 (assert (has_been_included_in_paxa ?viSeRya))
 (bind ?count (+ ?count 1))
 (assert (count ?count))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. of viSeRya-viSeRaNa: All our beloved sisters are coming .
 ;Ex. of viSeRya-det_viSeRaNa: All our sisters are coming.
 ;Ex. of samAsa: This is my first sentence.
 ;Ex. of viSeRya-saMKyA_viSeRaNa: My three sisters are coming next week.
 (defrule add_viSeRaNa_to_its_viSeRya 
 (declare (salience 1001))
 ?f<-(pada_info (group_head_id ?viSeRya) (group_cat PP) (group_ids $?viSeRya_grp) (preposition ?prep))
 ?f0<-(relation-anu_ids viSeRya-RaRTI_viSeRaNa   ?viSeRya  ?RaRTI_viSeRaNa)
; (or (relation-anu_ids viSeRya-viSeRaNa ?viSeRya ?viSeRaNa)(relation-anu_ids viSeRya-det_viSeRaNa ?viSeRya ?viSeRaNa) (relation-anu_ids samAsa  ?viSeRya ?viSeRaNa) (relation-anu_ids viSeRya-saMKyA_viSeRaNa   ?viSeRya  ?viSeRaNa))
 (relation-anu_ids viSeRya-viSeRaNa|viSeRya-det_viSeRaNa|samAsa|viSeRya-saMKyA_viSeRaNa ?viSeRya ?viSeRaNa) 
 (not (has_been_included_in_paxa $? ?viSeRaNa $?))
  =>
  	(bind ?g (create$ ?viSeRaNa $?viSeRya_grp))
	(bind ?g (sort > ?g))
	(modify ?f  (group_ids  ?g))
 	(assert (has_been_included_in_paxa ?viSeRaNa))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. Police are still hoping to find the dead woman's killer . 
 (defrule add_viSeRaNa_to_its_RaRTI_viSeRaNa
 (declare (salience 1001))
 ?f<-(pada_info (group_head_id ?RaRTI_viSeRaNa) (group_cat PP) (group_ids $?RaRTI_viSeRaNa_grp) (preposition ?prep))
 ?f0<-(relation-anu_ids viSeRya-RaRTI_viSeRaNa   ?viSeRya  ?RaRTI_viSeRaNa)
 (relation-anu_ids viSeRya-viSeRaNa ?RaRTI_viSeRaNa ?viSeRaNa)
 (relation-anu_ids viSeRya-det_viSeRaNa ?RaRTI_viSeRaNa ?det) 
 (not (has_been_included_in_paxa $? ?viSeRaNa $?))
  =>
  (bind ?g (create$ ?det ?viSeRaNa $?RaRTI_viSeRaNa_grp))
  (bind ?g (sort > ?g))
  (modify ?f  (group_ids  ?g))
  (assert (has_been_included_in_paxa ?RaRTI_viSeRaNa))
  (assert (has_been_included_in_paxa ?viSeRaNa))
  (assert (has_been_included_in_paxa ?det))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. The man to WHOSE wife I was speaking was tall. The man TO whose WIFE I was speaking was tall. The man TO WHOSE WIFE I was speaking was tall. The man TO WHOSE SMART WIFE I was speaking was tall.
 (defrule whose
 (declare (salience 490))
 ?f0<-(link_name-lnode-rnode   JQ       ?prep   ?whose)
 (id-word ?whose whose)
 (link_name-link_expansion    ?J   J $?vars)
 ?f1<-(link_name-lnode-rnode   ?J       ?prep   ?paxa_head)
 ?f2<-(to_be_included_in_paxa ?prep)  ?f3<-(to_be_included_in_paxa ?whose)  ?f4<-(to_be_included_in_paxa ?paxa_head) 
 =>
	(print_in_ctrl_fact_files  ?paxa_head)
	(print_in_ctrl_fact_files  ?whose)
	(retract ?f0 ?f2 ?f3 ?f4)
	(bind ?g (create$ ))
	(loop-for-count (?loop (+ ?prep 1) ?paxa_head )do
		(bind ?g (insert$ ?g 1 ?loop))
	)
	(bind ?a (sort > ?g))
	(bind ?b (delete$  ?a  1 1))
	(assert (pada_info (group_head_id ?paxa_head) (group_cat English_PP) (group_ids   ?a) (preposition ?prep)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	whose	P"?paxa_head"	English_PP	"(implode$	(create$ 	?a  ?prep))")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; I went there with his/my/your mother.
; (defrule prep_RaRTI_viSeRaNa
; (declare (salience 495))
; ?f0<-(viSeRya-RaRTI_viSeRaNa   ?paxa_head  ?RaRTI_viSeRaNa)
; (link_name-link_expansion    ?J   J $?vars)
; ?f1<-(link_name-lnode-rnode   ?J       ?prep   ?paxa_head)
; ?f2<-(to_be_included_in_paxa ?prep)  ?f3<-(to_be_included_in_paxa ?RaRTI_viSeRaNa)  ?f4<-(to_be_included_in_paxa ?paxa_head)
; =>
; 	(print_in_ctrl_fact_files  ?paxa_head)
; 	(print_in_ctrl_fact_files  ?RaRTI_viSeRaNa)
;	(retract  ?f3 ?f4)
;        (bind ?g (create$ ))
;        (loop-for-count (?loop (+ ?prep 1) ?paxa_head)do
;        	(bind ?g (insert$ ?g 1 ?loop))
;	)
;        (bind ?a (sort > ?g))
;        (bind ?c (nth$ 1 ?a))
;        (bind ?b (delete$  ?a  1  1))
;        (assert (pada_info (group_head_id ?paxa_head) (group_cat English_PP) (group_ids   ?a) (preposition ?prep)))
;	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	prep_RaRTI_viSeRaNa	P"?paxa_head"	English_PP	"(implode$	(create$	?a  ?prep))")"crlf)	
; )
; ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. We had wasted OUR TIME. We had wasted OUR time. We had wasted our GOOD TIME. This is RAMA'S book. These are STUDENTS' books.
 (defrule RaRTI_viSeRaNa1
 (declare (salience 490))
 ?f0<-(relation-anu_ids viSeRya-RaRTI_viSeRaNa   ?paxa_head  ?RaRTI_viSeRaNa)
 ?f1<-(to_be_included_in_paxa ?RaRTI_viSeRaNa)  ?f2<-(to_be_included_in_paxa ?paxa_head)
 (not (has_been_included_in_paxa $?id ?RaRTI_viSeRaNa $?id1))
 (not (has_been_included_in_paxa $?id ?paxa_head $?id1))
 =>
        (retract ?f1 ?f2 )
        (bind ?g (create$ ))
        (loop-for-count (?loop (+ ?RaRTI_viSeRaNa 1) ?paxa_head )do
                (bind ?g (insert$ ?g 1 ?loop)))
        (bind ?a (sort > ?g))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat English_PP) (group_ids  ?RaRTI_viSeRaNa ?a)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	RaRTI_viSeRaNa1	P"?paxa_head"	English_PP	"(implode$	(create$	?RaRTI_viSeRaNa	?a	)	)	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex: She is even more intelligent than her sister .
 (defrule RaRTI_viSeRaNa5
 (declare (salience 495))
 (relation-anu_ids viSeRya-RaRTI_viSeRaNa   ?paxa_head  ?RaRTI_viSeRaNa)
 (link_name-lnode-rnode Osc ?prep ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?prep) ?f1<-(to_be_included_in_paxa ?RaRTI_viSeRaNa)  ?f2<-(to_be_included_in_paxa ?paxa_head)
 (not (has_been_included_in_paxa $?id ?RaRTI_viSeRaNa $?id1))
 (not (has_been_included_in_paxa $?id ?paxa_head $?id1))
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (print_in_ctrl_fact_files  ?RaRTI_viSeRaNa)
        (retract  ?f0 ?f1 ?f2 )
        (bind ?g (create$ ))
        (loop-for-count (?loop (+ ?RaRTI_viSeRaNa 1) ?paxa_head )do
                (bind ?g (insert$ ?g 1 ?loop)))
        (bind ?a (sort > ?g))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat English_PP) (group_ids  ?RaRTI_viSeRaNa ?a) (preposition ?prep)))
        (assert (pada_info (group_head_id ?RaRTI_viSeRaNa) (group_cat PP) (group_ids  ?RaRTI_viSeRaNa )(vibakthi kA)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	RaRTI_viSeRaNa5	P"?paxa_head"	English_PP	"(implode$	(create$	?prep	?RaRTI_viSeRaNa	?a))")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. The shame of the priest is on all our minds.
 (defrule RaRTI_viSeRaNa2
 (declare (salience 497))
 ?f0<- (relation-anu_ids viSeRya-RaRTI_viSeRaNa   ?paxa_head  ?RaRTI_viSeRaNa)
 ?f1<- (link_name-lnode-rnode ALx  ?all   ?RaRTI_viSeRaNa)
 ?f2<-(to_be_included_in_paxa ?RaRTI_viSeRaNa)  ?f3<-(to_be_included_in_paxa ?paxa_head) ?f4<-(to_be_included_in_paxa ?RaRTI_viSeRaNa) ?f5<-(to_be_included_in_paxa ?RaRTI_viSeRaNa)
 (link_name-lnode-rnode   J   ?prep   ?all)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (print_in_ctrl_fact_files  ?RaRTI_viSeRaNa)
        (retract ?f2 ?f3 ?f4 ?f5)
        (bind ?g (create$ ))
        (loop-for-count (?loop ?all ?paxa_head )do
                (bind ?g (insert$ ?g 1 ?loop)))
        (bind ?a (sort > ?g))
          (assert (pada_info (group_head_id ?paxa_head) (group_cat English_PP) (group_ids   ?a)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	RaRTI_viSeRaNa2	P"?paxa_head"	English_PP	"(implode$	?a	)	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. All our sisters are coming.
 (defrule RaRTI_viSeRaNa3
 (declare (salience 496))
 ?f0<- (relation-anu_ids viSeRya-RaRTI_viSeRaNa   ?paxa_head  ?RaRTI_viSeRaNa)
 ?f1<- (link_name-lnode-rnode ALx  ?all   ?RaRTI_viSeRaNa)
 ?f2<-(to_be_included_in_paxa ?RaRTI_viSeRaNa)  ?f3<-(to_be_included_in_paxa ?paxa_head)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (print_in_ctrl_fact_files  ?RaRTI_viSeRaNa)
        (retract ?f2 ?f3 )
        (bind ?g (create$ ))
        (loop-for-count (?loop ?all ?paxa_head )do
                (bind ?g (insert$ ?g 1 ?loop)))
        (bind ?a (sort > ?g))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat English_PP) (group_ids  ?a)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	RaRTI_viSeRaNa3	P"?paxa_head"	English_PP	"(implode$	(create$	?a	)	)	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. Police are still hoping to find the dead woman's killer.
 (defrule RaRTI_viSeRaNa_det_adj
 (declare (salience 595))
 (relation-anu_ids viSeRya-det_viSeRaNa ?paxa_head ?det)
 (relation-anu_ids viSeRya-viSeRaNa ?paxa_head ?vi)
 (relation-anu_ids viSeRya-RaRTI_viSeRaNa    ?paxa_head1 ?paxa_head)
 ?f1<-(to_be_included_in_paxa ?RaRTI_viSeRaNa)  ?f2<-(to_be_included_in_paxa ?paxa_head) ?f3<-(to_be_included_in_paxa ?det)
 (not (has_been_included_in_paxa $?id ?RaRTI_viSeRaNa $?id1))
 (not (has_been_included_in_paxa $?id ?paxa_head1 $?id1))
 (not (has_been_included_in_paxa $?id ?paxa_head $?id1))
 (not (has_been_included_in_paxa $?id ?det $?id1))
 =>
        (bind ?g (create$ ))
        (loop-for-count (?loop  ?det ?paxa_head1)do
                (bind ?g (insert$ ?g 1 ?loop)))
        (bind ?a (sort > ?g))
        (assert (pada_info (group_head_id ?paxa_head1) (group_cat English_PP) (group_ids  ?a)))
        (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  RaRTI_viSeRaNa_det_adj P"?paxa_head1"   English_PP      "(implode$      (create$        ?a      )       )       ")"crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. My three sisters are coming next week.
 (defrule RaRTI_viSeRaNa4
 (declare (salience 590))
 (relation-anu_ids viSeRya-det_viSeRaNa ?paxa_head ?det)
 (relation-anu_ids viSeRya-RaRTI_viSeRaNa    ?RaRTI_viSeRaNa ?paxa_head)
 (not (id-word ?det a|the|an)) ;ex 4 this cond. His bed was next to the room's only window.
 ?f1<-(to_be_included_in_paxa ?RaRTI_viSeRaNa)  ?f2<-(to_be_included_in_paxa ?paxa_head) ?f3<-(to_be_included_in_paxa ?det)
 (not (has_been_included_in_paxa $?id ?RaRTI_viSeRaNa $?id1))
 (not (has_been_included_in_paxa $?id ?paxa_head $?id1))
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (print_in_ctrl_fact_files  ?RaRTI_viSeRaNa)
        (retract ?f1 ?f2 ?f3)
        (bind ?g (create$ ))
        (loop-for-count (?loop (+ ?RaRTI_viSeRaNa 1) ?paxa_head )do
                (bind ?g (insert$ ?g 1 ?loop)))
        (bind ?a (sort > ?g))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat English_PP) (group_ids  ?RaRTI_viSeRaNa ?a)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	RaRTI_viSeRaNa4	P"?paxa_head"	English_PP	"(implode$	(create$	?RaRTI_viSeRaNa	?a	)	)	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. All the dogs are coming . All these fruits are to be eaten .
 (defrule all-4
 (declare (salience 456))
 (link_name-lnode-rnode Jp  ?all   ?paxa_head)
 (link_name-lnode-rnode ALx  ?all   ?det)
 ?f0<-(to_be_included_in_paxa ?det)  ?f1<-(to_be_included_in_paxa ?paxa_head)
 ?f2<-(to_be_included_in_paxa ?all)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2)
        (bind ?g (create$ ))
        (loop-for-count (?loop ?all ?paxa_head )do
                (bind ?g (insert$ ?g 1 ?loop)))
        (bind ?a (sort > ?g))
        (bind ?b (delete-member$ ?a ?det))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	all-4	P"?paxa_head"	PP	"	?det	"	"	?b	")"crlf)	
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids ?det ?b )))
        (bind ?count (+ ?count 1))
        (assert (count ?count))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. The salaries of the programmers are EXCELLENT. He is TALL.
 (defrule subject_samA 
 (relation-anu_ids  subject-subject_samAnAXikaraNa  ?sub ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 (not (has_been_included_in_paxa $?id ?paxa_head $?id1))
 (not (No complete linkages found))
 =>
 	(print_in_ctrl_fact_files  ?paxa_head)
	(retract ?f ?f0)
	(bind ?count (+ ?count 1))
        (assert (count ?count))
	(assert (has_been_included_in_paxa ?paxa_head))
	(assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?paxa_head)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	subject_samA	P"?paxa_head	"	PP	"(implode$	(create$	?paxa_head))	")"	crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. John Stuart Mill is an important author.
 (defrule subject_PRP
 (declare (salience 4))
 (relation-anu_ids proper_noun-waxviSiRta_proper_noun ?PRP1 ?PRP2)
 (relation-anu_ids proper_noun-waxviSiRta_proper_noun ?PRP2 ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?PRP1)
 ?f1<-(to_be_included_in_paxa ?PRP2)
 ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?paxa_head))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids ?PRP1 ?PRP2 ?paxa_head)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	subject_PRP	P"?paxa_head	"	PP	"(implode$	(create$	?PRP1	?PRP2	?paxa_head))	")"	crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. John Stuart is an important author.
 (defrule subject_PRP_1
 (declare (salience 2))
 (relation-anu_ids proper_noun-waxviSiRta_proper_noun ?PRP2 ?paxa_head)
 ?f1<-(to_be_included_in_paxa ?PRP2)
 ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 (not (has_been_included_in_paxa $?  ?PRP2 $?))
 (not (has_been_included_in_paxa $?  ?paxa_head $?))
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract  ?f ?f1 ?f2)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?paxa_head))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?PRP2 ?paxa_head)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	subject_PRP_1	P"?paxa_head	"	PP	"(implode$	(create$	?PRP2	?paxa_head))	")"	crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. Republican policies only benefit the rich and the powerful. 
 (defrule samAsa
 (declare (salience 5))
 (link_name-lnode-rnode AN ?NP ?paxa_head)
 ?f1<-(to_be_included_in_paxa ?NP)
 ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f1 ?f2)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?paxa_head))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?NP ?paxa_head)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	samAsa	P"?paxa_head	"	PP	"(implode$	(create$	?NP	?paxa_head))	")"	crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. The income tax proposal was rejected. 
 (defrule samAsa_1
 (declare (salience 15))
 (link_name-lnode-rnode AN ?NP  ?paxa_head)
 (link_name-lnode-rnode AN ?NP1 ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?NP)
 ?f1<-(to_be_included_in_paxa ?NP1)
 ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 (test (neq ?NP ?NP1))
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?paxa_head))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?NP ?NP1 ?paxa_head)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	samAsa_1	P"?paxa_head	"	PP	"(implode$	(create$	?NP	?NP1	?paxa_head))	")"	crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. Sunglasses are much more than a fashion accessory.
 (defrule samAsa_2
 (declare (salience 525))
 (link_name-lnode-rnode AN ?NP  ?paxa_head)
 (link_name-lnode-rnode MVt ?v ?prep)
 (link_name-lnode-rnode Osc|Opc ?prep ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?NP)
 ?f1<-(to_be_included_in_paxa ?prep)
 ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
       (print_in_ctrl_fact_files  ?paxa_head)
       (retract ?f ?f0 ?f1 ?f2)
       (bind ?count (+ ?count 1))
       (assert (count ?count))
       (assert (has_been_included_in_paxa ?paxa_head))
       (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?NP ?paxa_head) (preposition ?prep)))
       (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  samAsa_2        P"?paxa_head    "       PP      "(implode$      (create$        ?NP    ?paxa_head ?prep))    ")"     crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. I saw THE COWS.
 (defrule subject_pada
 (or (relation-anu_ids kriyA-subject  ?verb ?paxa_head) (relation-anu_ids kriyA-dummy_subject   ?verb ?paxa_head) (relation-anu_ids kriyA-aBihiwa   ?verb ?paxa_head))
 ?f1<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 (not (No complete linkages found)) 
 (not (has_been_included_in_paxa $?pre ?paxa_head $?post))
 =>
	(print_in_ctrl_fact_files  ?paxa_head)
        (retract  ?f1)
        (bind ?count (+ ?count 1))
	(assert (has_been_included_in_paxa ?paxa_head))
        (assert (count ?count))
	(assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?paxa_head)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	subject_pada	P"?paxa_head	"	PP	"(implode$	(create$	?paxa_head	))	")"	crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. TO PRETEND that our program is usable in its current form would be silly.
 (defrule subject_pada_to_verb
 (declare (salience 400))
 (relation-anu_ids kriyA-subject  ?verb ?paxa_head) 
 (relation-anu_ids kriyA-dummy_subject   ?verb ?paxa_head_1)
 ?f1<-(to_be_included_in_paxa ?paxa_head)
 ?f2<-(to_be_included_in_paxa ?paxa_head_1)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f1 ?f2)
        (bind ?count (+ ?count 1))
        (assert (has_been_included_in_paxa ?paxa_head))
        (assert (count ?count))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids ?paxa_head_1 ?paxa_head)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	subject_pada_to_verb	P"?paxa_head	"	PP	"(implode$	(create$	?paxa_head_1	?paxa_head	))	")"	crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. I saw COWS
 (defrule object_pada
; (or(relation-anu_ids kriyA-object  ?verb ?paxa_head)(relation-anu_ids kriyA-kqxanwa_object  ?verb ?paxa_head)(relation-anu_ids kriyA-object_2  ?verb ?paxa_head)(relation-anu_ids kriyA-object_1  ?verb ?paxa_head))
 (relation-anu_ids kriyA-object|kriyA-kqxanwa_object|kriyA-object_2|kriyA-object_1 ?verb ?paxa_head)
 ?f1<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 (not  (has_been_included_in_paxa $?pre ?paxa_head $?post))
 (not (No complete linkages found))
 =>
	(print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f1)
	(bind ?count (+ ?count 1))
	(assert (has_been_included_in_paxa ?paxa_head))
        (assert (count ?count))
	(assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?paxa_head)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	object_pada	P"?paxa_head	"	PP	"(implode$	(create$	?paxa_head	))	")"	crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. THE GIRLS WORKING in the lab are tired .THE BEAUTIFUL SMART GIRLS WORKING in the lab are tired
 (defrule kqxanwa_pada
 (declare (salience 400))
 ?f0<- (relation-anu_ids viSeRya-det_viSeRaNa  ?paxa_head ?count)
 ?f1<- (relation-anu_ids viSeRya-kqxanwa_viSeRaNa  ?paxa_head ?kqxanwa)
 ?f2<-(to_be_included_in_paxa ?count)
 ?f3<-(to_be_included_in_paxa ?paxa_head)
 ?f4<-(to_be_included_in_paxa ?kqxanwa)
 ?f<-(count ?count)
 =>
	(print_in_ctrl_fact_files  ?paxa_head)
	(retract ?f ?f0 ?f1 ?f2 ?f3 ?f4)
        (bind ?ids (create$ ))
        (loop-for-count (?loop  ?count  ?kqxanwa)do
		(bind ?ids (insert$ ?ids 1 ?loop))
		(bind ?ids (sort > ?ids))
         )
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?ids)))
        (assert (has_been_included_in_paxa ?ids))
	(bind ?count (+ ?count 1))
        (assert (count ?count))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	kqxanwa_pada	P"?paxa_head	"	PP	"(implode$	?ids)	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. ALL/BOTH THE GIRLS WORKING in the lab are tired. ALL/BOTH THE BEAUTIFUL SMART GIRLS WORKING in the lab are tired
 (defrule kqxanwa_pada_AL
 (declare (salience 510))
 ?f0<- (relation-anu_ids viSeRya-det_viSeRaNa  ?paxa_head ?count)
 ?f1<- (relation-anu_ids viSeRya-kqxanwa_viSeRaNa  ?paxa_head ?kqxanwa)
 (id-word ?count all|both)
 ?f2<-(to_be_included_in_paxa ?count)
 ?f3<-(to_be_included_in_paxa ?paxa_head)
 ?f4<-(to_be_included_in_paxa ?kqxanwa)
 ?f<-(count ?count)
 =>
	(print_in_ctrl_fact_files  ?paxa_head)
	(retract ?f ?f0 ?f1 ?f2 ?f3 ?f4)
        (bind ?ids (create$ ))
        (loop-for-count (?loop  ?count  ?kqxanwa)do
		(bind ?ids (insert$ ?ids 1 ?loop))
		(bind ?ids (sort > ?ids))
	)
	(assert (has_been_included_in_paxa ?ids))
	(bind ?count (+ ?count 1))
        (assert (count ?count))
	(assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?ids)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	kqxanwa_pada_AL	P"?paxa_head	"	PP	"(implode$	?ids)	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ; Ex. A man , apparently in a bad mood , was THERE.
 (defrule lupwa_prep
 (relation-anu_ids kriyA-aXikaraNavAcI_avyaya  ?kriyA ?paxa_head)  ; kriyA-lupwa_prep_saMbanXI  is now changed to kriyA-aXikaraNavAcI_avyaya (Modified by Roja 28-12-10 Suggested by Sukhada)
 ?f0<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
	(print_in_ctrl_fact_files  ?paxa_head)
	(retract ?f ?f0)
	(bind ?count (+ ?count 1))
	(assert (has_been_included_in_paxa ?paxa_head))
        (assert (count ?count))
	(assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?paxa_head)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	lupwa_prep	P"?paxa_head	"	PP	"(implode$	(create$	?paxa_head	))	")"	crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. They seem to resemble each other . 
 (defrule to_infinitive
 (declare (salience 220)) ;Suggested by Sukhada(22-02-11)I had to run fast to catch the bus. 
 (id-word ?id_to to)
 (or (link_name-lnode-rnode I ?id_to ?paxa_head) (link_name-lnode-rnode Ix ?id_to ?paxa_head)(link_name-lnode-rnode If ?id_to ?paxa_head) (link_name-lnode-rnode I*a ?id_to ?paxa_head))
 ?f0<-(to_be_included_in_paxa ?id_to)
 ?f1<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 (not (has_been_included_in_paxa ?paxa_head))
 (not (has_been_included_in_paxa ?id_to))
 =>
	(retract ?f ?f0 ?f1)
	(print_in_ctrl_fact_files  ?paxa_head)
	(bind ?count (+ ?count 1))
        (assert (count ?count))
	(assert (has_been_included_in_paxa ?paxa_head))
	(assert (pada_info (group_head_id ?paxa_head) (group_cat infinitive) (group_ids ?id_to ?paxa_head)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	to_infinitive	P"?paxa_head	"	to_infinitive	"	?id_to"	"?paxa_head	")"	crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex.  A party is taking place so if you would like to show up you should do so.
 (defrule to_infinitive_1
 (declare (salience 5))
 (id-word ?id_to to)
 (or (link_name-lnode-rnode I ?id_to ?paxa_head) (link_name-lnode-rnode Ix ?id_to ?paxa_head)(link_name-lnode-rnode If ?id_to ?paxa_head))
 (link_name-link_expansion ?ID  I D $?)
 (link_name-lnode-rnode ?ID  ?v ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?id_to)
 ?f1<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (retract ?f ?f0 ?f1 )
        (print_in_ctrl_fact_files  ?paxa_head)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?paxa_head))
        (assert (has_been_included_in_paxa ?id_to))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat infinitive) (group_ids ?id_to ?v  ?paxa_head)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	to_infinitive_1	P"?paxa_head	"	to_infinitive_1	"	?id_to"	"?v"	"?paxa_head	")"	crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule kriyA-kriyA_mUla
 (relation-anu_ids kriyA-kriyA_mUla ?kriya ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (retract ?f ?f0)
        (print_in_ctrl_fact_files  ?paxa_head)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
	(assert (has_been_included_in_paxa ?paxa_head))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids ?paxa_head)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	kriyA-kriyA_mUla	P"?paxa_head	"	PP	"	?paxa_head	")"	crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. There is no reason to get so upset about it.
 (defrule kriyA-kriyA_mUla_1
 (declare (salience 500))
 (relation-anu_ids to-infinitive  ?to ?kriyA)
 (relation-anu_ids kriyA-kriyA_mUla ?kriyA ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (retract ?f ?f0)
        (print_in_ctrl_fact_files  ?kriyA)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?paxa_head))
        (assert (has_been_included_in_paxa ?kriyA))
        (assert (has_been_included_in_paxa ?to))
        (assert (pada_info (group_head_id ?kriyA) (group_cat infinitive) (group_ids ?to ?paxa_head ?kriyA)))
        (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  kriyA-kriyA_mUla_1        P"?kriyA    "	infinitive      " (implode$      (create$    ?to ?paxa_head ?kriyA))")"     crlf)   
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (01-03-11)
 ;How many people did you see?
 (defrule idiom_with_viSeRya
 (declare (salience 6))
 (or (relation-anu_ids idiom_type_1 ?x ?y) (relation-anu_ids idiom_type_2 ?x ?y))
 (relation-anu_ids viSeRya-det_viSeRaNa ?paxa_head ?x)
 ?f0<-(to_be_included_in_paxa ?x)
 ?f1<-(to_be_included_in_paxa ?paxa_head)
 ?f2<-(to_be_included_in_paxa ?y)
 (not (has_been_included_in_paxa $?id ?x $?id1)) ; ex. I had been away for a few days so I had a lot of post waiting for me.
 (not (has_been_included_in_paxa $?id ?paxa_head $?id1))
 (not (has_been_included_in_paxa $?id ?y $?id1))
 ?f<-(count ?count)
 =>
        (retract ?f ?f0 ?f1 ?f2)
        (print_in_ctrl_fact_files  ?paxa_head)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?paxa_head))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids ?y  ?x ?paxa_head)))
        (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  idiom_type      P"?paxa_head    "       PP      "       ?x      "       "       ?paxa_head      ")"     crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule idiom_type
 (declare (salience 3));Added by Shirisha Manju Ex: I told him by telephone that I was coming by car.
; (or (relation-anu_ids idiom_type_1 ?x ?paxa_head) (relation-anu_ids  idiom_type_2 ?x ?paxa_head))
 (relation-anu_ids idiom_type_1|idiom_type_2 ?x ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?x)
 ?f1<-(to_be_included_in_paxa ?paxa_head)
 (not (has_been_included_in_paxa $?id ?x $?id1)) ; ex. I had been away for a few days so I had a lot of post waiting for me.
 (not (has_been_included_in_paxa $?id ?paxa_head $?id1))
 (id-word ?x how|by|a|next|according|the|one|each)
 ?f<-(count ?count)
 =>
        (retract ?f ?f0 ?f1)
        (print_in_ctrl_fact_files  ?paxa_head)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
	(assert (has_been_included_in_paxa ?paxa_head))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids ?x ?paxa_head)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	idiom_type	P"?paxa_head	"	PP	"	?x	"	"	?paxa_head	")"	crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule idiom_type_2
 (declare (salience 150))
 (relation-anu_ids idiom_type_1|idiom_type_2 ?x ?y)
 (relation-anu_ids idiom_type_1|idiom_type_2 ?y ?z)
 (relation-anu_ids idiom_type_1|idiom_type_2 ?z ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?x)
 ?f1<-(to_be_included_in_paxa ?y)
 ?f3<-(to_be_included_in_paxa ?z)
 ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (retract ?f ?f0 ?f1 ?f2 ?f3)
        (print_in_ctrl_fact_files  ?paxa_head)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?paxa_head))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids ?x ?y ?z ?paxa_head)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	idiom_type_2	P"?paxa_head	"	PP	"	?x	"	"	?y	"	"?z	"	"	?paxa_head	")"	crlf)	
 )
 ;by default we have taken the last id as head_id. 

 ;(root-verbchunk-tam-chunkids  ? ? ?  $?chunk_ids ?paxa_head)

 ;EX. From in back of the shed I heard a scream that seemed to come from on top of the garage
 (defrule idiom_type_3
 (declare (salience 750))
 (link_name-link_expansion ?ID  I D $?var)
 (link_name-lnode-rnode ?ID  ?prep1 ?paxa_head)
 (link_name-link_expansion ?ID1  I D $?va)
 (link_name-lnode-rnode ?ID1  ?paxa_head ?prep2)
 (link_name-lnode-rnode FM  ?prep ?prep2)
 ?f0<-(to_be_included_in_paxa ?prep)
 ?f1<-(to_be_included_in_paxa ?prep1)
 ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (retract ?f ?f0 ?f1 ?f2)
        (print_in_ctrl_fact_files  ?paxa_head)
	(bind ?prp (explode$ (str-cat ?prep1 "_" ?prep)))
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?paxa_head))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids ?paxa_head))(preposition ?prp) )
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	idiom_type_3	P"?paxa_head	"	PP	"	?paxa_head"	"?prp")"	crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex.  He told me that even his mother likes me. He told me that even he likes me.
 (defrule even
 (declare (salience 491))
 ?f0<-(link_name-lnode-rnode   Rnx       ?even   ?paxa_head )
 (id-word ?even even)
 ?f1<-(to_be_included_in_paxa ?even)  ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?even))
        (assert (has_been_included_in_paxa ?paxa_head))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	even	P"?paxa_head	"	PP	"?paxa_head"	"?even")"crlf)	
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids   ?paxa_head ?even)))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex.  He is stronger TAHN ME. He is more intelligent THAN ATTRACTIVE.
 (defrule more_than 
 (declare (salience 491))
 (or (link_name-link_expansion    ?O  O ? c) (link_name-lnode-rnode    Pafc     ?t  ?prep))
 ?f0<-(link_name-lnode-rnode   ?O       ?than  ?paxa_head)
 (id-word ?than than)
 ?f1<-(to_be_included_in_paxa ?than)  ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 (not (relation-anu_ids  viSeRya-RaRTI_viSeRaNa  ?paxa_head ?))
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?than))
        (assert (has_been_included_in_paxa ?paxa_head))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	more_than	P"?paxa_head	"	PP	"?paxa_head"	"?than")"crlf)	
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids   ?paxa_head)(preposition ?than)))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex.  We do this more for pleasure than for money.
 (defrule more_than1
 (declare (salience 491))
 (link_name-lnode-rnode   MVt       ?v  ?t)
 (or (link_name-lnode-rnode    MVpt     ?t  ?prep) (link_name-lnode-rnode    Pafc     ?t  ?prep))
 (link_name-link_expansion    ?J  J $?vars)
 (link_name-lnode-rnode   ?J       ?prep   ?paxa_head)
 (id-word ?than than)
 ?f0<-(to_be_included_in_paxa ?t)  ?f1<-(to_be_included_in_paxa ?prep)  ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?t))
        (assert (has_been_included_in_paxa ?prep))
        (assert (has_been_included_in_paxa ?paxa_head))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	more_than1	P"?paxa_head	"	PP	"?paxa_head"	"?prep"	"?t")"crlf)	
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids   ?paxa_head ?prep ?t)))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex.  Jerry has more than five dollars. 
 (defrule more_than2
 (declare (salience 495))
 (link_name-lnode-rnode   MVt   ?v  ?t)
 (link_name-lnode-rnode    Om   ?v  ?obj) 
 (link_name-link_expansion  ?O  O ? c)
 (link_name-lnode-rnode   ?O    ?t   ?paxa_head)
 (link_name-link_expansion    ?D D $?va)
 (link_name-lnode-rnode   ?D       ?det   ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?t)  ?f1<-(to_be_included_in_paxa ?det)  ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?t))
        (assert (has_been_included_in_paxa ?det))
        (assert (has_been_included_in_paxa ?paxa_head))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	more_than2	P"?paxa_head	"	PP	"?det"	"?paxa_head"	"?t")"crlf)	
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids   ?det ?paxa_head) (preposition ?t)))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. Gorge is five years older than Margaret. 
 (defrule more_than3
 (declare (salience 495))
 (link_name-link_expansion  ?O  O ? t)
 (link_name-lnode-rnode   ?O    ?v   ?x)
 (link_name-link_expansion    ?D D $?va)
 (link_name-lnode-rnode   ?D       ?det   ?x)
 (link_name-lnode-rnode   Mam       ?x ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?x)  ?f1<-(to_be_included_in_paxa ?det)  ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?x))
        (assert (has_been_included_in_paxa ?det))
        (assert (has_been_included_in_paxa ?paxa_head))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	more_than3	P"?paxa_head	"	PP	"?det"	"?x"	"?paxa_head")"crlf)	
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?det ?x ?paxa_head)))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. I wonder how quickly Jane ran. How important is it to turn the computer off. 
 (defrule kriyA_vi_vi
 (declare (salience 495))
; (or (relation-anu_ids  kriyA_viSeRaNa-viSeRaka ?paxa_head ?x) (relation-anu_ids  viSeRya-kiwanA_viSeRaNa  ?paxa_head ?x))
 (relation-anu_ids kriyA_viSeRaNa-viSeRaka|viSeRya-kiwanA_viSeRaNa ?paxa_head ?x)
 ?f0<-(to_be_included_in_paxa ?x)  ?f1<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?x))
        (assert (has_been_included_in_paxa ?paxa_head))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	kriyA_vi_vi	P"?paxa_head	"	PP	"?x"	"?paxa_head")"crlf)	
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?x ?paxa_head)))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. That our program will be immediately accepted is hardly likely.
 (defrule kriyA_vi_s-s
 (declare (salience 495))
 (relation-anu_ids  viSeRaNa-viSeRaNa_viSeRaka ?paxa_head ?x) 
 (relation-anu_ids  subject-subject_samAnAXikaraNa ?y ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?x)  ?f1<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?x))
        (assert (has_been_included_in_paxa ?paxa_head))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	kriyA_vi_s-s	P"?paxa_head	"	PP	"?x"	"?paxa_head")"crlf)	
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?x ?paxa_head)))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. Someone is mugged in New York every five minutes. We swim every three weeks.
 (defrule MVpn-Ye
 (declare (salience 495))
 (link_name-lnode-rnode   MVpn   ?v   ?x)
 (link_name-lnode-rnode   Ye    ?x ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?x)  ?f1<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
	(bind ?g (create$ ))
        (loop-for-count (?loop ?x ?paxa_head )do
                (bind ?g (insert$ ?g 1 ?loop))
                (bind ?g (sort > ?g))
        )
        (assert (has_been_included_in_paxa ?g))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	MVpn-Ye	P"?paxa_head	"	PP	"(implode$ ?g ) ")"crlf)
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?g) (vibakthi  meM)))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex.  How much more efficient are they. How stupid can you be
 (defrule EAh_EEh
 (declare (salience 495))
 (or (link_name-lnode-rnode   EEh  ?x ?paxa_head) (link_name-lnode-rnode   EAh  ?x ?paxa_head)  (link_name-lnode-rnode   EAm  ?x ?paxa_head))
 ?f0<-(to_be_included_in_paxa ?x)  ?f1<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?x))
        (assert (has_been_included_in_paxa ?paxa_head))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	EAh_EEh	P"?paxa_head	"	PP	"?x"	"?paxa_head")"crlf)	
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?x ?paxa_head) ))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex.The President announced on Monday that several more bases would be closed.
 (defrule det-sankhya
 (declare (salience 459))
 (relation-anu_ids  viSeRya-saMKyA_viSeRaNa    ?vi   ?sa-vi)
 (relation-anu_ids  viSeRya-det_viSeRaNa    ?paxa_head ?vi)
 ?f0<-(to_be_included_in_paxa ?vi)
 ?f1<- (to_be_included_in_paxa ?sa-vi)
 ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2)
        (bind ?ids (create$ ))
        (loop-for-count (?loop  ?sa-vi  ?paxa_head)do
                (bind ?ids (insert$ ?ids 1 ?loop))
                (bind ?ids (sort > ?ids))
        )
        (assert (has_been_included_in_paxa ?ids))
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?ids) ))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	det-sankhya	P"?paxa_head	"	PP	"(implode$	?ids)	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. They are building a gigantic mall five miles from here.
 (defrule vi-sankhya
 (relation-anu_ids  viSeRya-saMKyA_viSeRaNa    ?vi   ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?vi)
 ?f1<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 )
        (assert (has_been_included_in_paxa ?vi))
        (assert (has_been_included_in_paxa ?paxa_head))
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?paxa_head ?vi) ))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	vi-sankhya	P"?paxa_head	"	PP	"(implode$	(create$	?paxa_head	?vi))	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. I saw him three weeks ago. He is twenty years old.
 (defrule vi-sankhya_1
 (declare (salience 501))
 (link_name-link_expansion    ?Yt  Y t $?vars)
 (link_name-lnode-rnode   ?Yt    ?x ?paxa_head)
 (link_name-lnode-rnode   ND    ?a ?x)
 (link_name-lnode-rnode   MVa|Pa|Paf|Pam    ?z ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?a)
 ?f1<-(to_be_included_in_paxa ?x)
 ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2)
        (assert (has_been_included_in_paxa ?a))
        (assert (has_been_included_in_paxa ?x))
        (assert (has_been_included_in_paxa ?paxa_head))
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?a ?x ?paxa_head) ))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	vi-sankhya_1	P"?paxa_head	"	PP	"(implode$	(create$	?a	?x	?paxa_head	))	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
  ;Added by sheetal.
 ;Neither Mary nor Louise are coming to the party .Neither I nor my friend knows what happened .
 (defrule neither_nor
 (declare (salience 510))
 (relation-anu_ids  kriyA-subject  ?kriya ?sub)
 (relation-anu_ids  kriyA-subject  ?kriya ?paxa_head)
 (id-word ?id neither)
 (id-word ?id1 nor)
 (test (< ?id ?sub))
 (test (< ?sub ?id1))
 (test (< ?id1 ?paxa_head))
 ?f1<-(to_be_included_in_paxa ?id)
 ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
	(print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f1 ?f2)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (bind $?ids (create$ ))
        (loop-for-count (?loop ?id  ?paxa_head )do
                        (bind $?ids (insert$ $?ids 1 ?loop))
                        (assert (has_been_included_in_paxa ?loop))
                        (bind $?ids (sort > $?ids))
        )
        (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  neither_nor    P"?paxa_head"   PP      "(implode$ $?ids)    ")"     crlf)
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  $?ids)))
  )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by sheetal.
 (defrule neither_nor_with_obj
 (declare (salience 510))
 (relation-anu_ids  kriyA-object  ?kriya ?obj)
 (relation-anu_ids  kriyA-object  ?kriya ?paxa_head)
 (id-word ?id neither)
 (id-word ?id1 nor)
 (test (and (< ?id ?obj)(< ?obj ?id1)(< ?id1 ?paxa_head)))
 ?f1<-(to_be_included_in_paxa ?id)
 ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
 (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f1 ?f2)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (bind $?ids (create$ ))
        (loop-for-count (?loop ?id  ?paxa_head )do
                        (bind $?ids (insert$ $?ids 1 ?loop))
                        (assert (has_been_included_in_paxa ?loop))
                        (bind $?ids (sort > $?ids))
        )
        (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  neither_nor_with_obj    P"?paxa_head"   PP      "(implode$ $?ids)    ")"     crlf)
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  $?ids)))
  )
;They speak neither French nor German but a curious mixture of the two.(see this sentence in 3rd linkage.)
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. Rama and Mohan went to the shop. Rama, Mohan, Shyam  and Gita went to the school.
 (defrule and_pada
 (declare (salience 1501))
; (or (relation-anu_ids  kriyA-subject  ?kriya ?paxa_head) (relation-anu_ids  kriyA-object  ?kriya ?paxa_head) (relation-anu_ids  to-infinitive  ?kriya ?paxa_head) (relation-anu_ids  subject-subject_samAnAXikaraNa ?kriyA ?paxa_head) (relation-anu_ids  object-object_samAnAXikaraNa ?kriyA ?paxa_head) (relation-anu_ids  kriyA-aBihiwa  ?kriyA ?paxa_head)) 
 (relation-anu_ids  kriyA-subject|kriyA-object|to-infinitive|subject-subject_samAnAXikaraNa|object-object_samAnAXikaraNa|kriyA-aBihiwa ?kriyA ?paxa_head)
 (conjunction-components  ?paxa_head $?ids)
 (id-word ?paxa_head and|or)
 ?f2<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 (not (has_been_included_in_paxa $? ?paxa_head $?))
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f2 )
        (bind ?count (+ ?count 1))
        (assert (count ?count))
	(bind ?g (create$ ?paxa_head $?ids))
	(bind ?g (sort > ?g))
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids   ?g)))
	(assert (has_been_included_in_paxa ?g))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	and_sub	P"?paxa_head	"	PP	"(implode$	(create$	?g))	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule add_viSeRaNa_to_and_viSeRya 
 (declare (salience 1502))
 ?f<-(pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids $?viSeRya_grp))
 (id-word ?paxa_head and|or)
 (conjunction-components  ?paxa_head $?ids)
; (or (relation-anu_ids  viSeRya-viSeRaNa ?x ?viSeRaNa)(relation-anu_ids  viSeRya-det_viSeRaNa ?x ?viSeRaNa) (relation-anu_ids  viSeRya-RaRTI_viSeRaNa   ?x  ?viSeRaNa))
 (relation-anu_ids viSeRya-viSeRaNa|viSeRya-det_viSeRaNa|viSeRya-RaRTI_viSeRaNa ?x  ?viSeRaNa)
 (test (member$ ?x $?ids))
 (test (eq (member$  ?viSeRaNa  $?viSeRya_grp) FALSE))
  =>
  (if (member$ ?x $?viSeRya_grp) then
  (bind ?g (create$ ?viSeRaNa $?viSeRya_grp))
  else
  (bind ?g (create$ ?viSeRaNa ?x $?viSeRya_grp)))
  (bind ?g (sort > ?g))
  (modify ?f  (group_ids  ?g))
  (assert (has_been_included_in_paxa ?g))
  (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids	add_viSeRaNa_to_and_viSeRya	P"?paxa_head    "       PP      "(implode$      (create$        ?g ))   ")"crlf)
 )
;Ex. Are he and I friends?
;Ex. Then one day a man and woman came to the barn. My dog cat horse and mouse and his cow left.
;Ex. They were discussing their hopes and dreams.
;Ex. He is a devoted husband and a father. There is a dog and a cat here. There are three boys and four girls in the park.
;Ex. My dog cat horse and mouse and his cow left.
;Ex. Rama ate apples, a banana and a papaya. 3rd linkage of this sentence is correct. 
;Ex. Rama ate an apple, a banana and a papaya. 5th linkage of this sentence is correct. Rama ate my apples, a banana and a papaya. 3rd linkage of this sentence is correct. 
;Ex.  We should teach children how to read, write and play.
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule RaRTI_viSeRaNa_rule
 (declare (salience -100))
 (relation-anu_ids  viSeRya-RaRTI_viSeRaNa  ? ?paxa_head)
 ?f<-(pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  $?ids)(vibakthi ?vib))
 (test (eq ?vib 0))
 =>
  (modify ?f (vibakthi kA))
 )
 ;----------------------------------------------------------------------------------------------------------------------
  (defrule PP_rule_NCL
  (declare (salience 100))
  (No complete linkages found)
  ?f0<-(chunk_ids PP $?ids ?id)
  ?f1<-(chunk_ids NP $?ids1)
  (test (eq (nth$ 1 $?ids1) (+ ?id 1)))
  ?f2<-(to_be_included_in_paxa ?id)
  =>
	(retract ?f0 ?f1 ?f2)
	(bind ?paxa_head (nth$ (length  $?ids1 ) $?ids1))
	(assert (pada_info (group_head_id ?paxa_head)(group_cat PP )(group_ids $?ids1)(preposition  ?id)))
	(print_in_ctrl_fact_files  ?paxa_head)
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	PP_rule_NCL	P"?paxa_head	"	PP	"(implode$	(create$	$?ids1))	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;(chunk_ids VP 2) (chunk_ids ADJP 3)
 ; She is sleeping.
  (defrule ADJP_rule_NCL
  (declare (salience 100))
  (No complete linkages found)
  ?f0<-(chunk_ids VP $?ids ?id)
  ?f1<-(chunk_ids ADJP $?ids1)
  (test (eq (nth$ 1 $?ids1) (+ ?id 1)))
  ?f2<-(to_be_included_in_paxa ?id)
  =>
	(retract ?f0 ?f1)
	(bind ?paxa_head (nth$ (length  $?ids1 ) $?ids1))
	(assert (pada_info (group_head_id ?paxa_head)(group_cat PP )(group_ids $?ids1)(preposition  ?id)))
	(print_in_ctrl_fact_files  ?paxa_head)
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	ADJP_rule_NCL	P"?paxa_head	"	PP	"(implode$	(create$	$?ids1))	")"crlf)	
 )
 ;----------------------------------------------------------------------------------------------------------------------
  ;other than VP by default all other category are taken as PP
     ;Ex::"Notice that when you look your car's speedometer , it only tells you the speed at which you are traveling . "
     ;that---->here is comp---->avyaya-->so,taken as PP
     ;when---->ADVP--->PP
 (defrule NP_VP_rule_NCL
 (No complete linkages found)
 (chunk_ids ?cat $?ids ?head_id)
 ?f2<-(to_be_included_in_paxa ?head_id)
 =>
     (if (eq ?cat VP) then
      (assert (pada_info (group_head_id ?head_id )(group_cat VP)(group_ids $?ids ?head_id)(preposition 0)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	NP_VP_rule_NCL	P"?head_id	"	VP	"(implode$	(create$	$?ids	?head_id))	")"crlf)	
      else
      (assert (pada_info (group_head_id ?head_id )(group_cat PP)(group_ids $?ids ?head_id)(preposition 0)))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	NP_VP_rule_NCL	P"?head_id	"	PP	"(implode$	(create$	$?ids	?head_id))	")"crlf)	
    )
   (print_in_ctrl_fact_files  ?head_id)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. Each one of them recorded the narratives from twenty participants.
 (defrule Ds_Mp_J
 (declare (salience 695))
 (link_name-link_expansion ?D  D $?var)
 (link_name-lnode-rnode   ?D   ?x   ?paxa_head)
 (link_name-lnode-rnode   Mp   ?paxa_head ?y)
 (link_name-link_expansion ?J  J $?vars)
 (link_name-lnode-rnode   ?J       ?y   ?z)
 (id-word ?x someone|none|each|everyone|all|most|few|almost)
 ?f0<-(to_be_included_in_paxa ?x)  ?f1<-(to_be_included_in_paxa ?paxa_head) ?f2<-(to_be_included_in_paxa ?y) ?f3<-(to_be_included_in_paxa ?z) 
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2 ?f3)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?x))
        (assert (has_been_included_in_paxa ?y))
        (assert (has_been_included_in_paxa ?z))
        (assert (has_been_included_in_paxa ?paxa_head))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	Ds_Mp_J	P"?paxa_head	"	PP	"?x"	"	?y"	"?z"	"	?paxa_head")"crlf)	
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?x ?y ?z ?paxa_head)))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. Most of them have already been noted by various scholars in the course of their investigations on individual languages
 (defrule Mp_J
 (declare (salience 715))
 (link_name-lnode-rnode   Mp  ?paxa_head   ?y)
 (link_name-link_expansion ?J  J $?vars)
 (link_name-lnode-rnode   ?J       ?y   ?z)
 ?f0<-(to_be_included_in_paxa ?z) ?f1<-(to_be_included_in_paxa ?paxa_head) ?f2<-(to_be_included_in_paxa ?y) 
 ?f<-(count ?count)
 (id-word ?paxa_head someone|none|each|everyone|all|most|few|almost)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?z))
        (assert (has_been_included_in_paxa ?y))
        (assert (has_been_included_in_paxa ?paxa_head))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	Mp_J	P"?paxa_head	"	PP	"?z"	"	?y"	"	?paxa_head")"crlf)	
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?z ?y ?paxa_head)))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. She viewed him AS STUPID.
 (defrule AZ_Pa
 (declare (salience 715))
 (link_name-lnode-rnode   AZ  ?x   ?y)
 (link_name-link_expansion ?Pa  P a $?vars)
 (link_name-lnode-rnode   ?Pa       ?y   ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?y) ?f1<-(to_be_included_in_paxa ?paxa_head) 
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 )
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?y))
        (assert (has_been_included_in_paxa ?paxa_head))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	AZ_Pa	P"?paxa_head	"	PP	"?paxa_head	"	"?y")"crlf)	
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?paxa_head) (preposition ?y)))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex.he is good enough.
 (defrule EF
 (link_name-lnode-rnode   EF  ?paxa_head   ?y)
 ?f0<-(to_be_included_in_paxa ?y) ?f1<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 )
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?y))
        (assert (has_been_included_in_paxa ?paxa_head))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	EF	P"?paxa_head	"	PP	"?paxa_head	"	"?y")"crlf)	
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?paxa_head) (preposition ?y)))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. He lives two thirds of a mile from here.
 (defrule NW_NF_NJ
 (declare (salience 515))
 (link_name-lnode-rnode   NW  ?a   ?b)
 (link_name-lnode-rnode   NF  ?b   ?c)
 (link_name-lnode-rnode   NJ  ?c ?paxa_head)
 (link_name-lnode-rnode   NSa  ?d ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?a) ?f1<-(to_be_included_in_paxa ?b)  ?f2<-(to_be_included_in_paxa ?c) ?f3<-(to_be_included_in_paxa ?d) ?f4<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1 ?f2 ?f3 ?f4)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?a))
        (assert (has_been_included_in_paxa ?b))
        (assert (has_been_included_in_paxa ?c))
        (assert (has_been_included_in_paxa ?d))
        (assert (has_been_included_in_paxa ?paxa_head))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	NW_NF_NJ	P"?paxa_head	"	PP	"?a"	"?b"	"?d"	"?paxa_head")"crlf)	
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?a ?b ?d ?paxa_head) (vibakthi kI_xUrI_para)))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex.  As president of the company , it is my decision.
 (defrule TI
 (declare (salience 515))
 (link_name-link_expansion ?CO  C O $?vars)
 (link_name-lnode-rnode   ?CO       ?prep   ?x)
 (link_name-lnode-rnode   TI  ?prep ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?prep) ?f1<-(to_be_included_in_paxa ?paxa_head)
 ?f<-(count ?count)
 =>
        (print_in_ctrl_fact_files  ?paxa_head)
        (retract ?f ?f0 ?f1)
        (bind ?count (+ ?count 1))
        (assert (count ?count))
        (assert (has_been_included_in_paxa ?prep))
        (assert (has_been_included_in_paxa ?paxa_head))
	(printout	?*dbug*	"(Rule_name-pada_head_id-pada_type-ids	TI	P"?paxa_head	"	PP	"?paxa_head"	"?prep")"crlf)	
        (assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids  ?paxa_head) (vibakthi kI_hEsiyawa_se)))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Ex. The computer is in front of the table.
 (defrule complex_prep-noun1
 (declare (salience 479))
 (link_name-link_expansion ?ID I D  $?vars)
 (link_name-lnode-rnode ?ID ?prep ?prep1)
 (link_name-link_expansion ?ID1 I D  $?var) 
 (link_name-lnode-rnode ?ID1 ?prep1 ?prep2)
 (link_name-lnode-rnode Js|Jp|J|JG|Jw|IN|ON|Jm ?prep2 ?paxa_head)
 ?f0<-(to_be_included_in_paxa ?prep)
 ?f1<-(to_be_included_in_paxa ?prep1)
 ?f2<-(to_be_included_in_paxa ?prep2)
 ?f3<-(to_be_included_in_paxa ?paxa_head)
 (not (has_been_included_in_paxa $?id ?prep $?id1))
 (not (has_been_included_in_paxa $?id ?prep1 $?id1))
 (not (has_been_included_in_paxa $?id ?prep2 $?id1))
 (not (has_been_included_in_paxa $?id ?paxa_head $?id1))
 ?f<-(count ?count)
 =>
	(print_in_ctrl_fact_files ?paxa_head)
	(retract ?f ?f0 ?f1 ?f2)
	(bind ?prp (string-to-field(str-cat ?prep "_" ?prep1 "_" ?prep2)))
	(bind ?ids (create$ ))
	(loop-for-count (?loop (+ ?prep2 1) ?paxa_head)do
		(bind ?ids (insert$ ?ids 1 ?loop))
		(bind ?ids (sort > ?ids))
	)
	(assert (has_been_included_in_paxa ?ids))
	(assert (has_been_included_in_paxa ?prep))
	(assert (has_been_included_in_paxa ?prep1))
	(assert (has_been_included_in_paxa ?prep2))
	(bind ?count (+ ?count 1))
	(assert (count ?count))
	(assert (pada_info (group_head_id ?paxa_head) (group_cat PP) (group_ids ?ids) (preposition ?prp)))
	(printout ?*dbug* "(Rule_name-pada_head_id-pada_type-ids complex_prep-noun1 P"?paxa_head " PP "(implode$ (create$ ?ids ?prp))")"crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
