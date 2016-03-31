(defglobal ?*hin_p_wrd* = h_p_wrd )

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))

;==================== to generate hindi parser debug info ==========================

(defrule get_hnd_rel_root_wrd
(declare (salience 1001))
(relation_name-rel_ids root 0 ?id)
(manual_id-word ?id ?w)
(not (got_wrd ?id ?w))
=>
        (printout ?*hin_p_wrd* "(hnd_rel_name-h_wrd-c_wrd       root            0               "?w " )" crlf)
        (assert (got_wrd ?id ?w))
)

(defrule get_hnd_rel_wrds
(declare (salience 1000))
(relation_name-rel_ids ?rel ?id ?id1)
(manual_id-word ?id ?w)
(manual_id-word ?id1 ?w1)
(not (got_wrd ?id1 ?w1))
=>
        (printout ?*hin_p_wrd* "(hnd_rel_name-h_wrd-c_wrd       "?rel"          "?w"            "?w1" )" crlf)
        (assert (got_wrd ?id1 ?w1))
)

;(defrule rm_punc_rel
;(declare (salience 911))
;?f0<-(relation_name-rel_ids punct ?id ?id1)
;=>
;        (retract ?f0)
;)
;
;======================= group and modify prep rels ===========================

(defrule get_multi_prep_fact
(declare (salience 910))
(manual_word_info (head_id ?h) (word ?w)(vibakthi $?p ?v $?p1)(group_ids $?g ?id $?g1))
(manual_id-word ?id ?v)
(test (or(neq (length $?p) 0)(neq (length $?p1) 0)))
(not (got_prep_head ?h))
=>
        (assert (prep_lst ?h ?id))
        (assert (got_prep_head ?h))
)
;---------------------------------------------------------------------------
(defrule grp_multi_prep
(declare (salience 910))
(manual_word_info (head_id ?h) (word ?w)(vibakthi $?p ?v $?p1)(group_ids $?g ?id $?g1))
(manual_id-word ?id ?v)
(test (or(neq (length $?p) 0)(neq (length $?p1) 0)))
?f0<-(prep_lst ?h $?d)
(test (eq (integerp (member$ ?id $?d)) FALSE))
=>
        (retract ?f0)
        (bind $?ids (sort > (create$ $?d ?id)))
        (assert (prep_lst ?h $?ids))
)
;---------------------------------------------------------------------------
;(prep_lst 16 17 18 19) =>  (hnd_rel_name-h_wrd-c_wrds 19 case - 16 17 18 19)
(defrule get_case_rel
(declare (salience 905))
?f0<-(prep_lst ?h $?d ?id2)
(not (got_prep_fact ?h))
=>
        (assert (hnd_rel_name-h_id-c_ids ?id2 case - ?h $?d ?id2))
        (assert (got_prep_fact ?h))
)

;---------------------------------------------------------------------------
;(hnd_rel_name-h_wrd-c_wrds 19 case - 16 17 18 19)  
;(relation_name-rel_ids nmod 18 16)         => (hnd_rel_name-h_wrd-c_wrds 19 nmod - 18 16 17 18 19)         
(defrule grp_mul_prep
(declare (salience 904))
(prep_lst ?h $?)
?f<-(hnd_rel_name-h_id-c_ids ?id2 case - ?h $?d)
?f0<-(relation_name-rel_ids ?r ?in ?h)
=>
        (retract ?f ?f0)
        (assert (hnd_rel_name-h_id-c_ids ?id2 ?r $?d - ?in ?h $?d))
)
;---------------------------------------------------------------------------
;(prep_lst 16 17 18 19)
;(relation_name-rel_ids case 18 19)
(defrule rm_rel_between_prep_ids
(declare (salience 903))
(prep_lst ?h $?ids)
?f0<-(relation_name-rel_ids ? ?id ?id1)
(test (and (member$ ?id $?ids)(member$ ?id1 $?ids)))
=>
        (retract ?f0)
)
;---------------------------------------------------------------------------
;(hnd_rel_name-h_wrd-c_wrds 19 nmod - 18 16 17 18 19)
;(relation_name-rel_ids case 16 17) -- remove this rel
(defrule rm_prep_rel
(declare (salience 902))
(prep_lst ?h $?d)
(hnd_rel_name-h_id-c_ids ?id2 ?r $? - ?in ?h $?d)
?f0<-(relation_name-rel_ids ? ?h ?id)
(test (member$ ?id $?d))
=>
        (retract ?f0)
)
;---------------------------------------------------------------------------
(defrule modify_out_if_prep_id
(declare (salience 902))
(prep_lst ?h $?ids)
?f0<-(hnd_rel_name-h_id-c_ids ?id ?r $? - ?out ?h $?ids)
?f1<-(relation_name-rel_ids ?rel ?in ?out)
(test (member$ ?out $?ids))
=>
        (retract ?f0 ?f1)
        (assert (hnd_rel_name-h_id-c_ids ?id ?rel - ?in ?h $?ids))
)
;
;(defrule modify_out_if_prep_id1
;(declare (salience 902))
;(prep_lst ?h $?ids)
;?f1<-(relation_name-rel_ids ?rel ?in ?out)
;?f2<-(relation_name-rel_ids ?r ?out ?out1)
;(test (member$ ?out $?ids))
;=>
;        (retract ?f1 ?f2)
;        (assert (hnd_rel_name-h_wrd-c_wrds ?out1 ?rel - ?in ?out1))
;)

(defrule grp_case
(declare (salience 901))
?f<-(relation_name-rel_ids ?r ?id ?n)
?f0<-(relation_name-rel_ids case ?n ?prep)
=>
	(retract ?f ?f0)
	(assert (hnd_rel_name-h_id-c_ids ?prep ?r ?prep - ?id ?n ?prep))
)

(defrule def_rel
(declare (salience 850))
?f0<-(relation_name-rel_ids ?rel ?id ?id1)
=>
        (retract ?f0)
        (assert (hnd_rel_name-h_id-c_ids ?id1 ?rel - ?id ?id1))
)












