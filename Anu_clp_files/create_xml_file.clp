;(deftemplate tam_tmp_info (slot head_id (default 0))(slot eng_tam (default 0))(slot hin_tam (default 0))(slot subject_vibhakti (default 0))(slot preceding_part_of_the_verb (default 0)))

 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

(deffunction string_to_integer (?link_id)
(string-to-field (sub-string 2 10000 ?link_id)))

 ;================================ Asserting dummy ==================================================
 ;Asserting chunk control facts if the id is present in any of the chunk.
 (defrule cntrl_fact_for_chunk
 (declare (salience 4000))
 (id-word ?id ?word)
 (not (chunk_cntrl_fact ?id))
 (chunk_ids ?chunk_type $?ids)
 (test (member$ ?id $?ids))
  =>
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
  (assert (chunk_ids U ?id)))
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
 ;========================================= Generating xml format ========================================
 ;;printing title information
 (defrule sent_start1.1_with_no_linkage
 (declare (salience 1004))
 (para_id-sent_id-no_of_words 1 1 1)
 ?f<-(id-original_word 1 ?original_word)
 (para_id-sent_id-no_of_words ?p_id ?s_id ?n_words)
 (id-word ?id ?word)
 (id-root ?id ?root)
 (id-cat_coarse ?id ?cat)
 (chunk_ids ?chunk_type $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (id-Apertium_output   ?id   ?mng)
 (Eng_sen ?Eng_sen)
 =>
 (retract ?f)
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (printout fp "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" crlf)
 (printout fp "<?xml-stylesheet type=\"text/xsl\" href=\"xhtml_unicode.xsl\"?>" crlf)
 (printout fp "<rt rows=\"9\">"crlf)
 (printout fp "<title words = \""1"\">" crlf)

; (printout fp "<english category='none'><a onclick=\"initialize('"?Eng_sen"')\">" ?l_punc ?original_word ?r_punc"</a> </english>" crlf)


 (printout fp "<english category='none'> <a onclick=\"javascript: fetchshabd('"?root"')\"> <span id=\"popup_link_"?p_id "_" ?s_id "_" ?original_word"\" class=\"popup_link\">" ?l_punc ?original_word ?r_punc "</span> <script type=\"text/javascript\"> new Popup('popup_2','popup_link_"?p_id "_" ?s_id "_" ?original_word"',{position:'below',trigger:'click'}); </script>   </a> </english>" crlf)

 ;(printout fp "<english category='none'> <a onclick=\"initialize('"?Eng_sen"')\" id=\"popup_link_" ?original_word"\" href=\"#\">" ?l_punc ?original_word ?r_punc "<script type=\"text/javascript\"> new Popup('popup_4','popup_link_" ?original_word"',{modal:true,duration:1}); </script>   </a> </english>" crlf)


 (printout fp "<h1> "?l_punc ?root ?r_punc" </h1>" crlf)
 (printout fp "<h2> "?cat" </h2>" crlf)
 (printout fp "<h3> " ?chunk_type" </h3>" crlf)
 (printout fp "<h4> "?l_punc ?padasuthra ?r_punc" </h4>" crlf)
 (printout fp "<h5> "-" </h5>" crlf)
 (printout fp "<h6> "?h_mng" </h6>" crlf)
 (printout fp "<h7> "-" </h7>" crlf)
 (printout fp "<h8> "?mng" </h8>" crlf)
 (assert (id-index (+ ?id 1) 0))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule sent_start1.1_with_linkage
 (declare (salience 1003))
 (para_id-sent_id-no_of_words ?p_id ?s_id ?n_words)
 (id-right_punctuation 1 ?r_punc)
 (id-left_punctuation  1 ?l_punc )
 (id-original_word 1 ?original_word)
 (id-word 1 ?word)
 (id-root 1 ?root)
 (test (eq ?p_id 1))
 (Eng_sen ?Eng_sen)
 =>
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (printout fp "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" crlf)
 (printout fp "<?xml-stylesheet type=\"text/xsl\" href=\"xhtml_unicode.xsl\"?>" crlf)
 (printout fp "<rt rows=\"9\">"crlf)
 (printout fp "<title words = \""?n_words"\">" crlf)



; (printout fp "<english category='none'><a onclick==\"initialize('"?Eng_sen"')\">" ?l_punc ?original_word ?r_punc"</a> </english>" crlf)


 (printout fp "<english category='none'> <a onclick=\"javascript: fetchshabd('"?root"')\"> <span id=\"popup_link_"?p_id "_" ?s_id "_" ?original_word"\" class=\"popup_link\">" ?l_punc ?original_word ?r_punc "</span> <script type=\"text/javascript\"> new Popup('popup_2','popup_link_"?p_id "_" ?s_id "_" ?original_word"',{position:'below',trigger:'click'}); </script>   </a> </english>" crlf)


; (printout fp "<english category='none'> <a onclick=\"initialize('"?Eng_sen"')\" id=\"popup_link_" ?original_word"\" href=\"#\">" ?l_punc ?original_word ?r_punc "<script type=\"text/javascript\"> new Popup('popup_4','popup_link_" ?original_word"',{modal:true,duration:1}); </script>   </a> </english>" crlf)


 (assert (id-index 1 ?n_words))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule sent1.1
 (declare (salience 1000))
 (para_id-sent_id-no_of_words 1 ?s_id ?n_words)
 (id-index ? 0)
 =>
 (printout fp "</title>" crlf)
 )
 ;---------------------------------------------------------------------------------------------------
 ;;printing sentence start information
 (defrule sent_start
 (declare (salience 1001))
 (para_id-sent_id-no_of_words ?p_id ?s_id ?n_words)
 (test (neq ?p_id 1))
 (id-word 1 ?word)
 (id-root 1 ?root)
 (id-right_punctuation 1 ?r_punc)
 (id-left_punctuation  1 ?l_punc )
 (id-original_word 1 ?original_word)
 (Eng_sen ?Eng_sen)
 =>
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (if (and (eq ?p_id 2)(eq ?s_id 1)) then
 (printout fp "<p>" crlf))
 (printout fp "<nextline words = \""?n_words"\">" crlf)



 ;(printout fp "<english number='"?p_id"."?s_id"' category='none'> <a onclick=\"initialize('"?Eng_sen"')\">" ?l_punc ?original_word ?r_punc"</a> </english>" crlf)


 ;(printout fp "<english number='"?p_id"."?s_id"' category='none'> <a onclick=\"initialize('"?Eng_sen"')\"> <span id=\"popup_link_"?p_id"."?s_id"\" class=\"popup_link\">" ?l_punc ?original_word ?r_punc "</span> <script type=\"text/javascript\"> new Popup('popup_2','popup_link_"?p_id"."?s_id"'); </script>  </a> </english>" crlf)



 (printout fp "<english number='"?p_id"."?s_id"' category='none'> <a onclick=\"javascript:initialize('"?Eng_sen"'); fetchshabd('"?root"') \"> <span id=\"popup_link_"?p_id"_"?s_id"\" class=\"popup_link\">" ?l_punc ?original_word ?r_punc "</span> <script type=\"text/javascript\"> new Popup('popup_2','popup_link_"?p_id"_"?s_id"',{position:'below',trigger:'click'}); </script>  </a> </english>" crlf)


 ;(printout fp "<english number='"?p_id"."?s_id"' category='none'> <a onclick=\"initialize('"?Eng_sen"')\" id=\"popup_link_" ?original_word"\" href=\"#\">" ?l_punc ?original_word ?r_punc "<script type=\"text/javascript\"> new Popup('popup_4','popup_link_" ?original_word"',{modal:true,duration:1}); </script>   </a> </english>" crlf)


 (assert (id-index 1 ?n_words))
 )
 ;---------------------------------------------------------------------------------------------------
 ;;printing word head information
 (defrule sent_next_word
 (declare (salience 1000))
 (para_id-sent_id-no_of_words ?p_id ?s_id ?words)
 (id-word ?id ?word)
 (id-root ?id ?root)
 (id-original_word ?id ?original_word)
 (id-index ?id ?n_words)
 (test (neq ?id 1))
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (Eng_sen ?Eng_sen)
 =>
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))



 ;(printout fp "<english category='none'> <a onclick=\"initialize('"?Eng_sen"')\"> <span id=\"popup_link_" ?original_word"\" class=\"popup_link\">" ?l_punc ?original_word ?r_punc "</span> <script type=\"text/javascript\"> new Popup('popup_2','popup_link_" ?original_word"'); </script>   </a> </english>" crlf)



 (printout fp "<english category='none'> <a onclick=\"javascript: fetchshabd('"?root"')\"> <span id=\"popup_link_"?p_id "_" ?s_id "_" ?original_word"\" class=\"popup_link\">" ?l_punc ?original_word ?r_punc "</span> <script type=\"text/javascript\"> new Popup('popup_2','popup_link_"?p_id "_" ?s_id "_" ?original_word"',{position:'below',trigger:'click'}); </script>   </a> </english>" crlf)

 ;(printout fp "<english category='none'> <a onclick=\"initialize('"?Eng_sen"')\" id=\"popup_link_" ?original_word"\" href=\"#\">" ?l_punc ?original_word ?r_punc "<script type=\"text/javascript\"> new Popup('popup_4','popup_link_" ?original_word"',{modal:true,duration:1}); </script>   </a> </english>" crlf)


 )
 ;---------------------------------------------------------------------------------------------------
 ;;printing lwg words information
 (defrule id_rule0
 (declare (salience 900))
 (id-root ?id ?root)
 (id-cat_coarse ?id ?cat)
 (chunk_ids ?chunk_type $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (root-verbchunk-tam-chunkids ? ? ? $?lwg_ids ?head_id)
 (pada_info (group_head_id ?head_id)(H_tam ?h_tam))
 (test (or(member$ ?id $?lwg_ids)(eq ?head_id ?id)))
 (id-Apertium_output ?head_id ?Apertium_output)
 ?f<-(id-index ?id ?n_words)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 =>
 (retract ?f)
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (printout fp "<h1> "?l_punc ?root ?r_punc" </h1>" crlf)
 (printout fp "<h2> "?cat" </h2>" crlf)
 (printout fp "<h3> "?chunk_type " </h3>" crlf)
 (printout fp "<h4> "?l_punc ?padasuthra ?r_punc" </h4>" crlf)
 (if (eq ?head_id ?id) then
	(printout fp "<h5> "?l_punc ?padasuthra"{tam:"?h_tam"}" ?r_punc"</h5>" crlf)
	(printout fp "<h6> "?l_punc ?h_mng"{tam:"?h_tam"}" ?r_punc"</h6>" crlf)
	(printout fp "<h7> "?l_punc ?h_mng"{tam:"?h_tam"}" ?r_punc" </h7>" crlf)
	(printout fp "<h8> "?l_punc ?Apertium_output ?r_punc" </h8>" crlf)
 else
	(printout fp "<h5> --&gt; </h5>" crlf)
	(printout fp "<h6> --&gt; </h6>" crlf)
	(printout fp "<h7> --&gt; </h7>" crlf)
	(printout fp "<h8> -- </h8>" crlf))
	(assert (id-index (+ ?id 1) (- ?n_words 1))
 )
 )
 ;---------------------------------------------------------------------------------------------------
 ;word information having apertium output
 (defrule  apertium_output_with_pp_id0
 (declare (salience 950))
 (id-root ?pp_id ?pp_root)
 (id-cat_coarse ?pp_id ?pp_cat)
 (chunk_ids ?chunk_type $?ids)
 (test (member$ ?pp_id $?ids))
 (id-padasuthra ?pp_id ?pp_padasuthra)
 (id-HM-source ?pp_id ?pp_h_mng ?)
 (id-word ?id ?word)
 (id-root ?id ?root)
 (id-cat_coarse ?id ?cat)
 (chunk_ids ?chunk_type1 $?ids1)
 (test (member$ ?id $?ids1))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (id-Apertium_output ?id ?Apertium_output)
 (pada_info (group_head_id ?h_id)(vibakthi ?vib)(preposition ?pp_id)(group_ids $?g_ids))
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (test (and (neq ?vib 0) (neq ?pp_id 0)))
 (test (member$ ?id $?g_ids))
 ?f<-(id-index ?id ?n_words)
 =>
 (retract ?f)
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (printout fp "<h1> "?l_punc ?root ?r_punc " </h1>" crlf)
 (printout fp "<h2> "?cat " </h2>" crlf)
 (printout fp "<h3> "?chunk_type1 " </h3>" crlf)
 (printout fp "<h4> "?l_punc ?padasuthra ?r_punc " </h4>" crlf)
 (printout fp "<h5> "?l_punc ?padasuthra ?r_punc " </h5>" crlf)
 (printout fp "<h6> "?l_punc ?h_mng ?r_punc " </h6>" crlf)
 (printout fp "<h7> "?l_punc ?h_mng ?r_punc " </h7>" crlf)
 (printout fp "<h8> "?l_punc ?Apertium_output ?r_punc " </h8>" crlf)
 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule  apertium_output_with_pp_id1
 (declare (salience 950))
 (id-root ?pp_id ?pp_root)
 (id-cat_coarse ?pp_id ?pp_cat)
 (chunk_ids ?chunk_type $?ids)
 (test (member$ ?pp_id $?ids))
 (id-padasuthra ?pp_id ?pp_padasuthra)
 (id-HM-source ?pp_id ?pp_h_mng ?)
 (id-word ?id ?word)
 (id-root ?id ?root)
 (id-cat_coarse ?id ?cat)
 (chunk_ids ?chunk_type1 $?ids1)
 (test (member$ ?id $?ids1))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (id-Apertium_output ?id ?Apertium_output)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (pada_info (group_head_id ?id)(vibakthi ?vib)(preposition ?pp_id))
 (test (and (neq ?vib 0) (neq ?pp_id 0)))
 ?f<-(id-index ?pp_id ?n_words)
 =>
 (retract ?f)
 (bind ?sign (- ?id ?pp_id))
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (printout fp "<h1> "?pp_root" </h1>" crlf)
 (printout fp "<h2> "?pp_cat" </h2>" crlf)
 (printout fp "<h3> "?chunk_type" </h3>" crlf)
 (printout fp "<h4> "?pp_padasuthra" </h4>" crlf)
 (printout fp "<h5> "?pp_padasuthra" </h5>" crlf)
 (if (> ?sign 0) then
	(printout fp "<h6> (+"?sign") --&gt; "?pp_h_mng  "</h6>" crlf)
 else
	(printout fp "<h6> " ?pp_h_mng " &lt;-- ("?sign") </h6>" crlf)
 )
 (printout fp "<h7> --  </h7>" crlf)
 (printout fp "<h8> ~  </h8>" crlf)
 (assert (id-index (+ ?pp_id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 ;word information having apertium output
 (defrule id_rule4
 (declare (salience 700))
 (id-root ?id ?root)
 (id-cat_coarse ?id ?cat)
 (chunk_ids ?chunk_type $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (id-Apertium_output ?id ?Apertium_output)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 ?f<-(id-index ?id ?n_words)
 =>
 (retract ?f)
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (printout fp "<h1> "?l_punc ?root ?r_punc" </h1>" crlf)
 (printout fp "<h2> "?cat" </h2>" crlf)
 (printout fp "<h3> "?chunk_type" </h3>" crlf)
 (printout fp "<h4> "?l_punc ?padasuthra  ?r_punc" </h4>" crlf)
 (printout fp "<h5> "?l_punc ?padasuthra ?r_punc" </h5>" crlf)
 (printout fp "<h6> "?l_punc ?h_mng ?r_punc" </h6>" crlf)
 (printout fp "<h7> "?l_punc ?h_mng ?r_punc" </h7>" crlf)
 (printout fp "<h8> "?l_punc ?Apertium_output ?r_punc" </h8>" crlf)
 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule id_rule5
 (declare (salience 600))
 (id-root ?id ?root)
 (id-cat_coarse ?id ?cat)
 (chunk_ids ?chunk_type $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-HM-source ?id ?h_mng ?)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (not (No complete linkages found))
 ?f<-(id-index ?id ?n_words)
 =>
 (retract ?f)
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (printout fp "<h1> "?l_punc ?root ?r_punc" </h1>" crlf)
 (printout fp "<h2> "?cat" </h2>" crlf)
 (printout fp "<h3> "?chunk_type" </h3>" crlf)
 (printout fp "<h4> "?l_punc ?padasuthra ?r_punc" </h4>" crlf)
 (printout fp "<h5> "?l_punc ?padasuthra ?r_punc" </h5>" crlf)
 (printout fp "<h6> "?l_punc ?h_mng ?r_punc" </h6>" crlf)
 (printout fp "<h7> "?l_punc ?h_mng ?r_punc" </h7>" crlf)
 (printout fp "<h8> "?l_punc ?h_mng ?r_punc" </h8>" crlf)
 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule id_rule6
 (declare (salience 500))
 (id-root ?id ?root)
 (id-cat_coarse ?id ?cat)
 (chunk_ids ?chunk_type $?ids)
 (test (member$ ?id $?ids))
 (id-padasuthra ?id ?padasuthra)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 (No complete linkages found)
 ?f<-(id-index ?id ?n_words)
 =>
 (retract ?f)
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (printout fp "<h1> "?l_punc ?root ?r_punc" </h1>" crlf)
 (printout fp "<h2> "?cat" </h2>" crlf)
 (printout fp "<h3> "?chunk_type" </h3>" crlf)
 (printout fp "<h4> "?l_punc ?padasuthra ?r_punc" </h4>" crlf)
 (printout fp "<h5> "-" </h5>" crlf)
 (printout fp "<h6> "-" </h6>" crlf)
 (printout fp "<h7> "-" </h7>" crlf)
 (printout fp "<h8> "-" </h8>" crlf)
 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule id_rule7
 (declare (salience 300))
 (id-word ?id ?word)
 (id-right_punctuation ?id ?r_punc)
 (id-left_punctuation  ?id ?l_punc )
 ?f<-(id-index ?id ?n_words)
 =>
 (retract ?f)
 (if (eq ?r_punc "NONE") then (bind ?r_punc ""))
 (if (eq ?l_punc "NONE") then (bind ?l_punc ""))
 (printout fp "<h1> "?l_punc ?word ?r_punc" </h1>" crlf)
 (printout fp "<h2> "-" </h2>" crlf)
 (printout fp "<h3> "-" </h3>" crlf)
 (printout fp "<h4> "-" </h4>" crlf)
 (printout fp "<h5> "-" </h5>" crlf)
 (printout fp "<h6> "-" </h6>" crlf)
 (printout fp "<h7> "-" </h7>" crlf)
 (printout fp "<h8> "-" </h8>" crlf)
 (assert (id-index (+ ?id 1) (- ?n_words 1)))
 )
 ;---------------------------------------------------------------------------------------------------
 (defrule sent_end
 (declare (salience 300))
 (para_id-sent_id-no_of_words ?p_id ?s_id ?n_words)
 ?f<-(id-index ?id 0)
 =>
 (retract ?f)
 (if (neq ?p_id 1) then
	(printout fp "</nextline>" crlf)
 )
 (retract *)
 (bind ?path (str-cat ?p_id "." (+ ?s_id 1) "/" all_facts))
 (bind ?rt_value (load-facts ?path))
 (if (eq ?rt_value FALSE) then
	(bind ?path (str-cat  (+ ?p_id 1) ".1/" all_facts))
	(bind ?rt_value1 (load-facts ?path))
	(if (eq ?rt_value1 FALSE) then
		(if (neq ?p_id 1) then
			(printout fp "</p>" crlf)
		)
		(printout fp "</rt>" crlf)
		(exit)
	)
	(if (and (neq ?n_words 1) (neq ?p_id 1))then
		(printout fp "</p>" crlf)
		(printout fp "<p>" crlf)
	)
 )
 (load-facts ?path)
 )
 ;---------------------------------------------------------------------------------------------------
