 (deftemplate tam_tmp_info(slot head_id)(slot eng_tam)(slot hin_tam)(slot subject_vibhakti)(slot preceding_part_of_the_verb))
 (defglobal ?*debug_flag* =  TRUE)
 
 (defrule debug_on
 (declare (salience 8000))
 =>
	(open "debug_file.dat" wsd_fp "a")
 )
 ;------------------------------------------------------------------------------------------------------
 (defrule load_user_tam_file
 (declare (salience 1000))
 (id-TAM ?root_id ?tam)
 (not (file_loaded ?root_id))
 =>
        (bind ?file (str-cat  ?*provisional_wsd_path* "/" ?tam "_tam.clp"))
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
        (bind ?file (str-cat ?*path* "/WSD/wsd_rules/canonical_form_wsd_rules/" ?tam "_tam.clp"))
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
