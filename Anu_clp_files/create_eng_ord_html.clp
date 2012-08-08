 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (deffunction string_to_integer (?parser_id)
 (string-to-field (sub-string 2 10000 ?parser_id)))

 (deffunction print_head_info ()
 (printout fp "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" crlf)
 (printout fp "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"\">" crlf)
 (printout fp "<html xmlns=\"http://www.w3.org/1999/xhtml\">" crlf)
 (printout fp "<head>" crlf)
 (printout fp "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />" crlf)
 (printout fp "<link href=\"style.css\" type=\"text/css\" rel=\"stylesheet\" />" crlf)
 (printout fp "<link href=\"english_hindi.css\" type=\"text/css\" rel=\"stylesheet\" />" crlf)
 (printout fp "<script src=\"script.js\" type=\"text/javascript\"></script>" crlf)
 (printout fp "<script src=\"open.js\" type=\"text/javascript\"></script>" crlf)
 (printout fp "<script src=\"english_hindi.js\" type=\"text/javascript\"></script>" crlf)
 (printout fp "<script src=\"prototype.js\" type=\"text/javascript\"></script>" crlf)
 (printout fp "<script src=\"effects.js\" type=\"text/javascript\"></script>" crlf)
 (printout fp "<script src=\"dragdrop.js\" type=\"text/javascript\"></script>" crlf)
 (printout fp "<script src=\"popup.js\" type=\"text/javascript\"></script>" crlf)
 (printout fp "<script src=\"shabdanjali.js\" type=\"text/javascript\"></script>" crlf)
 (printout fp "<script src=\"cautions.js\" type=\"text/javascript\"></script>" crlf)
 (printout fp "<link rel=\"stylesheet\" href=\"popup.css\" type=\"text/css\" />" crlf)
 (printout fp "<title>anusAraka</title>" crlf)
 (printout fp "</head>" crlf)
 (printout fp "<body onload=\"register_keys()\">" crlf)
 (printout fp "<div id=\"popup_8\" class=\"popup popup_draghandle\" style=\"display:none\">" crlf)
 (printout fp "<div id=\"content\"></div>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<div id=\"popup_2\" class=\"popup popup_draghandle\" style=\"display:none\">" crlf)
 (printout fp "<h3> Shabdanjali </h3>" crlf)
 (printout fp "<div id=\"content1shabd\"></div>" crlf)
 (printout fp "<script type=\"text/javascript\">" crlf)
 (printout fp "new Popup('popup_8','popup_link_8',{position:'below',trigger:'click'})" crlf)
 (printout fp "</script>" crlf)
 (printout fp "<p>" crlf)
 (printout fp "<a class=\"popup_closebox\" ><font color=\"blue\"><u>Close box</u></font></a>" crlf)
 (printout fp "</p>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<div id=\"popup_3\" class=\"popup popup_draghandle\" style=\"display:none\">" crlf)
 (printout fp "<h3> cautions </h3>" crlf)
 (printout fp "<div id=\"content1caution\"></div>" crlf)
 (printout fp "<script type=\"text/javascript\">" crlf)
 (printout fp "new Popup('popup_8','popup_link_10',{position:'below',trigger:'click'})" crlf)
 (printout fp "</script>" crlf)
 (printout fp "<p>" crlf)
 (printout fp "<a class=\"popup_closebox\" ><font color=\"blue\"><u>Close box</u></font></a>" crlf)
 (printout fp "</p>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<div id=\"popup_4\" class=\"popup popup_draghandle\" style=\"display:none\">" crlf)
 (printout fp "<h3> Eliptical Sentences </h3>" crlf)
 (printout fp "<div id=\"content1eliptical\"></div>" crlf)
 (printout fp "<script type=\"text/javascript\">" crlf)
 (printout fp "new Popup('popup_8','popup_link_12',{position:'below',trigger:'click'})" crlf)
 (printout fp "</script>" crlf)
 (printout fp "<p><a class=\"popup_closebox\" ><font color=\"blue\"><u>Close box</u></font></a></p>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<div id=\"popup_5\" class=\"popup popup_draghandle\" style=\"display:none\">" crlf)
 (printout fp "<h3> Dictionary </h3>" crlf)
 (printout fp "<div id=\"content1dict\"></div>" crlf)
 (printout fp "<script type=\"text/javascript\">" crlf)
 (printout fp "new Popup('popup_8','popup_link_13',{position:'below',trigger:'click'})" crlf)
 (printout fp "</script>" crlf)
 (printout fp "<p><a class="popup_closebox" ><font color="blue"><u>Close box</u></font></a></p>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<div id=\"navigation\">" crlf)
 (printout fp "<form action=\"\" onsubmit=\"goto_section(); return false;\">" crlf)
 (printout fp "<p><a id=\"hindi_order\" href=\""?*filename*"_tran_frame.html\" target=\"_new\">Layered Output [Hindi-order]</a><a id=\"translation\" href=\""?*filename*"_trnsltn.html\" target=\"_new\"> Translation </a><a id=\"help\" href=\"help.html\" target=\"_new\">Help</a><input type=\"text\" name=\"goto_section_value\" size=\"5\" /><input type=\"button\" value=\"Goto\" onclick=\"goto_section()\" /><input type=\"hidden\" name=\"no_of_rows\" value=\"11\" /><input type=\"button\" value=\"Show/Hide Rows...\" onclick=\"window.open('rows.html','ShowHideRowsWindow','top=200,left=200,height=600,width=300,location=no,menubar=no,toolbar=no,directories=no,statusbar=no');\" /><input type=\"checkbox\" name=\"numbers_value\" checked=\"checked\" onchange=\"toggle_numbers()\" />Numbers<input type=\"checkbox\" name=\"border_value\" checked=\"checked\" onchange=\"toggle_borders()\" />Borders</p>" crlf)
 (printout fp "</form>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<div class=\"float_clear\"/>" crlf crlf)
 )

 (deffunction print_eng_wrd_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?root ?original_word ?sen_type ?fetch)
 (printout fp "<tr class=\"row1\">" crlf)
 (printout fp "<td class=\"number\">"?p_id"."?s_id".A<a name=\"sentence_"?p_id"_"?s_id"_"?w_id"\" id=\"sentence_"?p_id"_"?s_id"_"?w_id"\"></a></td><td class=\""?chnk_fr_htm"\"> <a onclick=\"javascript:  fetchshabd"?fetch"('"?root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_"?w_id"_"?original_word"\" class=\"popup_link\">"?l_punc ?original_word ?r_punc"</span> <script type=\"text/javascript\"> new Popup('popup_2','popup_link_"?p_id"_"?s_id"_"?w_id"_"?original_word "',{position:'below',trigger:'click'}); </script>   </a> </td>"crlf"</tr>" crlf)
 )

 (deffunction print_caution_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?root ?sen_type ?idiom_des)
 (printout fp "<tr class=\"row2\">" crlf)
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".B"))
 (if (or (eq ?sen_type truncated) (eq ?sen_type noun_absolute))then
 (printout fp "<a onclick=\"javascript: caution_"?sen_type"('"?sen_type"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_"?w_id"_eliptical\" class=\"popup_link\"><blink>&#9761;</blink></span> <script type=\"text/javascript\"> new Popup('popup_4','popup_link_"?p_id"_"?s_id"_"?w_id"_eliptical',{position:'below',trigger:'click'}); </script>   </a></td> <td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
  else (if (eq ?sen_type idiom) then
 (printout fp "</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  alert(\'"?idiom_des"\')\"><blink>&#9761;</blink></a></td>" crlf "</tr>" crlf)
 else (if (eq ?sen_type catastrophe) then
 (printout fp "</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  caution"?root"('"?root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_"?w_id"_caution\" class=\"popup_link\"><blink>&#9761;</blink></span> <script type=\"text/javascript\"> new Popup('popup_3','popup_link_"?p_id"_"?s_id"_"?w_id"_caution',{position:'below',trigger:'click'}); </script>   </a></td>" crlf "</tr>" crlf)
 else (if (eq ?sen_type Default_mng_with_different_category) then 
 (printout fp "</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  alert(\'Default_mng_with_different_category\')\"><blink>&#9761;</blink></a></td>" crlf "</tr>" crlf)
 else
 (printout fp "</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)))))
 )

 (deffunction print_padasutra_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?cat ?padasuthra)
 (printout fp "<tr class=\"row3\">" crlf)
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".C</td>"))
 (if (eq ?cat PropN) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?padasuthra" </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf))
 )

 (deffunction print_dictionary_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?pos ?root)
 (printout fp "<tr class=\"row5\">" crlf)
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".E</td>"))
 (bind ?root (implode$ (create$ ?root)))
 (if (neq (gdbm_lookup "default-iit-bombay-shabdanjali-dic_firefox.gdbm" ?root) "FALSE") then
          (bind ?mng1 (gdbm_lookup "default-iit-bombay-shabdanjali-dic_firefox.gdbm" ?root))
          (bind ?mng2 (sub-string (+ (str-index "::" ?mng1) 2) (length ?mng1) ?mng1))
          (bind ?slh_index (str-index "/" ?mng2)) (bind ?lt_index (str-index "<" ?mng2))
          (if (and (numberp ?slh_index) (numberp ?lt_index)) then
          	(if (< ?slh_index ?lt_index) then
        	  (bind ?def_mng (sub-string 1 (- ?slh_index 1)?mng2))
	          (bind ?def_mng (str-cat ?def_mng " ..."))
        	else 
	          (bind ?def_mng (sub-string 1 (- ?lt_index 1) ?mng2))
        	  (bind ?def_mng (str-cat ?def_mng " ...")))
          else
          (bind ?mng2 (sub-string (+ (str-index "::" ?mng1) 2) (length ?mng1) ?mng1))
          (bind ?def_mng (sub-string 1 (- ?lt_index 1) ?mng2))
          (bind ?def_mng (str-cat ?def_mng " ..."))
          )
 else (bind ?def_mng -))
 (if (eq ?def_mng -) then
 (printout fp "<td class=\""?chnk_fr_htm"\">  -  </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\" > <a class=\"tooltip\" href=\"#\">"?def_mng"<span>"?mng1"</span></a>"" </td>" crlf "</tr>" crlf))
 )


 (deffunction print_root_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?root ?suf ?num)
 (bind ?suf -)(bind ?num -) ;the values of suffix and number are made (-), this is temporarily and kept for discussion about how to show the morph information in that row [especially for pronouns].
 (printout fp "<tr class=\"row4\">" crlf)
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".D</td>"))
 (if (and (neq ?suf -)(neq ?num -)) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc " {suf:"?suf",num:"?num"} </td>" crlf "</tr>" crlf)
 else (if (and (eq ?suf -)(neq ?num -)) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc " {num:"?num"} </td>" crlf "</tr>" crlf)
 else (if (and (neq ?suf -)(eq ?num -)) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc " {suf:"?suf"} </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc " </td>" crlf "</tr>" crlf))))
 )
 
 (deffunction print_pos_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?cat)
 (printout fp "<tr class=\"row6\">" crlf)
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".F</td>"))
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?cat" </td>" crlf "</tr>" crlf)
 )

 (deffunction print_chunker_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?chunk_type)
 (printout fp "<tr class=\"row7\">" crlf)
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".G</td>"))
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?chunk_type" </td>" crlf "</tr>" crlf))

 (deffunction print_lwg_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?padasuthra ?h_tam ?id_type)
 (printout fp "<tr class=\"row8\">" crlf)
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".H</td>"))
 (if (eq ?id_type MAIN_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra"{tam:"?h_tam"}" ?r_punc" </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type AUX_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> --&gt; </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type VIB0) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?h_tam" </td>" crlf "</tr>" crlf))))
 )

 (deffunction print_sense_disambiguation_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng ?h_tam ?id_type)
 (printout fp "<tr class=\"row9\">" crlf)
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".I</td>"))
 (if (eq ?id_type MAIN_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng"{tam:"?h_tam"}" ?r_punc" </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type AUX_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> --&gt; </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type VIB0) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type GREATER_THAN) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> --&gt; "?h_mng" </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type LESS_THAN) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?h_mng" &lt;-- </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf))))))
 )

 (deffunction print_prep-movement_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng ?h_tam ?id_type ?sign)
 (printout fp "<tr class=\"row10\">" crlf)
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".J</td>"))
 (if (eq ?id_type MAIN_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng"{tam:"?h_tam"}" ?r_punc" </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type AUX_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> --&gt; </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type VIB0) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type GREATER_THAN) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> (+"?sign") --&gt; "?h_mng  " </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type LESS_THAN) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> " ?h_mng " &lt;-- ("?sign") </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf))))))
 )

 (deffunction print_hindi-generation_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?aper_op ?lwg_type)
 (printout fp "<tr class=\"row11\">" crlf ) 
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".K</td>"))
 (if (eq ?lwg_type MAIN_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?l_punc ?aper_op ?r_punc" </td>" crlf "</tr>" crlf)
 else (if (eq ?lwg_type AUX_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> -- </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?l_punc ?aper_op ?r_punc " </td>" crlf "</tr>" crlf)))
 )

 (deffunction print_suggestion_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?aper_op ?id_type)
 (printout fp "<tr class=\"row12\">" crlf )
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">&nbsp;</td>"))
 (printout fp "<td class=\""?chnk_fr_htm"\"><input name=\"suggestion_1.1\" type=\"text\" class=\"suggestion\" size=\"1\" value=\"")
 (if (eq ?id_type AUX_VERB) then (printout fp " -- \" /></td></tr>" crlf) else (printout fp ?l_punc ?aper_op ?r_punc "\" /></td></tr>" crlf))
 (printout fp "</table>" crlf)
 )

 ;================================ Asserting dummy ==================================================
 ;Asserting chunk control facts if the id is present in any of the chunk.
 (defrule cntrl_fact_for_chunk
 (declare (salience 4000))
 (id-word ?id ?word)
 (not (chunk_cntrl_fact ?id))
 ?f<-(chunk-ids ?chunk_type $?ids)
 (test (member$ ?id $?ids))
  =>
 ;(retract ?f)
 (assert (chunk_cntrl_fact ?id))
 )
 ;---------------------------------------------------------------------------------------------------
 ;Asserting a dummy fact if root information is not present for any word.
 (defrule test_for_root
 (declare (salience 3000))
 (id-word ?id ?word)
 ;(not (id-root ?id ?root))
 (not (id-root-category-suffix-number ?id ?root ?cat ?suf ?num))
 =>
 ;(assert (id-root ?id -))
  (assert (id-root-category-suffix-number ?id - - - -))
 )
 ;---------------------------------------------------------------------------------------------------
 ;Asserting a dummy category information if not present for any word.
 (defrule test_for_cat
 (declare (salience 3000))
 (id-word ?id ?word)
 (not (id-cat_coarse ?id ?cat))
 =>
 (assert (id-cat_coarse ?id -))
 )
 ;---------------------------------------------------------------------------------------------------
 ;Asserting a dummy chunker information if not present for any word.
 (defrule test_for_chunk
 (declare (salience 3000))
 (id-word ?id ?word)
 (not (chunk_cntrl_fact ?id))
 =>
 (assert (chunk-ids U ?id)))

 ;Adding new field "?chnk_type" to all chunk facts
 (defrule modify_chunk_fct_for_html
 (declare (salience 2990))
 ?f<-(chunk-ids ?chnk_type $?ids ?id)
 (not (chunk_cntrl_fact_for_html ?id))
 =>
 (retract ?f)
 (assert (chunk-ids ?chnk_type ?chnk_type $?ids ?id))
 (assert (chunk_cntrl_fact_for_html ?id))
 )

 ;Modifying  the chunk color of the second chunk if there are two consecutive same chunks
 (defrule change_chunk_consecutive_same_color
 (declare (salience 2900))
 (chunk-ids ?chnk_type ?chnk $?ch1 ?id)
 ?f1<-(chunk-ids ?chnk_type ?chnk ?id1 $?ch2)
 (test (and (numberp ?id) (numberp ?id1)))
 (test (and (neq ?chnk REP)(= ?id1 (+ ?id 1))))
 =>
 (retract ?f1)
 (assert (chunk-ids ?chnk_type REP ?id1 $?ch2)))
 ;---------------------------------------------------------------------------------------------------
 ;Asserting a dummy padasuthra information if not present for any word.
 (defrule test_for_padasuthra
 (declare (salience 3000))
 (id-word ?id ?word)
 (not(id-padasuthra ?id ?padasuthra))
  =>
 (assert (id-padasuthra ?id -)))
 ;---------------------------------------------------------------------------------------------------
 ;Asserting a dummy hindi_meaning information if not present for any word.
 (defrule test_for_hmng
 (declare (salience 3001))
 (id-word ?id ?word)
 (not(id-HM-source ?id ?h_mng ?))
  =>
 (assert (id-HM-source ?id - -))
 )
 ;---------------------------------------------------------------------------------------------------
 ;Asserting a dummy fact for not generating dummy  Apertium_output(Group ids having prepositional id neq 0)
 (defrule test_pp_id
 (declare (salience 3001))
 (id-word ?id ?word)
 (pada_info (group_ids $?ids)(preposition $?pre ?pp_id $?pos))
 (test (and (neq ?pp_id 0)(member$ ?id $?ids)))
  =>
 (assert (cntrl_fact_for_apertium_op ?id))
 )
 ;---------------------------------------------------------------------------------------------------
 ;Asserting a dummy fact for not generating dummy  Apertium_output (for preposition id)
 (defrule test_pp_id1
 (declare (salience 3001))
 (id-word ?id ?word)
 (pada_info (preposition ?id))
 (test (neq ?id 0))
  =>
 (assert (cntrl_fact_for_apertium_op ?id))
 )
 ;---------------------------------------------------------------------------------------------------
 ;Asserting a dummy fact for not generating dummy  Apertium_output (For lwg group)
 (defrule test_for_lwg
 (declare (salience 3001))
 (id-word ?id ?word)
 (root-verbchunk-tam-chunkids ? ? ? $?lwg_ids)
 (test (member$ ?id $?lwg_ids))
  =>
 (assert (cntrl_fact_for_apertium_op ?id))
 )
 ;---------------------------------------------------------------------------------------------------
 ;Asserting a dummy Apertium_output information if not present for any word.
 (defrule test_for_Apertium_output
 (declare (salience 3000))
 (id-word ?id ?word)
 (id-HM-source ?id ?h_mng ?)
 (not (cntrl_fact_for_apertium_op ?id))
 (not (id-Apertium_output ?id $?Apertium_output))
  =>
 (assert (id-Apertium_output ?id ?h_mng))
 )
 ;---------------------------------------------------------------------------------------------------
 ;Asserting a dummy right_punctuation if not present for any word.
 (defrule test_for_right_punctuation
 (declare (salience 3000))
 (id-word ?id ?word)
 (not (id-right_punctuation ?id ?r_punc))
  =>
 (assert (id-right_punctuation ?id NONE))
 )
 ;---------------------------------------------------------------------------------------------------
 ;Asserting a dummy left_punctuation if not present for any word.
 (defrule test_for_left_punctuation
 (declare (salience 3000))
 (id-word ?id ?word)
 (not (id-left_punctuation  ?id ?l_punc ))
 =>
 (assert (id-left_punctuation  ?id NONE))
 )

 ;======================================= Converting wx fields to utf8 ==================================
 ;convert padasuthra wx notation to utf8.
 (defrule test_gt_for_padasuthra
 (declare (salience 2000))
 ?f<-(id-padasuthra ?id ?mng)
 (not (id_padasuthra_mng_modified ?id))
 =>
 (retract ?f)
 (if (not (numberp ?mng)) then (bind ?mng (wx_utf8 ?mng)))
 (while (str-index ">" ?mng) do
	(bind ?length (str-length ?mng))
	(bind ?index (str-index ">" ?mng))
	(bind ?mng (str-cat (sub-string 1 (- ?index 1) ?mng) "&gt;" (sub-string (+ ?index 1) ?length ?mng)))
 )
 (while (str-index "<" ?mng) do
	(bind ?length (str-length ?mng))
	(bind ?index (str-index "<" ?mng))
	(bind ?mng (str-cat (sub-string 1 (- ?index 1) ?mng) "&lt;" (sub-string (+ ?index 1) ?length ?mng)))
 )
 (if (eq ?mng "@PropN") then (bind ?mng (sub-string 2 (length ?mng) ?mng)))
 (assert (id-padasuthra ?id ?mng))
 (assert (id_padasuthra_mng_modified ?id))
 )
 ;---------------------------------------------------------------------------------------------------
 ;modifying the symbol ">" to "&gt;" and "<" to "&lt;" for html display
 (defrule test_gt_for_apertium_output
 (declare (salience 2000))
 ?f<-(id-Apertium_output ?id ?mng)
 (not (id_apertium_mng_modified ?id))
 =>
 (retract ?f)
; (if (not (numberp ?mng)) then (bind ?mng (wx_utf8 ?mng)))
 (while (str-index ">" ?mng) do
 	(bind ?length (str-length ?mng))
	(bind ?index (str-index ">" ?mng))
	(bind ?mng (str-cat (sub-string 1 (- ?index 1) ?mng) "&gt;" (sub-string (+ ?index 1) ?length ?mng)))
 )
 (while (str-index "<" ?mng) do
	(bind ?length (str-length ?mng))
	(bind ?index (str-index "<" ?mng))
	(bind ?mng (str-cat (sub-string 1 (- ?index 1) ?mng) "&lt;" (sub-string (+ ?index 1) ?length ?mng)))
 )
 (assert (id-Apertium_output ?id ?mng))
 (assert (id_apertium_mng_modified ?id))
 )
 ;---------------------------------------------------------------------------------------------------
 ;convert hindi_meaning wx notation to utf8.
 (defrule test_gt_and_lt_HM
 (declare (salience 2000))
 ?f<-(id-HM-source ?id ?mng ?src)
 (not (id_HM_mng_modified ?id))
 =>
 (retract ?f)
 (if (not (numberp ?mng)) then (bind ?mng (wx_utf8 ?mng)))
 (while (str-index ">" ?mng) do
	(bind ?length (str-length ?mng))
	(bind ?index (str-index ">" ?mng))
	(bind ?mng (str-cat (sub-string 1 (- ?index 1) ?mng) "&gt;" (sub-string (+ ?index 1) ?length ?mng)))
 )
 (while (str-index "<" ?mng) do
	(bind ?length (str-length ?mng))
	(bind ?index (str-index "<" ?mng))
	(bind ?mng (str-cat (sub-string 1 (- ?index 1) ?mng) "&lt;" (sub-string (+ ?index 1) ?length ?mng)))
 )
 (assert (id-HM-source ?id ?mng ?src))
 (assert (id_HM_mng_modified ?id))
 )
 ;---------------------------------------------------------------------------------------------------
 ;convert Apertium_output wx notation to utf8.
 (defrule convert_wx_to_utf8_for_Apertium_output
 (declare (salience 2001))
 ?f<-(id-Apertium_output ?id $?Apertium_output)
 (not (id_Apertium_output_mng_modified ?id))
 =>
 (retract ?f)
 (bind ?length (length $?Apertium_output))
 (if (eq ?length 0) then
 	(assert (id-Apertium_output ?id -))
 else
        (loop-for-count (?i  1 ?length)
       		(bind ?word (nth$ ?i $?Apertium_output))
	        (if (not (numberp ?word)) then
        		(bind ?apertium_output (wx_utf8 ?word))
		        (if (eq ?i 1) then
 				(bind ?utf8_Apertium_output ?apertium_output)
		        else
				(bind ?utf8_Apertium_output (str-cat ?utf8_Apertium_output " " ?apertium_output))
			)
	        else
		        (bind ?utf8_Apertium_output ?word)))
	(assert (id-Apertium_output ?id ?utf8_Apertium_output))
 )
	(assert (id_Apertium_output_mng_modified ?id))
 )
 ;---------------------------------------------------------------------------------------------------
 ;convert hindi_tam_mng wx notation to utf8.
 (defrule convert_wx_to_utf8_for_hin_tam_mng
 (declare (salience 2000))
 ?f<-(pada_info (group_head_id ?id)(H_tam ?h_tam))
 (test (neq ?h_tam 0))
 (not (id_pada_hin_tam_mng_modified ?id))
 =>
 (if (not (numberp ?h_tam)) then (bind ?h_tam (wx_utf8 ?h_tam)))
 (modify ?f (H_tam ?h_tam))
 (assert (id_pada_hin_tam_mng_modified ?id))
 )
 ;---------------------------------------------------------------------------------------------------
 ;convert vib_mng wx notation to utf8.
 (defrule convert_wx_to_utf8_for_vib_mng
 (declare (salience 2000))
 ?f<-(pada_info (group_head_id ?id)(vibakthi ?vib))
 (test (neq ?vib 0))
 (not (id_pada_vib_modified ?id))
 =>
 (if (not (numberp ?vib)) then (bind ?vib (wx_utf8 ?vib)))
 (modify ?f (vibakthi ?vib))
 (assert (id_pada_vib_modified ?id))
 )
 ;----------------------------------------------------------------------------------------------------
 ;Removes @ symbol from Apertium output.
 (defrule test_symbol_for_Aper_output
 (declare (salience 1900))
 ?f<-(id-Apertium_output   ?id   ?mng)
 (test (eq (sub-string 1 2 ?mng) "\\@"))
 =>
 (retract ?f)
 (bind ?h_mng (str-cat (sub-string 3 1000 ?mng)))
 (assert (id-Apertium_output   ?id   ?h_mng))
 )
 ;------------------------------------------------------------------------------------------------------
 ;Remove '@' symbol from hindi_meaning 
 (defrule test_symbol_for_HM
 (declare (salience 1900))
 ?f<-(id-HM-source   ?id   ?mng   ?src)
 (test (eq (sub-string 1 1 ?mng) "@"))
 =>
 (retract ?f)
 (bind ?h_mng (str-cat (sub-string 2 1000 ?mng)))
 (assert (id-HM-source   ?id   ?h_mng   ?src))
 )
 ;
 (defrule test_for_catastrophe_symbol
 (declare (salience 1900))
 (id-word ?id ?wrd)
 (not (sen_type-id-phrase ? ?id ?) )
 =>
 (assert (sen_type-id-phrase NONE ?id -))
 )
 ;========================================= Generating html format ========================================
 ;;printing html head information 
 (defrule sent_start1.1_dont_print_title_info
 (declare (salience 1004))
 (REMOVE_TITLE_FROM_HTML)
 (para_id-sent_id-no_of_words 1 1 ?)
 ?f<-(id-original_word 1 ?original_word)
 (id-word ?id ?word)
 ;(id-root ?id ?root)
 (id-root-category-suffix-number ?id ?root ? ?suf ?num)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (id-Apertium_output   ?id   ?mng)
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 =>
 (retract ?f)
 (if (eq ?r_punc NONE) then (bind ?r_punc ""))
 (if (eq ?l_punc NONE) then (bind ?l_punc ""))   
 (print_head_info)
 (assert (id-index (+ ?id 1) 0))
 )

 ;;printing html head information
 (defrule print_head_info
 (declare (salience 1004))
 (para_id-sent_id-no_of_words 1 1 ?)
 (not (REMOVE_TITLE_FROM_HTML)) 
 =>
 (print_head_info))

 ;;printing title information
; (defrule sent_start1.1
; (declare (salience 1003))
; (para_id-sent_id-no_of_words 1 1 ?n_words)
; ?f<-(id-original_word ?id ?original_word)
; (test (= ?id 1))
; (id-word ?id ?word)
; ;(id-root ?id ?root)
; (id-root-category-suffix-number ?id ?root ? ?suf ?num)
; (id-cat_coarse ?id ?cat)
; (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
; (test (member$ ?id $?ids))
; (id-padasuthra ?id ?padasuthra)
; (id-HM-source ?id ?h_mng ?)
; (id-right_punctuation ?id ?r_punc)
; (id-left_punctuation  ?id ?l_punc )
; (id-Apertium_output   ?id   ?apertium_output)
; (sen_type-id-phrase ?sen_type ?id ?phrase)
; =>
; (retract ?f)
; (if (eq ?r_punc NONE) then (bind ?r_punc ""))
; (if (eq ?l_punc NONE) then (bind ?l_punc ""))
; (print_head_info)
; (printout fp "<form class=\"suggestion\" action=\"sumbit_suggestions.php\"><table cellspacing=\"0\">" crlf)
; (bind ?fetch (sub-string 0 1 (implode$ (create$ ?root))))
; (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
; (print_eng_wrd_row  1 1 1 ?chnk_fr_htm ?l_punc ?r_punc ?root ?original_word ?sen_type ?fetch)
; (print_caution_row 1 1 1 ?chnk_fr_htm ?l_punc ?r_punc ?root ?sen_type ?idiom_des)
; (print_padasutra_row  1 1 1 ?chnk_fr_htm ?l_punc ?r_punc ?cat ?padasuthra)
; (print_root_row  1 1 1 ?chnk_fr_htm ?l_punc ?r_punc ?root ?suf ?num)
; (print_dictionary_row  1 1 1 ?chnk_fr_htm ?cat ?root)
; (print_pos_row 1 1 1 ?chnk_fr_htm ?l_punc ?r_punc ?cat)
; (print_chunker_row  1 1 1 ?chnk_fr_htm ?chunk_type)
; (print_lwg_row  1 1 1 ?chnk_fr_htm ?l_punc ?r_punc - - -)
; (print_sense_disambiguation_row  1 1 1 ?chnk_fr_htm ?l_punc ?r_punc ?h_mng - -)
; (print_prep-movement_row  1 1 1 ?chnk_fr_htm ?l_punc ?r_punc  - - - -)
; (print_hindi-generation_row  1 1 1 ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output -)
; (print_suggestion_row 1 1 1 ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output -)
;
; (assert (id-index (+ ?id 1) (- ?n_words 1)))
; )
 ;---------------------------------------------------------------------------------------------------
 ;;printing sentence start information
 (defrule sent_start
 (declare (salience 1001))
 (para_id-sent_id-no_of_words ?p_id ?s_id ?n_words)
; (test (neq ?p_id 1))
 (id-word 1 ?word)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ 1 $?ids))
 (id-root-category-suffix-number 1 ?root ? ?suf ?num)
 (id-right_punctuation 1 ?r_punc)
 (id-left_punctuation  1 ?l_punc )
 (id-original_word 1 ?original_word)
 (sen_type-id-phrase ?sen_type 1 ?)
 =>
 (if (eq ?r_punc NONE) then (bind ?r_punc ""))
 (if (eq ?l_punc NONE) then (bind ?l_punc ""))
 (bind ?fetch (sub-string 0 1 (implode$ (create$ ?root))))
 (printout fp "<form class=\"suggestion\" action=\"sumbit_suggestions.php\"><table cellspacing=\"0\">" crlf)
 (print_eng_wrd_row  ?p_id ?s_id 1 ?chnk_fr_htm ?l_punc ?r_punc ?root ?original_word ?sen_type ?fetch)
 (assert (id-index 1 ?n_words))
 )
 ;---------------------------------------------------------------------------------------------------
 ;;printing word head information
 (defrule sent_next_word
 (declare (salience 1000))
 ?f<-(id-index ?id ?n_words)
 (test (neq ?id 1))
 (para_id-sent_id-no_of_words ?p_id ?s_id ?words)
 (id-word ?id ?word)
 ;(id-root ?id ?root)
 (id-root-category-suffix-number ?id ?root ? ?suf ?num)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-original_word ?id ?original_word)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 =>
 (if (eq ?r_punc NONE) then (bind ?r_punc ""))
 (if (eq ?l_punc NONE) then (bind ?l_punc ""))
 (bind ?fetch (sub-string 0 1 (implode$ (create$ ?root))))

 (printout fp "<table cellspacing=\"0\">" crlf)
 (printout fp "<tr class=\"row1\">" crlf)
 (printout fp "<td class=\""?chnk_fr_htm"\"> <a onclick=\"javascript:  fetchshabd"?fetch"('"?root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_"?id"_"?original_word"\" class=\"popup_link\">"?l_punc ?original_word ?r_punc"</span> <script type=\"text/javascript\"> new Popup('popup_2','popup_link_"?p_id"_"?s_id"_"?id"_"?original_word"',{position:'below',trigger:'click'}); </script>   </a> </td></tr>" crlf)

 )
 ;---------------------------------------------------------------------------------------------------
 ;;printing lwg words information
 (defrule id_rule0
 (declare (salience 900))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?)
 ;(id-root ?id ?root)
 (id-root-category-suffix-number ?id ?root ? ?suf ?num)
 (id-word ?id ?word)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (root-verbchunk-tam-chunkids ? ? ? $?lwg_ids ?head_id)
 (pada_info (group_head_id ?head_id)(H_tam ?h_tam))
 (test (or(member$ ?id $?lwg_ids)(= ?head_id ?id)))
 (id-Apertium_output ?head_id ?apertium_output)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 =>
 (retract ?f)
 (if (eq ?r_punc NONE) then (bind ?r_punc ""))
 (if (eq ?l_punc NONE) then (bind ?l_punc ""))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (print_caution_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?sen_type ?idiom_des)
 (print_padasutra_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat ?padasuthra)
 (print_root_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?suf ?num)
 (print_dictionary_row  ?p_id ?s_id ?id ?chnk_fr_htm ?cat ?root)
 (print_pos_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat)
 (print_chunker_row  ?p_id ?s_id ?id ?chnk_fr_htm ?chunk_type)
 (if (= ?head_id ?id) then
 (print_lwg_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_tam ?padasuthra MAIN_VERB)
 (print_sense_disambiguation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng ?h_tam MAIN_VERB)
 (print_prep-movement_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng ?h_tam MAIN_VERB -)
 (print_hindi-generation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output MAIN_VERB)
 (print_suggestion_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output MAIN_VERB) 
 else
 (print_lwg_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_tam ?padasuthra AUX_VERB)
 (print_sense_disambiguation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng ?h_tam AUX_VERB)
 (print_prep-movement_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng ?h_tam AUX_VERB -)
 (print_hindi-generation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - AUX_VERB)
 (print_suggestion_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output AUX_VERB)) 

 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 ;word information having apertium output
 (defrule  apertium_output_with_pp_id0
 (declare (salience 950))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?w_id)
; (id-root ?pp_id ?pp_root)
 (id-root-category-suffix-number ?pp_id ?pp_root ? ?pp_suf ?pp_num)
 (id-word ?pp_id ?pp_word)
 (id-cat_coarse ?pp_id ?pp_cat)
 (id-padasuthra ?pp_id ?pp_padasuthra)
 (id-HM-source ?pp_id ?pp_h_mng ?)
 (id-word ?id ?word)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 ;(id-root ?id ?root)
 (id-root-category-suffix-number ?id ?root ? ?suf ?num)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type1 ?chnk_fr_htm1 $?ids1)
 (test (member$ ?id $?ids1))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (id-Apertium_output ?id ?apertium_output)
 (pada_info (group_head_id ?h_id)(vibakthi ?vib)(preposition ?pp_id)(group_ids $?g_ids))
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (test (and (neq ?vib 0) (neq ?pp_id 0)))
 (test (member$ ?id $?g_ids))
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 =>
 (retract ?f)
 (if (eq ?r_punc NONE) then (bind ?r_punc ""))
 (if (eq ?l_punc NONE) then (bind ?l_punc ""))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (print_caution_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?sen_type ?idiom_des)
 (print_padasutra_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat ?padasuthra)
 (print_root_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?suf ?num)
 (print_dictionary_row  ?p_id ?s_id ?id ?chnk_fr_htm ?cat ?root)
 (print_pos_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat)
 (print_chunker_row  ?p_id ?s_id ?id ?chnk_fr_htm ?chunk_type)
 (print_lwg_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - ?padasuthra VIB0) 
 (print_sense_disambiguation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng - VIB0)
 (print_prep-movement_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng - VIB0 -)
 (print_hindi-generation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output -)
 (print_suggestion_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output -)

 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule  apertium_output_with_pp_id1
 (declare (salience 950))
 ?f<-(id-index ?pp_id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?)
 ;(id-root ?pp_id ?pp_root)
 (id-root-category-suffix-number ?pp_id ?pp_root ? ?pp_suf ?pp_num)
 (id-word ?pp_id ?pp_word)
 (id-cat_coarse ?pp_id ?pp_cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?pp_id $?ids))
 (id-padasuthra ?pp_id ?pp_padasuthra)
 (id-HM-source ?pp_id ?pp_h_mng ?)
; (test (neq ?pp_h_mng -))
 (id-word ?id ?word)
 ;(id-root ?id ?root)
 (id-root-category-suffix-number ?id ?root ? ?suf ?num)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type1 ?chnk_fr_htm1 $?ids1)
 (test (member$ ?id $?ids1))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (id-Apertium_output ?id ?Apertium_output)
 (id-right_punctuation ?pp_id ?r_punc)
 (id-left_punctuation  ?pp_id ?l_punc )
 (pada_info (group_head_id ?id)(vibakthi ?vib)(preposition $?pre ?pp_id $?pos))
 (test (and (neq ?vib 0) (neq ?pp_id 0)))
 (sen_type-id-phrase ?sen_type ?pp_id ?phrase)
 =>
 (retract ?f)
 (bind ?sign (- ?id ?pp_id))
 (if (eq ?r_punc NONE) then (bind ?r_punc ""))
 (if (eq ?l_punc NONE) then (bind ?l_punc ""))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))  
 (print_caution_row ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_root ?sen_type ?idiom_des)
 (print_padasutra_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_cat ?pp_padasuthra)
 (print_root_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_root ?pp_suf ?pp_num)
 (print_dictionary_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?pp_cat ?pp_root)
 (print_pos_row ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_cat)
 (print_chunker_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?chunk_type)
 (print_lwg_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc - ?pp_padasuthra -)
 (if (> ?sign 0) then
 (print_sense_disambiguation_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_h_mng - GREATER_THAN)
 (print_prep-movement_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_h_mng - GREATER_THAN ?sign)
 else
 (print_sense_disambiguation_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_h_mng - LESS_THAN)
 (print_prep-movement_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_h_mng - LESS_THAN ?sign))
 (print_hindi-generation_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc "~" -)
 (print_suggestion_row ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc "~" -) 
 
 (assert (id-index (+ ?pp_id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 ;word information having apertium output
 (defrule id_rule4
 (declare (salience 700))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?)
 ;(id-root ?id ?root)
 (id-root-category-suffix-number ?id ?root ? ?suf ?num)
 (id-word ?id ?word)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (id-Apertium_output ?id ?apertium_output)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 =>
 (retract ?f)
 (if (eq ?r_punc NONE) then (bind ?r_punc ""))
 (if (eq ?l_punc NONE) then (bind ?l_punc ""))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (print_caution_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?sen_type ?idiom_des)
 (print_padasutra_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat ?padasuthra)
 (print_root_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?suf ?num)
 (print_dictionary_row  ?p_id ?s_id ?id ?chnk_fr_htm ?cat ?root)
 (print_pos_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat)
 (print_chunker_row  ?p_id ?s_id ?id ?chnk_fr_htm ?chunk_type)
 (print_lwg_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - ?padasuthra -)
 (print_sense_disambiguation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng - -)
 (print_prep-movement_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng - - -)
 (print_hindi-generation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output -)
 (print_suggestion_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output -)

 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule id_rule5
 (declare (salience 600))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?)
 ;(id-root ?id ?root)
 (id-root-category-suffix-number ?id ?root ? ?suf ?num)
 (id-word ?id ?word)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (not (No complete linkages found))
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 =>
 (retract ?f)
 (if (eq ?r_punc NONE) then (bind ?r_punc ""))
 (if (eq ?l_punc NONE) then (bind ?l_punc ""))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (print_caution_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?sen_type ?idiom_des)
 (print_padasutra_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat ?padasuthra)
 (print_root_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?suf ?num)
 (print_dictionary_row  ?p_id ?s_id ?id ?chnk_fr_htm ?cat ?root)
 (print_pos_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat)
 (print_chunker_row  ?p_id ?s_id ?id ?chnk_fr_htm ?chunk_type)
 (print_lwg_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - ?padasuthra -)
 (print_sense_disambiguation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng - -)
 (print_prep-movement_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng - - -)
 (print_hindi-generation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng -)
 (print_suggestion_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng -)

 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule id_rule6
 (declare (salience 500))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?)
 ;(id-root ?id ?root)
 (id-root-category-suffix-number ?id ?root ? ?suf ?num)
 (id-word ?id ?word)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 (No complete linkages found)
 =>
 (retract ?f)
 (if (eq ?r_punc NONE) then (bind ?r_punc ""))
 (if (eq ?l_punc NONE) then (bind ?l_punc ""))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (print_caution_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?sen_type ?idiom_des)
 (print_padasutra_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat ?padasuthra)
 (print_root_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?suf ?num)
 (print_dictionary_row  ?p_id ?s_id ?id ?chnk_fr_htm ?cat ?root)
 (print_pos_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat)
 (print_chunker_row  ?p_id ?s_id ?id ?chnk_fr_htm ?chunk_type)
 (print_lwg_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - ?padasuthra -)
 (print_sense_disambiguation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - - -)
 (print_prep-movement_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - - - -)
 (print_hindi-generation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - -)
 (print_suggestion_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - -)
 
 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule id_rule7
 (declare (salience 300))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?)
 (id-word ?id ?word)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 =>
 (retract ?f)
 (if (eq ?r_punc NONE) then (bind ?r_punc ""))
 (if (eq ?l_punc NONE) then (bind ?l_punc ""))
 (print_caution_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - - -s)
 (print_padasutra_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - -)
 (print_root_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - - -)
 (print_dictionary_row  ?p_id ?s_id ?id ?chnk_fr_htm - -)
 (print_pos_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc -)
 (print_chunker_row  ?p_id ?s_id ?id ?chnk_fr_htm -)
 (print_lwg_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - - -)
 (print_sense_disambiguation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - - -)
 (print_prep-movement_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - - - -)
 (print_hindi-generation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - -)
 (print_suggestion_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - -)
 
 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule sent_end
 (declare (salience 300))
 (para_id-sent_id-no_of_words ?p_id ?s_id ?n_words)
 ?f<-(id-index ?id 0)
 =>
 (retract ?f)
 (if (and (= ?p_id 1) (= ?s_id 1)) then (printout fp "<div class=\"float_clear\"/>" crlf))
 (printout fp "<div class=\"submit_button_block\"><input class=\"submit_button\" type=\"submit\" value=\"Submit\" /></div></form> " crlf)

 (reset)
 (bind ?path (str-cat ?p_id "." (+ ?s_id 1) "/" facts_for_eng_html))
 (bind ?rt_value (load-facts ?path))
 (if (eq ?rt_value FALSE) then
	(bind ?path (str-cat  (+ ?p_id 1) ".1/" facts_for_eng_html))
	(bind ?rt_value1 (load-facts ?path))
	(if (eq ?rt_value1 FALSE) then
           (printout fp "<div class=\"float_clear\"/>" crlf)
           (printout fp "<div class=\"bottom\"></div>" crlf)
           (printout fp "</body>" crlf)
           (printout fp "</html>" crlf)
	)
 )
 
 (load-facts ?path)
 )
 ;---------------------------------------------------------------------------------------------------
