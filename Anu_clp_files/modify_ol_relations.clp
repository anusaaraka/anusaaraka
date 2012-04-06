;This file is written by Sukhada.

(defglobal ?*ol_fp* = ol_rel_file)
(defglobal ?*debug* = ol_rel_debug_file)

(deffunction string_to_integer (?parser_id); [Removes the first character from the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

 (deffunction never-called ()
 (assert (verb_type-verb-causative_verb-tam))
 (assert (prep_id-prep_id-relation-parser_ids))
 (assert (id-word))
 (assert (id-last_word))
 (assert (parserid-wordid))
 (assert (ol_res_id-word_id-word))
 (assert (root-verbchunk-tam-parser_chunkids))
 (assert (current_id-group_members))
 (assert (addition-level-word-sid))
 (assert (split_tranlevel-ptype-headid-grpids))
 (assert (parser_id-cat_coarse))
 )

;NOTE:  kriyA-lupwa_prep_saMbanXI  is now changed to kriyA-aXikaraNavAcI_avyaya (Modified by Roja 28-12-10 Suggested by Sukhada)

;Some schools do not give weightage to extracurricular activities .
(defrule delete_viBakwi_rule
(declare (salience 333))
(prep_id-relation-parser_ids   ? kriyA-object  ?kri ?id)

(prep_id-relation-parser_ids   ? kriyA-during_saMbanXI|kriyA-to_saMbanXI|kriyA-on_saMbanXI|kriyA-with_saMbanXI|kriyA-after_saMbanXI|kriyA-in_saMbanXI|kriyA-by_saMbanXI|kriyA-about_saMbanXI|kriyA-against_saMbanXI|kriyA-among_saMbanXI|kriyA-into_saMbanXI|kriyA-over_saMbanXI|kriyA-towards_saMbanXI|kriyA-for_saMbanXI  ?kri ?id1)

?f<-(prep_id-relation-parser_ids   ?p  ?vi_prep  ?id ?id1)

(test(or (eq ?vi_prep viSeRya-during_saMbanXI) (eq ?vi_prep viSeRya-in_saMbanXI) (eq ?vi_prep viSeRya-after_saMbanXI) (eq ?vi_prep viSeRya-to_saMbanXI) (eq ?vi_prep viSeRya-with_saMbanXI) (eq ?vi_prep viSeRya-on_saMbanXI) (eq ?vi_prep viSeRya-by_saMbanXI) (eq ?vi_prep viSeRya-about_saMbanXI) (eq ?vi_prep viSeRya-against_saMbanXI) (eq ?vi_prep viSeRya-among_saMbanXI) (eq ?vi_prep viSeRya-into_saMbanXI) (eq ?vi_prep viSeRya-over_saMbanXI) (eq ?vi_prep viSeRya-towards_saMbanXI) (eq ?vi_prep viSeRya-for_saMbanXI) ))
=>
(assert (rel_has_been_deleted ?p ?vi_prep  ?id ?id1))
(printout ?*debug* "(rule-deleted_relation-ids   delete_viBakwi_rule   "?vi_prep"   "?id"   " ?id1")"crlf)
(retract ?f))
;----------------------------------------------------------------------------------------------------------------------------

;There is a ghost in the room .
(defrule dummy_dummy_sub_rule
(declare (salience 400))
?f<-(prep_id-relation-parser_ids   ?  kriyA-subject  ?kri ?sub)
(prep_id-relation-parser_ids   ? kriyA-dummy_subject  ?kri ?sub)
(prep_id-relation-parser_ids   ? kriyA-aBihiwa  ?kri ?id)
=>
(printout ?*debug* "(rule-deleted_relation-ids   dummy_dummy_sub_rule   kriyA-subject  "?kri"   " ?sub")"crlf)
(retract ?f)
(assert (rel_has_been_deleted -  kriyA-subject ?kri ?sub))
)

;----------------------------------------------------------------------------------------------------------------------------

;Where did they come from ?
(defrule where_rule
(declare (salience 400))
(id-word ?wh where)
(id-word ?viB from)
(parserid-wordid ?id ?wh)
(parserid-wordid ?id1 ?viB)
?f<-(prep_id-relation-parser_ids   ?p  kriyA-object  ?kri ?id1)
?f1<-(prep_id-relation-parser_ids   ?p1  kriyA-object  ?kri ?id)
=>
(retract ?f ?f1)
(assert (rel_has_been_deleted - kriyA-object  ?kri ?id))
(assert (rel_has_been_deleted - kriyA-object  ?kri ?id1))
(printout ?*debug* "(rule-deleted_relation-ids   where_rule  kriyA-object   "?kri"  " ?id")"crlf)
(printout ?*debug* "(rule-deleted_relation-ids   where_rule  kriyA-object   "?kri"  " ?id1")"crlf)
(assert (prep_id-relation-parser_ids   ?id1   kriyA-from_saMbanXI  ?kri ?id))
(assert (rel_has_been_written  ?id1 kriyA-from_saMbanXI  ?kri ?id))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids  " ?id1  " kriyA-from_saMbanXI  " ?kri" " ?id")"crlf)
(assert (prep_id-relation-parser_ids   -   kriyA-praSnavAcI  ?kri ?id))
(assert (rel_has_been_written  -  kriyA-praSnavAcI  ?kri ?id))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -    kriyA-praSnavAcI  " ?kri" " ?id")"crlf)
(printout ?*debug* "(Rule-Rel-ids   where_rule   kriyA-from_saMbanXI   "?kri"    "?id")"crlf)
(printout ?*debug* "(Rule-Rel-ids   where_rule   kriyA-praSnavAcI   "?kri"    "?id")"crlf)
)
;----------------------------------------------------------------------------------------------------------------------------

;A fat ugly boy had to eat too many fruits to lose his weight .
(defrule samAsa_rule
(declare (salience 300))
(prep_id-relation-parser_ids   -  kriyA-kriyArWa_kriyA  ?kri ?id)
?f<-(prep_id-relation-parser_ids   -  kriyA-subject  ?id ?id1)
=>
(printout ?*debug* "(rule-deleted_relation-ids   samAsa_rule  kriyA-subject   "?id"   " ?id1")"crlf)
(retract ?f)
(assert (rel_has_been_deleted -  kriyA-subject  ?id ?id1))
)

;----------------------------------------------------------------------------------------------------------------------------

;He wasted his golden opportunity to play in the national team.  But my efforts to win his heart have failed.
(defrule saMjFA-kqxanwa_rel_rule
(declare (salience 500))
(parserid-wordid ?to ?a)
(parserid-wordid ?kri ?b)
(parserid-wordid ?noun =(- ?a 1))
(parser_id-cat_coarse ?noun noun)
(parser_id-cat_coarse ?to preposition)
(parser_id-cat_coarse ?kri verb)
(prep_id-relation-parser_ids   ?p  to-infinitive  ?to ?kri)
=>
(assert (prep_id-relation-parser_ids   ?p  saMjFA-to_kqxanwa ?noun ?kri))
(printout ?*debug* "(Rule-Rel-ids    saMjFA-kqxanwa_rel_rule    saMjFA-to_kqxanwa   "?noun"    "?kri")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;He was the first Asian scientist to win the Nobel Prize.
(defrule delete_saMjFA-kqxanwa_rule
(declare (salience 550))
(prep_id-relation-parser_ids   ?  kriyA-kriyArWa_kriyA  ?kri ?id)
?f<-(prep_id-relation-parser_ids   ?p  saMjFA-to_kqxanwa  ?saM ?id)
=>
(printout ?*debug* "(rule-deleted_relation-ids   delete_saMjFA-kqxanwa_rule  saMjFA-to_kqxanwa  "?saM"   " ?id")"crlf)
(retract ?f)
(assert (rel_has_been_deleted ?p saMjFA-to_kqxanwa  ?saM ?id))
)

;----------------------------------------------------------------------------------------------------------------------------

;I read about the train accident in today's paper.
(defrule del_viSeRya-viSeRaNa_rel
(declare (salience 500))
(prep_id-relation-parser_ids   - viSeRya-RaRTI_viSeRaNa  ?viS ?viSN)
?f<-(prep_id-relation-parser_ids  -  viSeRya-viSeRaNa ?viS ?viSN)
=>
(printout ?*debug* "(rule-deleted_relation-ids   del_viSeRya-viSeRaNa_rel  viSeRya-viSeRaNa   "?viS"   " ?viSN")"crlf)
(retract ?f)
(assert (rel_has_been_deleted -  viSeRya-viSeRaNa  ?viS ?viSN))
)

;----------------------------------------------------------------------------------------------------------------------------

;Rules added by sriram
;rule to delete relations in between ids of lwg
(defrule delete_rel_lwg
(declare (salience 510))
(root-verbchunk-tam-parser_chunkids   ?root ?verbchunk ?tam  $?ids)
?f<-(prep_id-relation-parser_ids   ?p  ?relname  ?kriyA	?id)
(test (and (member$ ?kriyA $?ids) (member$ ?id $?ids)))
(test (neq ?relname kriyA-kriyA_niReXaka));I do not go out as much now.
=>
(retract ?f)
(assert (rel_has_been_deleted ?p ?relname  ?kriyA ?id))
(printout ?*debug* "(rule-deleted_relation-ids    delete_rel_lwg   "?relname"  "?kriyA"   " ?id")"crlf)
)

;--------------------------------------------------------------------------------------------------------------------------
;rule to transfer kriyA-anyrelation from auxilaries of lwg to the head id .
;e.g had to eat fruit, "kriyA-object had - fruit ----> kriyA-object eat fruit"

(defrule head_transfer
(declare (salience 500))
(root-verbchunk-tam-parser_chunkids   ?root ?verbchunk ?tam  $?ids)
?f<-(prep_id-relation-parser_ids   ?p  ?relname  ?kriyA	?id)
(tranlevel-ptype-headid-grpids ?l VP ?headid $?ids )
(test (member$ ?kriyA $?ids))
(test(neq ?kriyA ?headid))
=>
(retract ?f)
(assert (rel_has_been_deleted ?p ?relname  ?kriyA ?id))
(printout ?*debug* "(rule-deleted_relation-ids   head_transfer  "?relname"  " ?kriyA"   " ?id")"crlf)
(assert (prep_id-relation-parser_ids   ?p  ?relname ?headid ?id))
(assert (rel_has_been_written ?p ?relname  ?headid ?id))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids  "?p"  "?relname"  " ?headid"   " ?id")"crlf)
(printout ?*debug* "(Rule-Rel-ids   head_transfer   " ?relname "   "?headid"    "?id")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------
;Added by Roja (16-02-11)
;Your house and garden are very attractive.
(defglobal ?*plist* = (create$ ))
(defrule getting_conj_components 
(declare (salience 60))
(split_tranlevel-ptype-headid-grpids tran3 PP ?head $?ids)
(ol_res_id-word_id-word   ?head ?i   and|or)
(parser_id-cat_coarse  ?pid ?cat)
(test (member$ ?pid $?ids))
(parser_id-cat_coarse ?pid1 ?cat1)
(parser_id-cat_coarse ?pid2 ?cat2)
(test (eq ?pid1 (nth$ (length $?ids) $?ids)))
(test (eq (string_to_integer ?head)(+ (string_to_integer ?pid2) 1)))
(test (neq ?head ?pid))
(ol_res_id-word_id-word   ?id  ?i1   ?wrd)
(test (eq (string_to_integer ?id) (- (string_to_integer ?head) 1)))  
(test (neq ?wrd punctuation_mark))  ;Madras, or Chennai as it is now called, is known as the gateway of southern india. 
=>
(bind ?len (length $?ids))
        (loop-for-count (?i 1 ?len) do
            (bind ?id1 (nth$ ?i $?ids))
             (if (eq ?id1 ?pid) then
               (if (eq ?cat ?cat1) then 
                        (bind ?*plist* (insert$ ?*plist* 1 ?pid))
                    else (if (eq ?cat ?cat2) then  ;Mumbai is the headquarters of the central and western railways
                             (if (< (string_to_integer ?pid) (string_to_integer ?head)) then 
                                (bind ?*plist* (insert$ ?*plist* 1 ?pid))
                             )
                         )
               )
            )
       )
       (assert (conjunction-components_dummy ?head     (create$ (implode$  ?*plist*))))
)
;----------------------------------------------------------------------------------------------------------------------------
;Added by Roja(16-02-11)
;Your house and garden are very attractive.
(defrule print_conj_comp
(declare (salience -10))
(conjunction-components_dummy ?head   $?ids)
(test (eq (length $?ids) (length ?*plist*)))
=>
  (printout ?*ol_fp* "(conjunction-components "  ?head "  "  (implode$ ?*plist*) ")" crlf)
  (printout ?*debug* "(Rule-Rel-ids  print_conj_comp    conjunction-components "  ?head "  "  (implode$ ?*plist*) ")" crlf)
)
;----------------------------------------------------------------------------------------------------------------------------

(defrule head_RaRTI_vi
(declare (salience 55))
?f<-(prep_id-relation-parser_ids   ?p  viSeRya-RaRTI_viSeRaNa ?id ?id1)
?f1<-(split_tranlevel-ptype-headid-grpids tran3 PP ?head $?ids ?head $?ids1)
(test (or (member$ ?id1 $?ids) (member$ ?id1 $?ids1)))
(test (and (neq ?id1 ?head) (neq ?id ?head)))
?f2<-(ol_res_id-word_id-word   ?head ?i   and|or)
=>
(retract ?f)
(assert (rel_has_been_deleted  ?p viSeRya-RaRTI_viSeRaNa  ?id ?id1))
(bind ?head_1 (nth$  (length $?ids) $?ids))
(bind ?head_2 (nth$  (length $?ids1) $?ids1))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids "?p"  viSeRya-RaRTI_viSeRaNa " ?head" "?id1")"crlf)
(assert (rel_has_been_written ?p viSeRya-RaRTI_viSeRaNa  ?head ?id1))
(printout ?*debug* "(Rule-Rel-ids   head_RaRTI_vi  viSeRya-RaRTI_viSeRaNa   "?head"   "?id1")"crlf)
(printout ?*debug* "(rule-deleted_relation-ids   head_RaRTI_vi  viSeRya-RaRTI_viSeRaNa   "?id"   " ?id1")"crlf)
)

;------------------------------------------------------------------------------------------------------------------------
;
(defrule head_transfer_left
?f<-(prep_id-relation-parser_ids   ?p  ?relname  ?id1 ?id)
(split_tranlevel-ptype-headid-grpids tran3 PP ?head $?ids ?head $?ids1)
(test (or (member$ ?id1 $?ids) (member$ ?id1 $?ids1)))
(test(neq ?id1 ?head))
(test (neq ?relname viSeRya-viSeRaNa))
(test (neq ?relname viSeRaNa-viSeRaka))
(test (neq ?relname viSeRya-det_viSeRaNa))
(test (neq ?relname kriyA-conjunction))
(ol_res_id-word_id-word   ?head ?i   and|or)
=>
(retract ?f)
(assert (rel_has_been_deleted ?p ?relname  ?id1 ?id))
(printout ?*debug* "(rule-deleted_relation-ids   head_transfer_left  "?relname"   "?id1"   " ?id")"crlf)
(bind ?head_1 (nth$  (length $?ids) $?ids))
(bind ?head_2 (nth$  (length $?ids1) $?ids1))
(assert (prep_id-relation-parser_ids   ?p  ?relname ?head ?id))
(printout ?*debug* "(Rule-Rel-ids   head_transfer_left   " ?relname "   "?head"    "?id")"crlf)
)

;-------------------------------------------------------------------------------------------------------------------------

;Sanal spent his summer studying basic mathematics, writing and reading comprehension.
(defrule no_head_transfer_right
(declare (salience 6))
?f<-(prep_id-relation-parser_ids   ?  kriyA-object  ?id ?id1)
(parser_id-cat_coarse  ?id  verbal_noun)
(prep_id-relation-parser_ids   ?  kriyA-kqxanwa_viSeRaNa ?kri ?id)
=>
(assert (do_not_transfer_head ?id1))
)

;-------------------------------------------------------------------------------------------------------------------------
;
(defrule head_transfer_right
(declare (salience 5))
?f<-(prep_id-relation-parser_ids   ?p ?relname  ?id ?id1)
(split_tranlevel-ptype-headid-grpids tran3 PP ?head $?ids ?head $?ids1)
(test (or (member$ ?id1 $?ids) (member$ ?id1 $?ids1)))
(test(neq ?id1 ?head))
(test (neq ?relname viSeRya-viSeRaNa))
(test (neq ?relname viSeRaNa-viSeRaka))
(test (neq ?relname viSeRya-det_viSeRaNa))
(test (neq ?relname kriyA-conjunction))
(test (neq ?relname proper_noun-waxviSiRta_proper_noun))
(not (parser_id-cat_coarse  ?id  verbal_noun));Sanal spent his summer studying basic mathematics, writing and reading comprehension.
(ol_res_id-word_id-word   ?head ?i   and|or)
(not (do_not_transfer_head ?id1))
=>
(retract ?f)
(assert (rel_has_been_deleted  ?p ?relname ?id ?id1))
(printout ?*debug* "(rule-deleted_relation-ids   head_transfer_right  "?relname"    "?id"   "?id1")"crlf)
(bind ?head_1 (nth$  (length $?ids) $?ids))
(bind ?head_2 (nth$  (length $?ids1) $?ids1))
(assert (prep_id-relation-parser_ids   ?p  ?relname ?id ?head))
(printout ?*debug* "(Rule-Rel-ids    head_transfer_right   " ?relname "   "?id"    "?head")"crlf)
)

;-----------------------------------------------------------------------------------------------------------------------

;Mary, Joe and Louise are coming to the party.
(defrule head_transfer_right_s
(declare (salience 55))
?f<-(prep_id-relation-parser_ids   ?p  kriyA-subject  ?id ?id1)
(split_tranlevel-ptype-headid-grpids tran3 PP ?head $?ids ?head $?ids1)
(test (or (member$ ?id1 $?ids) (member$ ?id1 $?ids1)))
(ol_res_id-word_id-word   ?head ?i   and|or)
=>
(retract ?f)
(assert (rel_has_been_deleted ?p kriyA-subject  ?id ?id1))
(printout ?*debug* "(rule-deleted_relation-ids head_transfer_right_s   kriyA-subject    "?id"   "?id1")"crlf)
(bind ?head_1 (nth$  (length $?ids) $?ids))
(bind ?head_2 (nth$  (length $?ids1) $?ids1))
(assert (prep_id-relation-parser_ids   ?p  kriyA-subject ?id ?head))
(printout ?*debug* "(Rule-Rel-ids  head_transfer_right_s    kriyA-subject    "?id"    "?head")"crlf)
)

;---------------------------------------------------------------------------------------------------------------------

;When Mrs. Chitnis discovered that her husband was an adulterer she divorced him.
(defrule head_transfer_m
(declare (salience 5))
?f<-(prep_id-relation-parser_ids   ?p  ?relname  ?id ?id1)
(split_tranlevel-ptype-headid-grpids tran3 PP ?head $?ids ?head $?ids1)
(test (or (member$ ?id1 $?ids) (member$ ?id1 $?ids1)))
(test(neq ?id1 ?head))
(ol_res_id-word_id-word   ?id1 ?i   Mrs.|Mr.|Ms.|mrs.|mr.|ms.) ;Added words in lower case by Roja (26-11-10) 
=>
(retract ?f)
(assert (rel_has_been_deleted  ?p  ?relname  ?id ?id1))
(printout ?*debug* "(rule-deleted_relation-ids   head_transfer_m  "?relname"   "?id"   "?id1")"crlf)
(bind ?head_1 (nth$  (length $?ids) $?ids))
(assert (prep_id-relation-parser_ids   ?p  ?relname ?id ?head))
(assert (rel_has_been_written ?p ?relname ?id ?head))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids  "?p"  "?relname"  " ?id" " ?head")"crlf)
(printout ?*debug* "(Rule-Rel-ids    head_transfer_m   " ?relname "    "?id"    "?head")"crlf)
)

;---------------------------------------------------------------------------------------------------------------------------

;Those that want to come can come.
(defrule  del_sub_rule
(declare (salience 500))
(prep_id-relation-parser_ids   ? kriyA-kqxanwa_karma   ?kri    ?karma)
?f<-(prep_id-relation-parser_ids   ?  kriyA-subject    ?karma   ?id)
=>
(retract ?f)
(assert (rel_has_been_deleted  -  kriyA-subject ?karma ?id))
(printout ?*debug* "(rule-deleted_relation-ids   del_sub_rule   kriyA-subject  "?karma"  " ?id")"crlf)
)

;---------------------------------------------------------------------------------------------------------------------------

;Terrorists treat people very badly.
(defrule add_kri_vi
(prep_id-relation-parser_ids   -  kriyA-kriyA_viSeRaNa  ?kri    ?kri_vi)
(ol_res_id-word_id-word ?kri_vi  ?id    ?word)
(ol_res_id-word_id-word  ?kri_vi_viSeRaka       =(- ?id 1)      very)
=>
(assert (prep_id-relation-parser_ids   -   kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka ?kri_vi ?kri_vi_viSeRaka))
(assert (rel_has_been_written   - kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka  ?kri_vi  ?kri_vi_viSeRaka))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -   kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka  " ?kri_vi" " ?kri_vi_viSeRaka")"crlf)
(printout ?*debug* "(Rule-Rel-ids    add_kri_vi    kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka    "?kri_vi"    "kri_vi_viSeRaka")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;How many years did it take to do it?
(defrule add_kri_obj_rul
(prep_id-relation-parser_ids   ? viSeRya-det_viSeRaNa  ?kri_vi	?P2)
(prep_id-relation-parser_ids   ? kriyA-subject  ?kri	?sub)
(prep_id-relation-parser_ids   ? samAsa  ?P2)
(ol_res_id-word_id-word	?kri	?id	take)
(ol_res_id-word_id-word	?P2	?id1	how many)
(ol_res_id-word_id-word	?kri_vi	 ?id2	year)
=>
(assert (prep_id-relation-parser_ids   -  kriyA-object ?kri ?kri_vi))
(assert (rel_has_been_written  - kriyA-object  ?kri ?kri_vi))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -   kriyA-object   " ?kri"   " ?kri_vi")"crlf)
(printout ?*debug* "(Rule-Rel-ids    add_kri_obj_rul    kriyA-object   "?kri"    "?kri_vi")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Geeta and Reeta were born at the same time.(This is just a sample sentence, The object relation between 'born' and 'at the same time' is not correct for this sentence 26-09-10)
(defrule rel_wit_multiple_ids
(prep_id-relation-parser_ids   ?p  ?rel   ?id1 ?id2)
(ol_res_id-word_id-word ?id2    ?id     $?wrds)
(current_id-group_members	?id	$?id2s)
(test (>=  (length $?id2s) 3))
=>
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids  " ?p"    "?rel"  " ?id1" " ?id2")"crlf)
(printout ?*debug* "(Rule-Rel-ids    rel_wit_multiple_ids " ?rel"   "?id1"    "?id2")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------
;
(defrule rel_wit_multiple_left_ids
(prep_id-relation-parser_ids   ?p  ?rel   ?id2 ?id1)
(ol_res_id-word_id-word ?id2    ?id     $?wrds)
(current_id-group_members       ?id     $?id2s)
(test (>=  (length $?id2s) 3))
=>
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids "?p"    "?rel"  " ?id2" " ?id1")"crlf)
(printout ?*debug* "(Rule-Rel-ids    rel_wit_multiple_left_ids " ?rel"   "?id2"    "?id1")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Whatever the outcome is, I am sure he will still be popular.
(defrule add_kri_viSeRaNa_rule
(ol_res_id-word_id-word	?kri  ?id   ?verb&~punctuation_mark);Added '&~punctuation_mark' by Roja to avoid join network errors.
(ol_res_id-word_id-word ?kri_vi =(- ?id 1)     still)
(prep_id-relation-parser_ids   -  kriyA-subject  ?kri	?sub)
=>
(assert (prep_id-relation-parser_ids   -  kriyA-kriyA_viSeRaNa ?kri ?kri_vi))
(assert (rel_has_been_written  -  kriyA-kriyA_viSeRaNa  ?kri ?kri_vi))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -   kriyA-kriyA_viSeRaNa  " ?kri" " ?kri_vi")"crlf)
(printout ?*debug* "(Rule-Rel-ids    add_kri_viSeRaNa_rule    kriyA-kriyA_viSeRaNa    "?kri"    "?kri_vi")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;I met him last in a market-place.
(defrule add_kriyA_viS
(ol_res_id-word_id-word	?kri	?id	?verb)
(ol_res_id-word_id-word	?kri_vi	 ?id1	last)
(parser_id-cat_coarse  ?kri_vi adverb)
(parser_id-cat_coarse  ?kri verb)
=>
(assert (prep_id-relation-parser_ids   -  kriyA-kriyA_viSeRaNa ?kri ?kri_vi))
(assert (rel_has_been_written  -  kriyA-kriyA_viSeRaNa  ?kri ?kri_vi))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -    kriyA-kriyA_viSeRaNa  " ?kri" " ?kri_vi")"crlf)
(printout ?*debug* "(Rule-Rel-ids    add_kriyA_viS    kriyA-kriyA_viSeRaNa   "?kri"    "?kri_vi")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;He got all the advantages of his birth.
(defrule add_vi_det
(missing-level-id tran3 ?det)
(split_tranlevel-ptype-headid-grpids tran3 PP ?vi  $?id ?det $?id1)
(ol_res_id-word_id-word ?det  ?i    the|a|an)
=>
(assert (prep_id-relation-parser_ids   -   viSeRya-det_viSeRaNa ?vi ?det))
(assert (rel_has_been_written  -   viSeRya-det_viSeRaNa  ?vi ?det))
(printout     ?*ol_fp*    "(prep_id-relation-parser_ids   -  viSeRya-det_viSeRaNa  " ?vi" " ?det")"crlf)
(printout ?*debug* "(Rule-Rel-ids   add_vi_det   viSeRya-det_viSeRaNa   "?vi"    "?det")"crlf)
)

;---------------------------------------------------------------------------------------------------------------------------

;I have started working. She began singing. I will keep on trying.
(defrule del_rel1
(declare (salience 10))
(prep_id-relation-parser_ids   ?  kriyA-subject  ?k ?s)
?f<-(prep_id-relation-parser_ids   ?  kriyA-subject  ?k1 ?s)
(prep_id-relation-parser_ids   ?  kriyA-object ?k ?k1)
=>
(retract ?f)
(assert (rel_has_been_deleted  - kriyA-subject  ?k1 ?s))
(printout ?*debug* "(rule-deleted_relation-ids   del_rel1   kriyA-subject  "?k1"   " ?s")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;It is not a good idea to drive for hours without a rest.
(defrule del_rel_1
(declare (salience 10))
(ol_res_id-word_id-word   ?pid ?i   is)
?f<-(prep_id-relation-parser_ids   -  kriyA-kqxanwa_karma ?pid ?pid1)
(not (id-word ?id than));Added by sheetal:Our program is easier to use than to understand.
=>
(retract ?f)
(assert (rel_has_been_deleted  - kriyA-kqxanwa_karma  ?pid ?pid1))
(printout ?*debug* "(rule-deleted_relation-ids   del_rel_1   kriyA-kqxanwa_karma  "?pid"   " ?pid1")"crlf)
(assert (rel_has_been_written  -  kriyA-kriyArWa_kriyA  ?pid ?pid1))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids  -   kriyA-kriyArWa_kriyA    "?pid"    "?pid1")"crlf)
(printout ?*debug* "(Rule-Rel-ids    del_rel_1   kriyA-kriyArWa_kriyA    "?pid"    "?pid1")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;He was sitting next to Mohan's brother.
(defrule next_to_rule
(ol_res_id-word_id-word ?P_id   ?id     next)
(ol_res_id-word_id-word ?P_id1  =(+ ?id 1)      to)
(prep_id-relation-parser_ids   ?p  kriyA-to_saMbanXI  ?kri ?noun)
=>
(assert (prep_id-relation-parser_ids   -  kriyA-aXikaraNavAcI_avyaya ?kri ?P_id))
(assert (rel_has_been_written  -  kriyA-aXikaraNavAcI_avyaya  ?kri ?P_id))
(printout ?*debug* "(Rule-Rel-ids    next_to_rule    kriyA-aXikaraNavAcI_avyaya   "?kri"    "?P_id")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;The parents documented every step of their child's development.
(defrule del_and_modi_RaRTI_vi
(ol_res_id-word_id-word ?det    ?id     their|her|his|its)
(ol_res_id-word_id-word ?RaRTI_noun     =(+ ?id 1)      ?w1)
(ol_res_id-word_id-word ?viSeRya        =(+ ?id 2)      ?w2)
?f<-(prep_id-relation-parser_ids  - viSeRya-RaRTI_viSeRaNa  ?viSeRya  ?det)
(prep_id-relation-parser_ids   -  viSeRya-RaRTI_viSeRaNa  ?viSeRya      ?RaRTI_noun)
=>
(retract ?f)
(assert (rel_has_been_deleted  -  viSeRya-RaRTI_viSeRaNa  ?viSeRya  ?det))
(printout ?*debug* "(rule-deleted_relation-ids   del_and_modi_RaRTI_vi  viSeRya-RaRTI_viSeRaNa  "?viSeRya"   " ?det")"crlf)
(assert (prep_id-relation-parser_ids   -  viSeRya-RaRTI_viSeRaNa ?RaRTI_noun ?det))
(printout ?*debug* "(Rule-Rel-ids    del_and_modi_RaRTI_vi    viSeRya-RaRTI_viSeRaNa   "?RaRTI_noun"    "?det")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;I saw him telling her about the party.
(defrule assert_rel
(declare (salience 10))
(prep_id-relation-parser_ids   -  kriyA-object ?pid ?pid1)
(prep_id-relation-parser_ids   -  kriyA-subject ?li ?pid1)
(prep_id-relation-parser_ids   -  kriyA-object ?li ?pid2)
(ol_res_id-word_id-word ?li    ?id     ?word)
(test (eq (sub-string (- (length ?word) 2) (length ?word) ?word) "ing"))
=>
(assert (prep_id-relation-parser_ids   -  kriyA-kqxanwa_kriyA_viSeRaNa ?pid ?li))
(assert (rel_has_been_written  -  kriyA-kqxanwa_kriyA_viSeRaNa  ?pid ?li))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  kriyA-kqxanwa_kriyA_viSeRaNa   "?pid"    "?li")"crlf)
(printout ?*debug* "(Rule-Rel-ids    assert_rel   kriyA-kqxanwa_kriyA_viSeRaNa   "?pid"    "?li")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;He commented that the two essays were rather similar.
(defrule add_viSeRaNa-viSeRaka_rule
(ol_res_id-word_id-word	?P_id	?id	rather)
(ol_res_id-word_id-word	?P_vi	=(+ ?id 1)	?word)
(parser_id-cat_coarse  ?P_vi adjective)
=>
(assert (prep_id-relation-parser_ids   - viSeRaNa-viSeRaka ?P_vi ?P_id))
(assert (rel_has_been_written  -  viSeRaNa-viSeRaka  ?P_vi ?P_id))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  viSeRaNa-viSeRaka   "?P_vi"    "?P_id")"crlf)
(printout ?*debug* "(Rule-Rel-ids   add_viSeRaNa-viSeRaka_rule   viSeRaNa-viSeRaka   "?P_vi"    "?P_id")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;The dogs and cats know what happened.
(defrule add_sub_of_happened
(ol_res_id-word_id-word   ?P_kri  ?kri  know|knows|knew|knowing)
(ol_res_id-word_id-word   ?P_what  =(+ ?kri 1)  what)
(ol_res_id-word_id-word   ?P_hap  ?id happened|happen|happens)
(ol_res_id-word_id-word	  ?sub  ?id1	?word)
?f<-(prep_id-relation-parser_ids   - kriyA-subject  ?P_hap ?sub)
(prep_id-relation-parser_ids   - kriyA-subject  ?P_kri ?sub)
?f1<-(prep_id-relation-parser_ids   - kriyA-object  ?P_kri ?P_what)
=>
(retract ?f ?f1)
(assert (rel_has_been_deleted   -  kriyA-subject  ?P_hap ?sub))
(assert (rel_has_been_deleted   -  kriyA-object  ?P_kri ?P_what))
(printout ?*debug* "(rule-deleted_relation-ids    add_sub_of_happened    kriyA-subject   "?P_hap"   " ?sub")"crlf)
(printout ?*debug* "(rule-deleted_relation-ids    add_sub_of_happened    kriyA-object   "?P_kri"   " ?P_what")"crlf)
(assert (prep_id-relation-parser_ids   -  kriyA-vAkyakarma  ?P_kri ?P_hap))
(assert (rel_has_been_written -  kriyA-vAkyakarma  ?P_kri ?P_hap))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  kriyA-vAkyakarma  "?P_kri"    "?P_hap")"crlf)
(assert (prep_id-relation-parser_ids   -  kriyA-praSnavAcI  ?P_kri ?P_what))
(assert (rel_has_been_written  -  kriyA-praSnavAcI  ?P_kri ?P_what))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  kriyA-praSnavAcI  "?P_kri"    "?P_what")"crlf)
(assert (prep_id-relation-parser_ids   -  kriyA-subject  ?P_hap ?P_what))
(assert (rel_has_been_written  -  kriyA-subject  ?P_hap ?P_what))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  kriyA-subject   "?P_hap"    "?P_what")"crlf)
(printout ?*debug* "(Rule-Rel-ids   add_sub_of_happened   kriyA-vAkyakarma  "?P_kri"    "?P_hap")"crlf)
(printout ?*debug* "(Rule-Rel-ids   add_sub_of_happened   kriyA-praSnavAcI  "?P_kri"    "?P_what")"crlf)
(printout ?*debug* "(Rule-Rel-ids   add_sub_of_happened   kriyA-subject   "?P_hap"    "?P_what")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal.
;The question is who we should invite.
(defrule add_vAkyasamAnAXikarNa_rule
(prep_id-relation-parser_ids   - kriyA-subject  ?kri   ?sub)
?f<-(prep_id-relation-parser_ids   - kriyA-vAkyakarma  ?id     ?kri1)
=>
(retract ?f)
(assert (rel_has_been_deleted  -  kriyA-vAkyakarma  ?id ?kri1))
(assert (prep_id-relation-parser_ids  -  subject-vAkyasamAnAXikarNa ?sub ?kri1))
(assert (rel_has_been_written  -  subject-vAkyasamAnAXikarNa  ?sub ?kri1))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  subject-vAkyasamAnAXikarNa   "?sub"    "?kri1")"crlf)
(printout ?*debug* "(rule-deleted_relation-ids    add_vAkyasamAnAXikarNa_rule    kriyA-vAkyakarma   "?id"   " ?kri1")"crlf)
(printout ?*debug* "(Rule-Rel-ids   add_vAkyasamAnAXikarNa_rule   subject-vAkyasamAnAXikarNa   "?sub"    "?kri1")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;The missiles were zeroed in on the enemy camps.
(defrule add_kri_upsarg_rel
(ol_res_id-word_id-word	?P_kri	?id	zeroed)
(ol_res_id-word_id-word	?P_upsg	=(+ ?id 1)	in)
(ol_res_id-word_id-word	?P_prep	=(+ ?id 2)	on)
=>
(assert (prep_id-relation-parser_ids   -  kriyA-upasarga ?P_kri ?P_upsg))
(assert (rel_has_been_written   -  kriyA-upasarga   ?P_kri ?P_upsg))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  kriyA-upasarga   "?P_kri"    "?P_upsg")"crlf)
(printout ?*debug* "(Rule-Rel-ids    add_kri_upsarg_rel   kriyA-upasarga   "?P_kri"    "?P_upsg")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Prices have tended downwards over recent years.
(defrule add_kri_vi_rule
(ol_res_id-word_id-word	?kri   ?id  ?verb&~punctuation_mark);Added '&~punctuation_mark' by Roja to avoid join network errors.
(ol_res_id-word_id-word	?kri_vi	=(+ ?id 1)	downwards)
(parser_id-cat_coarse  ?kri verb)
?f<-(prep_id-relation-parser_ids   -  kriyA-object  ?kri	?kri_vi)
=>
(retract ?f)
(assert (rel_has_been_deleted   -  kriyA-object  ?kri ?kri_vi))
(printout ?*debug* "(rule-deleted_relation-ids    add_kri_vi_rule    kriyA-object  "?kri"   " ?kri_vi")"crlf)
(assert (prep_id-relation-parser_ids   -  kriyA-kriyA_viSeRaNa  ?kri        ?kri_vi))
(assert (rel_has_been_written   -  kriyA-kriyA_viSeRaNa  ?kri ?kri_vi))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  kriyA-kriyA_viSeRaNa   "?kri"    "?kri_vi")"crlf)
(printout ?*debug* "(Rule-Rel-ids    add_kri_vi_rule   kriyA-kriyA_viSeRaNa   "?kri"    "?kri_vi")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;I really like the way you do your hair.
(defrule del_and_add_RaRTI_vi_rule
(ol_res_id-word_id-word	?P_RaRTI	?id	your)
(ol_res_id-word_id-word	?P_vi	?id2	?wrd)
?f<-(prep_id-relation-parser_ids   - viSeRya-viSeRaNa  ?P_vi	?P_RaRTI)
=>
(retract ?f)
(assert (rel_has_been_deleted  -  viSeRya-viSeRaNa  ?P_vi ?P_RaRTI))
(printout ?*debug* "(rule-deleted_relation-ids    del_and_add_RaRTI_vi_rule   viSeRya-viSeRaNa   "?P_vi"   " ?P_RaRTI")"crlf)
(assert (prep_id-relation-parser_ids   -  viSeRya-RaRTI_viSeRaNa ?P_vi   ?P_RaRTI))
(assert (rel_has_been_written   -  viSeRya-RaRTI_viSeRaNa  ?P_vi  ?P_RaRTI))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -   viSeRya-RaRTI_viSeRaNa  "?P_vi"    "?P_RaRTI")"crlf)
(printout ?*debug* "(Rule-Rel-ids   del_and_add_RaRTI_vi_rule   viSeRya-RaRTI_viSeRaNa  "?P_vi"    "?P_RaRTI")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;They are building a gigantic mall five miles from here
(defrule kri-measure
?f<-(prep_id-relation-parser_ids   - kriyA-object_1   ?P4  ?P7)
?f1<-(prep_id-relation-parser_ids   - kriyA-object_2  ?P4  ?P9)
(ol_res_id-word_id-word   ?P9 ?id1 mile)
=>
(retract ?f ?f1)
(assert (rel_has_been_deleted  -  kriyA-object_1  ?P4 ?P7))
(assert (rel_has_been_deleted  -  kriyA-object_2  ?P4 ?P9))
(printout ?*debug* "(rule-deleted_relation-ids    kri-measure   kriyA-object_1   "?P4"   " ?P7")"crlf)
(printout ?*debug* "(rule-deleted_relation-ids    kri-measure   kriyA-object_2   "?P4"   " ?P9")"crlf)
(assert (prep_id-relation-parser_ids   -  kriyA-object  ?P4   ?P7))
(assert (rel_has_been_written  -  kriyA-object  ?P4 ?P7))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  kriyA-object   "?P4"    "?P7")"crlf)
(assert (prep_id-relation-parser_ids   -  kriyA-measurement ?P4   ?P9))
(assert (rel_has_been_written  -  kriyA-measurement  ?P4 ?P9))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  kriyA-measurement   "?P4"    "?P9")"crlf)
(printout ?*debug* "(Rule-Rel-ids  kri-measure   kriyA-object   "?P4"    "?P7")"crlf)
(printout ?*debug* "(Rule-Rel-ids  kri-measure   kriyA-measurement   "?P4"    "?P9")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;Can you tell us where those strange ideas came from?
(defrule add_from_saMb_rule
(ol_res_id-word_id-word ?prep     ?id      from)
(prep_id-relation-parser_ids   ? kriyA-conjunction  ?kri	?where)
(prep_id-relation-parser_ids   ? kriyA-subject  ?kri	?sub)
?f<-(prep_id-relation-parser_ids   ? kriyA-aXikaraNavAcI_avyaya  ?kri	?where) 
?f1<-(prep_id-relation-parser_ids   ? kriyA-object  ?kri	?prep)
=>
(retract ?f ?f1)
(assert (rel_has_been_deleted  -  kriyA-aXikaraNavAcI_avyaya  ?kri ?where))
(assert (rel_has_been_deleted  -  kriyA-object ?kri ?prep))
(printout ?*debug* "(rule-deleted_relation-ids    add_from_saMb_rule   kriyA-aXikaraNavAcI_avyaya    "?kri"   " ?where")"crlf)
(printout ?*debug* "(rule-deleted_relation-ids    add_from_saMb_rule   kriyA-object   "?kri"   " ?prep")"crlf)
(assert (prep_id-relation-parser_ids   ?prep  kriyA-from_saMbanXI ?kri ?where))
(assert (rel_has_been_written   ?prep  kriyA-from_saMbanXI  ?kri ?where))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids  " ?prep"   kriyA-from_saMbanXI   "?kri"    "?where")"crlf)
(printout ?*debug* "(Rule-Rel-ids   add_from_saMb_rule   kriyA-from_saMbanXI   "?kri"    "?where")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;The school admits only 50 students at a time.
(defrule add_viSeRya-saMKyA_viSeRaNa
(ol_res_id-word_id-word	?saMKyA	?id	50)
?f<-(prep_id-relation-parser_ids   - viSeRaNa-viSeRaka  ?vi	?saMKyA)
?f1<-(prep_id-relation-parser_ids   - viSeRya-viSeRaNa  ?vi	?saMKyA)
=>
(retract ?f ?f1)
(assert (rel_has_been_deleted  -  viSeRaNa-viSeRaka  ?vi ?saMKyA))
(assert (rel_has_been_deleted  -  viSeRaNa-viSeRaNa  ?vi ?saMKyA))
(printout ?*debug* "(rule-deleted_relation-ids    add_viSeRya-saMKyA_viSeRaNa   viSeRaNa-viSeRaka   "?vi"   " ?saMKyA")"crlf)
(printout ?*debug* "(rule-deleted_relation-ids    add_from_saMb_rule   viSeRya-viSeRaNa    "?vi"   " ?saMKyA")"crlf)
(assert (prep_id-relation-parser_ids   -  viSeRya-saMKyA_viSeRaNa ?vi    ?saMKyA))
(assert (rel_has_been_written  -  viSeRya-saMKyA_viSeRaNa  ?vi ?saMKyA))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  viSeRya-saMKyA_viSeRaNa   "?vi"    "?saMKyA")"crlf)
(printout ?*debug* "(Rule-Rel-ids   add_viSeRya-saMKyA_viSeRaNa   viSeRya-saMKyA_viSeRaNa   "?vi"    "?saMKyA")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;Anne told me I would almost certainly be hired.
(defrule add_kri_vi_viSeRaka_rule
(ol_res_id-word_id-word	?adv1	?id	certainly)
(ol_res_id-word_id-word	?adv2	=(- ?id 1)	almost)
(prep_id-relation-parser_ids   -  kriyA-subject ?kri ?sub)
(parser_id-cat_coarse  ?adv1 adverb)
(parser_id-cat_coarse  ?adv2 adverb)
(test (> (string_to_integer ?kri)(string_to_integer ?adv1)))
=>
(assert (prep_id-relation-parser_ids   -  kriyA-kriyA_viSeRaNa ?kri ?adv1))
(assert (rel_has_been_written  -  kriyA-kriyA_viSeRaNa  ?kri ?adv1))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  kriyA-kriyA_viSeRaNa   "?kri"    "?adv1")"crlf)
(assert (prep_id-relation-parser_ids   - kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka ?adv1 ?adv2))
(assert (rel_has_been_written  - kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka  ?adv1 ?adv2))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka   "?adv1"    "?adv2")"crlf)
(printout ?*debug* "(Rule-Rel-ids   add_kri_vi_viSeRaka_rule   kriyA-kriyA_viSeRaNa   "?kri"    "?adv1")"crlf)
(printout ?*debug* "(Rule-Rel-ids   add_kri_vi_viSeRaka_rule   kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka   "?adv1"    "?adv2")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;Our program is easier to use than to understand.
(defrule add_saMjFA-kqxanwa_rel
(ol_res_id-word_id-word	?P8	?id	than)
(prep_id-relation-parser_ids   - to-infinitive  ?P9	?P10)
?f1<-(prep_id-relation-parser_ids   - kriyA-subject  ?P10	?P3)
(ol_res_id-word_id-word	?P5	?id1	?wrd)
(prep_id-relation-parser_ids   - to-infinitive  ?P6     ?P7)
?f<-(prep_id-relation-parser_ids   - kriyA-kqxanwa_karma  ?P4	?P7)
(test (and (eq (- (string_to_integer ?P9)1)(string_to_integer ?P8)) (eq (- (string_to_integer ?P6)1) (string_to_integer ?P5))(neq ?wrd than)))
=>
(retract ?f ?f1)
(assert (rel_has_been_deleted	-  kriyA-kqxanwa_karma  ?P4 ?P7))
(assert (rel_has_been_deleted   -  kriyA-subject   ?P10 ?P3))
(printout ?*debug* "(rule-deleted_relation-ids    add_saMjFA-kqxanwa_rule   kriyA-kqxanwa_karma    "?P4"   " ?P7")"crlf)
(printout ?*debug* "(rule-deleted_relation-ids    add_saMjFA-kqxanwa_rule   kriyA-subject    "?P10"   " ?P3")"crlf)
(assert (prep_id-relation-parser_ids   - saMjFA-to_kqxanwa ?P5 ?P7))
(assert (rel_has_been_written  -  saMjFA-to_kqxanwa  ?P5 ?P7))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  saMjFA-to_kqxanwa  "?P5"    "?P7")"crlf)
(assert (prep_id-relation-parser_ids   - saMjFA-to_kqxanwa ?P8 ?P10))
(assert (rel_has_been_written  -  saMjFA-to_kqxanwa  ?P8 ?P10))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  saMjFA-to_kqxanwa  "?P8"    "?P10")"crlf)
(printout ?*debug* "(Rule-Rel-ids   add_saMjFA-kqxanwa_rel   saMjFA-to_kqxanwa  "?P5"    "?P7")"crlf)
(printout ?*debug* "(Rule-Rel-ids   add_saMjFA-kqxanwa_rel   saMjFA-to_kqxanwa  "?P8"    "?P10")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;I have been grading these stupid exams all day.
(defrule kri-lupwa_prep
?f1<-(prep_id-relation-parser_ids   - kriyA-object_2  ?k   ?o)
(ol_res_id-word_id-word   ?o ?id1 today|night|yesterday|tomorrow|week|month|year|sunday|monday|tuesday|wednesday|thursday|friday|saturday|january|february|march|april|may|june|july|august|september|october|november|december|season|evening|day)
(ol_res_id-word_id-word   ?id  =(- ?id1 1) ~good) ;He will sing you good night.
=>
(retract ?f1)
(assert (rel_has_been_deleted -  kriyA-object_2   ?k  ?o))
(printout ?*debug* "(rule-deleted_relation-ids    kri-lupwa_prep   kriyA-object_2    "?k"   " ?o")"crlf)
(assert (prep_id-relation-parser_ids   - kriyA-kAlavAcI  ?k  ?o))
(assert (rel_has_been_written  - kriyA-kAlavAcI  ?k ?o))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  kriyA-kAlavAcI  "?k"    "?o")"crlf)
(printout ?*debug* "(Rule-Rel-ids   kri-lupwa_prep   kriyA-kAlavAcI  "?k"    "?o")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;I wonder how big the department is.
(defrule how
?f1<-(prep_id-relation-parser_ids   - viSeRaNa-viSeRaka ?v ?how)
(ol_res_id-word_id-word   ?how? ?id1  how)
?f2<-(prep_id-relation-parser_ids   - ?rel ?s ?how)
(test (neq ?rel viSeRaNa-viSeRaka))
=>
(retract ?f2)
(assert (rel_has_been_deleted  -  ?rel ?s ?how))
(printout ?*debug* "(rule-deleted_relation-ids    how   "?rel "    "?s"   " ?how")"crlf)
(assert (prep_id-relation-parser_ids   -  ?rel ?s ?v))
(assert (rel_has_been_written - ?rel ?s ?v))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -   " ?rel "    "?s"    "?v")"crlf)
(printout ?*debug* "(Rule-Rel-ids    how   " ?rel "     "?s"    "?v")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;How certain are you that John is coming.
(defrule how_1
?f1<-(prep_id-relation-parser_ids   - viSeRaNa-viSeRaka ?v ?how)
(ol_res_id-word_id-word   ?how? ?id1  how)
?f2<-(prep_id-relation-parser_ids   - ?rel  ?how ?s)
(test (neq ?rel viSeRaNa-viSeRaka))
=>
(retract ?f2)
(assert (rel_has_been_deleted -  ?rel  ?how ?s))
(printout ?*debug* "(rule-deleted_relation-ids    how_1   "?rel "    "?how"   " ?s")"crlf)
(assert (prep_id-relation-parser_ids   -  ?rel ?v ?s))
(printout ?*debug* "(Rule-Rel-ids   how_1  " ?rel "   "?s"    "?v")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Police is still hoping to find the dead woman's killer.
(defrule RaRTI_viSeRaNa-vise
(prep_id-relation-parser_ids   -  viSeRya-RaRTI_viSeRaNa ?v ?R)
?f1<-(prep_id-relation-parser_ids   -  viSeRya-viSeRaNa ?v ?x)
(test  (eq (string_to_integer ?x) (- (string_to_integer ?R)1)))
=>
(retract ?f1)
(assert (rel_has_been_deleted -  viSeRya-viSeRaNa   ?v ?x))
(printout ?*debug* "(rule-deleted_relation-ids    RaRTI_viSeRaNa-vise   viSeRya-viSeRaNa    "?v"   " ?x")"crlf)
(assert (prep_id-relation-parser_ids   -  viSeRya-viSeRaNa ?R ?x))
(assert (rel_has_been_written  - viSeRya-viSeRaNa  ?R ?x))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  viSeRya-viSeRaNa   "?R"    "?x")"crlf)
(printout ?*debug* "(Rule-Rel-ids   RaRTI_viSeRaNa-vise   viSeRya-viSeRaNa   "?R"    "?x")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;I was unable to word my feelings at the Ritu's husband's death. 
(defrule RaRTI_viSeRaNa-vise1
(prep_id-relation-parser_ids   -  viSeRya-RaRTI_viSeRaNa ?v ?R)
?f1<-(prep_id-relation-parser_ids   -  viSeRya-RaRTI_viSeRaNa ?v ?x)
(test  (> (string_to_integer ?R)  (string_to_integer ?x)))
=>
(retract ?f1)
(assert (rel_has_been_deleted -  viSeRya-RaRTI_viSeRaNa    ?R    ?x))
(printout ?*debug* "(rule-deleted_relation-ids    RaRTI_viSeRaNa-vise1   viSeRya-RaRTI_viSeRaNa    "?R"   " ?x")"crlf)
(assert (prep_id-relation-parser_ids   -  viSeRya-RaRTI_viSeRaNa    ?R    ?x))
(assert (rel_has_been_written  - viSeRya-RaRTI_viSeRaNa    ?R    ?x))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  viSeRya-RaRTI_viSeRaNa    "?R"    "?x")"crlf)
(printout ?*debug* "(Rule-Rel-ids   RaRTI_viSeRaNa-vise1   viSeRya-RaRTI_viSeRaNa    "?R"   " ?x")"crlf)
)
;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;He told me why he was here and what he was doing.
(defrule del_sub_samAna_with_and
(ol_res_id-word_id-word ?P_and     ?id     and)
(ol_res_id-word_id-word	?kri	=(- ?id 2)	?was)
(ol_res_id-word_id-word	?P_id	=(- ?id 1)	?here)
(prep_id-relation-parser_ids   - kriyA-subject  ?kri	?sub)
?f<-(prep_id-relation-parser_ids   - subject-subject_samAnAXikaraNa  ?sub	?P_and)
=>
(retract ?f)
(assert (rel_has_been_deleted  -  subject-subject_samAnAXikaraNa  ?sub ?P_and))
(printout ?*debug* "(rule-deleted_relation-ids   del_sub_samAna_with_and  subject-subject_samAnAXikaraNa  "?sub "    " ?P_and")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;Many people can speak but only a few can act.
(defrule add_viSeRya_viSeRaka
(ol_res_id-word_id-word	?P_conj	?id  ?conj&~punctuation_mark);Added '&~punctuation_mark' by Roja to avoid join network errors
(ol_res_id-word_id-word	?P_vi	=(+ ?id 1)	only)
(prep_id-relation-parser_ids   - kriyA-conjunction ?kri	?P_conj)
(prep_id-relation-parser_ids   -  kriyA-subject  ?kri ?sub)
=>
(assert (prep_id-relation-parser_ids   - viSeRya-viSeRaka ?sub ?P_vi))
(assert (rel_has_been_written  - viSeRya-viSeRaka  ?sub ?P_vi))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  viSeRya-viSeRaka "?sub"    "?P_vi")"crlf)
(printout ?*debug* "(Rule-Rel-ids add_viSeRya_viSeRaka viSeRya-viSeRaka "?sub"    "?P_vi")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;She was asked about the pay increase but made no comment.
(defrule add_no_as_det_viSeRaNa
(ol_res_id-word_id-word	?verb	?id	made|make|makes)
(ol_res_id-word_id-word	?no	=(+ ?id 1)	no)
(ol_res_id-word_id-word	?P_wrd	=(+ ?id 2)	?wrd)
=>
(assert (prep_id-relation-parser_ids   - viSeRya-det_viSeRaNa ?P_wrd ?no))
(assert (rel_has_been_written  - viSeRya-det_viSeRaNa   ?P_wrd ?no))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  viSeRya-det_viSeRaNa "?P_wrd"    "?no")"crlf)
(printout ?*debug* "(Rule-Rel-ids add_no_as_det_viSeRaNa viSeRya-det_viSeRaNa "?P_wrd"    "?no")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;The Master said, if I did not go, how would you ever see?
(defrule add_ever_as_kri_viSeRaNa
(ol_res_id-word_id-word	?adv	?id	ever)
(ol_res_id-word_id-word	?kri	=(+ ?id 1)	?verb)
(parser_id-cat_coarse  ?kri verb)
=>
(assert (prep_id-relation-parser_ids   - kriyA-kriyA_viSeRaNa ?kri ?adv))
(assert (rel_has_been_written  -  kriyA-kriyA_viSeRaNa   ?kri ?adv))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  kriyA-kriyA_viSeRaNa "?kri"    "?adv")"crlf)
(printout ?*debug* "(Rule-Rel-ids add_ever_as_kri_viSeRaNa kriyA-kriyA_viSeRaNa "?kri"    "?adv")"crlf)
)

;---------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;The girl running to the shop is my friend.
(defrule add_kqxanwa_viSeRaNa_rule
(parser_id-cat_coarse  ?v_noun verb)
(parser_id-cat_coarse  ?sub noun)
(ol_res_id-word_id-word	?sub	?id	?wrd1)
(ol_res_id-word_id-word	?v_noun	=(+ ?id 1)	?wrd2)
(test (eq (sub-string (- (length ?wrd2) 2) (length ?wrd2) ?wrd2) "ing"))
(prep_id-relation-parser_ids   - kriyA-subject  ?kri	?sub)
=>
(assert (rel_has_been_written  -  viSeRya-kqxanwa_viSeRaNa  ?sub ?v_noun))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  viSeRya-kqxanwa_viSeRaNa  "?sub"    "?v_noun")"crlf)
(printout ?*debug* "(Rule-Rel-ids add_kqxanwa_viSeRaNa_rule  viSeRya-kqxanwa_viSeRaNa  "?sub"    "?v_noun")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;It was interesting to hear about school life in Britain.
(defrule s_s_kq_karma
(prep_id-relation-parser_ids   -  subject-subject_samAnAXikaraNa ?s ?ss)
(prep_id-relation-parser_ids   -  kriyA-kqxanwa_karma ?ss ?x)
?f1<-(prep_id-relation-parser_ids   -  kriyA-kqxanwa_karma ?k ?x)
(test (neq ?k ?ss))
=>
(retract ?f1)
(assert (rel_has_been_deleted - kriyA-kqxanwa_karma  ?k ?x))
(printout ?*debug* "(rule-deleted_relation-ids   s_s_kq_karma  kriyA-kqxanwa_karma  "?k"  " ?x")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;The party last week was a big success.
(defrule s_s_sa
?f1<-(prep_id-relation-parser_ids   -  subject-subject_samAnAXikaraNa ?x ?ss)
(prep_id-relation-parser_ids   -  kriyA-subject ?k ?s)
(prep_id-relation-parser_ids   -  kriyA-kAlavAcI ?k ?x)
?f<-(prep_id-relation-parser_ids   -  kriyA-subject ?k ?x)
(test (neq ?s ?x))
=>
(retract ?f ?f1)
(assert (rel_has_been_deleted  - subject-subject_samAnAXikaraNa  ?x ?ss))
(assert (rel_has_been_deleted  - kriyA-subject ?k ?x))
(printout       ?*ol_fp*    "(prep_id-relation-parser_ids   -  subject-subject_samAnAXikaraNa  "?s"  " ?ss")"crlf)
(printout ?*debug* "(Rule-Rel-ids   s_s_sa    subject-subject_samAnAXikaraNa  "?s"    " ?ss")"crlf)
(printout ?*debug* "(Rule-Rel-ids    s_s_sa    subject-subject_samAnAXikaraNa    "?s"   " ?ss")"crlf)
(printout ?*debug* "(rule-deleted_relation-ids    s_s_sa    subject-subject_samAnAXikaraNa    "?x"   " ?ss")"crlf)
(printout ?*debug* "(rule-deleted_relation-ids    s_s_sa   kriyA-subject    "?k"   " ?x")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;The Richard Milhous Nixon Library has been a big success.
(defrule add_kri_sub_for_Pnoun
(declare (salience 500))
(ol_res_id-word_id-word	?been	?id	been)
(ol_res_id-word_id-word ?P_wrd     =(- ?id 2)       ?wrd)
(prep_id-relation-parser_ids   -   proper_noun-waxviSiRta_proper_noun ?vi ?pn)
?f<-(prep_id-relation-parser_ids   -   kriyA-subject ?been ?vi)
=>
(retract ?f)
(assert (rel_has_been_deleted  -  kriyA-subject  ?been  ?vi))
(printout ?*debug* "(rule-deleted_relation-ids   add_kri_sub_for_Pnoun     kriyA-subject    "?been"   " ?vi")"crlf)
(assert (prep_id-relation-parser_ids   -   kriyA-subject  ?been  ?P_wrd))
(printout ?*debug* "(Rule-Rel-ids     add_kri_sub_for_Pnoun   kriyA-subject  "?been"    " ?P_wrd")"crlf)
(assert (prep_id-relation-parser_ids   -   viSeRya-viSeRaNa  ?P_wrd  ?vi))
(printout ?*debug* "(Rule-Rel-ids    add_kri_sub_for_Pnoun    viSeRya-viSeRaNa  "?P_wrd"    " ?vi")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;The Richard Milhous Nixon Library has been a big success.
(defrule add_sub_samAn_for_been
(declare (salience 400))
(ol_res_id-word_id-word	?been	?id	been|be)
(prep_id-relation-parser_ids   -   kriyA-subject ?been ?sub)
?f<-(prep_id-relation-parser_ids   -   kriyA-object ?been ?sub_samAn)
=>
(retract ?f)
(assert (rel_has_been_deleted -  kriyA-object  ?been  ?sub_samAn))
(printout ?*debug* "(rule-deleted_relation-ids    add_sub_samAn_for_been    kriyA-object    "?been"   " ?sub_samAn")"crlf)
(assert (prep_id-relation-parser_ids   -   subject-subject_samAnAXikaraNa   ?sub  ?sub_samAn))
(printout ?*debug* "(Rule-Rel-ids   add_sub_samAn_for_been   subject-subject_samAnAXikaraNa   "?sub"    "?sub_samAn")"crlf)
)
;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;Tomorrow might be a good time for the meeting.
(defrule add_kri_sub_rel
(ol_res_id-word_id-word ?aux		?id	might|could|will|may|can|would)
(ol_res_id-word_id-word	?be	=(+ ?id 1)	be)
(ol_res_id-word_id-word ?sub      =(- ?id 1)       ?wrd)
=>
(assert (prep_id-relation-parser_ids   -   kriyA-subject ?be ?sub))
(assert (rel_has_been_written  -  kriyA-subject ?be ?sub))
(printout ?*debug* "(Rule-Rel-ids   add_kri_sub_rel   kriyA-subject   "?be"    "?sub")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by Meena(1.9.10)
;I have been contemplating on the problem for a long time, but could not get the solution.
(defrule kriya_for_rule
?f1<-(prep_id-relation-parser_ids   ?p  kriyA-for_saMbanXI   ?kri   ?sam)
(parser_id-cat_coarse  ?kri  ~verb)
=>
(retract ?f1)
(assert (rel_has_been_deleted  ?p  kriyA-for_saMbanXI  ?kri  ?sam))
(printout ?*debug* "(rule-deleted_relation-ids    kriya_for_rule    kriyA-for_saMbanXI    "?kri"   " ?sam")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;Many people can speak but only a few can act.
(defrule add_but_conj
(ol_res_id-word_id-word	?con	?id	but)
(ol_res_id-word_id-word ?kri   ?id1   ?v&~punctuation_mark);Added '&~punctuation_mark' by Roja to avoid join network errors.
?f<-(prep_id-relation-parser_ids   -   wall_conjunction ?con)
(prep_id-relation-parser_ids   -   kriyA-subject ?kri ?sub)
(test (> ?id 1))
(test (> ?id1 ?id))
=>
(retract ?f)
(assert (rel_has_been_deleted  -  wall_conjunction ?con))
(printout ?*debug* "(rule-deleted_relation-ids    add_but_conj    wall_conjunction    " ?con")"crlf)
(assert (prep_id-relation-parser_ids   -   kriyA-conjunction  ?kri  ?con))
(printout ?*debug* "(Rule-Rel-ids   add_but_conj   kriyA-conjunction   "?kri"    "?con")"crlf)
)
  
;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;And 21 could stand for the 21 cm radio frequency of hydrogen in space.
(defrule del_of_saM_with_viSeRya
(prep_id-relation-parser_ids   -   viSeRya-viSeRaNa ?P10 ?P9)
?f<-(prep_id-relation-parser_ids   ?p   viSeRya-of_saMbanXI ?P9 ?P12)
=>
(retract ?f)
(assert (rel_has_been_deleted  ?p  viSeRya-of_saMbanXI ?P9 ?P12))
(printout ?*debug* "(rule-deleted_relation-ids    del_of_saM_with_viSeRya    viSeRya-of_saMbanXI    "?P9"   " ?P12")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;And 21 could stand for the 21 cm radio frequency of hydrogen in space.
(defrule del_in_saM_with_viSeRya
(prep_id-relation-parser_ids   ?   viSeRya-viSeRaNa ?P10 ?P9)
?f<-(prep_id-relation-parser_ids   ?p   viSeRya-in_saMbanXI ?P9 ?P14)
=>
(retract ?f)
(assert (rel_has_been_deleted  ?p viSeRya-in_saMbanXI ?P9 ?P14))
(printout ?*debug* "(rule-deleted_relation-ids    del_in_saM_with_viSeRya    viSeRya-in_saMbanXI    "?P9"   " ?P14")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;And 21 could stand for the 21 cm radio frequency of hydrogen in space.
(defrule add_and_as_wall_conj
(ol_res_id-word_id-word	?and	1	and)
?f<-(prep_id-relation-parser_ids   -   kriyA-vAkyakarma ?and  ?id)
=>
(retract ?f)
(assert (rel_has_been_deleted  - kriyA-vAkyakarma ?and  ?id))
(printout ?*debug* "(rule-deleted_relation-ids    add_and_as_wall_conj    kriyA-vAkyakarma    "?and"   " ?id")"crlf)
(assert (prep_id-relation-parser_ids   -   wall_conjunction  ?and))
(printout ?*debug* "(Rule-Rel-ids   add_and_as_wall_conj   wall_conjunction   "?and")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;I left the party after seeing Ann there.
(defrule add_after_saM
(ol_res_id-word_id-word	?prep	?id	after)
(ol_res_id-word_id-word	?P_vn	=(+ ?id 1)	?vn)
(parser_id-cat_coarse  ?P_vn verbal_noun)
(prep_id-relation-parser_ids   -   kriyA-subject ?kri ?sub)
=>
(assert (prep_id-relation-parser_ids   ?prep   kriyA-after_saMbanXI  ?kri ?P_vn))
(assert (rel_has_been_written  ?prep  kriyA-after_saMbanXI  ?kri ?P_vn))
(printout ?*debug* "(Rule-Rel-ids   add_after_saM   kriyA-after_saMbanXI   "?kri"    "?P_vn")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by sheetal
;We now know that there are two thousand elements which we can not use to make a good light bulb.
(defrule add_conj_rel_with_which
(prep_id-relation-parser_ids   -   subject-subject_samAnAXikaraNa ?P_sub ?sub_samAn)
(prep_id-relation-parser_ids   -   viSeRya-jo_samAnAXikaraNa ?sub_samAn ?con)
(prep_id-relation-parser_ids   -   kriyA-subject ?kri ?sub)
(ol_res_id-word_id-word	?con	?id	which)
(ol_res_id-word_id-word	?kri	?id1	?verb)
(test (neq ?sub ?con)) ; Suggested by Sukhada(30-12-10)
(not (prep_id-relation-parser_ids   ?   kriyA-in_saMbanXI ?kri ?con)) ;Is that the film in which he kills his mother.
(test (> ?id1 ?id))
=>
(assert (prep_id-relation-parser_ids   -   kriyA-conjunction ?kri ?con))
(assert (rel_has_been_written - kriyA-conjunction ?kri ?con))
(printout ?*debug* "(Rule-Rel-ids   add_conj_rel_with_which   kriyA-conjunction   "?kri"    "?con")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;We camped there as it was too dark to go on.
(defrule del_kri_vi
?f<-(prep_id-relation-parser_ids   ?   kriyA-kriyA_viSeRaNa ?k ?k_vi)
(prep_id-relation-parser_ids   ?   kriyA-conjunction ?sub ?k_vi)
=>
(retract ?f)
(printout ?*debug* "(rule-deleted_relation-ids   del_kri_vi    kriyA-kriyA_viSeRaNa "?k"   " ?k_vi")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

(defrule del_sub_conj
(prep_id-relation-parser_ids   -   kriyA-subject ?k ?s)
?f<-(prep_id-relation-parser_ids   -   subject-conjunction ?s ?c)
=>
(retract ?f)
(printout ?*debug* "(rule-deleted_relation-ids   del_sub_conj    subject-conjunction "?s"   " ?c")"crlf)
(assert (prep_id-relation-parser_ids   -   kriyA-conjunction ?k ?c))
)

;----------------------------------------------------------------------------------------------------------------------------

(defrule del_sub_conj_1
(declare (salience -40))
?f<-(prep_id-relation-parser_ids   ?   subject-conjunction ?s ?c)
=>
(retract ?f)
(printout ?*debug* "(rule-deleted_relation-ids   del_sub_conj_1    subject-conjunction "?s"   " ?c")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------
;
(defrule and_between_viSeRya-viSeRaNa
(declare (salience 700))
?f<-(prep_id-relation-parser_ids   ?   viSeRya-viSeRaNa ?vi ?vin)
(ol_res_id-word_id-word ?and    ?id     and)
(test (and (< (string_to_integer ?vin) (string_to_integer ?and)) (> (string_to_integer ?vi) (string_to_integer ?and))))
=>
(retract ?f)
(printout ?*debug* "(rule-deleted_relation-ids   and_between_viSeRya-viSeRaNa    viSeRya-viSeRaNa "?vi "  " ?vin")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by Roja
;The upper middle-class tend to go into business.
(defrule delete_rel
(declare (salience -40))
?f<-(prep_id-relation-parser_ids   ?   ?rel ?id ?id1)
(parserid-wordid   ?id 	?wrdid)
(parserid-wordid   ?id1 ?wrdid)
=>
(retract ?f)
(printout ?*debug* "(rule-deleted_relation-ids   delete_rel    "?rel     "   "  ?id  "  " ?id1")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------
;She is making the girl feed the child.
(defrule del_saMjFA-to_kqxanwa
(declare (salience 600))
?f<-(prep_id-relation-parser_ids ?  saMjFA-to_kqxanwa  ?id ?id1)
(root-verbchunk-tam-parser_chunkids   ?root ?verbchunk  $?ids ?id1)
=>
(retract ?f)
(printout ?*debug* "(rule-deleted_relation-ids   del_saMjFA-to_kqxanwa   " ?id  "  " ?id1")"crlf)
)

;----------------------------------------------------------------------------------------------------------------------------

;Added by Roja (27-12-10)
;IN January 1990, a historic new law was passed IN India ON Friday.  
(defrule modify-saMbanXI-rel
(split_tranlevel-ptype-headid-grpids tran3 PP ?head  $?ids)
?f<-(prep_id-relation-parser_ids ?prep ?rel ?kri ?sam)
(test (member$ ?sam  $?ids))
(test (neq (str-index "-" ?rel)  FALSE))
(test (neq (str-index "_" ?rel)  FALSE))
(test (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kriyA"))
(test (eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "saMbanXI"))
(ol_res_id-word_id-word  ?pid  ?id  ?str&:(sub-string (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel) 1) ?rel))
(test (eq (numberp ?str) FALSE)) ;;Added to avoid join network errors.
(test (eq (str-index "." ?str) FALSE)) ;That incident took place in 1800 B.C.  (to avoid kriyA-b.c_saMbanXI)
(test (member$ ?pid  $?ids))
=>
(if (neq ?head ?sam) then 
  (printout ?*ol_fp* "(prep_id-relation-parser_ids   "?prep"  kriyA-"?str"_saMbanXI  " ?kri" "?head")" crlf)
  (printout ?*debug* "(rule-deleted_relation-ids   modify-saMbanXI-rel    "?rel "    "  ?kri  "  " ?sam")"crlf)
  (retract ?f)
))

;----------------------------------------------------------------------------------------------------------------------------
;Removed below three rules from lwg_disambiguation.clp and added here. 
;I am quite excited about next week.
(defrule head_transfer_3
(declare (salience 1502))
(root-verbchunk-tam-parser_chunkids ?root ?xcited ?tam  ?v ?s)
(prep_id-relation-parser_ids  - kriyA-subject  ?s    ?sub)
(ol_res_id-word_id-word ?v     ?i      ?am)
(ol_res_id-word_id-word ?s     ?a      excited|worried)
=>
      (printout       ?*ol_fp*    "(prep_id-relation-parser_ids  - subject-subject_samAnAXikaraNa  "?sub" "?s")"crlf)
)
;---------------------------------------------------------------------------------------------------------
;I am quite excited about next week.
(defrule head_transfer_4
(declare (salience 1502))
(root-verbchunk-tam-parser_chunkids ?root ?am_excited ?tam  ?v ?s)
?f<-(prep_id-relation-parser_ids  - kriyA-kriyA_viSeRaNa  ?s    ?vi)
(ol_res_id-word_id-word ?v     ?i      ?am)
(ol_res_id-word_id-word ?s     ?a      excited|worried)
=>
      (retract ?f)
      (printout       ?*ol_fp*    "(prep_id-relation-parser_ids  - viSeRaNa-viSeRaka  "?s" "?vi")"crlf)
)
;---------------------------------------------------------------------------------------------------------
;I am quite excited about next week.
(defrule head_transfer_1
(declare (salience 150))
(root-verbchunk-tam-parser_chunkids ?root ?am_excited ?tam  ?v ?s)
?f<-(prep_id-relation-parser_ids  ?p ?rel ?s ?l)
(ol_res_id-word_id-word ?v     ?i      ?am)
(ol_res_id-word_id-word ?s     ?a      excited|worried)
=>
      (retract ?f)
      (printout       ?*ol_fp*    "(prep_id-relation-parser_ids  "?p"   "?rel" "?v" "?l")"crlf)
)
;---------------------------------------------------------------------------------------------------------
(defrule write_remaining_relations
(declare (salience -50))
(prep_id-relation-parser_ids   ?p  ?rel ?kri ?id)
(not (and (rel_has_been_deleted ?p ?rel  ?kri ?id)(rel_has_been_written ?p ?rel ?kri ?id)))
=>
     (printout       ?*ol_fp*    "(prep_id-relation-parser_ids "  ?p"  "?rel" " ?kri" " ?id")"crlf)
)

;---------------------------------------------------------------------------------------------------------------------------
;Ex. TELL me a sentence.
(defrule write_AjFArWaka_kriyA_rel
(declare (salience -50))
(prep_id-relation-parser_ids   ?p  ?rel ?kri_id)
(not (or (rel_has_been_deleted  ?p ?rel ?kri_id) (rel_has_been_written ?p ?rel  ?kri_id)))
=>
     (printout       ?*ol_fp*    "(prep_id-relation-parser_ids  " ?p"  "?rel" " ?kri_id")"crlf)
)

;---------------------------------------------------------------------------------------------------------------------------
(defrule write_AjFArWaka_kriyA_rel1
(declare (salience -50))
(prep_id-relation-parser_ids   ?p  ?rel)
(not (or (rel_has_been_deleted ?p ?rel) (rel_has_been_written ?p ?rel)))
=>
     (printout       ?*ol_fp*    "(prep_id-relation-parser_ids   "?p"  "?rel" )"crlf)
)
;---------------------------------------------------------------------------------------------------------------------------
(defrule end
(declare (salience -100))
=>
     (close ?*ol_fp*)
     (close ?*debug*)
)
;---------------------------------------------------------------------------------------------------------------------------
