 ;Added by Shirisha Manju (19-11-11)
 (deffunction never-called ()
 (assert (hindi_id_order))
 (assert (id-Apertium_output))
 (assert (id-left_punctuation))
 (assert (id-right_punctuation))
 (assert (hid-punc_head-left_punctuation))
 (assert (hid-punc_head-right_punctuation))
 (assert (id-HM-source))
 (assert (id-inserted_sub_id))
 (assert (id-word))
 (assert (id-last_word))
 (assert (para_id-sent_id-word_id-original_word-hyphenated_word))
 (assert (id-original_word))
 (assert (Parser_used))
 (assert (id-wsd_number))
 (assert (affecting_id-affected_ids-wsd_group_root_mng))
 (assert (affecting_id-affected_ids-wsd_group_word_mng))
 (assert (id-wsd_root_mng))
 (assert (id-wsd_word_mng))
 (assert (id-H_vib_mng))
 (assert (id-wsd_root))
 (assert (make_verbal_noun))
 (assert (kriyA_id-object_viBakwi))
 (assert (kriyA_id-object2_viBakwi))
 (assert (kriyA_id-subject_viBakwi))
 (assert (kriyA_id-object1_viBakwi))
 (assert (id-tam_type))
 (assert (id-E_tam-H_tam_mng))
 (assert (id-preceeding_part_of_verb))
 (assert (root_id-TAM-vachan))
 (assert (id-attach_emphatic))
 (assert (id-eng-src))
 (assert (meaning_has_been_decided))
 (assert (id-attach_eng_mng))
 (assert (conj_head-left_head-right_head))
 (assert (id-wsd_viBakwi))
 (assert (id-domain_type))
 (assert (compound_meaning_decided))
 (assert (prep_id-relation-anu_ids))
 (assert (conjunction-components))
 (assert (id-cat))
 (assert (id-cat_coarse)) 
 (assert (verb_type-verb-causative_verb-tam))
 )

(defglobal ?*hin_sen-file* = h_sen_fp)
(defglobal ?*rmd_mng-file* = rm_mng_fp)
 
 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deffunction remove_character(?char ?str ?replace_char)
                        (bind ?new_str "")
                        (bind ?index (str-index ?char ?str))
                        (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                        (bind ?new_str (str-cat ?new_str (sub-string 1  (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
 )

 ;----------------------------------------------------------------------------------------------------------
 ;Added by Roja (29-06-11)
 ;To replace hyphen(-) with underscore(_) only in cases where we get underscore in the sentence. 
 ;Ex: Child_abuse is the physical or emotional or sexual mistreatment of children. (Note: used for WordNet purpose)
 ; Modified by Shirisha Manju -- removed for hindi meaning (27-01-12)
 (defrule replace_hyphen_with_underscore
 (declare (salience  2600))
 ?f0<-(para_id-sent_id-word_id-original_word-hyphenated_word  ?para_id  ?sent_id  ?wid  ?org_wrd $? ?hyp_wrd $?)
 (id-original_word  ?wid  ?hyp_wrd)
 (hindi_id_order $? ?wid $?)
 ?f2<-(id-Apertium_output ?wid ?wrd_analysis $?wrd)
 =>
	(bind ?hyp_word (string-to-field (str-cat @ ?hyp_wrd)))
	(bind ?hyp_wd   (string-to-field (str-cat \@ ?hyp_wrd)))
   	(if (or (eq $?wrd_analysis  ?hyp_word)  (eq $?wrd_analysis  ?hyp_wd)) then
      		(assert (id-Apertium_output ?wid ?org_wrd $?wrd))
      		(retract ?f0 ?f2)
   	)
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (19-02-15)
 ;remove 'id-attach_eng_mng' if mng decided is not from WSD bcoz this fact is restricted to wsd
 ;This model was picturesquely called plum pudding model of the atom. (physics domain)
 (defrule rm_eng_fact
 (declare (salience 2560))
 ?f<-(id-attach_eng_mng ?id ?mng)
 (id-HM-source ?id ? ?s&~WSD_root_mng&~WSD_word_mng)
 =>
	(retract ?f)
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (25-07-15)
 ;No politician is completely honest. 
 ;koI BI rAjanIwijFa pUrI waraha se niRkapata nahIM hE.
 ;We have no fruits in the house. 
 ;hamAre Gara meM Pala nahIM hEM.
 ;There is no 'final' theory in science and no unquestioned authority among scientists. 
 ;vijFAna meM 'anwima' sixXAnwa Ora vEjFAnikoM ke bIca meM kuCa asanxigXa aXikArI nahIM hE.
 ;No wonder, the overall mortality rate was very high.
 ;koI axBuwawA nahIM, sampUrNawayaH mqwyu xara bahuwa UzcI WI.
 (defrule move_nahIM_before_verb_or_after_noun
 (declare (salience 2551))
 ?f<-(id-Apertium_output ?id $?pre nahIM)
 (id-word ?id no)
 (prep_id-relation-anu_ids  -  ?r1  ?k ?id)
 (prep_id-relation-anu_ids  -  ?r2  ?kri ?k)
 (id-cat_coarse ?kri verb)
 ?f1<-(id-Apertium_output ?kri $?mng)
 (pada_info (group_head_id ?h) (group_ids $? ?id $?))
 ?f0<-(id-Apertium_output ?h $?hmng)
 (id-right_punctuation ?h ?punct)
 (test (neq ?id ?h)) ;You can check your PAN application status to enter acknowledgement no, name and date of birth.
 =>
	(retract ?f)
	(assert (id-Apertium_output ?id $?pre))
	(if (eq ?punct PUNCT-Comma) then
		(assert (id-Apertium_output ?h $?hmng nahIM)) 
		(retract ?f0)
	else
		(assert (id-Apertium_output ?kri nahIM $?mng))
		(retract ?f1)
	)
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Add english meaning to the hindi mng
 ;Added by Shirisha Manju (19-09-13) 
 (defrule add_eng_mng
 (declare (salience 2550))
 ?f0<-(id-Apertium_output ?id $?wrd_analysis)
 ?f1<-(id-attach_eng_mng ?id ?mng)
 (pada_info (group_ids $? ?id)(vibakthi 0))
 =>
	(retract ?f0 ?f1)
	(bind $?n_mng (create$ $?wrd_analysis @PUNCT-OpenParen ?mng @PUNCT-ClosedParen)) ;Added '@'before PUNCT to avoid to convert into utf8.
;Ex: This [model] was picturesquely called plum pudding model of the atom.
	(assert (id-Apertium_output ?id $?n_mng))
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (19-09-13)
 ;The receiver has the task of operating on the received [signal].
 ;As already mentioned, the purpose of a communication system is to transmit information or message [signals].
 (defrule add_eng_mng1
 (declare (salience 2549))
 ?f0<-(id-Apertium_output ?id $?wrd_analysis ?v_mng)
 ?f1<-(id-attach_eng_mng ?id ?mng)
 (pada_info (group_ids  $? ?id)(vibakthi ?vib))
 =>
	(retract ?f0 ?f1)
	(if (neq (str-index "_" ?vib) FALSE) then
		(bind ?v (remove_character "_" (implode$ (create$ ?vib)) " "))
		(bind $?w (create$ $?wrd_analysis ?v_mng))
		(bind $?w (delete-member$ $?w ?v))
		(bind $?n_mng (create$ $?w @PUNCT-OpenParen ?mng @PUNCT-ClosedParen ?v))
                (assert (id-Apertium_output ?id $?n_mng))
	else
		(bind $?n_mng (create$ $?wrd_analysis @PUNCT-OpenParen ?mng @PUNCT-ClosedParen ?v_mng))
		(assert (id-Apertium_output ?id $?n_mng))
	)
 )
 ;----------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju
 ;When none worked satisfactorily , his assistant complained ," All our work is in vain ". 
 (defrule attach_emphatic
 (declare (salience 2548))
 ?f1<-(id-attach_emphatic ?id ?wrd)
 ?f0<-(id-Apertium_output ?id $?wrd_analysis)
 =>
        (retract ?f0 ?f1)
	(assert (id-Apertium_output ?id $?wrd_analysis ?wrd))
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (23-02-12)
 ;Things had just gone too far.
 (defrule get_rt_punt_if_no_aper_mng
 (declare (salience 2530))
 (Parser_used Stanford-Parser)
 (or (hid-punc_head-right_punctuation ?id ? ?punc)(hid-punc_head-left_punctuation ?id ? ?punc))
 ?f1<-(id-Apertium_output ?id $?wrd_analysis) 
 ?f0<-(hindi_id_order $?id1 ?id $?d1)
 (test (eq (length $?wrd_analysis) 0))
 =>
	(retract ?f1 ?f0)
	(assert (hindi_id_order $?id1 ?punc $?d1))
	(assert (id-mng ?id $?wrd_analysis ))
 )
 ;----------------------------------------------------------------------------------------------------------
 (defrule get_apertium_mng_with_lt_and_rt_punc
 (declare (salience 2521))
 (Parser_used Stanford-Parser)
 (hid-punc_head-right_punctuation ?id ? ?rp)
; (hid-left_punctuation ?id ?lp)
 (hid-punc_head-left_punctuation ?id ? ?lp)
 ?f1<-(id-Apertium_output ?id ?w $?wrd_analysis ?w1)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 ?f1)
	(assert (id-mng ?id $?wrd_analysis ?w $?wrd_analysis ?w1))
	(bind ?w (string-to-field (str-cat ?lp ?w)))
	(bind ?w1 (string-to-field (str-cat ?w1 ?rp)))
        (assert (hindi_id_order $?id1 ?w $?wrd_analysis ?w1 $?id2))
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;One can reach kumbhalgarh by road from udaipur (84km) and ranakpur which is 18km from kumbhalgarh. 
 (defrule get_apertium_mng_with_lt_and_rt_punc1
 (declare (salience 2520))
 (Parser_used Stanford-Parser)
 (hid-punc_head-right_punctuation ?id ? ?rp)
 (hid-punc_head-left_punctuation ?id ? ?lp)
 ?f1<-(id-Apertium_output ?id ?wrd)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 ?f1)
	(assert (id-mng ?id ?wrd ))
	(bind ?wrd (string-to-field (str-cat ?lp ?wrd ?rp)))
        (assert (hindi_id_order $?id1 ?wrd $?id2))
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;Revenue totaled $5 million.
 (defrule get_apertium_mng_with_left_punc
 (declare (salience 2510))
 (Parser_used Stanford-Parser)
 (hid-punc_head-left_punctuation ?id ? ?punc $?p )
 ?f1<-(id-Apertium_output ?id ?w $?wrd_analysis)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 ?f1)
	(assert (id-mng ?id ?w $?wrd_analysis ))
	(bind ?w (string-to-field (str-cat ?punc ?w)))
        (assert (hindi_id_order $?id1 ?w $?p $?wrd_analysis $?id2))
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (08-02-2012)
 ;If you are a technician, obey the signals.
 (defrule get_apertium_mng_with_right_punc
 (declare (salience 2510))
 (Parser_used Stanford-Parser)
 (hid-punc_head-right_punctuation ?id ? ?punc $?p)
 ?f1<-(id-Apertium_output ?id $?wrd_analysis ?w)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
  =>
        (retract ?f0 ?f1)
	(assert (id-mng ?id $?wrd_analysis ?w))
        (bind ?w (string-to-field (str-cat ?w ?punc)))
        (assert (hindi_id_order $?id1 $?wrd_analysis ?w $?p $?id2))
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (10-12-2011)
 (defrule get_apertium_mng
 (declare (salience 2500))
 (Parser_used Stanford-Parser)
 ?f1<-(id-Apertium_output ?id $?wrd_analysis)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
	(retract ?f0 ?f1)
        (assert (hindi_id_order $?id1  $?wrd_analysis $?id2))
	(assert (id-mng ?id $?wrd_analysis))
 )
 ;======================== Generate hindi sentence using Apertium output and  punctuations ====================
 ;Added by Shirisha Manju (22-12-10)
 (defrule gene_sent_rt_lt
 (declare (salience 1001))
 ?f1<-(id-Apertium_output ?id $?wrd_analysis)
 (id-left_punctuation ?id "left_paren")
 (id-right_punctuation ?id "right_paren")
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
	(retract ?f0 )
        (assert (hindi_id_order $?id1 left_paren $?wrd_analysis right_paren $?id2))
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (22-12-10)
 ;Ex: Mr. Smith (a lawyer for Kodak) refused to comment.
 ;Rule is Modified again by Roja(11-01-11)
 ;Ex: As can be seen from Figure 11.1 the functions printf(), and scanf() fall under the category of formatted console I per O functions.
 (defrule gene_sent_lt_NONE
 (declare (salience 1000))
 ?f1<-(id-Apertium_output ?id ?wrd $?wrd_analysis)
 (id-left_punctuation ?id "NONE")
 (id-right_punctuation ?id ?rp)
 (test (or (eq ?rp "left_paren")(eq ?rp "right_paren" )(eq ?rp "equal_to" )(eq ?rp "left_parenright_paren")(eq ?rp "left_parenright_paren,") ))
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
  	(retract ?f0)
	(bind ?rp1 (string-to-field ?rp))
	(if (or (eq ?rp "left_paren" )(eq ?rp "right_paren" ) (eq ?rp "equal_to" )) then
		(assert (hindi_id_order $?id1 ?wrd $?wrd_analysis ?rp1 $?id2))
	else  (if (or (eq ?rp "left_parenright_paren")(eq ?rp "left_parenright_paren,")) then   
		        (bind ?wrd (string-to-field(str-cat ?wrd ?rp1)))
			(assert (hindi_id_order $?id1 ?wrd $?wrd_analysis $?id2))
              )
	)
 )
 ;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (22-12-10) 	
 ;Ex: Mr. Smith (a lawyer for Kodak) refused to comment.
 (defrule gen_sent_rt_NONE
 (declare (salience 1000))
 ?f1<-(id-Apertium_output ?id $?wrd_analysis)
 (id-left_punctuation ?id ?lp)
 (test (or (eq ?lp "left_paren")(eq ?lp "right_paren" )(eq ?lp "$" )))
 (id-right_punctuation ?id "NONE")
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 )
	(bind ?lp1 (string-to-field ?lp))
	(assert (hindi_id_order $?id1 ?lp1 $?wrd_analysis  $?id2))
 )
;----------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (21-11-11)
 ; The inscription on the tomb of Michael-Faraday (1897-1990).
 (defrule gen_sent_lt
 (declare (salience 1000))
 ?f1<-(id-Apertium_output ?id $?wrd_analysis)
 (id-right_punctuation ?id ").")
 (id-left_punctuation ?id "left_paren")
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
        (retract ?f0 )
        (assert (hindi_id_order $?id1 left_paren $?wrd_analysis  right_paren $?id2))
 )
;----------------------------------------------------------------------------------------------------------
 ;Substituting Apertium output for the id(1000) 
 ;Added by Shirisha Manju (03-12-10)
 (defrule gene_sent1
 (declare (salience 950))
 (id-Apertium_output ?id $?wrd_analysis)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 =>
 	(retract ?f0) 
	(assert (hindi_id_order $?id1  $?wrd_analysis  $?id2))
 )
 ;---------------------------------------------------------------------------------------------------------
 (defrule match_exp
 (declare (salience 500))
 ?f1<-(id-last_word ?id ?wrd)
 (not (Parser_used Stanford-Parser) )
 (id-right_punctuation   ?id  ?rp)
 ?f<-(hindi_id_order $?var ?lid)
 =>
       (retract ?f ?f1)
       (assert (hindi_id_order $?var ?lid ?rp))
 )
 ;---------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (23-11-13)
 ;Your account of the accident does not agree [with hers].
 (defrule rm_repeated_mng_from_sentence
 (declare (salience 200))
 ?f<-(hindi_id_order $?pre ?mng ?mng $?post)
 (test (eq  (member$ ?mng (create$ bAra SurU kaBI XIre Binna karIba sAWa xUra alaga waraha hAz)) FALSE));The frequent sleeping of students is a big problem.
 ?f1<-(id-mng ?id $?m ?mng ?mng $?m1)
 (id-word ?id ?wrd)
 (id-HM-source ?id ? ?src)
 =>
	(retract ?f ?f1)
	(assert (hindi_id_order $?pre ?mng $?post))
	(assert (id-mng ?id $?m ?mng $?m1)) ;Added by Roja(18-11-14) To remove repeated mng in layered o/p
	(printout t "Warning: Removed repeated meaning  : " ?mng" "?mng crlf)
	(bind $?n_mng (create$ $?m ?mng ?mng $?m1))
        (printout ?*rmd_mng-file* "(id-word-mng-removed_mng-src	"?id"	"?wrd"	"(implode$ $?n_mng)"	"?mng"	"?src ")" crlf)
 )
 ;---------------------------------------------------------------------------------------------------------
 ;Added by Roja (18-11-14)
 ;To remove repeated mng in layered o/p
 ;Rather, it deals with systems in macroscopic equilibrium and is [concerned] with changes in internal energy, temperature, entropy, etc., of the system through external work and transfer of heat.
 ;'sambanXa huA huA hE' -> 'sambanXa huA hE'
 (defrule modify_id-mng_fact
 (declare (salience 150))
 (id-mng ?id $?mng)
 =>
	(assert (id-Apertium_output ?id $?mng))
 )
 ;---------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (25-01-12)
 (defrule print_sen
 (declare (salience 100))
 ?f<- (hindi_id_order $?var)
 =>
	(retract ?f)
	(printout ?*hin_sen-file* (implode$ $?var) crlf)	
 )
 ;---------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -10))
 =>
        (close ?*hin_sen-file* )
 )
 ;---------------------------------------------------------------------------------------------------------
 (defglobal ?*grp_file* = n_fp)

; (defrule add_prep_grp
; (declare (salience -11))
; (pada_info (group_ids $? ?h) (preposition ?pid&~0 $?ids))
;; (id-cat ?det determiner|adjective)
; ?f0<-(id-mng ?h $?mng)
; =>
;	(retract ?f0)
;	(printout ?*grp_file* "(id-Apertium_output  " ?h "  " (implode$ $?mng) " @PUNCT-ClosedParen@PUNCT-ClosedParen )" crlf)
;	(printout ?*grp_file* "(id-Apertium_output  " ?pid "   @PUNCT-OpenParen@PUNCT-OpenParen -)" crlf)
; )
; 

 (defrule get_phrasal_vb_info
 (declare (salience -11))
 (root-verbchunk-tam-chunkids ? ? ? ?id $? ?h)
 (id-HM-source-grp_ids ? ? ? ?h $? ?l)
 ?f1<-(id-mng ?l $?m)
 =>
	(retract ?f1)
	(printout ?*grp_file* "(id-Apertium_output  " ?id " @PUNCT-OpenParen@PUNCT-OpenParen -- )" crlf)
	(if (eq (length $?m) 0) then
	        (printout ?*grp_file* "(id-Apertium_output  " ?l " - @PUNCT-ClosedParen@PUNCT-ClosedParen )" crlf)
	else		
		(printout ?*grp_file* "(id-Apertium_output  " ?l "  " (implode$ $?m) " @PUNCT-ClosedParen@PUNCT-ClosedParen )" crlf) 
	)
	(assert (verb_grouped ?h))
 )



 ;---------------------------------------------------------------------------------------------------------
 (defrule add_mwe_grp_info
 (declare (salience -12))
 (id-HM-source-grp_ids ? ? ? ?fid $?ids ?lid)
?f0<-(id-mng ?fid $?mng)
?f1<-(id-mng ?lid $?mng1)
 =>
	(retract ?f0 ?f1)
	(if (eq (length $?mng) 0) then
	        (printout ?*grp_file* "(id-Apertium_output  " ?fid " @PUNCT-OpenParen@PUNCT-OpenParen - )" crlf)
	else
		(printout ?*grp_file* "(id-Apertium_output  " ?fid " @PUNCT-OpenParen@PUNCT-OpenParen " (implode$ $?mng) ")" crlf) 
	)
	(if (eq (length $?mng1) 0) then
	        (printout ?*grp_file* "(id-Apertium_output  " ?lid " - @PUNCT-ClosedParen@PUNCT-ClosedParen )" crlf)
	else
	        (printout ?*grp_file* "(id-Apertium_output  " ?lid "  " (implode$ $?mng1) " @PUNCT-ClosedParen@PUNCT-ClosedParen )" crlf)
	)
 )
 ;---------------------------------------------------------------------------------------------------------
 (defrule add_verb_grp_info
 (declare (salience -13))
 (root-verbchunk-tam-chunkids ? ? ? ?id $? ?h)
 ?f1<-(id-mng ?h $?mng1)
 (not (verb_grouped ?h))
 =>
        (retract ?f1 )
	(printout ?*grp_file* "(id-Apertium_output  " ?id " @PUNCT-OpenParen@PUNCT-OpenParen -- )" crlf)
	(printout ?*grp_file* "(id-Apertium_output  " ?h "  " (implode$ $?mng1) " @PUNCT-ClosedParen@PUNCT-ClosedParen )" crlf) 
 )
 ;---------------------------------------------------------------------------------------------------------
 (defrule get_default_ids
 (declare (salience -14))
 ?f0<-(id-mng ?fid $?mng)
 =>
	(retract ?f0)
	(if (eq (length $?mng) 0) then
		(printout ?*grp_file* "(id-Apertium_output  " ?fid " )" crlf)
	else
	        (printout ?*grp_file* "(id-Apertium_output  " ?fid "  " (implode$ $?mng) " )" crlf)
	)
)

