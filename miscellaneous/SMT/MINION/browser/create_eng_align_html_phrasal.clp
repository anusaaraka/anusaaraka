 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deftemplate alignment (slot anu_id (default 0))(slot man_id (default 0))(multislot anu_meaning (default 0))(multislot man_meaning(default 0)))
(deftemplate parser_align (slot anu_id (default 0))(slot man_id (default 0))(multislot anu_meaning (default 0))(multislot man_meaning(default 0)))

 (deffunction string_to_integer (?parser_id)
 (string-to-field (sub-string 2 10000 ?parser_id)))

 (deffunction print_head_info ()
 (printout fp "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" crlf)
 (printout fp "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"\">" crlf)
 (printout fp "<html xmlns=\"http://www.w3.org/1999/xhtml\">" crlf)
 (printout fp "<head>" crlf)
 (printout fp "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />" crlf)
 (printout fp "<link href=\"style.css\" type=\"text/css\" rel=\"stylesheet\" />" crlf)
 (printout fp "<link href=\"phrasal_alignment.css\" type=\"text/css\" rel=\"stylesheet\" />" crlf)
 (printout fp "<script src=\"script.js\" type=\"text/javascript\"></script>" crlf)
 (printout fp "<script src=\"open.js\" type=\"text/javascript\"></script>" crlf)
 (printout fp "<script src=\"phrasal_alignment.js\" type=\"text/javascript\"></script>" crlf)
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
 (printout fp "<p><a id=\"hindi_order\" href=\""?*filename*"_tran_frame.html\" target=\"_new\">Layered Output [Hindi-order]</a><a id=\"translation\" href=\""?*filename*"_trnsltn.html\" target=\"_new\"> Translation </a><a id=\"help\" href=\"help.html\" target=\"_new\">Help</a><input type=\"text\" name=\"goto_section_value\" size=\"5\" /><input type=\"button\" value=\"Goto\" onclick=\"goto_section()\" /><input type=\"hidden\" name=\"no_of_rows\" value=\"16\" /><input type=\"button\" value=\"Show/Hide Rows...\" onclick=\"window.open('rows.html','ShowHideRowsWindow');\" /><input type=\"checkbox\" name=\"numbers_value\" checked=\"checked\" onchange=\"toggle_numbers()\" />Numbers<input type=\"checkbox\" name=\"border_value\" checked=\"checked\" onchange=\"toggle_borders()\" />Borders</p>" crlf)
 (printout fp "</form>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<div class=\"float_clear\"/>" crlf crlf)
 )

 ;======================================== deffunctions for printing all rows ===============================================
 (deffunction print_eng_wrd_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?root ?original_word ?sen_type ?fetch $?eng_sen)
 (if (= ?w_id 1) then ;(printout fp "<tr><td>"(implode$ $?eng_sen)"</td></tr>" crlf)
                      (printout fp "<form class=\"suggestion\" action=\"sumbit_suggestions.php\">" crlf)
                      (printout fp "<!-- Sent Start -->" crlf)
                      (printout fp "<table border=\"1\">" crlf)
                      (printout fp "<tr><td class=\"outertd\">"(implode$ $?eng_sen)"</td></tr><tr><td class=\"outertd\">" crlf)
                      (printout fp "<!-- Sent End -->" crlf)
 )
 (printout fp "<table cellspacing=\"0\">"crlf"<tr class=\"row1\">" crlf)
 (printout fp "<td class=\"number\">"?p_id"."?s_id".A<a name=\"sentence_"?p_id"_"?s_id"_"?w_id"\" id=\"sentence_"?p_id"_"?s_id"_"?w_id"\"></a></td><td class=\""?chnk_fr_htm"\"> <a onclick=\"javascript:  fetchshabd"?fetch"('"?root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_"?w_id"_"?original_word"\" class=\"popup_link\">"(implode$ (create$ ?l_punc)) ?original_word (implode$ (create$ ?r_punc))"</span> <script type=\"text/javascript\"> new Popup('popup_2','popup_link_"?p_id"_"?s_id"_"?w_id"_"?original_word "',{position:'below',trigger:'click'}); </script>   </a> </td>"crlf"</tr>" crlf)
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
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$ ?l_punc)) ?padasuthra (implode$ (create$ ?r_punc))" </td>" crlf "</tr>" crlf))
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
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$ ?l_punc)) ?root (implode$ (create$ ?r_punc)) " {suf:"?suf",num:"?num"} </td>" crlf "</tr>" crlf)
 else (if (and (eq ?suf -)(neq ?num -)) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$ ?l_punc)) ?root (implode$ (create$ ?r_punc)) " {num:"?num"} </td>" crlf "</tr>" crlf)
 else (if (and (neq ?suf -)(eq ?num -)) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$ ?l_punc)) ?root (implode$ (create$ ?r_punc)) " {suf:"?suf"} </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$ ?l_punc)) ?root (implode$ (create$ ?r_punc)) " </td>" crlf "</tr>" crlf))))
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
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$ ?l_punc)) ?padasuthra"{tam:"?h_tam"}" (implode$ (create$ ?r_punc))" </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type AUX_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> --&gt; </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type VIB0) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$ ?l_punc)) ?padasuthra (implode$ (create$ ?r_punc))" </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> "?h_tam" </td>" crlf "</tr>" crlf))))
 )

 (deffunction print_sense_disambiguation_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng ?h_tam ?id_type ?mng_src ?tam_src)
 (printout fp "<tr class=\"row9\">" crlf)
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".I</td>"))
 (if (eq ?id_type MAIN_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> <a class=\"tooltip\" href=\"#\"> "(implode$ (create$ ?l_punc)) ?h_mng" <span>"?mng_src"</span></a></a><a class=\"tooltip\" href=\"#\"> {tam:"?h_tam"}"(implode$ (create$ ?r_punc))" <span>"?tam_src "</span></a></td>" crlf "</tr>" crlf)
 else (if (eq ?id_type AUX_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> <a class=\"tooltip\" href=\"#\"> --&gt; <span>"?mng_src"</span></a></td>" crlf "</tr>" crlf)
 else (if (eq ?id_type VIB0) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> <a class=\"tooltip\" href=\"#\"> "(implode$ (create$ ?l_punc)) ?h_mng (implode$ (create$ ?r_punc))" <span>"?mng_src"</span></a></td>" crlf "</tr>" crlf)
 else (if (eq ?id_type GREATER_THAN) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> <a class=\"tooltip\" href=\"#\"> --&gt; "?h_mng" <span>"?mng_src"</span></a></td>" crlf "</tr>" crlf)
 else (if (eq ?id_type LESS_THAN) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> <a class=\"tooltip\" href=\"#\"> "?h_mng" &lt;-- <span>"?mng_src"</span></a></td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> <a class=\"tooltip\" href=\"#\"> "(implode$ (create$ ?l_punc)) ?h_mng (implode$ (create$ ?r_punc))" <span>"?mng_src"</span></a></td>" crlf "</tr>" crlf))))))
 )

 (deffunction print_prep-movement_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng ?h_tam ?id_type ?sign)
 (printout fp "<tr class=\"row10\">" crlf)
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".J</td>"))
 (if (eq ?id_type MAIN_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$ ?l_punc)) ?h_mng"{tam:"?h_tam"}" (implode$ (create$ ?r_punc))" </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type AUX_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> --&gt; </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type VIB0) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$ ?l_punc)) ?h_mng (implode$ (create$ ?r_punc))" </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type GREATER_THAN) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> (+"?sign") --&gt; "?h_mng  " </td>" crlf "</tr>" crlf)
 else (if (eq ?id_type LESS_THAN) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> " ?h_mng " &lt;-- ("?sign") </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$ ?l_punc)) ?h_mng (implode$ (create$ ?r_punc))" </td>" crlf "</tr>" crlf))))))
 )

 (deffunction print_hindi-generation_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?aper_op ?lwg_type)
 (printout fp "<tr class=\"row11\">" crlf ) 
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".K</td>"))
 (if (eq ?lwg_type MAIN_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$ ?l_punc)) ?aper_op (implode$ (create$ ?r_punc))" </td>" crlf "</tr>" crlf)
 else (if (eq ?lwg_type AUX_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> -- </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$ ?l_punc)) ?aper_op (implode$ (create$ ?r_punc)) " </td>" crlf "</tr>" crlf)))
 )

 (deffunction print_manual_ouput_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?m_l_punc ?m_r_punc ?man_op ?lwg_type)
 (printout fp "<tr class=\"row12\">" crlf )
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".L</td>"))
 (if (eq ?lwg_type MAIN_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$  ?m_l_punc)) ?man_op (implode$ (create$  ?m_r_punc))" </td>" crlf "</tr>" crlf)
 else (if (eq ?lwg_type AUX_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$  ?m_l_punc)) ?man_op (implode$ (create$  ?m_r_punc))" </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$  ?m_l_punc)) ?man_op (implode$ (create$  ?m_r_punc))" </td>" crlf "</tr>" crlf)))
 )

 (deffunction print_manual_ouput_row1(?p_id ?s_id ?w_id ?chnk_fr_htm ?m_l_punc ?m_r_punc ?man_op ?lwg_type)
 (printout fp "<tr class=\"row13\">" crlf )
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".M</td>"))
 (if (eq ?lwg_type MAIN_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$  ?m_l_punc)) ?man_op (implode$ (create$  ?m_r_punc))" </td>" crlf "</tr>" crlf)
 else (if (eq ?lwg_type AUX_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$  ?m_l_punc)) ?man_op (implode$ (create$  ?m_r_punc))" </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> "(implode$ (create$  ?m_l_punc)) ?man_op (implode$ (create$  ?m_r_punc))" </td>" crlf "</tr>" crlf)))
 )

 (deffunction print_parser_align_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?man_op ?lwg_type)
 (printout fp "<tr class=\"row14\">" crlf )
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".N</td>"))
 (if (eq ?lwg_type MAIN_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> " ?man_op" </td>" crlf "</tr>" crlf)
 else (if (eq ?lwg_type AUX_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> " ?man_op " </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> " ?man_op " </td>" crlf "</tr>" crlf)))
 )

 (deffunction print_manual_ouput_row2(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?man_op ?lwg_type)
 (printout fp "<tr class=\"row15\">" crlf )
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".O</td>"))
 (if (eq ?lwg_type MAIN_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> " ?man_op" </td>" crlf "</tr>" crlf)
 else (if (eq ?lwg_type AUX_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> " ?man_op " </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> " ?man_op " </td>" crlf "</tr>" crlf)))
 )

 (deffunction print_manual_ouput_row3(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?man_op ?lwg_type)
 (printout fp "<tr class=\"row16\">" crlf )
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">"?p_id"."?s_id".P</td>"))
 (if (eq ?lwg_type MAIN_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> " ?man_op" </td>" crlf "</tr>" crlf)
 else (if (eq ?lwg_type AUX_VERB) then
 (printout fp "<td class=\""?chnk_fr_htm"\"> " ?man_op " </td>" crlf "</tr>" crlf)
 else
 (printout fp "<td class=\""?chnk_fr_htm"\"> " ?man_op " </td>" crlf "</tr>" crlf)))
 )

 (deffunction print_suggestion_row(?p_id ?s_id ?w_id ?chnk_fr_htm ?l_punc ?r_punc ?aper_op ?id_type)
 (printout fp "<tr class=\"row17\">" crlf )
 (if (= ?w_id 1) then (printout fp "<td class=\"number\">&nbsp;</td>"))
 (printout fp "<td class=\""?chnk_fr_htm"\"><input name=\"suggestion_"?p_id"."?s_id"\" type=\"text\" class=\"suggestion\" size=\"1\" value=\"")
 (if (eq ?id_type AUX_VERB) then (printout fp " -- \" /></td></tr>" crlf) else (printout fp (implode$ (create$ ?l_punc)) ?aper_op (implode$ (create$ ?r_punc)) "\" /></td></tr>" crlf))
 (printout fp "</table>" crlf)
 )
 ;================================ Asserting dummy facts ==================================================
 ;As each rule need all of the facts here we are generating dummy facts if that fact is absent by any reason.
 ;=========================================================================================================
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
 (not (id-root-category-suffix-number ?id ?root ?cat ?suf ?num))
 =>
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
 (not(id-HM-source-grp_ids ?id ?h_mng ? $?))
  =>
 (assert (id-HM-source-grp_ids ?id - - -))
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
 (id-HM-source-grp_ids ?id ?h_mng ? $?)
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
 ?f<-(id-HM-source-grp_ids ?id ?mng ?src $?grp_ids)
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
 (assert (id-HM-source-grp_ids ?id ?mng ?src $?grp_ids))
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
; (test (eq (sub-string 1 2 ?mng) "\\@"))
 (test (eq (sub-string 1 1 ?mng) "@"))
 =>
 (retract ?f)
 (bind ?h_mng (str-cat (sub-string 2 1000 ?mng)))
; (bind ?h_mng (str-cat (sub-string 3 1000 ?mng)))
 (assert (id-Apertium_output   ?id   ?h_mng))
 )
 ;------------------------------------------------------------------------------------------------------
 ;Remove '@' symbol from hindi_meaning 
 (defrule test_symbol_for_HM
 (declare (salience 1900))
 ?f<-(id-HM-source-grp_ids   ?id   ?mng   ?src $?grp_ids)
 (test (eq (sub-string 1 1 ?mng) "@"))
 =>
 (retract ?f)
 (bind ?h_mng (str-cat (sub-string 2 1000 ?mng)))
 (assert (id-HM-source-grp_ids   ?id   ?h_mng   ?src $?grp_ids))
 )
 ;
 (defrule test_for_catastrophe_symbol
 (declare (salience 1900))
 (id-word ?id ?wrd)
 (not (sen_type-id-phrase ? ?id ?) )
 =>
 (assert (sen_type-id-phrase NONE ?id -))
 )

 ;------------------------------------------------------------------------------------------------------
 ;===================== Formatting manual sen o/p facts ===============================================
 ;------------------------------------------------------------------------------------------------------
 (defrule get_phrase_information0
 (declare (salience 1005))
 ?f<-(position-eng-hnd-eng_ids      ?pos    ?eng    ?hnd    ?phrase_start_id $?ids ?phrase_end_id ?l ?r)
 ?f1<-(position-eng-hnd-eng_ids      ?pos1    ?eng1    ?hnd1    ?phrase_end_id $?ids1 ?l1 ?r1)
 (test (eq (= ?pos ?pos1) FALSE))
 =>
	(retract ?f1)
	(assert (position-eng-hnd-eng_ids      ?pos1    ?eng1    ?hnd1  $?ids1 ?l1 ?r1))
 )



 (defrule get_phrase_information
 (declare (salience 1004))
 (position-eng-hnd-eng_ids	?pos	?eng	?hnd	?phrase_start_id $? ?phrase_end_id ? ?)
 =>
 	(assert (id-phrase_type-lvalue ?phrase_start_id start PUNCT-OpenParenPUNCT-OpenParen ))
 	(assert (id-phrase_type-rvalue ?phrase_end_id end PUNCT-ClosedParenPUNCT-ClosedParen))
 )

 (defrule get_phrase_information1
 (declare (salience 1004))
 (position-eng-hnd-eng_ids      ?pos    ?eng    ?hnd    ?phrase_id ? ?)
 =>
        (assert (id-phrase_type-lvalue ?phrase_id start PUNCT-OpenParenPUNCT-OpenParen ))
        (assert (id-phrase_type-rvalue ?phrase_id end PUNCT-ClosedParenPUNCT-ClosedParen))
 )

 (defrule print_dummy_phrase_linfo
 (declare (salience 1003))
 (id-word ?id ?)
 (not (id-phrase_type-lvalue ?id $?))
 =>
 (assert (id-phrase_type-lvalue ?id - -))
 )
 
 (defrule print_dummy_phrase_rinfo
 (declare (salience 1003))
 (id-word ?id ?)
 (not (id-phrase_type-rvalue ?id $?))
 =>
 (assert (id-phrase_type-rvalue ?id - -))
 )

 (defrule get_phrase_information0_hi_en
 (declare (salience 1005))
 ?f<-(position_hi_en-eng-hnd-eng_ids      ?pos    ?eng    ?hnd    ?phrase_start_id $?ids ?phrase_end_id ?l ?r)
 ?f1<-(position_hi_en-eng-hnd-eng_ids      ?pos1    ?eng1    ?hnd1    ?phrase_end_id $?ids1 ?l1 ?r1)
 ;(test (neq ?pos  ?pos1))
 (test (eq (= ?pos ?pos1) FALSE))
 =>
        (retract ?f1)
        (assert (position_hi_en-eng-hnd-eng_ids      ?pos1    ?eng1    ?hnd1     $?ids1 ?l1 ?r1))
 )


(defrule get_phrase_information_hi_en
 (declare (salience 1004))
 (position_hi_en-eng-hnd-eng_ids      ?pos    ?eng    ?hnd    ?phrase_start_id $? ?phrase_end_id ? ?)
 =>
        (assert (id-phrase_type-lvalue_hi_en ?phrase_start_id start PUNCT-OpenParenPUNCT-OpenParen ))
        (assert (id-phrase_type-rvalue_hi_en ?phrase_end_id end PUNCT-ClosedParenPUNCT-ClosedParen))
 )

 (defrule get_phrase_information1_hi_en
 (declare (salience 1004))
 (position_hi_en-eng-hnd-eng_ids      ?pos    ?eng    ?hnd    ?phrase_id ? ?)
 =>
        (assert (id-phrase_type-lvalue_hi_en ?phrase_id start PUNCT-OpenParenPUNCT-OpenParen ))
        (assert (id-phrase_type-rvalue_hi_en ?phrase_id end PUNCT-ClosedParenPUNCT-ClosedParen))
 )


 (defrule print_dummy_phrase_linfo_hi_en
 (declare (salience 1003))
 (id-word ?id ?)
 (not (id-phrase_type-lvalue_hi_en ?id $?))
 =>
 (assert (id-phrase_type-lvalue_hi_en ?id - -))
 )

 (defrule print_dummy_phrase_rinfo_hi_en
 (declare (salience 1003))
 (id-word ?id ?)
 (not (id-phrase_type-rvalue_hi_en ?id $?))
 =>
 (assert (id-phrase_type-rvalue_hi_en ?id - -))
 )

 
 (defrule change_manual_op_fact_en_hi
 (declare (salience 2002))
 ?f<-(anu_id-anu_mng-man_mng ?aid ?anu_mng $?man_mng)
 (test (and  (neq $?man_mng @PUNCT-DotDotDot)(neq $?man_mng @PUNCT-Dot) (neq $?man_mng @PUNCT-Semicolon) (neq $?man_mng @PUNCT-Comma) (neq $?man_mng @PUNCT-QuestionMark)(neq $?man_mng @PUNCT-DoubleQuote)(neq $?man_mng @PUNCT-Colon)(neq $?man_mng @PUNCT-OpenParen)(neq $?man_mng @PUNCT-ClosedParen)(neq $?man_mng @PUNCT-Exclamation)(neq $?man_mng @PUNCT-LeftCurlyBrace)(neq $?man_mng @PUNCT-RightCurlyBrace)(neq $?man_mng @PUNCT-RightSquareBracket)(neq $?man_mng @PUNCT-LeftSquareBracket)))
  =>
 (retract ?f)
 (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid ?anu_mng - - $?man_mng))
 )

 (defrule manual_op_fact_r_punc_en_hi
 (declare (salience 2004))
 ?f<-(anu_id-anu_mng-man_mng ?aid ?anu_mng ?man_mng&@PUNCT-DotDotDot|@PUNCT-Dot|@PUNCT-Semicolon|@PUNCT-Comma|@PUNCT-QuestionMark|PUNCT-DoubleQuote|PUNCT-Colon|PUNCT-OpenParen|PUNCT-ClosedParen|PUNCT-Exclamation|PUNCT-LeftCurlyBrace|PUNCT-RightCurlyBrace|PUNCT-RightSquareBracket|PUNCT-LeftSquareBracket)
  =>
 (retract ?f)
 (assert (anu_id-man_right_punc  ?aid ?man_mng))
 )

 (defrule manual_op_fact_l_punc_en_hi
 (declare (salience 2004))
 ?f<-(id-word ?aid $?)
 (not (anu_id-man_left_punc ?aid $?))
  =>
 (assert (anu_id-man_left_punc  ?aid -))
 )

 (defrule dummy_manual_r_punc_en_hi
 (declare (salience 2003))
 ?f<-(id-word ?aid $?)
 (not (anu_id-man_right_punc ?aid $?))
  =>
 (assert (anu_id-man_right_punc  ?aid -))
 )

 (defrule manual_op_fact_r_punc_hi_en
 (declare (salience 2004))
 ?f<-(eng_id-eng_wrd-man_wrd ?aid ?anu_mng ?man_mng&@PUNCT-DotDotDot|@PUNCT-Dot|@PUNCT-Semicolon|@PUNCT-Comma|@PUNCT-QuestionMark|PUNCT-DoubleQuote|PUNCT-Colon|PUNCT-OpenParen|PUNCT-ClosedParen|PUNCT-Exclamation|PUNCT-LeftCurlyBrace|PUNCT-RightCurlyBrace|PUNCT-RightSquareBracket|PUNCT-LeftSquareBracket)
  =>
 (retract ?f)
 (assert (anu_id-man_right_punc_hi_en  ?aid ?man_mng))
 )

 (defrule manual_op_fact_l_punc_hi_en
 (declare (salience 2004))
 ?f<-(id-word ?aid $?)
 (not (anu_id-man_left_punc_hi_en ?aid $?))
  =>
 (assert (anu_id-man_left_punc_hi_en  ?aid -))
 )

 (defrule dummy_manual_r_punc_hi_en
 (declare (salience 2003))
 ?f<-(id-word ?aid $?)
 (not (anu_id-man_right_punc_hi_en ?aid $?))
  =>
 (assert (anu_id-man_right_punc_hi_en  ?aid -))
 )

 (defrule convert_wx_to_utf8_for_manual_output_en_hi
 (declare (salience 2001))
 ?f<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid $?man_output)
 (test (and (> (length $?mng) 0) (neq $?man_output -)))
 (not (id_manual_output_mng_modified ?aid))
 =>
 (retract ?f)
 (bind ?length (length $?man_output))
 (if (eq ?length 0) then
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?mng - ?mid -))
 else
        (loop-for-count (?i  1 ?length)
                ;(bind ?word (nth$ ?i (create$ $?man_output)))
                (bind ?word (nth$ ?i $?man_output))
                (if (not (numberp ?word)) then
                        (bind ?manual_output (wx_utf8 ?word))
                        (if (eq ?i 1) then
                                (bind ?utf8_man_output ?manual_output)
                        else
                                (bind ?utf8_man_output (str-cat ?utf8_man_output " " ?manual_output))
                        )
                else
                        (bind ?utf8_man_output ?word)))
         
        (assert (anu_id-anu_mng-sep-man_id-man_mng ?aid  $?mng - ?mid ?utf8_man_output))
 )
        (assert (id_manual_output_mng_modified ?aid))
 )


 (defrule man_rule_en_hi
 (declare (salience 900))
 (id-word ?id ?word)
 (not (anu_id-anu_mng-sep-man_id-man_mng ?id $?))
 =>
 
 (assert (anu_id-anu_mng-sep-man_id-man_mng ?id - - - -))
 )


 (defrule change_manual_op_fact-hi-en
 (declare (salience 2002))
 ?f<-(eng_id-eng_wrd-man_wrd ?aid ?anu_mng ?man_mng)
 (test (and  (neq ?man_mng @PUNCT-DotDotDot)(neq ?man_mng @PUNCT-Dot) (neq ?man_mng @PUNCT-Semicolon) (neq ?man_mng @PUNCT-Comma) (neq ?man_mng @PUNCT-QuestionMark)(neq ?man_mng @PUNCT-DoubleQuote)(neq ?man_mng @PUNCT-Colon)(neq ?man_mng @PUNCT-OpenParen)(neq ?man_mng @PUNCT-ClosedParen)(neq ?man_mng @PUNCT-Exclamation)(neq ?man_mng @PUNCT-LeftCurlyBrace)(neq ?man_mng @PUNCT-RightCurlyBrace)(neq ?man_mng @PUNCT-RightSquareBracket)(neq ?man_mng @PUNCT-LeftSquareBracket)))
  =>
 (retract ?f)
 (assert (eng_id-eng_wrd-sep-man_id-man_mng ?aid ?anu_mng - - ?man_mng))
 )

 (defrule convert_wx_to_utf8_for_manual_output-hi-en
 (declare (salience 2001))
 ?f<-(eng_id-eng_wrd-sep-man_id-man_mng ?aid $?mng - ?mid $?man_output)
 (test (and (> (length $?mng) 0) (neq $?man_output -)))
 (not (id_manual_output_mng_modified1 ?aid))
 =>
 (retract ?f)
 (bind ?length (length $?man_output))
 (if (eq ?length 0) then
        (assert (eng_id-eng_wrd-sep-man_id-man_mng ?aid $?mng - ?mid -))
 else
        (loop-for-count (?i  1 ?length)
                ;(bind ?word (nth$ ?i (create$ $?man_output)))
                (bind ?word (nth$ ?i $?man_output))
                (if (not (numberp ?word)) then
                        (bind ?manual_output (wx_utf8 ?word))
                        (if (eq ?i 1) then
                                (bind ?utf8_man_output ?manual_output)
                        else
                                (bind ?utf8_man_output (str-cat ?utf8_man_output " " ?manual_output))
  )
                else
                        (bind ?utf8_man_output ?word)))

        (assert (eng_id-eng_wrd-sep-man_id-man_mng ?aid  $?mng - ?mid ?utf8_man_output))
 )
        (assert (id_manual_output_mng_modified1 ?aid))
 )


 (defrule man_rule1-hi-en
 (declare (salience 900))
 (id-word ?id ?word)
 (not (eng_id-eng_wrd-sep-man_id-man_mng ?id $?))
 =>

 (assert (eng_id-eng_wrd-sep-man_id-man_mng ?id - - - -))
 )

 ;==================================== alignment with score facts ==============================

 (defrule convert_wx_to_utf8_for_manual_output_human_rules-en_hi
 (declare (salience 2001))
 ?f<-(alignment (anu_id ?aid)(man_id ?mid)(anu_meaning $?mng)(man_meaning $?man_output))
 (not (id_manual_output_mng_modified2 ?aid))
 =>
 	(bind ?length (length $?man_output))
 	(if (eq ?length 0) then
 	       (modify ?f (man_meaning -) (anu_meaning $?mng))
 	else
        	(loop-for-count (?i  1 ?length)
                	(bind ?word (nth$ ?i $?man_output))
                	(if (not (numberp ?word)) then
                        	(bind ?manual_output (wx_utf8 ?word))
                        	(if (eq ?i 1) then
                                	(bind ?utf8_man_output ?manual_output)
                        	else
                                	(bind ?utf8_man_output (str-cat ?utf8_man_output " " ?manual_output))
  				)
                	else
                        	(bind ?utf8_man_output ?word)
			)
		)
        	(modify ?f (man_meaning ?utf8_man_output)(anu_meaning $?mng))
 	)
        (assert (id_manual_output_mng_modified2 ?aid))
 )
 ;-----------------------------------------------------------------------------------------
 (defrule dummy_score_align_fact
 (declare (salience 900))
 (id-word ?id ?word)
 (not (alignment (anu_id ?id)))
 =>
  	(assert (alignment (anu_id ?id)(man_id -)(anu_meaning -)(man_meaning -)))
 )
 ;============================== std and hindi parser align facts========================

 (defrule convert_wx_to_utf8_for_std_hnd_parser_align
 (declare (salience 2002))
 ?f<-(parser_align (anu_id ?aid)(man_id ?mid)(anu_meaning $?mng)(man_meaning $?man_output))
 (not (id_parser_output_modified ?aid))
 =>
        (bind ?length (length $?man_output))
        (if (eq ?length 0) then
                (modify ?f (man_meaning -) (anu_meaning $?mng))
        else
                (loop-for-count (?i  1 ?length)
                        (bind ?word (nth$ ?i $?man_output))
                        (if (not (numberp ?word)) then
                                (bind ?manual_output (wx_utf8 ?word))
                                (if (eq ?i 1) then
                                        (bind ?utf8_man_output ?manual_output)
                                else
                                        (bind ?utf8_man_output (str-cat ?utf8_man_output " " ?manual_output))
                                )
                        else
                                (bind ?utf8_man_output ?word))
                )
                (modify ?f (man_meaning ?utf8_man_output)(anu_meaning $?mng))
        )
        (assert (id_parser_output_modified ?aid))
 )
 ;-----------------------------------------------------------------------------------------
 (defrule dummy_std_hnd_parser_fact
 (declare (salience 900))
 (id-word ?id ?word)
 (not (parser_align (anu_id ?id)))
 =>
        (assert (parser_align (anu_id ?id)(man_id -)(anu_meaning -)(man_meaning -)))
 )

 ;===============================  hnd parser align facts ================================

; (defrule convert_wx_to_utf8_for_manual_output_hnd_parser_align
; (declare (salience 2001))
; ?f<-(final_align (anu_id ?aid)(man_id ?mid)(anu_meaning $?mng)(man_meaning $?man_output))
; (not (id_manual_output_mng_modified4 ?aid))
; =>
;	(bind ?length (length $?man_output))
;	(if (eq ?length 0) then
;        	(modify ?f (man_meaning -) (anu_meaning $?mng))
; 	else
;        	(loop-for-count (?i  1 ?length)
;                	(bind ?word (nth$ ?i $?man_output))
;                	(if (not (numberp ?word)) then
;                        	(bind ?manual_output (wx_utf8 ?word))
;                        	(if (eq ?i 1) then
;                                	(bind ?utf8_man_output ?manual_output)
;                        	else
;                                	(bind ?utf8_man_output (str-cat ?utf8_man_output " " ?manual_output))
;  				)
;                	else
;                        	(bind ?utf8_man_output ?word))
;		)
;        	(modify ?f (man_meaning ?utf8_man_output)(anu_meaning $?mng))
; 	)
;        (assert (id_manual_output_mng_modified4 ?aid))
; )
; ;-----------------------------------------------------------------------------------------
; (defrule dummy_hnd_parser_align
; (declare (salience 900))
; (id-word ?id ?word)
; (not (final_align (anu_id ?id)))
; =>
;  	(assert (final_align (anu_id ?id)(man_id -)(anu_meaning -)(man_meaning -)))
; )
;
 ;=======================================================================================================


 (defrule convert_wx_to_utf8_for_manual_output_human_rules-hi_en
 (declare (salience 2001))
 ?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?mng - ?mid $?man_output)
 (test (and (> (length $?mng) 0) (neq $?man_output -)))
 (not (id_manual_output_mng_modified3 ?aid))
 =>
 (retract ?f)
 (bind ?length (length $?man_output))
 (if (eq ?length 0) then
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?mng - ?mid -))
 else
        (loop-for-count (?i  1 ?length)
                ;(bind ?word (nth$ ?i (create$ $?man_output)))
                (bind ?word (nth$ ?i $?man_output))
                (if (not (numberp ?word)) then
                        (bind ?manual_output (wx_utf8 ?word))
                        (if (eq ?i 1) then
                                (bind ?utf8_man_output ?manual_output)
                        else
                                (bind ?utf8_man_output (str-cat ?utf8_man_output " " ?manual_output))
  )
                else
                        (bind ?utf8_man_output ?word)))

        ;  (bind ?utf8_man_output (string-to-field ?utf8_man_output))
          (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid  $?mng - ?mid ?utf8_man_output))
 )
        (assert (id_manual_output_mng_modified3 ?aid))
 )


 (defrule man_rule_human_rules_hi_en
 (declare (salience 900))
 (id-word ?id ?word)
 (not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $?))
 =>

 (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - - -))
 )

 ;========================================= Generating html format ========================================
 ;;printing html head information 
 (defrule sent_start1.1_dont_print_title_info
 (declare (salience 1004))
 (REMOVE_TITLE_FROM_HTML)
 (para_id-sent_id-no_of_words 1 1 ?)
 ?f<-(id-original_word 1 ?original_word)
 (id-word ?id ?word)
 (id-root-category-suffix-number ?id ?root ? ?suf ?num)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source-grp_ids ?id ?h_mng ? $?)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (id-Apertium_output   ?id   ?mng)
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 =>
 (retract ?f)
 (if (eq ?r_punc NONE) then (bind ?r_punc (create$ )))
 (if (eq ?l_punc NONE) then (bind ?l_punc (create$ )))
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
 (Eng_sen $?eng_sen)
 =>
 (if (eq ?r_punc NONE) then (bind ?r_punc (create$ )))
 (if (eq ?l_punc NONE) then (bind ?l_punc (create$ )))
 (bind ?fetch (sub-string 0 1 (implode$ (create$ ?root))))
 ;(printout fp "<form class=\"suggestion\" action=\"sumbit_suggestions.php\"><table cellspacing=\"0\">" crlf)
 (print_eng_wrd_row  ?p_id ?s_id 1 ?chnk_fr_htm ?l_punc ?r_punc ?root ?original_word ?sen_type ?fetch $?eng_sen)
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
 (id-root-category-suffix-number ?id ?root ? ?suf ?num)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-original_word ?id ?original_word)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 =>
 (if (eq ?r_punc NONE) then (bind ?r_punc (create$ )))
 (if (eq ?l_punc NONE) then (bind ?l_punc (create$ )))
 (bind ?fetch (sub-string 0 1 (implode$ (create$ ?root))))

 (printout fp "<table cellspacing=\"0\">" crlf)
 (printout fp "<tr class=\"row1\">" crlf)
 (printout fp "<td class=\""?chnk_fr_htm"\"> <a onclick=\"javascript:  fetchshabd"?fetch"('"?root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_"?id"_"?original_word"\" class=\"popup_link\">"(implode$ (create$ ?l_punc)) ?original_word (implode$ (create$ ?r_punc))"</span> <script type=\"text/javascript\"> new Popup('popup_2','popup_link_"?p_id"_"?s_id"_"?id"_"?original_word"',{position:'below',trigger:'click'}); </script>   </a> </td></tr>" crlf)

 )

 ;---------------------------------------------------------------------------------------------------
 ;;printing lwg words information
 (defrule id_rule0
 (declare (salience 900))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?)
 (id-root-category-suffix-number ?id ?root ? ?suf ?num)
 (id-word ?id ?word)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source-grp_ids ?id ?h_mng ?mng_src $?)
 (root-verbchunk-tam-chunkids ? ? ? $?lwg_ids ?head_id)
 (pada_info (group_head_id ?head_id)(H_tam ?h_tam)(tam_source ?tam_src))
 (test (or(member$ ?id $?lwg_ids)(= ?head_id ?id)))
 (id-Apertium_output ?head_id ?apertium_output)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 (anu_id-anu_mng-sep-man_id-man_mng ?id $? ? - ? ?man_mng)
 (eng_id-eng_wrd-sep-man_id-man_mng ?id $? ? - ? ?man_mng1)
 (alignment (anu_id ?id)(man_meaning ?man_mng2))
; (final_align (anu_id ?id)(man_meaning ?man_mng3))
 (parser_align (anu_id ?id)(man_meaning ?man_mng4))
 (anu_id-anu_mng-sep-man_id-man_mng_tmp  ?id $? ? - ? ?man_mng_tmp)
 (id-phrase_type-lvalue ?id ?ph_ltype ?ph_l_val)
 (id-phrase_type-rvalue ?id ?ph_rtype ?ph_r_val)
 (anu_id-man_left_punc ?id ?m_l_punc)
 (anu_id-man_right_punc ?id ?m_r_punc)
 (id-phrase_type-lvalue_hi_en ?id ?ph_ltype_hi_en ?ph_l_val_hi_en)
 (id-phrase_type-rvalue_hi_en ?id ?ph_rtype_hi_en ?ph_r_val_hi_en)
 (anu_id-man_left_punc_hi_en ?id ?m_l_punc_hi_en)
 (anu_id-man_right_punc_hi_en ?id ?m_r_punc_hi_en)
 =>
 (retract ?f)
 (if (eq ?r_punc NONE) then (bind ?r_punc (create$ )))
 (if (eq ?l_punc NONE) then (bind ?l_punc (create$ )))
 (if (eq ?m_r_punc -) then (bind ?m_r_punc (create$ )))
 (if (eq ?m_l_punc -) then (bind ?m_l_punc (create$ )))
 (if (eq ?ph_ltype start) then (bind ?m_l_punc (create$ ?ph_l_val ?m_l_punc)))
 (if (eq ?ph_rtype end) then (bind ?m_r_punc  (create$ ?m_r_punc ?ph_r_val)))
 (if (eq ?m_r_punc_hi_en -) then (bind ?m_r_punc_hi_en (create$ )))
 (if (eq ?m_l_punc_hi_en -) then (bind ?m_l_punc_hi_en (create$ )))
 (if (eq ?ph_ltype_hi_en start) then (bind ?m_l_punc_hi_en (create$ ?ph_l_val_hi_en ?m_l_punc_hi_en)))
 (if (eq ?ph_rtype_hi_en end) then (bind ?m_r_punc_hi_en  (create$ ?m_r_punc_hi_en ?ph_r_val_hi_en)))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (print_caution_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?sen_type ?idiom_des)
 (print_padasutra_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat ?padasuthra)
 (print_root_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?suf ?num)
 (print_dictionary_row  ?p_id ?s_id ?id ?chnk_fr_htm ?cat ?root)
 (print_pos_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat)
 (print_chunker_row  ?p_id ?s_id ?id ?chnk_fr_htm ?chunk_type)
 (if (= ?head_id ?id) then
 (print_lwg_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_tam ?padasuthra MAIN_VERB)
 (print_sense_disambiguation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng ?h_tam MAIN_VERB ?mng_src ?tam_src)
 (print_prep-movement_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng ?h_tam MAIN_VERB -)
 (print_hindi-generation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output MAIN_VERB)
 (print_manual_ouput_row  ?p_id ?s_id ?id ?chnk_fr_htm ?m_l_punc ?m_r_punc ?man_mng MAIN_VERB)
 (print_manual_ouput_row1  ?p_id ?s_id ?id ?chnk_fr_htm ?m_l_punc_hi_en ?m_r_punc_hi_en ?man_mng1 MAIN_VERB)
 (print_parser_align_row   ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng4 MAIN_VERB)
 (print_manual_ouput_row2  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng2 MAIN_VERB)
 (print_manual_ouput_row3  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng_tmp MAIN_VERB)
; (print_manual_ouput_row4  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng3 MAIN_VERB)
 (print_suggestion_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output MAIN_VERB) 
 else
 (print_lwg_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_tam ?padasuthra AUX_VERB)
 (print_sense_disambiguation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng ?h_tam AUX_VERB ?mng_src ?tam_src)
 (print_prep-movement_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng ?h_tam AUX_VERB -)
 (print_hindi-generation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - AUX_VERB)
 (print_manual_ouput_row  ?p_id ?s_id ?id ?chnk_fr_htm ?m_l_punc ?m_r_punc ?man_mng AUX_VERB)
 (print_manual_ouput_row1  ?p_id ?s_id ?id ?chnk_fr_htm ?m_l_punc_hi_en ?m_r_punc_hi_en ?man_mng1 AUX_VERB)
 (print_parser_align_row   ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng4 AUX_VERB)
 (print_manual_ouput_row2  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng2 AUX_VERB)
 (print_manual_ouput_row3  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng_tmp AUX_VERB)
; (print_manual_ouput_row4  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng3 AUX_VERB)
 (print_suggestion_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output AUX_VERB)) 

 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 ;word information having apertium output
 (defrule  apertium_output_with_pp_id0
 (declare (salience 950))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?w_id)
 (id-root-category-suffix-number ?pp_id ?pp_root ? ?pp_suf ?pp_num)
 (id-word ?pp_id ?pp_word)
 (id-cat_coarse ?pp_id ?pp_cat)
 (id-padasuthra ?pp_id ?pp_padasuthra)
 (id-HM-source-grp_ids ?pp_id ?pp_h_mng ? $?)
 (id-word ?id ?word)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-root-category-suffix-number ?id ?root ? ?suf ?num)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type1 ?chnk_fr_htm1 $?ids1)
 (test (member$ ?id $?ids1))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source-grp_ids ?id ?h_mng ?mng_src $?)
 (id-Apertium_output ?id ?apertium_output)
 (pada_info (group_head_id ?h_id)(vibakthi ?vib)(preposition ?pp_id)(group_ids $?g_ids))
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (test (and (neq ?vib 0) (neq ?pp_id 0)))
 (test (member$ ?id $?g_ids))
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 (anu_id-anu_mng-sep-man_id-man_mng ?id $? ? - ? ?man_mng)
 (eng_id-eng_wrd-sep-man_id-man_mng ?id $? ? - ? ?man_mng1)
 (alignment (anu_id ?id)(man_meaning ?man_mng2))
; (final_align (anu_id ?id)(man_meaning ?man_mng3))
 (parser_align (anu_id ?id)(man_meaning ?man_mng4))
 (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $? ? - ? ?man_mng_tmp)
 (id-phrase_type-lvalue ?id ?ph_ltype ?ph_l_val)
 (id-phrase_type-rvalue ?id ?ph_rtype ?ph_r_val)
 (anu_id-man_left_punc ?id ?m_l_punc)
 (anu_id-man_right_punc ?id ?m_r_punc)
 (id-phrase_type-lvalue_hi_en ?id ?ph_ltype_hi_en ?ph_l_val_hi_en)
 (id-phrase_type-rvalue_hi_en ?id ?ph_rtype_hi_en ?ph_r_val_hi_en)
 (anu_id-man_left_punc_hi_en ?id ?m_l_punc_hi_en)
 (anu_id-man_right_punc_hi_en ?id ?m_r_punc_hi_en)
 =>
 (retract ?f)
 (if (eq ?r_punc NONE) then (bind ?r_punc (create$ )))
 (if (eq ?l_punc NONE) then (bind ?l_punc (create$ )))
 (if (eq ?m_r_punc -) then (bind ?m_r_punc (create$ )))
 (if (eq ?m_l_punc -) then (bind ?m_l_punc (create$ )))
 (if (eq ?ph_ltype start) then (bind ?m_l_punc (create$ ?ph_l_val ?m_l_punc)))
 (if (eq ?ph_rtype end) then (bind ?m_r_punc (create$ ?m_r_punc ?ph_r_val)))
 (if (eq ?m_r_punc_hi_en -) then (bind ?m_r_punc_hi_en (create$ )))
 (if (eq ?m_l_punc_hi_en -) then (bind ?m_l_punc_hi_en (create$ )))
 (if (eq ?ph_ltype_hi_en start) then (bind ?m_l_punc_hi_en (create$ ?ph_l_val_hi_en ?m_l_punc_hi_en)))
 (if (eq ?ph_rtype_hi_en end) then (bind ?m_r_punc_hi_en  (create$ ?m_r_punc_hi_en ?ph_r_val_hi_en)))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (print_caution_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?sen_type ?idiom_des)
 (print_padasutra_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat ?padasuthra)
 (print_root_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?suf ?num)
 (print_dictionary_row  ?p_id ?s_id ?id ?chnk_fr_htm ?cat ?root)
 (print_pos_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat)
 (print_chunker_row  ?p_id ?s_id ?id ?chnk_fr_htm ?chunk_type)
 (print_lwg_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - ?padasuthra VIB0) 
 (print_sense_disambiguation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng - VIB0 ?mng_src -)
 (print_prep-movement_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng - VIB0 -)
 (print_hindi-generation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output -)
 (print_manual_ouput_row  ?p_id ?s_id ?id ?chnk_fr_htm ?m_l_punc ?m_r_punc ?man_mng -)
 (print_manual_ouput_row1 ?p_id ?s_id ?id ?chnk_fr_htm ?m_l_punc_hi_en ?m_r_punc_hi_en ?man_mng1 -)
 (print_parser_align_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng4 -)
 (print_manual_ouput_row2 ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng2 -)
 (print_manual_ouput_row3 ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng_tmp -)
; (print_manual_ouput_row4 ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng3 -)
 (print_suggestion_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output -)

 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule  apertium_output_with_pp_id1
 (declare (salience 950))
 ?f<-(id-index ?pp_id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?)
 (id-root-category-suffix-number ?pp_id ?pp_root ? ?pp_suf ?pp_num)
 (id-word ?pp_id ?pp_word)
 (id-cat_coarse ?pp_id ?pp_cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?pp_id $?ids))
 (id-padasuthra ?pp_id ?pp_padasuthra)
 (id-HM-source-grp_ids ?pp_id ?pp_h_mng ?mng_src $?)
 (id-word ?id ?word)
 (id-root-category-suffix-number ?id ?root ? ?suf ?num)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type1 ?chnk_fr_htm1 $?ids1)
 (test (member$ ?id $?ids1))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source-grp_ids ?id ?h_mng ? $?)
 (id-Apertium_output ?id ?Apertium_output)
 (id-right_punctuation ?pp_id ?r_punc)
 (id-left_punctuation  ?pp_id ?l_punc )
 (pada_info (group_head_id ?id)(vibakthi ?vib)(preposition $?pre ?pp_id $?pos))
 (test (and (neq ?vib 0) (neq ?pp_id 0)))
 (sen_type-id-phrase ?sen_type ?pp_id ?phrase)
 (anu_id-anu_mng-sep-man_id-man_mng ?pp_id $? ? - ? ?man_mng)
 (eng_id-eng_wrd-sep-man_id-man_mng  ?pp_id $? ? - ? ?man_mng1)
 (alignment (anu_id ?pp_id)(man_meaning ?man_mng2))
; (final_align (anu_id ?pp_id)(man_meaning ?man_mng3))
 (parser_align (anu_id ?pp_id)(man_meaning ?man_mng4))
 (anu_id-anu_mng-sep-man_id-man_mng_tmp ?pp_id $? ? - ? ?man_mng_tmp)
 (id-phrase_type-lvalue ?pp_id ?ph_ltype ?ph_l_val) 
 (id-phrase_type-rvalue ?pp_id ?ph_rtype ?ph_r_val) 
 (anu_id-man_left_punc ?id ?m_l_punc)
 (anu_id-man_right_punc ?id ?m_r_punc)
 (id-phrase_type-lvalue_hi_en ?pp_id ?ph_ltype_hi_en ?ph_l_val_hi_en)
 (id-phrase_type-rvalue_hi_en ?pp_id ?ph_rtype_hi_en ?ph_r_val_hi_en)
 (anu_id-man_left_punc_hi_en ?id ?m_l_punc_hi_en)
 (anu_id-man_right_punc_hi_en ?id ?m_r_punc_hi_en)
 =>
 (retract ?f)
 (bind ?sign (- ?id ?pp_id))
 (if (eq ?r_punc NONE) then (bind ?r_punc (create$ )))
 (if (eq ?l_punc NONE) then (bind ?l_punc (create$ )))
 (if (eq ?m_r_punc -) then (bind ?m_r_punc (create$ )))
 (if (eq ?m_l_punc -) then (bind ?m_l_punc (create$ )))
 (if (eq ?ph_ltype start) then (bind ?m_l_punc (create$ ?ph_l_val ?m_l_punc)))
 (if (eq ?ph_rtype end) then (bind ?m_r_punc (create$ ?m_r_punc ?ph_r_val)))
 (if (eq ?m_r_punc_hi_en -) then (bind ?m_r_punc_hi_en (create$ )))
 (if (eq ?m_l_punc_hi_en -) then (bind ?m_l_punc_hi_en (create$ )))
 (if (eq ?ph_ltype_hi_en start) then (bind ?m_l_punc_hi_en (create$ ?ph_l_val_hi_en ?m_l_punc_hi_en)))
 (if (eq ?ph_rtype_hi_en end) then (bind ?m_r_punc_hi_en  (create$ ?m_r_punc_hi_en ?ph_r_val_hi_en)))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))  
 (print_caution_row ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_root ?sen_type ?idiom_des)
 (print_padasutra_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_cat ?pp_padasuthra)
 (print_root_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_root ?pp_suf ?pp_num)
 (print_dictionary_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?pp_cat ?pp_root)
 (print_pos_row ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_cat)
 (print_chunker_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?chunk_type)
 (print_lwg_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc - ?pp_padasuthra -)
 (if (> ?sign 0) then
 (print_sense_disambiguation_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_h_mng - GREATER_THAN ?mng_src -)
 (print_prep-movement_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_h_mng - GREATER_THAN ?sign)
 else
 (print_sense_disambiguation_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_h_mng - LESS_THAN ?mng_src -)
 (print_prep-movement_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?pp_h_mng - LESS_THAN ?sign))
 (print_hindi-generation_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc "~" -)
 (print_manual_ouput_row  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?m_l_punc ?m_r_punc ?man_mng -)
 (print_manual_ouput_row1  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?m_l_punc_hi_en ?m_r_punc_hi_en ?man_mng1 -)
 (print_parser_align_row   ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng4 -)
 (print_manual_ouput_row2  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng2 -)
 (print_manual_ouput_row3  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng_tmp -)
; (print_manual_ouput_row4  ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng3 -)
 (print_suggestion_row ?p_id ?s_id ?pp_id ?chnk_fr_htm ?l_punc ?r_punc "~" -) 
 
 (assert (id-index (+ ?pp_id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 ;word information having apertium output
 (defrule id_rule4
 (declare (salience 700))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?)
 (id-root-category-suffix-number ?id ?root ? ?suf ?num)
 (id-word ?id ?word)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source-grp_ids ?id ?h_mng ?mng_src $?)
 (id-Apertium_output ?id ?apertium_output)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 (anu_id-anu_mng-sep-man_id-man_mng ?id $? ? - ? ?man_mng)
 (eng_id-eng_wrd-sep-man_id-man_mng ?id $? ? - ? ?man_mng1)
 (alignment (anu_id ?id)(man_meaning ?man_mng2))
; (final_align (anu_id ?id)(man_meaning ?man_mng3))
 (parser_align (anu_id ?id)(man_meaning ?man_mng4))
 (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $? ? - ? ?man_mng_tmp)
 (id-phrase_type-lvalue ?id ?ph_ltype ?ph_l_val)
 (id-phrase_type-rvalue ?id ?ph_rtype ?ph_r_val)
 (anu_id-man_left_punc ?id ?m_l_punc)
 (anu_id-man_right_punc ?id ?m_r_punc)
 (id-phrase_type-lvalue_hi_en ?id ?ph_ltype_hi_en ?ph_l_val_hi_en)
 (id-phrase_type-rvalue_hi_en ?id ?ph_rtype_hi_en ?ph_r_val_hi_en)
 (anu_id-man_left_punc_hi_en ?id ?m_l_punc_hi_en)
 (anu_id-man_right_punc_hi_en ?id ?m_r_punc_hi_en)
 =>
 (retract ?f)
 (if (eq ?r_punc NONE) then (bind ?r_punc (create$ )))
 (if (eq ?l_punc NONE) then (bind ?l_punc (create$ )))
 (if (eq ?m_r_punc -) then (bind ?m_r_punc (create$ )))
 (if (eq ?m_l_punc -) then (bind ?m_l_punc (create$ )))
 (if (eq ?ph_ltype start) then (bind ?m_l_punc (create$ ?ph_l_val ?m_l_punc)))
 (if (eq ?ph_rtype end) then (bind ?m_r_punc (create$ ?m_r_punc ?ph_r_val)))
 (if (eq ?m_r_punc_hi_en -) then (bind ?m_r_punc_hi_en (create$ )))
 (if (eq ?m_l_punc_hi_en -) then (bind ?m_l_punc_hi_en (create$ )))
 (if (eq ?ph_ltype_hi_en start) then (bind ?m_l_punc_hi_en (create$ ?ph_l_val_hi_en ?m_l_punc_hi_en)))
 (if (eq ?ph_rtype_hi_en end) then (bind ?m_r_punc_hi_en  (create$ ?m_r_punc_hi_en ?ph_r_val_hi_en)))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (print_caution_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?sen_type ?idiom_des)
 (print_padasutra_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat ?padasuthra)
 (print_root_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?suf ?num)
 (print_dictionary_row  ?p_id ?s_id ?id ?chnk_fr_htm ?cat ?root)
 (print_pos_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat)
 (print_chunker_row  ?p_id ?s_id ?id ?chnk_fr_htm ?chunk_type)
 (print_lwg_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - ?padasuthra -)
 (print_sense_disambiguation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng - - ?mng_src -)
 (print_prep-movement_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng - - -)
 (print_hindi-generation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output -)
 (print_manual_ouput_row  ?p_id ?s_id ?id ?chnk_fr_htm ?m_l_punc ?m_r_punc ?man_mng -)
 (print_manual_ouput_row1  ?p_id ?s_id ?id ?chnk_fr_htm ?m_l_punc_hi_en ?m_r_punc_hi_en ?man_mng1 -)
 (print_parser_align_row   ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng4 -)
 (print_manual_ouput_row2  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng2 -)
 (print_manual_ouput_row3  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng_tmp -)
; (print_manual_ouput_row4  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng3 -)
 (print_suggestion_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?apertium_output -)

 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule id_rule5
 (declare (salience 600))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?)
 (id-root-category-suffix-number ?id ?root ? ?suf ?num)
 (id-word ?id ?word)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source-grp_ids ?id ?h_mng ?mng_src $?)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (not (No complete linkages found))
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 (anu_id-anu_mng-sep-man_id-man_mng ?id $? ? - ? ?man_mng)
 (eng_id-eng_wrd-sep-man_id-man_mng ?id $? ? - ? ?man_mng1)
 (alignment (anu_id ?id)(man_meaning ?man_mng2))
; (final_align (anu_id ?id)(man_meaning ?man_mng3))
 (parser_align (anu_id ?id)(man_meaning ?man_mng4))
 (anu_id-anu_mng-sep-man_id-man_mng_tmp  ?id $? ? - ? ?man_mng_tmp)
 (id-phrase_type-lvalue ?id ?ph_ltype ?ph_l_val)
 (id-phrase_type-rvalue ?id ?ph_rtype ?ph_r_val)
 (anu_id-man_left_punc ?id ?m_l_punc)
 (anu_id-man_right_punc ?id ?m_r_punc)
 (id-phrase_type-lvalue_hi_en ?id ?ph_ltype_hi_en ?ph_l_val_hi_en)
 (id-phrase_type-rvalue_hi_en ?id ?ph_rtype_hi_en ?ph_r_val_hi_en)
 (anu_id-man_left_punc_hi_en ?id ?m_l_punc_hi_en)
 (anu_id-man_right_punc_hi_en ?id ?m_r_punc_hi_en)
 =>
 (retract ?f)
 (if (eq ?r_punc NONE) then (bind ?r_punc (create$ )))
 (if (eq ?l_punc NONE) then (bind ?l_punc (create$ )))
 (if (eq ?m_r_punc -) then (bind ?m_r_punc (create$ )))
 (if (eq ?m_l_punc -) then (bind ?m_l_punc (create$ )))
 (if (eq ?ph_ltype start) then (bind ?m_l_punc (create$ ?ph_l_val ?m_l_punc)))
 (if (eq ?ph_rtype end) then (bind ?m_r_punc (create$ ?m_r_punc ?ph_r_val)))
 (if (eq ?m_r_punc_hi_en -) then (bind ?m_r_punc_hi_en (create$ )))
 (if (eq ?m_l_punc_hi_en -) then (bind ?m_l_punc_hi_en (create$ )))
 (if (eq ?ph_ltype_hi_en start) then (bind ?m_l_punc_hi_en (create$ ?ph_l_val_hi_en ?m_l_punc_hi_en)))
 (if (eq ?ph_rtype_hi_en end) then (bind ?m_r_punc_hi_en  (create$ ?m_r_punc_hi_en ?ph_r_val_hi_en)))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (print_caution_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?sen_type ?idiom_des)
 (print_padasutra_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat ?padasuthra)
 (print_root_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?suf ?num)
 (print_dictionary_row  ?p_id ?s_id ?id ?chnk_fr_htm ?cat ?root)
 (print_pos_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat)
 (print_chunker_row  ?p_id ?s_id ?id ?chnk_fr_htm ?chunk_type)
 (print_lwg_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - ?padasuthra -)
 (print_sense_disambiguation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng - - ?mng_src -)
 (print_prep-movement_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng - - -)
 (print_hindi-generation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng -)
 (print_manual_ouput_row  ?p_id ?s_id ?id ?chnk_fr_htm ?m_l_punc ?m_r_punc ?man_mng -)
 (print_manual_ouput_row1  ?p_id ?s_id ?id ?chnk_fr_htm ?m_l_punc_hi_en ?m_r_punc_hi_en ?man_mng1 -)
 (print_parser_align_row   ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng4 -)
 (print_manual_ouput_row2  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng2 -)
 (print_manual_ouput_row3  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng_tmp -)
; (print_manual_ouput_row4  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng3 -)
 (print_suggestion_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?h_mng -)

 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule id_rule6
 (declare (salience 500))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?)
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
 (anu_id-anu_mng-sep-man_id-man_mng ?id $? ? - ? ?man_mng)
 (eng_id-eng_wrd-sep-man_id-man_mng ?id $? ? - ? ?man_mng1)
 (alignment (anu_id ?id)(man_meaning ?man_mng2))
; (final_align (anu_id ?id)(man_meaning ?man_mng3))
 (parser_align (anu_id ?id)(man_meaning ?man_mng4))
 (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $? ? - ? ?man_mng_tmp)
 (id-phrase_type-lvalue ?id ?ph_ltype ?ph_l_val)
 (id-phrase_type-rvalue ?id ?ph_rtype ?ph_r_val)
 (anu_id-man_left_punc ?id ?m_l_punc)
 (anu_id-man_right_punc ?id ?m_r_punc)
 (id-phrase_type-lvalue_hi_en ?id ?ph_ltype_hi_en ?ph_l_val_hi_en)
 (id-phrase_type-rvalue_hi_en ?id ?ph_rtype_hi_en ?ph_r_val_hi_en)
 (anu_id-man_left_punc_hi_en ?id ?m_l_punc_hi_en)
 (anu_id-man_right_punc_hi_en ?id ?m_r_punc_hi_en)
 =>
 (retract ?f)
 (if (eq ?r_punc NONE) then (bind ?r_punc (create$ )))
 (if (eq ?l_punc NONE) then (bind ?l_punc (create$ )))
 (if (eq ?m_r_punc -) then (bind ?m_r_punc (create$ )))
 (if (eq ?m_l_punc -) then (bind ?m_l_punc (create$ )))
 (if (eq ?ph_ltype start) then (bind ?m_l_punc (create$ ?ph_l_val ?m_l_punc)))
 (if (eq ?ph_rtype end) then (bind ?m_r_punc (create$ ?m_r_punc ?ph_r_val)))
 (if (eq ?m_r_punc_hi_en -) then (bind ?m_r_punc_hi_en (create$ )))
 (if (eq ?m_l_punc_hi_en -) then (bind ?m_l_punc_hi_en (create$ )))
 (if (eq ?ph_ltype_hi_en start) then (bind ?m_l_punc_hi_en (create$ ?ph_l_val_hi_en ?m_l_punc_hi_en)))
 (if (eq ?ph_rtype_hi_en end) then (bind ?m_r_punc_hi_en  (create$ ?m_r_punc_hi_en ?ph_r_val_hi_en)))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (print_caution_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?sen_type ?idiom_des)
 (print_padasutra_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat ?padasuthra)
 (print_root_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?root ?suf ?num)
 (print_dictionary_row  ?p_id ?s_id ?id ?chnk_fr_htm ?cat ?root)
 (print_pos_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?cat)
 (print_chunker_row  ?p_id ?s_id ?id ?chnk_fr_htm ?chunk_type)
 (print_lwg_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - ?padasuthra -)
 (print_sense_disambiguation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - - - - -)
 (print_prep-movement_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - - - -)
 (print_hindi-generation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - -)
 (print_manual_ouput_row  ?p_id ?s_id ?id ?chnk_fr_htm ?m_l_punc ?m_r_punc ?man_mng -)
 (print_manual_ouput_row1  ?p_id ?s_id ?id ?chnk_fr_htm ?m_l_punc_hi_en ?m_r_punc_hi_en ?man_mng1 -)
 (print_parser_align_row   ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng4 -)
 (print_manual_ouput_row2  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng2 -)
 (print_manual_ouput_row3  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng_tmp -)
; (print_manual_ouput_row4  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc ?man_mng3 -)
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
 (id-phrase_type-lvalue ?id ?ph_ltype ?ph_l_val)
 (id-phrase_type-rvalue ?id ?ph_rtype ?ph_r_val)
 (anu_id-man_left_punc ?id ?m_l_punc)
 (anu_id-man_right_punc ?id ?m_r_punc)
 (id-phrase_type-lvalue_hi_en ?id ?ph_ltype_hi_en ?ph_l_val_hi_en)
 (id-phrase_type-rvalue_hi_en ?id ?ph_rtype_hi_en ?ph_r_val_hi_en)
 (anu_id-man_left_punc_hi_en ?id ?m_l_punc_hi_en)
 (anu_id-man_right_punc_hi_en ?id ?m_r_punc_hi_en)
 =>
 (retract ?f)
 (if (eq ?r_punc NONE) then (bind ?r_punc (create$ )))
 (if (eq ?l_punc NONE) then (bind ?l_punc (create$ )))
 (if (eq ?m_r_punc -) then (bind ?m_r_punc (create$ )))
 (if (eq ?m_l_punc -) then (bind ?m_l_punc (create$ )))
 (if (eq ?ph_ltype start) then (bind ?m_l_punc (create$ ?ph_l_val ?m_l_punc)))
 (if (eq ?ph_rtype end) then (bind ?m_r_punc (create$ ?m_r_punc ?ph_r_val)))
 (if (eq ?m_r_punc_hi_en -) then (bind ?m_r_punc_hi_en (create$ )))
 (if (eq ?m_l_punc_hi_en -) then (bind ?m_l_punc_hi_en (create$ )))
 (if (eq ?ph_ltype_hi_en start) then (bind ?m_l_punc_hi_en (create$ ?ph_l_val_hi_en ?m_l_punc_hi_en)))
 (if (eq ?ph_rtype_hi_en end) then (bind ?m_r_punc_hi_en  (create$ ?m_r_punc_hi_en ?ph_r_val_hi_en)))
 (print_caution_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - - -s)
 (print_padasutra_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - -)
 (print_root_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - - -)
 (print_dictionary_row  ?p_id ?s_id ?id ?chnk_fr_htm - -)
 (print_pos_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc -)
 (print_chunker_row  ?p_id ?s_id ?id ?chnk_fr_htm -)
 (print_lwg_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - - -)
 (print_sense_disambiguation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - - - - -)
 (print_prep-movement_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - - - -)
 (print_hindi-generation_row  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - -)
 (print_manual_ouput_row  ?p_id ?s_id ?id ?chnk_fr_htm ?m_l_punc ?m_r_punc - -)
 (print_manual_ouput_row1  ?p_id ?s_id ?id ?chnk_fr_htm ?m_l_punc_hi_en ?m_r_punc_hi_en - -)
 (print_manual_ouput_row2  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - -)
 (print_manual_ouput_row3  ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - -)
 (print_suggestion_row ?p_id ?s_id ?id ?chnk_fr_htm ?l_punc ?r_punc - -)
 
 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule sent_end
 (declare (salience 300))
 (para_id-sent_id-no_of_words ?p_id ?s_id ?n_words)
 ?f<-(id-index ?id 0)
 (manual_hin_sen $?man_sen)
 (Eng_sen $?eng_sen)
 =>
 (retract ?f)
 (printout fp "<div class=\"submit_button_block\"><input class=\"submit_button\" type=\"submit\" value=\"Submit\" /></div> " crlf)
 (printout fp "</td></tr>" crlf)
 (printout fp "<!-- Sent Start -->" crlf) 
 (printout fp "<tr><td class=\"outertd\">"(implode$ $?eng_sen)"</td></tr>" crlf)
 (bind ?dic_path1 (str-cat ?*path1* "/tmp/" ?*filename* "_tmp/"?p_id"."?s_id"/hindi_sentence_tmp2.dat"))
 (open ?dic_path1 dic_fp1)
 (bind ?val1 (readline dic_fp1))
 (printout fp "<tr><td class=\"outertd\">" crlf)
 (while (neq ?val1 EOF)
 (printout fp "Anu translation :: "(wx_utf8 ?val1)"<br>" crlf)
 (printout t ?val1 crlf)
 (bind ?val1 (readline dic_fp1))
 )
 (printout fp "</td></tr>" crlf)
 (close dic_fp1)
 
 (printout fp "<tr><td class=\"outertd\">" "Man translation :: " (wx_utf8 (implode$ $?man_sen))"</td></tr>" crlf)

 (bind ?dic_path (str-cat ?*path1* "/tmp/" ?*filename* "_tmp/"?p_id"."?s_id"/total-left-over.dat"))
 (open ?dic_path dic_fp)
 (bind ?val (readline dic_fp))
 (printout fp "<tr><td class=\"outertd\">" crlf)
 (while (neq ?val EOF)
 (printout fp ?val"<br>" crlf)
 ;(printout t ?val crlf)
 (bind ?val (readline dic_fp))
 )
 (printout fp "</td></tr>" crlf)
 (close dic_fp)

 (printout fp "</table></form>" crlf)
 (printout fp "<!-- Sent End -->" crlf) 
 (if (and (= ?p_id 1) (= ?s_id 1)) then (printout fp "<div class=\"float_clear\"/>" crlf))

 (reset)
 (bind ?path (str-cat ?p_id "." (+ ?s_id 1) "/" facts_for_eng_align_html))
 (bind ?rt_value (load-facts ?path))
 (if (eq ?rt_value FALSE) then
	(bind ?path (str-cat  (+ ?p_id 1) ".1/" facts_for_eng_align_html))
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
