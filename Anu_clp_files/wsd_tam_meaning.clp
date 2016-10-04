 (deftemplate tam_tmp_info(slot head_id)(slot eng_tam)(slot hin_tam)(slot subject_vibhakti)(slot preceding_part_of_the_verb))
 (defglobal ?*debug_flag* =  TRUE)
 
 (defrule debug_on
 (declare (salience 8000))
 =>
	(open "debug_file.dat" wsd_fp "a")
 )
 ;------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju 14-5-14 -- removes control fact if tam meaning is decided from template
 (defrule rm_cntl_fact_for_template_tam_mng
 (declare (salience 1050))
 (id-E_tam-H_tam_template_mng ?id ?tam ?)
 ?f0<-(id-TAM ?id ?tam)
 =>
	(retract ?f0)
 )

 (defrule load_user_tam_file
 (declare (salience 1000))
 (id-TAM ?root_id ?tam)
 (not (file_loaded ?root_id))
 (not (not_SandBox)) ;Added for server purpose. (Suggested by Chaitanya Sir, Added by Roja(05-07-13))
 =>
        (bind ?file (str-cat  ?*provisional_wsd_path* "/canonical_form_prov_wsd_rules/" ?tam "_tam.clp"));Added canonical_form_prov_wsd_rules by Roja(24-07-14)
        (bind ?file_load (load* ?file))
        (if (eq ?file_load TRUE) then
        (assert (file_loaded ?root_id)))
 )
 ;------------------------------------------------------------------------------------------------------
 (defrule load_suffux_file
 (declare (salience 800))
 (id-TAM ?root_id ?tam)
 (not (file_loaded ?root_id))
 =>
        (bind ?file (str-cat ?*wsd_path* "/canonical_form_wsd_rules/" ?tam "_tam.clp"))
        (bind ?file_load (load* ?file))
        (if (eq ?file_load TRUE) then
        (assert (file_loaded ?root_id)))
 )
 ;------------------------------------------------------------------------------------------------------
 (defrule debug_close
 (declare (salience -10))
 =>
        (close wsd_fp)
 )
 ;------------------------------------------------------------------------------------------------------
