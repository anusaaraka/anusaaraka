(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (defglobal ?*aper_fp* = ap_fp)

 (defrule delete@in_hmng
 (declare (salience 20))
 ?f0<-(id-HM-source ?id ?mng Original_word)
 (test (neq (str-index "@" (implode$ (create$ ?mng))) FALSE))
 =>
        (retract ?f0)
	(bind ?mng (implode$ (create$ ?mng)))
        (bind ?index (str-index "@" ?mng))
        (bind ?mng (string-to-field (sub-string (+ ?index 1) (length ?mng) ?mng)))
        (assert (id-HM-source ?id ?mng Original_word))
 )
 ;-------------------------------------------------------------------------------------------------
 (defrule delete@in_aper_out
 (declare (salience 20))
 ?f0<-(id-Apertium_output ?id ?mng $?w)
 (test (neq (str-index "@" (implode$ (create$ ?mng))) FALSE))
 =>
        (retract ?f0)
        (bind ?mng (implode$ (create$ ?mng)))
        (bind ?index (str-index "@" ?mng))
        (bind ?mng (string-to-field (sub-string (+ ?index 1) (length ?mng) ?mng)))
        (assert (id-Apertium_output ?id ?mng $?w))
 )
 ;-------------------------------------------------------------------------------------------------
 (defrule get_dummy_fact_Verb
 (declare (salience 10))
 (pada_info (group_head_id ?h)(group_cat VP)(group_ids $?ids)(H_tam ?tam))
 (id-HM-source ?h ?root ?) 
 =>
	(assert (anu_id-node-word-root-tam ?h VP $?ids - ?root - ?tam))
 )
 ;-------------------------------------------------------------------------------------------------
 (defrule get_dummy_fact
 (declare (salience 9))
 (pada_info (group_head_id ?h)(group_cat ?node)(group_ids $?ids)(vibakthi ?tam))
 (id-HM-source ?h ?root ?)
 (test (neq ?node VP))
 =>
        (assert (anu_id-node-word-root-tam ?h ?node $?ids - ?root - ?tam))
 )
 ;-------------------------------------------------------------------------------------------------
 (defrule get_grp_mng
 (declare (salience 5))
 ?f<-(id-Apertium_output ?id $?mng) 
 ?f1<-(anu_id-node-word-root-tam ?h ?node $?pre ?id $?pos - ?root - ?tam)
 =>
	(retract ?f1)
        (assert (anu_id-node-word-root-tam ?h ?node $?pre $?mng $?pos - ?root - ?tam))
 )
 ;-------------------------------------------------------------------------------------------------
 (defrule print_grp_mng
 ?f0<-(anu_id-node-word-root-tam ?id ?node $?mng)
 =>
	(retract ?f0)
	(printout ?*aper_fp* "(anu_id-node-word-root-tam   " ?id"   "?node"   "(implode$ $?mng)")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------

