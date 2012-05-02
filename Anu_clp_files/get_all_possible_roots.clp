;Program to display all possible roots in one field
;Ex: 'leave' has both 'leave' and 'left' has root.
;getting 'leave' and 'left' in one single field.
;Added by Roja (12-04-12)

 (defglobal ?*file* = get_fp)

 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))

;--------------------------------------------------------------------------------------------------------------------
 ;Getting root for a word.
 (defrule getting_root_with_word
 (declare (salience 100))
 (id-original_word ?id ?org_wrd)
 ?f1<-(id-root  ?id ?rev_rt)
 ?f<-(word-morph (original_word ?org_wrd)(root ?rt))
 =>
    (retract ?f ?f1)
    (assert (id-word-pref_root-all_roots  ?id  ?org_wrd  ?rev_rt ?rt))
 )
;--------------------------------------------------------------------------------------------------------------------
 ;Appending all the possible roots for a word to one single field.
 (defrule appending_roots
 (declare (salience 50))
 ?f<-(id-word-pref_root-all_roots   ?id  ?org_wrd  ?rev_rt  ?rt)
 ?f1<-(id-word-pref_root-all_roots  ?id  ?org_wrd  ?rev_rt  ?rt1)
 (test (neq ?rt ?rt1))
 =>
    (retract ?f ?f1)
    (bind ?root (string-to-field (str-cat ?rt "/" ?rt1)))
    (assert (id-word-pref_root-all_roots  ?id  ?org_wrd  ?rev_rt ?root))
 )
;--------------------------------------------------------------------------------------------------------------------
 ;Printing the root info in a file.
 (defrule print
 (declare (salience -10))
 ?f<-(id-word-pref_root-all_roots  ?id  ?org_wrd  ?rev_rt  ?root)
 =>
    (retract ?f)
    (printout  ?*file* "(id-word-pref_root-all_roots  "?id"	"?org_wrd"	"?rev_rt"	"?root ")" crlf)
 )
;--------------------------------------------------------------------------------------------------------------------
