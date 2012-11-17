 (defglobal ?*tam_id_file* = tam_id_fp)
 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))

 (deffunction never-called ()
 (assert (missing-level-id) )
 (assert (id-original_word))
 (assert (root-verbchunk-tam-chunkids))
 (assert (verb_type-verb-causative_verb-tam))
 (assert (verb_type-verb-kriyA_mUla-tam))
 (assert (id-root-category-suffix-number))
 (assert (meaning_to_be_decided))
 )
;------------------------------------------------------------------------------------------------------------------
(defrule dont_load_chunkids
(declare (salience 950))
(root-verbchunk-tam-chunkids ? ? ? $?chunk_ids ?root_id)
=>
	(bind ?len (length $?chunk_ids))
        (loop-for-count (?i 1 ?len)
                (bind ?id (nth$ ?i $?chunk_ids))
		(assert (grouped_id ?id))
        )
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule tam_id_frm_vb_grp_idiom_ed
 (declare (salience 970))
 (root-verbchunk-tam-chunkids root_to_be_decided ? idiom ?idiom ?root_id)
 (id-root-category-suffix-number ?idiom ?root ? ed ?)
 (word-morph (root ?root) (suffix en))
 ?mng <-(meaning_to_be_decided ?root_id)
 ?mng1 <-(meaning_to_be_decided ?idiom)
 =>
        (retract ?mng ?mng1)
        (printout ?*tam_id_file* "(id-TAM " ?root_id " ed_en)" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ; I finally figured out why this program is so slow .
 (defrule tam_id_frm_vb_grp_idiom_en
 (declare (salience 970))
 (root-verbchunk-tam-chunkids root_to_be_decided ? idiom ?idiom ?root_id)
 (id-root-category-suffix-number ?idiom ?root ? en ?)
 (word-morph (root ?root) (suffix ed))
 ?mng <-(meaning_to_be_decided ?root_id)
 ?mng1 <-(meaning_to_be_decided ?idiom)
 =>
        (retract ?mng ?mng1)
        (printout ?*tam_id_file* "(id-TAM " ?root_id " ed_en)" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule tam_id_frm_vb_grp_idiom
 (declare (salience 960))
 (root-verbchunk-tam-chunkids root_to_be_decided ? idiom ?idiom ?root_id)
 (id-root-category-suffix-number ?idiom ? ? ?tam ?)
 ?mng <-(meaning_to_be_decided ?root_id)
 ?mng1 <-(meaning_to_be_decided ?idiom)
 =>
        (retract ?mng ?mng1)
        (printout ?*tam_id_file* "(id-TAM " ?root_id "  " ?tam")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
; The boy saw an elephant in the forest .
 (defrule tam_id_frm_vb_grp_ed
 (declare (salience 900))
 (root-verbchunk-tam-chunkids root_to_be_decided ? tam_to_be_decided $? ?root_id)
 (id-root-category-suffix-number ?root_id ?root ? ed ?)
 (word-morph (root ?root) (suffix en))
 ?mng <-(meaning_to_be_decided ?root_id)
 =>
	(retract ?mng)
	(printout ?*tam_id_file* "(id-TAM " ?root_id " ed_en)" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule tam_id_frm_vb_grp_en
 (declare (salience 900))
 (root-verbchunk-tam-chunkids root_to_be_decided ? tam_to_be_decided $? ?root_id)
 (id-root-category-suffix-number ?root_id ?root ? en ?)
 (word-morph (root ?root) (suffix ed))
 ?mng <-(meaning_to_be_decided ?root_id)
 =>
        (retract ?mng)
	(printout ?*tam_id_file* "(id-TAM " ?root_id " ed)" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule tam_id_frm_vb_grp
 (declare (salience 800))
 (root-verbchunk-tam-chunkids ? ? ?tam $?chunk_ids ?root_id)
 ?mng <-(meaning_to_be_decided ?root_id)
 =>
        (retract ?mng)
        (printout ?*tam_id_file* "(id-TAM " ?root_id " "?tam ")" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule tam_id_frm_vb_grp1
 (declare (salience 900))
 (root-verbchunk-tam-chunkids root_to_be_decided ? tam_to_be_decided $? ?root_id)
 (id-root-category-suffix-number ?root_id ?root ? ?tam ?)
 ?mng <-(meaning_to_be_decided ?root_id)
 =>
        (retract ?mng)
        (printout ?*tam_id_file* "(id-TAM " ?root_id " "?tam ")" crlf)
  )
 ;------------------------------------------------------------------------------------------------------------------
 ;She made the girl feed the child 
 (defrule tam_id_frm_cau_vb
 (declare (salience 850))
 (root-verbchunk-tam-chunkids ? ? tam_to_be_decided ?root_id $? ?id)
 (id-root-category-suffix-number ?root_id ?root ? en ?)
 (word-morph (root ?root) (suffix ed))
 ?mng <-(meaning_to_be_decided ?id)
 =>
        (retract ?mng )
        (printout ?*tam_id_file* "(id-TAM " ?id " ed_en )" crlf)
  )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule tam_id_frm_cau_vb2
 (declare (salience 850))
 (root-verbchunk-tam-chunkids ? ? tam_to_be_decided ?root_id $? ?id)
 (id-root-category-suffix-number ?root_id ?root ? ed ?)
 (word-morph (root ?root) (suffix en))
 ?mng <-(meaning_to_be_decided ?id)
 =>
        (retract ?mng )
        (printout ?*tam_id_file* "(id-TAM " ?id " ed_en )" crlf)
  )
 ;------------------------------------------------------------------------------------------------------------------
 ;I made it clear that I was angry .  
 (defrule tam_id_frm_kri_mUla
 (declare (salience 850))
 (root-verbchunk-tam-chunkids ? ? tam_to_be_decided ?id ?root_id)
 (id-root-category-suffix-number ?root_id ?root ? en ?)
 (word-morph (root ?root) (suffix ed))
 ?mng <-(meaning_to_be_decided ?root_id)
 =>
        (retract ?mng )
        (printout ?*tam_id_file* "(id-TAM " ?root_id " ed_en )" crlf)
  )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule tam_id_frm_kri_mUla_1
 (declare (salience 850))
 (root-verbchunk-tam-chunkids ? ? tam_to_be_decided ?id ?root_id )
 (id-root-category-suffix-number ?root_id ?root ? ed ?)
 (word-morph (root ?root) (suffix en))
 ?mng <-(meaning_to_be_decided ?root_id)
 =>
        (retract ?mng )
        (printout ?*tam_id_file* "(id-TAM " ?root_id " ed_en )" crlf)
  )
 ;------------------------------------------------------------------------------------------------------------------
 ; I did not know how much to bring
 (defrule 0_tam
 (declare (salience 700))
 (id-root-category-suffix-number ?id ? ? 0 ?)
 ?mng <-(meaning_to_be_decided ?id)
 (not (grouped_id ?id))
 =>
        (retract ?mng)
        (printout ?*tam_id_file* "(id-TAM " ?id " 0)" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule tam_id_for_ing
 (declare (salience 700))
 (id-root-category-suffix-number ?id ? ? ing ?)
 ?mng <-(meaning_to_be_decided ?id)
 (not (grouped_id ?id))
 =>
	(retract ?mng)
	(printout ?*tam_id_file* "(id-TAM " ?id " ing)" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju(7-11-12) Suggested by Chaitanya Sir
 ;An object [released] near the surface of the Earth is accelerated downward under the influence of the force of gravity.
 (defrule tam_id_for_en_from_constituents
 (declare (salience 700))
 (Head-Level-Mother-Daughters ? ? ?Mot ?NP ?VP)
 (Node-Category ?Mot NP)
 (Node-Category ?NP NP)
 (Node-Category ?VP VP)
 (Head-Level-Mother-Daughters ? ? ?VP ?VBN $?)
 (Node-Category ?VBN VBN)
 (Head-Level-Mother-Daughters ? ? ?VBN ?id)
 ?mng <-(meaning_to_be_decided ?id)
 (not (grouped_id ?id))
 =>
        (retract ?mng)
        (printout ?*tam_id_file* "(id-TAM " ?id " en)" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule tam_id_for_en
 (declare (salience 650))
 (id-root-category-suffix-number ?id ?root ? en ?)
 (word-morph (root ?root) (suffix ed))
 ?mng <-(meaning_to_be_decided ?id)
 (not (grouped_id ?id))
 =>
	(retract ?mng)
	(printout ?*tam_id_file* "(id-TAM " ?id " ed_en)" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule tam_id_for_ed
 (declare (salience 650))
 (id-root-category-suffix-number ?id ?root ? ed ?)
 (word-morph (root ?root) (suffix en))
 ?mng <-(meaning_to_be_decided ?id)
 (not (grouped_id ?id))
 =>
        (retract ?mng)
        (printout ?*tam_id_file* "(id-TAM " ?id " ed_en)" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule tam_id_for_en1
 (declare (salience 600))
 (id-root-category-suffix-number ?id ? ? en ?)
 ?mng <-(meaning_to_be_decided ?id)
 (not (grouped_id ?id))
 =>
	(retract ?mng)
	(printout ?*tam_id_file* "(id-TAM " ?id " en)" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule tam_id_for_ed1
 (declare (salience 600))
 (id-root-category-suffix-number ?id ? ? ed ?)
 ?mng <-(meaning_to_be_decided ?id)
 (not (grouped_id ?id))
 =>
	(retract ?mng)
	(printout ?*tam_id_file* "(id-TAM " ?id " ed)" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------
; He saw the broken window. Broken windows need to be replaced
; He handed his son a beautiful wrapped gift box . (here morph does'nt have analysis with category adjective (word--wrapped)) 
; (defrule morph_tam
; (declare (salience 800))
; (id-root-category-suffix-number ?id ? adjective ?  ?)
; (id-original_word ?id  ?word)
;;(word-morph (original_word  ?word)(root ?root1)(category adjective)) ;Commented by Mahalaxmi(6-10-09) suggested by Chaitanya sir.
; (word-morph (original_word  ?word)(root ?root)(category  verb)(suffix ?suf))
; ?mng <-(meaning_to_be_decided ?id)
; (not (grouped_id ?id))
; (test (or (eq ?suf ing)(eq ?suf en)))
; =>
; 	(retract ?mng)
;        (if (eq ?suf en) then
;		(printout ?*tam_id_file* "(id-TAM " ?id " en)" crlf)
;        else
;		(if (eq ?suf ing ) then
;                        (printout ?*tam_id_file* "(id-TAM " ?id " ing)" crlf)
;                )
;        )
; )
 ;------------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience 100))
 =>
	(close ?*tam_id_file*)
 )
 ;------------------------------------------------------------------------------------------------------------------
