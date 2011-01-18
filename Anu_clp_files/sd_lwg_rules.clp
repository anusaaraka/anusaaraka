 (defglobal ?*lwg_debug_file* = lwg_db_fp)
(deffunction string_to_integer (?link_id); [Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?link_id)))

 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))
 ;-------------------------------------------------------------------------------------------------------------------------
 (defrule rule_5
 (declare (salience 4000))
 (rel_name-sids nsubj|nsubjpass ?head ?id1)
 (rel_name-sids aux|auxpass ?head ?id2)
 (rel_name-sids aux|auxpass ?head ?id3)
 (rel_name-sids aux|auxpass ?head ?id4)
 (rel_name-sids aux|auxpass ?head ?id5)
 (test (and (<  (string_to_integer ?id1) (string_to_integer ?id2)) (< (string_to_integer ?id2) (string_to_integer ?id3)) (< (string_to_integer ?id3) (string_to_integer ?id4)) (< (string_to_integer ?id4) (string_to_integer ?id4))))
 (not (grouped_head ?head))
  =>
 (assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided ?id2 ?id3 ?id4 ?id5  ?head ))
 (assert (grouped_head ?head))
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids rule_5  "?id2 "  "?id3"  "?id4"  "?id5"  "?head ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 (defrule rule_4
 (declare (salience 3000))
 (rel_name-sids nsubj|nsubjpass ?head ?id1)
 (rel_name-sids aux|auxpass ?head ?id2)
 (rel_name-sids aux|auxpass ?head ?id3)
 (rel_name-sids aux|auxpass ?head ?id4)
 (test (and (<  (string_to_integer ?id1) (string_to_integer ?id2)) (< (string_to_integer ?id2) (string_to_integer ?id3)) (< (string_to_integer ?id3) (string_to_integer ?id4))))
  (not (grouped_head ?head))
 =>
(assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided ?id2 ?id3 ?id4 ?head))
 (assert (grouped_head ?head))
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids rule_4  "?id2"  " ?id3"  " ?id4"  " ?head ")"crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 (defrule rule_3
 (declare (salience 2000))
 (rel_name-sids nsubj|nsubjpass ?head ?id1)
 (rel_name-sids aux|auxpass ?head ?id2)
 (rel_name-sids aux|auxpass ?head ?id3)
 (test (and (<  (string_to_integer ?id1) (string_to_integer ?id2)) (< (string_to_integer ?id2) (string_to_integer ?id3))))
 (not (grouped_head ?head))
  =>
 (assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided ?id2 ?id3  ?head))
 (assert (grouped_head ?head))
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids  rule_3  "?id2"  " ?id3" " ?head ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 (defrule rule_3-1
 (declare (salience 2000))
 (rel_name-sids nsubj|nsubjpass ?kri ?id1)
 (rel_name-sids xcomp ?kri ?head)
 (rel_name-sids aux|auxpass ?head ?id2)
 (rel_name-sids aux|auxpass ?head ?id3)
 (test (and (<  (string_to_integer ?id1) (string_to_integer ?id2)) (< (string_to_integer ?id2) (string_to_integer ?id3))))
 (not (grouped_head ?head))
  =>
 (assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided ?kri ?id2 ?id3  ?head))
 (assert (grouped_head ?head))
  (assert (grouped_head ?kri))
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids   rule_3-1  "?kri"  " ?id2" " ?id3"  " ?head ")" crlf)
 )
 ; Added by Shirisha Manju
 ;Broken windows need to be replaced .
 ;-------------------------------------------------------------------------------------------------------------------------
 (defrule rule_2
 (declare (salience 1000))
 (rel_name-sids nsubj|nsubjpass ?head ?id1)
 (rel_name-sids aux|auxpass ?head ?id2)
 (test (< (string_to_integer ?id1) (string_to_integer ?id2)))
 (not (grouped_head ?head))
 (parserid-word ?id2 ~to) ; Added by Shirisha Manju Ex :The instructor persuaded Mary to take that course .
  =>
 (assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided ?id2  ?head))
 (assert (grouped_head ?head))
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids   rule_2  "?id2"  "  ?head ")"  crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 ;Ex:-You are lucky I am here .
 (defrule rule_1-0
 (declare (salience 900))
 (rel_name-sids nsubj|auxpass ?head ?id1)
 (not(rel_name-sids cop|aux ?head ?)); Added "aux" by Shirisha Manju Ex :The instructor persuaded Mary to take that course .
 (not (parser_id-cat_coarse  ?head  adjective)) ; Added by Manju Ex :I consider him intelligent.
 (not (grouped_head ?head))
  =>
 (assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided  ?head))
 (assert (grouped_head ?head))
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids    rule_1-0  " ?head ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 (defrule rule_1-1
 (declare (salience 900))
 (rel_name-sids aux|auxpass ?head ?id1)
 (not(rel_name-sids cop ?head ?))
 (not (grouped_head ?head))
 (parserid-word ?id1 ~to)
  =>
(assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided  ?id1 ?head))
 (assert (grouped_head ?head))
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids   rule_1-1  "?id1" " ?head ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 ;Ex:-You are lucky I am here .
 (defrule rule_1-2
 (declare (salience 901))
 (rel_name-sids nsubj|nsubjpass ?id ?id1)
 (rel_name-sids cop ?id ?head)
 (not (grouped_head ?head))
 =>
 (assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided ?head))
 (assert (grouped_head ?head))
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids  rule_1-2  " ?head ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 ; Ex:-I will not do it . 
 (defrule not_rule
 (declare (salience 800))
 (rel_name-sids neg ?head ?not)
 ?f1<-(parserid-word ?not not)
 ?f<-(root-verbchunk-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided $?ids)
 (test (and (not (member$ ?not $?ids))(member$ ?head $?ids)))
 (test (and (> (string_to_integer  ?not) (string_to_integer  (nth$ 1 $?ids))) (< (string_to_integer  ?not) (string_to_integer  (nth$ (length $?ids) $?ids)))))
  =>
  (retract ?f )
  (bind ?len (length $?ids))
  (loop-for-count (?i 1 ?len)
                  (bind ?j (nth$ ?i $?ids))
                  (if (> (string_to_integer ?not) (string_to_integer ?j)) then
                      (bind ?pos (member$ ?j $?ids))
                      (bind $?ids (insert$ $?ids (+ ?pos 1) ?not))
                      (break)
                   ))
                  
  (assert (root-verbchunk-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided $?ids))
  (printout ?*lwg_debug_file* "(rule_name-grouped_ids   not_rule " $?ids ")" crlf)
  )
  ;-------------------------------------------------------------------------------------------------------------------------
 ;He may drink milk or eat apples.
 ;I ate fruits, drank milk and slept.  
 (defrule cc_rule
 (declare (salience 750))
 ?f<-(root-verbchunk-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided $?ids ?head)
 (rel_name-sids conj_or|conj_and ?head ?cc) 
 (not (grouped_head ?cc))
  =>
 (assert (root-verbchunk-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided $?ids ?cc))
 (assert (grouped_head ?cc))
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids cc_rule  "$?ids ?cc ")" crlf)
 ) 
 ;-------------------------------------------------------------------------------------------------------------------------
 ;She is making the girl feed the child .
 ;She made the girl feed the child .
 (defrule causitive_verb_rule
 (declare (salience 700))
 (rel_name-sids ccomp ?head ?cau_vrb)
 (parser_id-root-category-suffix-number  ?head ?root&get|make|have verb ? ?)
 ?f<-(root-verbchunk-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided $?ids1 ?head)
 ?f1<-(root-verbchunk-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided ?cau_vrb)
 (not (causative_head ?cau_vrb))
  =>
 (retract ?f ?f1)
 (assert(verb_type-verb-causative_verb-tam causative ?head ?cau_vrb tam_to_be_decided))
 (assert(root-verbchunki-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided $?ids1 ?head ?cau_vrb))
 (assert (causative_head ?cau_vrb))
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids   causitive_verb_rule " $?ids1 ?head ?cau_vrb ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 (defrule get_eng_word_list
 (declare (salience 650))
 (parserid-word ?id ?word)
 ?f1<-(index ?id)
 ?f<-(English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (bind ?word (str-cat ?word ""))
 (assert (English-list $?Eng_list ?word))
 (bind ?id (string_to_integer ?id))
 (bind ?id (+ ?id 1))
 (bind ?id (explode$ (str-cat P ?id)))
 (assert (index ?id))
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 (defrule substitute_root_vrbchnk_tam
 (declare (salience 600))
 ?f<-(root-verbchunk-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided $?ids)
 (parser_id-root-category-suffix-number  ?head&=(nth$ (length $?ids) $?ids)   ?root verb ?suf ?num)
 (English-list $?Eng_list)
 =>
 (retract ?f)
 (bind ?len (length $?ids))
 (bind ?vrb_chunk (lowcase (nth$ (string_to_integer (nth$ 1 $?ids)) $?Eng_list)))
 (loop-for-count (?i 2 (- ?len 1)) 
                 (bind ?k (nth$ ?i $?ids))
                 (bind ?j (string_to_integer ?k))
                 (bind ?vrb_chunk (str-cat ?vrb_chunk "_" (lowcase (nth$ ?j $?Eng_list))))
  )  
  (if (> ?len 1) then
     (bind ?vrb_chunk1 (explode$ (str-cat ?vrb_chunk "_" (lowcase (nth$ (string_to_integer ?head) $?Eng_list)))))
     (bind ?tam (explode$ (str-cat ?vrb_chunk "_" ?suf)))
     (assert (root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk1 ?tam $?ids))
 else 
 (assert (root-verbchunk-tam-parser_chunkids root_to_be_decided ?vrb_chunk tam_to_be_decided $?ids)))
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 ;Ex:- What did he eat?
 (defrule q_tam
 (declare (salience 550))
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?tam ?head $?ids)
 (parser_id-root-category-suffix-number  ?head  ?root1 verb ?suf ?)
 (parserid-word ?head ?word1)
 (test (or(eq (lowcase ?word1) does)(eq (lowcase ?word1) do)(eq (lowcase ?word1) did)))
 (parserid-word P1 ?word)
 (test (or(eq (lowcase ?word) does)(eq (lowcase ?word) do)(eq (lowcase ?word) did)(eq (lowcase ?word) why)(eq (lowcase ?word) what)(eq (lowcase ?word) where)(eq (lowcase ?word) whose)(eq (lowcase ?word) how)(eq (lowcase ?word) who)(eq (lowcase ?word) when)(eq (lowcase ?word) are)(eq (lowcase ?word) am)(eq (lowcase ?word) is)))
 (not (q_tam_modified ?head))
 =>
 (retract ?f)
     (bind ?vrb_chunk1 (explode$ (str-cat "q_" ?vrb_chunk )))
     (assert (root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk1 ?suf ?head $?ids))
 (assert (q_tam_modified ?head))
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids   q_tam  "?head $?ids ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
; When a verb does not have a distinct participle form (e.g. come, cut, put etc.) we can decide it is used for the participle function if it is preceded by an auxiliary -- is, am, are,was, were, have, has, had.
; It is likely they will come . 
 (defrule distinct_participle_tam
 (declare (salience 560))
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?tam $?ids ?id ?head)
 (word-morph (root      ?root)(category verb)(suffix    ?suf1))
 (word-morph (root      ?root)(category verb)(suffix    ?suf))
 (test (neq ?suf1 ?suf))
 (test (neq ?suf en))
 (test (eq ?root come))
 (not (parserid-word ?id ?word&is|am|are|was|were|have|has|had))
 (not (distinct_participle_check_id ?head))
  =>
 (retract ?f)
 (assert (distinct_participle_check_id ?head))
 (bind ?index (str-index  "_" ?tam ))
 (bind ?sub_str (sub-string 1 ?index ?tam))
 (bind ?suf2 (explode$ (str-cat ?sub_str ?suf)))
 (printout t ?sub_str)
 (assert (root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?suf2 $?ids ?id ?head))
 (printout ?*lwg_debug_file* "(rule_name-grouped_ids  distinct_participle_tam " $?ids ?id ?head ")" crlf)
 ) 
 ;-------------------------------------------------------------------------------------------------------------------------
