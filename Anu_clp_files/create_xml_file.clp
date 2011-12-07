(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deffunction string_to_integer (?parser_id)
(string-to-field (sub-string 2 10000 ?parser_id)))

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
 (not (id-root ?id ?root))
 =>
 (assert (id-root ?id -))
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

 (defrule modify_chunk_fct_for_html
 (declare (salience 2990))
 ?f<-(chunk-ids ?chnk_type $?ids ?id)
 (not (chunk_cntrl_fact_for_html ?id))
 =>
 (retract ?f)
 (assert (chunk-ids ?chnk_type ?chnk_type $?ids ?id))
 (assert (chunk_cntrl_fact_for_html ?id))
 )

 (defrule change_chunk_consecutive_same_color
 (declare (salience 2900))
 (chunk-ids ?chnk_type ?chnk $?ch1 ?id)
 ?f1<-(chunk-ids ?chnk_type ?chnk ?id1 $?ch2)
 (test (= ?id1 (+ ?id 1)))
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
 (pada_info (group_ids $?ids)(preposition ?pp_id))
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
 (assert (id-right_punctuation ?id "NONE"))
 )
 ;---------------------------------------------------------------------------------------------------
 ;Asserting a dummy left_punctuation if not present for any word.
 (defrule test_for_left_punctuation
 (declare (salience 3000))
 (id-word ?id ?word)
 (not (id-left_punctuation  ?id ?l_punc ))
 =>
 (assert (id-left_punctuation  ?id "NONE"))
 )

 ;======================================= Converting wx fields to utf8 ==================================
 ;convert padasuthra wx notation to utf8.
 (defrule test_gt_for_padasuthra
 (declare (salience 2000))
 ?f<-(id-padasuthra ?id ?mng)
 (not (id_padasuthra_mng_modified ?id))
 =>
 (retract ?f)
 (bind ?mng (wx_utf8 ?mng))
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
 (assert (id-padasuthra ?id ?mng))
 (assert (id_padasuthra_mng_modified ?id))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule test_gt_for_apertium_output
 (declare (salience 2000))
 ?f<-(id-Apertium_output ?id ?mng)
 (not (id_apertium_mng_modified ?id))
 =>
 (retract ?f)
 (bind ?mng (wx_utf8 ?mng))
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
 (bind ?mng (wx_utf8 ?mng))
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
 (bind ?h_tam (wx_utf8 ?h_tam))
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
 (bind ?vib (wx_utf8 ?vib))
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
 (assert (sen_type-id-phrase "NONE" ?id -))
 )
 ;========================================= Generating xml format ========================================
 ;;printing title information
 (defrule sent_start1.1_dont_print_title_info
 (declare (salience 1004))
 (REMOVE_TITLE_FROM_HTML)
 (para_id-sent_id-no_of_words 1 1 1)
 ?f<-(id-original_word 1 ?original_word)
 (id-word ?id ?word)
 (id-root ?id ?root)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (id-Apertium_output   ?id   ?mng)
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 (Eng_sen ?Eng_sen)
 =>
 (retract ?f)
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))   
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
 (printout fp "<div id=\"popup_8\" class=\"popup popup_draghandle\">" crlf)
 (printout fp "<div id=\"content\"></div>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<div id=\"popup_6\" class=\"popup popup_draghandle\">" crlf)
 (printout fp "<h3> IIT-B </h3>" crlf)
 (printout fp "<div id=\"content1iitb\"></div>" crlf)
 (printout fp "<p>" crlf)
 (printout fp "<a class=\"popup_closebox\" href=\"#\">Close box</a>" crlf)
 (printout fp "</p>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<div id=\"popup_2\" class=\"popup popup_draghandle\">" crlf)
 (printout fp "<h3> Shabdanjali </h3>" crlf)
 (printout fp "<div id=\"content1shabd\"></div>" crlf)
 (printout fp "<script type=\"text/javascript\">" crlf)
 (printout fp "new Popup('popup_6','popup_link_6',{position:'below',trigger:'click'})" crlf)
 (printout fp "new Popup('popup_8','popup_link_8',{position:'below',trigger:'click'})" crlf)
 (printout fp "</script>" crlf)
 (printout fp "<p>" crlf)
 (printout fp "<a class=\"popup_closebox\" href=\"#\">Close box</a>" crlf)
 (printout fp "</p>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<div id=\"popup_3\" class=\"popup popup_draghandle\">" crlf)
 (printout fp "<h3> cautions </h3>" crlf)
 (printout fp "<div id=\"content1caution\"></div>" crlf)
 (printout fp "<script type=\"text/javascript\">" crlf)
 (printout fp "new Popup('popup_6','popup_link_9',{position:'below',trigger:'click'})" crlf)
 (printout fp "new Popup('popup_8','popup_link_10',{position:'below',trigger:'click'})" crlf)
 (printout fp "</script>" crlf)
 (printout fp "<p>" crlf)
 (printout fp "<a class=\"popup_closebox\" href=\"#\">Close box</a>" crlf)
 (printout fp "</p>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<div id=\"navigation\">" crlf)
 (printout fp "<form action=\"\" onsubmit=\"goto_section(); return false;\">" crlf)
 (printout fp "<p><a id=\"translation\" href=\""?*filename*"_trnsltn.html\" target=\"_new\"> Translation </a><a id=\"help\" href=\"help.html\" target=\"_new\">Help</a><input type=\"text\" name=\"goto_section_value\" size=\"5\" /><input type=\"button\" value=\"Goto\" onclick=\"goto_section()\" /><input type=\"hidden\" name=\"no_of_rows\" value=\"10\" /><input type=\"button\" value=\"Show/Hide Rows...\" onclick=\"window.open('rows.html','ShowHideRowsWindow','top=200,left=200,height=500,width=300,location=no,menubar=no,toolbar=no,directories=no,statusbar=no');\" /><input type=\"checkbox\" name=\"numbers_value\" checked=\"checked\" onchange=\"toggle_numbers()\" />Numbers<input type=\"checkbox\" name=\"border_value\" checked=\"checked\" onchange=\"toggle_borders()\" />Borders</p>" crlf)
 (printout fp "</form>" crlf)
 (printout fp "</div>" crlf)
; (printout fp "<form class=\"suggestion\" action=\"sumbit_suggestions.php\"><table cellspacing=\"0\">" crlf)
; (bind ?fetch (sub-string 0 1 ?root)) 
; (printout fp "<tr class=\"row1\">" crlf)
; (printout fp "<td class=\"number\">1.A<a name=\"sentence_1\" id=\"sentence_1\"></a></td><td class=\""?chnk_fr_htm"\"> <a onclick=\"javascript:  fetchshabd"?fetch"('"?root"')\"> <span id=\"popup_link_1_1_"?original_word"\" class=\"popup_link\">"?l_punc ?original_word ?r_punc"</span> <script type=\"text/javascript\"> new Popup('popup_2','popup_link_1_1_"?original_word "',{position:'below',trigger:'click'}); </script>   </a> </td></tr>" crlf)
; (if (or (eq ?sen_type catastrophe)(eq ?sen_type idiom)) then
; (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">1.B</td><td class=\""?chnk_fr_htm"\"><a href=\"cautionary_signs.html\">&#9761;</a></td>" crlf "</tr>" crlf)
; else
; (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">1.B</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf) )
; (printout fp "<tr class=\"row3\">" crlf "<td class=\"number\">1.C</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc" </td>" crlf "</tr>" crlf)
; (printout fp "<tr class=\"row4\">" crlf "<td class=\"number\">1.D</td><td class=\""?chnk_fr_htm"\"> "?cat" </td>" crlf "</tr>" crlf)
; (printout fp "<tr class=\"row5\">" crlf "<td class=\"number\">1.E</td><td class=\""?chnk_fr_htm"\"> "?chunk_type" </td>" crlf "</tr>" crlf)
; (printout fp "<tr class=\"row6\">" crlf "<td class=\"number\">1.F</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
; (printout fp "<tr class=\"row7\">" crlf "<td class=\"number\">1.G</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
; (printout fp "<tr class=\"row8\">" crlf "<td class=\"number\">1.H</td><td class=\""?chnk_fr_htm"\"> "?h_mng" </td>" crlf "</tr>" crlf)
; (printout fp "<tr class=\"row9\">" crlf "<td class=\"number\">1.I</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
; (printout fp "<tr class=\"row10\">" crlf "<td class=\"number\">1.J</td><td class=\""?chnk_fr_htm"\"> "?mng" </td>" crlf "</tr>" crlf)
; (printout fp "<tr class=\"row11\"><td class=\"number\">&nbsp;</td><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_1.1\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" "?mng" \" /></td></tr>" crlf)
 ;(printout fp "</table><div class=\"submit_button_block\"><input class=\"submit_button\" type=\"submit\" value=\"Submit\" /></div></form>" crlf "<div class=\"float_clear\"/>" crlf crlf)
 (printout fp "<div class=\"float_clear\"/>" crlf crlf)

 (assert (id-index (+ ?id 1) 0))
 )

 ;;printing title information
 (defrule sent_start1.1_with_no_linkage
 (declare (salience 1003))
 (para_id-sent_id-no_of_words 1 1 1)
 ?f<-(id-original_word 1 ?original_word)
 (id-word ?id ?word)
 (id-root ?id ?root)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (id-Apertium_output   ?id   ?mng)
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 (Eng_sen ?Eng_sen)
 =>
 (retract ?f)
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
   
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
; (printout fp "<script src=\"https://www.google.com/jsapi?key=AIzaSyAUfvlVpvPYZJB5p1BvjEvIUyDisEL6-sM\"></script>" crlf)
; (printout fp "<script src=\"google.js\" type=\"text/javascript\"></script>" crlf)
; (printout fp "<script type=\"text/javascript\">" crlf)
; (printout fp "google.load(\"language\", \"1\");" crlf)
; (printout fp "google.setOnLoadCallback(initialize(a));" crlf)
; (printout fp "</script>" crlf)
 (printout fp "<title>anusAraka</title>" crlf)
 (printout fp "</head>" crlf)
 (printout fp "<body onload=\"register_keys()\">" crlf)
 (printout fp "<div id=\"popup_8\" class=\"popup popup_draghandle\">" crlf)
 (printout fp "<div id=\"content\"></div>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<div id=\"popup_6\" class=\"popup popup_draghandle\">" crlf)
 (printout fp "<h3> IIT-B </h3>" crlf)
 (printout fp "<div id=\"content1iitb\"></div>" crlf)
 (printout fp "<p>" crlf)
 (printout fp "<a class=\"popup_closebox\" href=\"#\">Close box</a>" crlf)
 (printout fp "</p>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<div id=\"popup_2\" class=\"popup popup_draghandle\">" crlf)
 (printout fp "<h3> Shabdanjali </h3>" crlf)
 (printout fp "<div id=\"content1shabd\"></div>" crlf)
 (printout fp "<script type=\"text/javascript\">" crlf)
 (printout fp "new Popup('popup_6','popup_link_6',{position:'below',trigger:'click'})" crlf)
 (printout fp "new Popup('popup_8','popup_link_8',{position:'below',trigger:'click'})" crlf)
 (printout fp "</script>" crlf)
 (printout fp "<p>" crlf)
 (printout fp "<a class=\"popup_closebox\" href=\"#\">Close box</a>" crlf)
 (printout fp "</p>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<div id=\"popup_3\" class=\"popup popup_draghandle\">" crlf)
 (printout fp "<h3> cautions </h3>" crlf)
 (printout fp "<div id=\"content1caution\"></div>" crlf)
 (printout fp "<script type=\"text/javascript\">" crlf)
 (printout fp "new Popup('popup_6','popup_link_9',{position:'below',trigger:'click'})" crlf)
 (printout fp "new Popup('popup_8','popup_link_10',{position:'below',trigger:'click'})" crlf)
 (printout fp "</script>" crlf)
 (printout fp "<p>" crlf)
 (printout fp "<a class=\"popup_closebox\" href=\"#\">Close box</a>" crlf)
 (printout fp "</p>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<div id=\"navigation\">" crlf)
 (printout fp "<form action=\"\" onsubmit=\"goto_section(); return false;\">" crlf)
 (printout fp "<p><a id=\"translation\" href=\""?*filename*"_trnsltn.html\" target=\"_new\"> Translation </a><a id=\"help\" href=\"help.html\" target=\"_new\">Help</a><input type=\"text\" name=\"goto_section_value\" size=\"5\" /><input type=\"button\" value=\"Goto\" onclick=\"goto_section()\" /><input type=\"hidden\" name=\"no_of_rows\" value=\"10\" /><input type=\"button\" value=\"Show/Hide Rows...\" onclick=\"window.open('rows.html','ShowHideRowsWindow','top=200,left=200,height=500,width=300,location=no,menubar=no,toolbar=no,directories=no,statusbar=no');\" /><input type=\"checkbox\" name=\"numbers_value\" checked=\"checked\" onchange=\"toggle_numbers()\" />Numbers<input type=\"checkbox\" name=\"border_value\" checked=\"checked\" onchange=\"toggle_borders()\" />Borders</p>" crlf)
 (printout fp "</form>" crlf)
 (printout fp "</div>" crlf)
 (printout fp "<form class=\"suggestion\" action=\"sumbit_suggestions.php\"><table cellspacing=\"0\">" crlf)
 (bind ?fetch (sub-string 0 1 (implode$ (create$ ?root))))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (printout fp "<tr class=\"row1\">" crlf)
 (printout fp "<td class=\"number\">1.A<a name=\"sentence_1\" id=\"sentence_1\"></a></td><td class=\""?chnk_fr_htm"\"> <a onclick=\"javascript:  fetchshabd"?fetch"('"?root"')\"> <span id=\"popup_link_1_1_"?original_word"\" class=\"popup_link\">"?l_punc ?original_word ?r_punc"</span> <script type=\"text/javascript\"> new Popup('popup_2','popup_link_1_1_"?original_word "',{position:'below',trigger:'click'}); </script>   </a> </td></tr>" crlf)
 (if (eq ?sen_type idiom) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">1.B</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  alert(\'"?idiom_des"\')\">&#9761;</a></td>" crlf "</tr>" crlf)
 else (if (eq ?sen_type catastrophe) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">1.B</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  caution"?root"('"?root"')\"> <span id=\"popup_link_1_1_caution\" class=\"popup_link\">&#9761;</span> <script type=\"text/javascript\"> new Popup('popup_3','popup_link_1_1_caution',{position:'below',trigger:'click'}); </script>   </a></td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">1.B</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)))
 (printout fp "<tr class=\"row3\">" crlf "<td class=\"number\">1.C</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row4\">" crlf "<td class=\"number\">1.D</td><td class=\""?chnk_fr_htm"\"> "?cat" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row5\">" crlf "<td class=\"number\">1.E</td><td class=\""?chnk_fr_htm"\"> "?chunk_type" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row6\">" crlf "<td class=\"number\">1.F</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row7\">" crlf "<td class=\"number\">1.G</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row8\">" crlf "<td class=\"number\">1.H</td><td class=\""?chnk_fr_htm"\"> "?h_mng" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\"number\">1.I</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row10\">" crlf "<td class=\"number\">1.J</td><td class=\""?chnk_fr_htm"\"> "?mng" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row11\"><td class=\"number\">&nbsp;</td><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_1.1\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" "?mng" \" /></td></tr>" crlf)
 (printout fp "</table><div class=\"submit_button_block\"><input class=\"submit_button\" type=\"submit\" value=\"Submit\" /></div></form>" crlf "<div class=\"float_clear\"/>" crlf crlf)

 (assert (id-index (+ ?id 1) 0))
 )
 ;---------------------------------------------------------------------------------------------------
 ;;printing sentence start information
 (defrule sent_start
 (declare (salience 1001))
 (para_id-sent_id-no_of_words ?p_id ?s_id ?n_words)
 (test (neq ?p_id 1))
 (id-word 1 ?word)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ 1 $?ids))
 (id-root 1 ?root)
 (id-right_punctuation 1 ?r_punc)
 (id-left_punctuation  1 ?l_punc )
 (id-original_word 1 ?original_word)
 (Eng_sen ?Eng_sen)
 =>
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (bind ?fetch (sub-string 0 1 (implode$ (create$ ?root))))
 ;(if (and (eq ?p_id 2)(eq ?s_id 1)) then
 (printout fp "<form class=\"suggestion\" action=\"sumbit_suggestions.php\"><table cellspacing=\"0\">" crlf)
 (printout fp "<tr class=\"row1\">" crlf)
 ;(printout fp "<td class=\"number\"> <a onclick=\"javascript:initialize('-----'); initializep('====')\"> <span id=\"popup_link_"?p_id"_"?s_id"-sen\" class=\"popup_link\">"?p_id"."?s_id".A </span><script type=\"text/javascript\"> new Popup('popup_3','popup_link_"?p_id"_"?s_id"-sen',{position:'below',trigger:'click'}); </script>  </a> <a  name=\"sentence_"?p_id"."?s_id"\" id=\"sentence_"?p_id"."?s_id"\"></a></td><td class=\""?chnk_fr_htm"\"> <a  onclick=\"javascript:fetchshab"?fetch"('"?root"') \"> <span id=\"popup_link_"?p_id"_"?s_id"\"  class=\"popup_link\">"?original_word"</span> <script type=\"text/javascript\"> new Popup('popup_"?p_id"','popup_link_"?p_id"_"?s_id"',{position:'below',trigger:'click'}); </script>  </a> </td>" crlf "</tr>" crlf)
 (printout fp "<td class=\"number\"> "?p_id"."?s_id".A </a> <a  name=\"sentence_"?p_id"."?s_id"\" id=\"sentence_"?p_id"."?s_id"\"></a></td><td class=\""?chnk_fr_htm"\"> <a  onclick=\"javascript:fetchshab"?fetch"('"?root"') \"> <span id=\"popup_link_"?p_id"_"?s_id"\"  class=\"popup_link\">"?original_word"</span> <script type=\"text/javascript\"> new Popup('popup_"?p_id"','popup_link_"?p_id"_"?s_id"',{position:'below',trigger:'click'}); </script>  </a> </td>" crlf "</tr>" crlf)

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
 (id-root ?id ?root)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-original_word ?id ?original_word)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (Eng_sen ?Eng_sen)
 =>
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (bind ?fetch (sub-string 0 1 (implode$ (create$ ?root))))

 (printout fp "<table cellspacing=\"0\">" crlf)
 (printout fp "<tr class=\"row1\">" crlf)
 (printout fp "<td class=\""?chnk_fr_htm"\"> <a onclick=\"javascript:  fetchshabd"?fetch"('"?root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_"?original_word"\" class=\"popup_link\">"?l_punc ?original_word ?l_punc"</span> <script type=\"text/javascript\"> new Popup('popup_2','popup_link_"?p_id"_"?s_id"_"?original_word"',{position:'below',trigger:'click'}); </script>   </a> </td></tr>" crlf)

 )
 ;---------------------------------------------------------------------------------------------------
 ;;printing lwg words information
 (defrule id_rule0
 (declare (salience 900))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?n_words)
 (id-root ?id ?root)
 (id-word ?id ?word)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (root-verbchunk-tam-chunkids ? ? ? $?lwg_ids ?head_id)
 (pada_info (group_head_id ?head_id)(H_tam ?h_tam))
 (test (or(member$ ?id $?lwg_ids)(eq ?head_id ?id)))
 (id-Apertium_output ?head_id ?Apertium_output)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 =>
 (retract ?f)
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (if (eq ?id 1) then
 (if (eq ?sen_type idiom) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  alert(\'"?idiom_des"\')\">&#9761;</a></td>" crlf "</tr>" crlf)
 else (if (eq ?sen_type catastrophe) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  caution"?root"('"?root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_caution\" class=\"popup_link\">&#9761;</span> <script type=\"text/javascript\"> new Popup('popup_3','popup_link_"?p_id"_"?s_id"_caution',{position:'below',trigger:'click'}); </script></a></td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)))
 (printout fp "<tr class=\"row3\">" crlf "<td class=\"number\">"?p_id"."?s_id".C</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row4\">" crlf "<td class=\"number\">"?p_id"."?s_id".D</td><td class=\""?chnk_fr_htm"\"> "?cat" </td>" crlf " </tr>" crlf)
 (printout fp "<tr class=\"row5\">" crlf "<td class=\"number\">"?p_id"."?s_id".E</td><td class=\""?chnk_fr_htm"\"> "?chunk_type" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row6\">" crlf "<td class=\"number\">"?p_id"."?s_id".F</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (if (eq ?head_id ?id) then
 (printout fp "<tr class=\"row7\">" crlf "<td class=\"number\">"?p_id"."?s_id".G</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra"{tam:"?h_tam"}" ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row8\">" crlf "<td class=\"number\">"?p_id"."?s_id".H</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng"{tam:"?h_tam"}" ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\"number\">"?p_id"."?s_id".I</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng"{tam:"?h_tam"}" ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row10\">" crlf "<td class=\"number\">"?p_id"."?s_id".J</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?Apertium_output ?r_punc" </td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row7\">" crlf "<td class=\"number\">"?p_id"."?s_id".G</td><td class=\""?chnk_fr_htm"\"> --&gt; </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row8\">" crlf "<td class=\"number\">"?p_id"."?s_id".H</td><td class=\""?chnk_fr_htm"\"> --&gt; </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\"number\">"?p_id"."?s_id".I</td><td class=\""?chnk_fr_htm"\"> --&gt; </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row10\">" crlf "<td class=\"number\">"?p_id"."?s_id".J</td><td class=\""?chnk_fr_htm"\">  -- </td>" crlf "</tr>" crlf))

 (printout fp "<tr class=\"row11\"><td class=\"number\">&nbsp;</td><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_"?p_id"."?s_id"."?id"\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" -- \" /></td></tr>" crlf)
 (printout fp "</table>" crlf crlf)
 else
 (if (eq ?sen_type idiom) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  alert(\'"?idiom_des"\')\">&#9761;</a></td>" crlf "</tr>" crlf)
 else (if (eq ?sen_type catastrophe) then
 (printout fp "<tr class=\"row2\">" crlf"<td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  caution"?root"('"?root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_caution\" class=\"popup_link\">&#9761;</span> <script type=\"text/javascript\"> new Popup('popup_3','popup_link_"?p_id"_"?s_id"_caution',{position:'below',trigger:'click'}); </script></a></td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row2\">" crlf"<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)))
 (printout fp "<tr class=\"row3\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row4\">" crlf "<td class=\""?chnk_fr_htm"\"> "?cat" </td>" crlf " </tr>" crlf)
 (printout fp "<tr class=\"row5\">" crlf "<td class=\""?chnk_fr_htm"\"> "?chunk_type" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row6\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (if (eq ?head_id ?id) then
 (printout fp "<tr class=\"row7\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra"{tam:"?h_tam"}" ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row8\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng"{tam:"?h_tam"}" ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng"{tam:"?h_tam"}" ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row10\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?Apertium_output ?r_punc" </td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row7\">" crlf "<td class=\""?chnk_fr_htm"\"> --&gt; </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row8\">" crlf "<td class=\""?chnk_fr_htm"\"> --&gt; </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\""?chnk_fr_htm"\"> --&gt; </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row10\">" crlf "<td class=\""?chnk_fr_htm"\">  -- </td>" crlf "</tr>" crlf))

 (printout fp "<tr class=\"row11\"></td><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_"?p_id"."?s_id"."?id"\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" -- \" /></td></tr>" crlf)
(printout fp "</table>" crlf crlf))

 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 ;word information having apertium output
 (defrule  apertium_output_with_pp_id0
 (declare (salience 950))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?w_id)
 (id-root ?pp_id ?pp_root)
 (id-root ?pp_id ?pp_word)
 (id-cat_coarse ?pp_id ?pp_cat)
 (id-padasuthra ?pp_id ?pp_padasuthra)
 (id-HM-source ?pp_id ?pp_h_mng ?)
 (id-word ?id ?word)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-root ?id ?root)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type1 ?chnk_fr_htm1 $?ids1)
 (test (member$ ?id $?ids1))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (id-Apertium_output ?id ?Apertium_output)
 (pada_info (group_head_id ?h_id)(vibakthi ?vib)(preposition ?pp_id)(group_ids $?g_ids))
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (test (and (neq ?vib 0) (neq ?pp_id 0)))
 (test (member$ ?id $?g_ids))
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 =>
 (retract ?f)
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (if (eq ?id 1) then
 (if (eq ?sen_type idiom) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  alert(\'"?idiom_des"\')\">&#9761;</a></td>" crlf "</tr>" crlf)
 else (if (eq ?sen_type catastrophe) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  caution"?pp_root"('"?pp_root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_caution\" class=\"popup_link\">&#9761;</span> <script type=\"text/javascript\"> new Popup('popup_3','popup_link_"?p_id"_"?s_id"_caution',{position:'below',trigger:'click'}); </script></a></td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)))
 (printout fp "<tr class=\"row3\">" crlf "<td class=\"number\">"?p_id"."?s_id".C</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row4\">" crlf "<td class=\"number\">"?p_id"."?s_id".D</td><td class=\""?chnk_fr_htm"\"> "?cat"</td>" crlf " </tr>" crlf)
 (printout fp "<tr class=\"row5\">" crlf "<td class=\"number\">"?p_id"."?s_id".E</td><td class=\""?chnk_fr_htm"\"> "?chunk_type1" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row6\">" crlf "<td class=\"number\">"?p_id"."?s_id".F</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row7\">" crlf "<td class=\"number\">"?p_id"."?s_id".G</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row8\">" crlf "<td class=\"number\">"?p_id"."?s_id".H</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\"number\">"?p_id"."?s_id".I</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row10\">" crlf "<td class=\"number\">"?p_id"."?s_id".J</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?Apertium_output ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row11\"><td class=\"number\">&nbsp;</td><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_"?p_id"."?s_id"."?id"\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" "?l_punc ?Apertium_output ?r_punc" \" /></td></tr>" crlf)
 (printout fp "</table>" crlf)
 else
 (if (eq ?sen_type idiom) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  alert(\'"?idiom_des"\')\">&#9761;</a></td>" crlf "</tr>" crlf)
 else (if (eq ?sen_type catastrophe) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  caution"?pp_root"('"?pp_root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_caution\" class=\"popup_link\">&#9761;</span> <script type=\"text/javascript\"> new Popup('popup_3','popup_link_"?p_id"_"?s_id"_caution',{position:'below',trigger:'click'}); </script></a></td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)))
 (printout fp "<tr class=\"row3\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row4\">" crlf "<td class=\""?chnk_fr_htm"\"> "?cat"</td>" crlf " </tr>" crlf)
 (printout fp "<tr class=\"row5\">" crlf "<td class=\""?chnk_fr_htm"\"> "?chunk_type1" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row6\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row7\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row8\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row10\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?Apertium_output ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row11\"><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_"?p_id"."?s_id"."?id"\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" "?l_punc ?Apertium_output ?r_punc" \" /></td></tr>" crlf)
 (printout fp "</table>" crlf))
 
 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule  apertium_output_with_pp_id1
 (declare (salience 950))
 ?f<-(id-index ?pp_id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?)
 (id-root ?pp_id ?pp_root)
 (id-root ?pp_id ?pp_word)
 (id-cat_coarse ?pp_id ?pp_cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?pp_id $?ids))
 (id-padasuthra ?pp_id ?pp_padasuthra)
 (id-HM-source ?pp_id ?pp_h_mng ?)
 (id-word ?id ?word)
 (id-root ?id ?root)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type1 ?chnk_fr_htm1 $?ids1)
 (test (member$ ?id $?ids1))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (id-Apertium_output ?id ?Apertium_output)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (pada_info (group_head_id ?id)(vibakthi ?vib)(preposition ?pp_id))
 (test (and (neq ?vib 0) (neq ?pp_id 0)))
 (sen_type-id-phrase ?sen_type ?pp_id ?phrase)
 =>
 (retract ?f)
 (bind ?sign (- ?id ?pp_id))
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))  
 (if (eq ?pp_id 1) then
 (if (eq ?sen_type idiom) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  alert(\'"?idiom_des"\')\">&#9761;</a></td>" crlf "</tr>" crlf)
 else (if (eq ?sen_type catastrophe) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  caution"?pp_root"('"?pp_root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_caution\" class=\"popup_link\">&#9761;</span> <script type=\"text/javascript\"> new Popup('popup_3','popup_link_"?p_id"_"?s_id"_caution',{position:'below',trigger:'click'}); </script></a></td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)))
 (printout fp "<tr class=\"row3\">" crlf "<td class=\"number\">"?p_id"."?s_id".C</td><td class=\""?chnk_fr_htm"\"> "?pp_root" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row4\">" crlf "<td class=\"number\">"?p_id"."?s_id".D</td><td class=\""?chnk_fr_htm"\"> "?pp_cat"</td>" crlf " </tr>" crlf)
 (printout fp "<tr class=\"row5\">" crlf "<td class=\"number\">"?p_id"."?s_id".E</td><td class=\""?chnk_fr_htm"\"> "?chunk_type" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row6\">" crlf "<td class=\"number\">"?p_id"."?s_id".F</td><td class=\""?chnk_fr_htm"\"> "?pp_padasuthra" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row7\">" crlf "<td class=\"number\">"?p_id"."?s_id".G</td><td class=\""?chnk_fr_htm"\"> "?pp_padasuthra" </td>" crlf "</tr>" crlf)
; (printout fp "<tr class=\"row8\">" crlf "<td class=\"number\">"?p_id"."?s_id".H</td><td class=\""?chnk_fr_htm"\"> --&gt; "?pp_h_mng" </td>" crlf "</tr>" crlf)
 (if (> ?sign 0) then
 (printout fp "<tr class=\"row8\">" crlf "<td class=\"number\">"?p_id"."?s_id".H</td><td class=\""?chnk_fr_htm"\"> --&gt; "?pp_h_mng" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\"number\">"?p_id"."?s_id".I</td><td class=\""?chnk_fr_htm"\"> (+"?sign") --&gt; "?pp_h_mng  " </td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row8\">" crlf "<td class=\"number\">"?p_id"."?s_id".H</td><td class=\""?chnk_fr_htm"\"> "?pp_h_mng" &lt;-- </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\"number\">"?p_id"."?s_id".J</td><td class=\""?chnk_fr_htm"\"> " ?pp_h_mng " &lt;-- ("?sign") </td>" crlf "</tr>" crlf))
 (printout fp "<tr class=\"row10\">" crlf "<td class=\""?chnk_fr_htm"\"> ~ </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row11\"><td class=\"number\">&nbsp;</td><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_"?p_id"."?s_id"."?pp_id"\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" ~ \" /></td></tr>" crlf)
 (printout fp "</table>" crlf crlf)
 else
 (if (eq ?sen_type idiom) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  alert(\'"?idiom_des"\')\">&#9761;</a></td>" crlf "</tr>" crlf)
 else (if (eq ?sen_type catastrophe) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  caution"?pp_root"('"?pp_root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_caution\" class=\"popup_link\">&#9761;</span> <script type=\"text/javascript\"> new Popup('popup_3','popup_link_"?p_id"_"?s_id"_caution',{position:'below',trigger:'click'}); </script></a></td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)))
 (printout fp "<tr class=\"row3\">" crlf "<td class=\""?chnk_fr_htm"\"> "?pp_root" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row4\">" crlf "<td class=\""?chnk_fr_htm"\"> "?pp_cat"</td>" crlf " </tr>" crlf)
 (printout fp "<tr class=\"row5\">" crlf "<td class=\""?chnk_fr_htm"\"> "?chunk_type" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row6\">" crlf "<td class=\""?chnk_fr_htm"\"> "?pp_padasuthra" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row7\">" crlf "<td class=\""?chnk_fr_htm"\"> "?pp_padasuthra" </td>" crlf "</tr>" crlf)
 ;(printout fp "<tr class=\"row8\">" crlf "<td class=\""?chnk_fr_htm"\"> --&gt; "?pp_h_mng" </td>" crlf "</tr>" crlf)
 (if (> ?sign 0) then 
 (printout fp "<tr class=\"row8\">" crlf "<td class=\""?chnk_fr_htm"\"> --&gt; "?pp_h_mng" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\""?chnk_fr_htm"\"> (+"?sign") --&gt; "?pp_h_mng  " </td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row8\">" crlf "<td class=\""?chnk_fr_htm"\"> "?pp_h_mng" &lt;-- </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\""?chnk_fr_htm"\"> " ?pp_h_mng " &lt;-- ("?sign") </td>" crlf "</tr>" crlf))
 (printout fp "<tr class=\"row10\">" crlf "<td class=\""?chnk_fr_htm"\"> ~ </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row11\"><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_"?p_id"."?s_id"."?pp_id"\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" ~ \" /></td></tr>" crlf)
 (printout fp "</table>" crlf crlf))
 
 (assert (id-index (+ ?pp_id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 ;word information having apertium output
 (defrule id_rule4
 (declare (salience 700))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?)
 (id-root ?id ?root)
 (id-word ?id ?word)
 (id-cat_coarse ?id ?cat)
 (chunk-ids ?chunk_type ?chnk_fr_htm $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (id-Apertium_output ?id ?Apertium_output)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (sen_type-id-phrase ?sen_type ?id ?phrase)
 =>
 (retract ?f)
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (if (eq ?id 1) then
 (if (eq ?sen_type idiom) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  alert(\'"?idiom_des"\')\">&#9761;</a></td>" crlf "</tr>" crlf)
 else (if (eq ?sen_type catastrophe) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  caution"?root"('"?root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_caution\" class=\"popup_link\">&#9761;</span> <script type=\"text/javascript\"> new Popup('popup_3','popup_link_"?p_id"_"?s_id"_caution',{position:'below',trigger:'click'}); </script></a></td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)))
 (printout fp "<tr class=\"row3\">" crlf "<td class=\"number\">"?p_id"."?s_id".C</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row4\">" crlf "<td class=\"number\">"?p_id"."?s_id".D</td><td class=\""?chnk_fr_htm"\"> "?cat" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row5\">" crlf "<td class=\"number\">"?p_id"."?s_id".E</td><td class=\""?chnk_fr_htm"\"> "?chunk_type" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row6\">" crlf "<td class=\"number\">"?p_id"."?s_id".F</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row7\">" crlf "<td class=\"number\">"?p_id"."?s_id".G</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row8\">" crlf "<td class=\"number\">"?p_id"."?s_id".H</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\"number\">"?p_id"."?s_id".I</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row10\">" crlf "<td class=\"number\">"?p_id"."?s_id".J</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?Apertium_output ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row11\"><td class=\"number\">&nbsp;</td><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_"?p_id"."?s_id"."?id"\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" "?l_punc ?Apertium_output ?r_punc" \" /></td></tr>" crlf)
 (printout fp "</table>" crlf crlf)
 else
 (if (eq ?sen_type idiom) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  alert(\'"?idiom_des"\')\">&#9761;</a></td>" crlf "</tr>" crlf)
 else (if (eq ?sen_type catastrophe) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  caution"?root"('"?root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_caution\" class=\"popup_link\">&#9761;</span> <script type=\"text/javascript\"> new Popup('popup_3','popup_link_"?p_id"_"?s_id"_caution',{position:'below',trigger:'click'}); </script></td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)))
 (printout fp "<tr class=\"row3\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row4\">" crlf "<td class=\""?chnk_fr_htm"\"> "?cat" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row5\">" crlf "<td class=\""?chnk_fr_htm"\"> "?chunk_type" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row6\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row7\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row8\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row10\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?Apertium_output ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row11\"><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_"?p_id"."?s_id"."?id"\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" "?l_punc ?Apertium_output ?r_punc" \" /></td></tr>" crlf)
 (printout fp "</table>" crlf crlf))


 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule id_rule5
 (declare (salience 600))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?)
 (id-root ?id ?root)
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
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (if (eq ?id 1) then
 (if (eq ?sen_type idiom) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  alert(\'"?idiom_des"\')\">&#9761;</a></td>" crlf "</tr>" crlf)
 else (if (eq ?sen_type catastrophe) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  caution"?root"('"?root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_caution\" class=\"popup_link\">&#9761;</span> <script type=\"text/javascript\"> new Popup('popup_3','popup_link_"?p_id"_"?s_id"_caution',{position:'below',trigger:'click'}); </script></a></td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)))
 (printout fp "<tr class=\"row3\">" crlf "<td class=\"number\">"?p_id"."?s_id".C</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row4\">" crlf "<td class=\"number\">"?p_id"."?s_id".D</td><td class=\""?chnk_fr_htm"\"> "?cat" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row5\">" crlf "<td class=\"number\">"?p_id"."?s_id".E</td><td class=\""?chnk_fr_htm"\"> "?chunk_type" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row6\">" crlf "<td class=\"number\">"?p_id"."?s_id".F</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row7\">" crlf "<td class=\"number\">"?p_id"."?s_id".G</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row8\">" crlf "<td class=\"number\">"?p_id"."?s_id".H</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\"number\">"?p_id"."?s_id".I</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row10\">" crlf "<td class=\"number\">"?p_id"."?s_id".J</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row11\"><td class=\"number\">&nbsp;</td><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_"?p_id"."?s_id"."?id"\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" "?l_punc ?h_mng ?r_punc" \" /></td></tr>" crlf)
 (printout fp "</table>" crlf crlf)
 else
 (if (eq ?sen_type idiom) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  alert(\'"?idiom_des"\')\">&#9761;</a></td>" crlf "</tr>" crlf)
 else (if (eq ?sen_type catastrophe) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">1.B</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  caution"?root"('"?root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_caution\" class=\"popup_link\">&#9761;</span> <script type=\"text/javascript\"> new Popup('popup_3','popup_link_"?p_id"_"?s_id"_caution',{position:'below',trigger:'click'}); </script></a></td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)))
 (printout fp "<tr class=\"row3\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row4\">" crlf "<td class=\""?chnk_fr_htm"\"> "?cat" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row5\">" crlf "<td class=\""?chnk_fr_htm"\"> "?chunk_type" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row6\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row7\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row8\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row10\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?h_mng ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row11\"><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_"?p_id"."?s_id"."?id"\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" "?l_punc ?h_mng ?r_punc" \" /></td></tr>" crlf)
 (printout fp "</table>" crlf crlf))

 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule id_rule6
 (declare (salience 500))
 ?f<-(id-index ?id ?n_words)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?)
 (id-root ?id ?root)
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
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (bind ?idiom_des (gdbm_lookup "idioms.gdbm" ?phrase))
 (if (eq ?id 1) then
 (if (eq ?sen_type idiom) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  alert(\'"?idiom_des"\')\">&#9761;</a></td>" crlf "</tr>" crlf)
 else (if (eq ?sen_type catastrophe) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  caution"?root"('"?root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_caution\" class=\"popup_link\">&#9761;</span> <script type=\"text/javascript\"> new Popup('popup_3','popup_link_"?p_id"_"?s_id"_caution',{position:'below',trigger:'click'}); </script></td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)))
 (printout fp "<tr class=\"row3\">" crlf "<td class=\"number\">"?p_id"."?s_id".C</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row4\">" crlf "<td class=\"number\">"?p_id"."?s_id".D</td><td class=\""?chnk_fr_htm"\"> "?cat" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row5\">" crlf "<td class=\"number\">"?p_id"."?s_id".E</td><td class=\""?chnk_fr_htm"\"> "?chunk_type" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row6\">" crlf "<td class=\"number\">"?p_id"."?s_id".F</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row7\">" crlf "<td class=\"number\">"?p_id"."?s_id".G</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row8\">" crlf "<td class=\"number\">"?p_id"."?s_id".H</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\"number\">"?p_id"."?s_id".I</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row10\">" crlf "<td class=\"number\">"?p_id"."?s_id".J</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row11\"><td class=\"number\">&nbsp;</td><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_"?p_id"."?s_id"."?id"\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" - \" /></td></tr>" crlf)
 (printout fp "</table>" crlf crlf)
 else
 (if (eq ?sen_type idiom) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  alert(\'"?idiom_des"\')\">&#9761;</a></td>" crlf "</tr>" crlf)
 else (if (eq ?sen_type catastrophe) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"><a onclick=\"javascript:  caution"?root"('"?root"')\"> <span id=\"popup_link_"?p_id"_"?s_id"_caution\" class=\"popup_link\">&#9761;</span> <script type=\"text/javascript\"> new Popup('popup_3','popup_link_"?p_id"_"?s_id"_caution',{position:'below',trigger:'click'}); </script></td>" crlf "</tr>" crlf)
 else
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)))
 (printout fp "<tr class=\"row3\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?root ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row4\">" crlf "<td class=\""?chnk_fr_htm"\"> "?cat" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row5\">" crlf "<td class=\""?chnk_fr_htm"\"> "?chunk_type" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row6\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?padasuthra ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row7\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row8\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row10\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row11\"><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_"?p_id"."?s_id"."?id"\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" - \" /></td></tr>" crlf)
 (printout fp "</table>" crlf crlf))
 
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
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (if (eq ?id 1) then
 (printout fp "<tr class=\"row2\">" crlf "<td class=\"number\">"?p_id"."?s_id".B</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row3\">" crlf "<td class=\"number\">"?p_id"."?s_id".C</td><td class=\""?chnk_fr_htm"\"> "?l_punc ?word ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row4\">" crlf "<td class=\"number\">"?p_id"."?s_id".D</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row5\">" crlf "<td class=\"number\">"?p_id"."?s_id".E</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row6\">" crlf "<td class=\"number\">"?p_id"."?s_id".F</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row7\">" crlf "<td class=\"number\">"?p_id"."?s_id".G</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row8\">" crlf "<td class=\"number\">"?p_id"."?s_id".H</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\"number\">"?p_id"."?s_id".I</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row10\">" crlf "<td class=\"number\">"?p_id"."?s_id".J</td><td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row11\"><td class=\"number\">&nbsp;</td><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_"?p_id"."?s_id"."?id"\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" - \" /></td></tr>" crlf)
 (printout fp "</table>" crlf crlf)
 else
 (printout fp "<tr class=\"row2\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row3\">" crlf "<td class=\""?chnk_fr_htm"\"> "?l_punc ?word ?r_punc" </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row4\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row5\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row6\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row7\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row8\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row9\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row10\">" crlf "<td class=\""?chnk_fr_htm"\"> - </td>" crlf "</tr>" crlf)
 (printout fp "<tr class=\"row11\"><td class=\""?chnk_fr_htm"\"><input name=\"suggestion_"?p_id"."?s_id"."?id"\" type=\"text\" class=\"suggestion\" size=\"1\" value=\" - \" /></td></tr>" crlf)
 (printout fp "</table>" crlf crlf))
 
 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule sent_end
 (declare (salience 300))
 (para_id-sent_id-no_of_words ?p_id ?s_id ?n_words)
 ?f<-(id-index ?id 0)
 =>
 (retract ?f)
 ;(if (neq ?p_id 1) then
;	(printout fp "</nextline>" crlf)
; )
 (retract *)
 (bind ?path (str-cat ?p_id "." (+ ?s_id 1) "/" all_facts))
 (bind ?rt_value (load-facts ?path))
 (if (eq ?rt_value FALSE) then
	(bind ?path (str-cat  (+ ?p_id 1) ".1/" all_facts))
	(bind ?rt_value1 (load-facts ?path))
	(if (eq ?rt_value1 FALSE) then
		;(if (neq ?p_id 1) then
	;		(printout fp "</p>" crlf)
;		)
;		(printout fp "</rt>" crlf)
           (printout fp "<div class=\"submit_button_block\"><input class=\"submit_button\" type=\"submit\" value=\"Submit\" /></div></form> " crlf)
           (printout fp "<div class=\"float_clear\"/>" crlf)
           (printout fp "<div class=\"bottom\"></div>" crlf)
           (printout fp "</body>" crlf)
           (printout fp "</html>" crlf)
		(exit)
	)
	;(if (and (neq ?n_words 1) (neq ?p_id 1))then
	;	(printout fp "</p>" crlf)
	;	(printout fp "<p>" crlf)
	;)
 )
 
 (load-facts ?path)
 )
 ;---------------------------------------------------------------------------------------------------
