
(deftemplate score (slot anu_id (default 0))(slot man_id (default 0))(slot weightage_sum (default 0))(multislot heuristics (default 0))(multislot rule_names (default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(slot tam (default 0))(multislot tam_components (default 0))(multislot group_ids (default 0)))

;(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))


(defrule rm_aligned_fact
(declare (salience 1))
(left_over_ids)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ?mid $?)
(score (anu_id ?aid) (man_id ?mid)(heuristics $? anu_exact_match|anu_root_match|hindi_wordnet_match|dictionary_match|single_verb_match $?))
?f0<-(manual_word_info (group_ids $? ?mid $?))
=>
	(retract ?f0)
)

;From there, while circling around runway we reached on the base of [Trans] Maldivian. 
;vahAz se hama ranave kA cakkara kAtawe hue pahuzce [trAzsa] mAlaxIviyana ke besa para .
(defrule rm_aligned_fact1
(left_over_ids)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ?mid $?)
;(not (score (anu_id ?aid) (man_id ?mid)))
(id-cat_coarse ?aid PropN)
(manual_id-wrd-cat ?mid ? NNP|NNPC)
?f0<-(manual_word_info (group_ids $? ?mid $?))
=>
	(retract ?f0)
)
	
(defrule get_head_info
(declare (salience 1))
(rel_name-sids ?rel ?h ?)
(not (manual_word_info))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $? - ?mh $?)
(not  (anu_head-man_head ?h ?))
=>
	(assert (anu_head-man_head ?h ?mh))
)

(defrule get_root
?f0<-(rel_name-sids root 0 ?h)
(not (manual_word_info))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $? - ?mh $?)
=>
	(retract ?f0)
	(assert (relation_name-ids root 0 ?mh))
)

(defrule get_relations
(anu_head-man_head ?h ?mh)
?f0<-(rel_name-sids ?rel ?h ?ac)
(not (manual_word_info))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?ac $? - ?c $?)
=>
        (retract ?f0)
        (assert (relation_name-ids ?rel ?mh ?c))
)
