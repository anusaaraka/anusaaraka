 (defglobal ?*lwg_debug_file* = lwg_db_fp)
 (deffunction string_to_integer (?parser_id); [Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))
 ;-------------------------------------------------------------------------------------------------------------------------
; (defrule rule_5
; (declare (salience 4000))
; (rel_name-sids nsubj|nsubjpass ?head ?id1)
; (rel_name-sids aux|auxpass ?head ?id2)
; (rel_name-sids aux|auxpass ?head ?id3)
; (rel_name-sids aux|auxpass ?head ?id4)
; (rel_name-sids aux|auxpass ?head ?id5)
; (test (and (<  (string_to_integer ?id1) (string_to_integer ?id2)) (< (string_to_integer ?id2) (string_to_integer ?id3)) (< (string_to_integer ?id3) (string_to_integer ?id4)) (< (string_to_integer ?id4) (string_to_integer ?id4))))
; (not (grouped_head ?head))
; (parserid-word 
;  =>
; (assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided ?id2 ?id3 ?id4 ?id5  ?head ))
; (assert (grouped_head ?head))
; (printout ?*lwg_debug_file* "(rule_name-grouped_ids rule_5  "?id2 "  "?id3"  "?id4"  "?id5"  "?head ")" crlf)
; )
 ;-------------------------------------------------------------------------------------------------------------------------
 (defrule rule_4
 (declare (salience 3000))
 (rel_name-sids nsubj|nsubjpass ?head ?id1)
 (rel_name-sids aux|auxpass ?head ?id2)
 (rel_name-sids aux|auxpass ?head ?id3)
 (rel_name-sids aux|auxpass ?head ?id4)
 (test (and (<  (string_to_integer ?id1) (string_to_integer ?id2)) (< (string_to_integer ?id2) (string_to_integer ?id3)) (< (string_to_integer ?id3) (string_to_integer ?id4))))
 (not (grouped_head ?head))
 (parserid-word ?id2 ?w)
 (parserid-word ?id3 ?w1)
 (parserid-word ?id4 ?w2)
 (parserid-word ?head ?w3)
 (parser_id-root-category-suffix-number ?head ?root ? ?suf ?) 
 =>
	(bind ?chunk (str-cat (lowcase ?w)"_"?w1"_"?w2"_"?w3))
	(bind ?tam   (str-cat (lowcase ?w)"_"?w1"_"?w2"_"?suf))
	(assert (root-verbchunk-tam-parser_chunkids  ?root  ?chunk ?tam  ?id2 ?id3 ?id4 ?head))
	(assert (grouped_head ?head))
 	(printout ?*lwg_debug_file* "(rule_name-grouped_ids rule_4  "?id2"  " ?id3"  " ?id4"  " ?head ")"crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 (defrule rule_4-1
 (declare (salience 2000))
 (rel_name-sids nsubj|nsubjpass ?kri ?id1)
 (rel_name-sids xcomp ?kri ?head)
 (rel_name-sids aux|auxpass ?head ?id2)
 (rel_name-sids aux|auxpass ?head ?id3)
 (test (and (<  (string_to_integer ?id1) (string_to_integer ?id2)) (< (string_to_integer ?id2) (string_to_integer ?id3))))
 (not (grouped_head ?head))
 (parserid-word ?kri ?w)  (parserid-word ?id2 ?w1)
 (parserid-word ?id3 ?w2) (parserid-word ?head ?w3)
 (parser_id-root-category-suffix-number ?head ?root ? ?suf ?)
  =>
        (bind ?chunk (str-cat (lowcase ?w)"_"?w1"_"?w2"_"?w3))
        (bind ?tam   (str-cat (lowcase ?w)"_"?w1"_"?w2"_"?suf))
        (assert (root-verbchunk-tam-parser_chunkids  ?root  ?chunk ?tam ?kri ?id2 ?id3 ?head))
        (assert (grouped_head ?head))
        (assert (grouped_head ?kri))
        (printout ?*lwg_debug_file* "(rule_name-grouped_ids   rule_3-1  "?kri"  " ?id2" " ?id3"  " ?head ")" crlf)
 )
 ; Added by Shirisha Manju
 ;Broken windows need to be replaced .
 ;-------------------------------------------------------------------------------------------------------------------------
 (defrule rule_3
 (declare (salience 2000))
 (rel_name-sids nsubj|nsubjpass ?head ?id1)
 (rel_name-sids aux|auxpass ?head ?id2)
 (rel_name-sids aux|auxpass ?head ?id3)
 (test (and (<  (string_to_integer ?id1) (string_to_integer ?id2)) (< (string_to_integer ?id2) (string_to_integer ?id3))))
 (not (grouped_head ?head))
 (parserid-word ?id2 ?w)
 (parserid-word ?id3 ?w1)
 (parserid-word ?head ?w2)
 (parser_id-root-category-suffix-number ?head ?root ? ?suf ?)
  =>
	(bind ?chunk (str-cat (lowcase ?w)"_"?w1"_"?w2))
        (bind ?tam   (str-cat (lowcase ?w)"_"?w1"_"?suf))
	(assert (root-verbchunk-tam-parser_chunkids  ?root  ?chunk ?tam  ?id2 ?id3 ?head))
 	(assert (grouped_head ?head))
	(printout ?*lwg_debug_file* "(rule_name-grouped_ids  rule_3  "?id2"  " ?id3" " ?head ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 ;A fat boy had to eat fruits. 
 ;Added by Shirisha Manju (26-05-11) Suggested by Sukhada
 (defrule rule_3_1
 (declare (salience 2000))
 (rel_name-sids nsubj|nsubjpass ?head ?id1)
 (rel_name-sids xcomp ?head ?id2)
 (rel_name-sids aux|auxpass ?id2 ?id3)
 (not (grouped_head ?head))
 (parserid-word ?id2 ?w)
 (parserid-word ?id3 ?w1)
 (parserid-word ?head had)
 (parser_id-root-category-suffix-number ?id2 ?root ? ?suf ?)
  =>
        (bind ?chunk (string-to-field (str-cat "had_"?w1"_"?w)))
        (bind ?tam   (string-to-field (str-cat "had_"?w1"_"?suf)))
        (assert (root-verbchunk-tam-parser_chunkids  ?root  ?chunk ?tam  ?head ?id3 ?id2))
        (assert (grouped_head ?head))
        (printout ?*lwg_debug_file* "(rule_name-grouped_ids  rule_3  "?head"  " ?id3" " ?id2 ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------- 
 ;Added by Roja(17-08-11) To group 'should' and 'be'.
 ;He said such results should be "measurable in dollars and cents" in reducing the U.S. trade deficit with Japan.
 (defrule rule_3_2
 (declare (salience 1100))
 (rel_name-sids nsubj|nsubjpass ?head ?id1)
 (rel_name-sids aux|auxpass ?head ?id2)
 ?f<-(rel_name-sids cop ?head ?id3)
 (test (< (string_to_integer ?id1) (string_to_integer ?id2)))
 (not (grouped_head ?head))
 (parserid-word ?id2 ?w)
 (parserid-word ?id3 ?w1)
 (parser_id-root-category-suffix-number ?id3 ?root ? ?suf ?)
  =>
 ;       (retract ?f)
        (bind ?chunk (string-to-field (str-cat (lowcase ?w)"_"?w1)))
        (bind ?tam   (string-to-field (str-cat (lowcase ?w)"_"?suf)))
        (assert (root-verbchunk-tam-parser_chunkids  ?root  ?chunk ?tam  ?id2 ?id3))
        (assert (grouped_head ?id3))(assert (grouped_head ?head))
        (printout ?*lwg_debug_file* "(rule_name-grouped_ids   rule_3_2  "?id2"  "  ?id3 ")"  crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 (defrule rule_2
 (declare (salience 1000))
 (rel_name-sids nsubj|nsubjpass ?head ?id1)
 (rel_name-sids aux|auxpass ?head ?id2)
 (test (< (string_to_integer ?id1) (string_to_integer ?id2)))
 (not (grouped_head ?head))
 (parserid-word ?id2 ?w&~to) ; Added by Shirisha Manju Ex :The instructor persuaded Mary to take that course .
 (parserid-word ?head ?w1)
 (parser_id-root-category-suffix-number ?head ?root ? ?suf ?)
  =>
        (bind ?chunk (string-to-field (str-cat (lowcase ?w)"_"?w1)))
        (bind ?tam   (string-to-field (str-cat (lowcase ?w)"_"?suf)))
        (assert (root-verbchunk-tam-parser_chunkids  ?root  ?chunk ?tam ?id2 ?head))
 	(assert (grouped_head ?head))
	(printout ?*lwg_debug_file* "(rule_name-grouped_ids   rule_2  "?id2"  "  ?head ")"  crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (14-05-11); Do not waste electricity.
 (defrule rule_2-1
 (declare (salience 900))
 (rel_name-sids aux|auxpass ?head ?id1)
 (not (rel_name-sids nsubj ?head ?))
 (not(rel_name-sids cop ?head ?))
 (not (grouped_head ?head))
 (parserid-word ?id1 ?w&~to)
 (parserid-word ?head ?w1)
 (parser_id-root-category-suffix-number ?head ?root ? ?suf ?)
  =>
        (bind ?chunk (string-to-field (str-cat (lowcase ?w)"_"?w1)))
	(assert (root-verbchunk-tam-parser_chunkids  ?root  ?chunk imper_0  ?id1 ?head))
  	(assert (grouped_head ?head))
   	(assert (tam_imper_decided))
	(printout ?*lwg_debug_file* "(rule_name-grouped_ids   rule_2-1  "?id1" " ?head ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 (defrule rule_2-2
 (declare (salience 900))
 (rel_name-sids aux|auxpass ?head ?id1)
 (rel_name-sids nsubj ?head ?); added to deferentiate imer sentence
 (not(rel_name-sids cop ?head ?))
 (not (grouped_head ?head))
 (parserid-word ?id1 ?w&~to)
 (parserid-word ?head ?w1)
 (parser_id-root-category-suffix-number ?head ?root ? ?suf ?)
  =>
        (bind ?chunk (str-cat (lowcase ?w)"_"?w1))
	(bind ?tam   (str-cat (lowcase ?w)"_"?suf))
        (assert (root-verbchunk-tam-parser_chunkids  ?root  ?chunk ?tam ?id1 ?head))
 	(assert (grouped_head ?head))
	(printout ?*lwg_debug_file* "(rule_name-grouped_ids   rule_2-2  "?id1" " ?head ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 ;Ex:-You are lucky I am here .
 (defrule rule_1
 (declare (salience 900))
 (rel_name-sids nsubj|auxpass ?head ?id1)
 (not(rel_name-sids cop|aux ?head ?)); Added "aux" by Shirisha Manju Ex :The instructor persuaded Mary to take that course .
 (not (parser_id-cat_coarse  ?head  adjective)) ; Added by Manju Ex :I consider him intelligent.
 (not (grouped_head ?head))
 (parserid-word ?head ?w1)
  =>
	(assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided ?w1  tam_to_be_decided  ?head))
 	(assert (grouped_head ?head))
 	(printout ?*lwg_debug_file* "(rule_name-grouped_ids    rule_1  " ?head ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 ;Ex:-You are lucky I am here .
 (defrule rule_1-1
 (declare (salience 901))
 (rel_name-sids nsubj|nsubjpass ?id ?id1)
 (rel_name-sids cop ?id ?head)
 (not (grouped_head ?head))
 (parserid-word ?head ?w1)
 =>
 	(assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided ?w1  tam_to_be_decided ?head))
 	(assert (grouped_head ?head))
 	(printout ?*lwg_debug_file* "(rule_name-grouped_ids  rule_1-1  " ?head ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 ;Petu ran fast but missed the bus.
 ; Added by Shirisha Manju (20-01-11) suggested by sukhada
 (defrule rule_1-2
 (declare (salience 900))
 (rel_name-sids dobj ?id ?id1)
 (not (rel_name-sids nsubj ?id ?head))
 (not (rel_name-sids aux ?id ?)) ;But my efforts to win his heart have failed.
 (not (rel_name-sids conj_or ? ?id));He may drink milk or eat apples. (22-01-11)
 (not (rel_name-sids conj_and ? ?id))
 (rel_name-sids ?prepc ? ?id)
 (test (neq (sub-string 1 6 ?prepc) "prepc_")) ;He made a mistake in inviting John.
 (not (grouped_head ?id))
 (parserid-word ?id ?w1)
 =>
 	(assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided ?w1  tam_to_be_decided ?id))
	(assert (grouped_head ?id))
	(printout ?*lwg_debug_file* "(rule_name-grouped_ids  rule_1-2  " ?id ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 ;Are a dog and a cat here? 
 ; Added by Shirisha Manju (26-01-11) suggested by sukhada
 (defrule rule_1-3
 (declare (salience 850))
 (rel_name-sids cop ?id P1)
 (not (grouped_head P1))
 (parserid-word P1 ?w1)
 =>
 	(assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided ?w1 tam_to_be_decided P1))
	(assert (grouped_head P1))	
	(printout ?*lwg_debug_file* "(rule_name-grouped_ids  rule_1-3    P1)" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 ; Do this in your room. Go home.
 ; Added by Shirisha Manju (13-05-11) suggested by sukhada
 (defrule rule_1-4
 (declare (salience 700))
 (rel_name-sids ?rel ?id1 ?id)
 (parser_id-cat_coarse  ?id1  verb)
 (not (rel_name-sids nsubj ?id1 ?))
 (not (rel_name-sids xcomp ? ?id1));He wasted his golden opportunity to play in the national team. 
 (not (rel_name-sids infmod ? ?id1));But my efforts to win his heart have failed.
 (not (basic_rel_name-sids pcomp ? ?id1));I yelled at her for going to the party.
 (not (rel_name-sids partmod ? ?id1)) ;I have been running about all morning trying to find you. (16-05-11)
 (not (grouped_head ?id1))
 (test (and (neq ?rel cop)(neq ?rel aux)(neq ?rel advmod)));He is a well known scientist.
 (parserid-word ?id1 ?w1)
 =>
	(assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided ?w1  imper ?id1))
	(assert (grouped_head ?id1))
	(assert (tam_imper_decided))
	(printout ?*lwg_debug_file* "(rule_name-grouped_ids  rule_1-4    "?id1")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (14-05-11)
 ; Do not waste electricity. Do not shut the door.
 ; Ex:-I will not do it . 
 (defrule not_rule
 (declare (salience 800))
 (rel_name-sids neg ?head ?not)
 ?f1<-(parserid-word ?not not)
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vbchunk  ?tam $?ids ?head)
 (test (not (member$ ?not $?ids)))
 (test (and (> (string_to_integer  ?not) (string_to_integer  (nth$ 1 $?ids))) (< (string_to_integer  ?not) (string_to_integer  ?head))))
  =>
  	(retract ?f )
	(bind ?id (string-to-field (implode$ $?ids)))
        (bind ?index (str-index "_" ?tam))
        (bind ?index1 (str-index "_" ?vbchunk))
	(bind ?chunk (sym-cat (sub-string 1 ?index1 ?vbchunk)"not_" (sub-string (+ ?index1 1) 1000 ?vbchunk)))
	(bind ?tam (sym-cat (sub-string 1 ?index ?tam) "not_" (sub-string (+ ?index 1) 1000 ?tam)))
  	(assert (root-verbchunk-tam-parser_chunkids ?root ?chunk  ?tam ?id ?not ?head ))
	(printout ?*lwg_debug_file* "(rule_name-grouped_ids   not_rule " ?head " "?not " "?id ")" crlf)
  )
  ;-------------------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (27-09-11)
 ; But that will not be easy. He should not be a student.
 (defrule not_rule1
 (declare (salience 800))
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vbchunk  ?tam $?ids ?head)
 (rel_name-sids cop ?id ?head)
 (rel_name-sids neg ?id ?not)
 ?f1<-(parserid-word ?not not)
 (test (not (member$ ?not $?ids)))
 (test (and (> (string_to_integer  ?not) (string_to_integer  (nth$ 1 $?ids))) (< (string_to_integer  ?not) (string_to_integer  ?head))))
  =>
        (retract ?f )
        (bind ?id (string-to-field (implode$ $?ids)))
        (bind ?index (str-index "_" ?tam))
        (bind ?index1 (str-index "_" ?vbchunk))
        (bind ?chunk (sym-cat (sub-string 1 ?index1 ?vbchunk)"not_" (sub-string (+ ?index1 1) 1000 ?vbchunk)))
        (bind ?tam (sym-cat (sub-string 1 ?index ?tam) "not_" (sub-string (+ ?index 1) 1000 ?tam)))
        (assert (root-verbchunk-tam-parser_chunkids ?root ?chunk  ?tam ?id ?not ?head ))
        (printout ?*lwg_debug_file* "(rule_name-grouped_ids   not_rule " ?head " "?not " "?id ")" crlf)
  )
  ;-------------------------------------------------------------------------------------------------------------------------
 ;
 ;He may drink milk or eat apples.
 ;I ate fruits, drank milk and slept.  
 (defrule cc_rule
 (declare (salience 750))
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?verb_chunk  ?tam $?ids ?head)
 (rel_name-sids conj_or|conj_and ?head ?cc) 
 (parser_id-cat_coarse  ?cc  verb);The City Palace was built by Maharaja Jai Singh II and is a synthesis of Mughal and Rajasthani architecture. 
 (not (grouped_head ?cc))
  =>
	(assert (root-verbchunk-tam-parser_chunkids ?root ?verb_chunk  ?tam $?ids ?cc))
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
 ?f<-(root-verbchunk-tam-parser_chunkids ?rt ?vb_chunk  ?tam $?ids1 ?head)
 ?f1<-(root-verbchunk-tam-parser_chunkids root_to_be_decided ?verb_chunk  tam_to_be_decided ?cau_vrb)
 (not (causative_head ?cau_vrb))
  =>
 	(retract ?f ?f1)
 	(assert(verb_type-verb-causative_verb-tam causative ?head ?cau_vrb ?tam))
 	(bind ?chunk (string-to-field (str-cat ?vb_chunk"_"?verb_chunk)))
	(bind ?root (string-to-field (str-cat ?root"_"?verb_chunk)))
 	(assert(root-verbchunk-tam-parser_chunkids ?root ?chunk  ?tam $?ids1 ?head ?cau_vrb))
	(assert (causative_head ?cau_vrb))
 	(printout ?*lwg_debug_file* "(rule_name-grouped_ids   causitive_verb_rule " $?ids1 ?head ?cau_vrb ")" crlf)
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
 (not (tam_imper_decided)) ; Added by Shirisha Manju (13-05-11) ;Do this in your room.
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
 	(assert (root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?suf2 $?ids ?id ?head))
 	(printout ?*lwg_debug_file* "(rule_name-grouped_ids  distinct_participle_tam " $?ids ?id ?head ")" crlf)
 ) 
 ;-------------------------------------------------------------------------------------------------------------------------
