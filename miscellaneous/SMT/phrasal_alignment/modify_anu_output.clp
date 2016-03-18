(deffunction remove_character(?char ?str ?replace_char)
                        (bind ?new_str "")
                        (bind ?index (str-index ?char ?str))
                        (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                        (bind ?new_str (str-cat ?new_str (sub-string 1  (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
 )
 ;-----------------------------------------------------------------------------------------------------------
 (defrule del_@PropN_in_aper_out
 (declare (salience 2001))
 ?f0<-(id-Apertium_output ?id ?mng $?w)
 (test (neq (str-index "@PropN" (implode$ (create$ ?mng))) FALSE))
 =>
        (retract ?f0)
        (bind ?mng (implode$ (create$ ?mng)))
        (bind ?mng (string-to-field (sub-string 9 (- (length ?mng) 6) ?mng))) ;Ex: \@PropN-newton-PropN
        (bind ?mng (string-to-field (str-cat "@" (upcase (sub-string 1 1 ?mng)) (sub-string 2 (length ?mng) ?mng)))) ;Ex:Newton
        (assert (id-Apertium_output ?id ?mng $?w))
 )
 ;-----------------------------------------------------------------------------------------------------------
 ;What can you conclude from these observations?
 ;Apa ina prekRaNa se kyA [niRkarRa_nikAla] sakawe hEM?
 (defrule rm_underscore_in_aper_op
 (declare (salience 2000))
 ?f<-(id-Apertium_output ?a_id $?a_grp)
 (not (id_aper_op_modified ?a_id))
 =>
        (retract ?f)
        (bind ?a_op "")
        (bind ?a_op (remove_character "\\@" (implode$ (create$  $?a_grp)) " "))
        (bind ?a_op (remove_character "\@" (implode$ (create$  ?a_op)) " "))
        (bind ?a_op (remove_character "@" (implode$ (create$  ?a_op)) " "))
        (bind ?a_op (remove_character "-" (implode$ (create$  ?a_op)) " "))
        (bind ?a_op (remove_character "_" (implode$ (create$  ?a_op)) " "))
        (assert (id-Apertium_output ?a_id  ?a_op))
        (assert (id_aper_op_modified ?a_id))
 )
 ;-----------------------------------------------------------------------------------------------------------
 (defrule rm_underscore_in_hindi_mng
 (declare (salience 1000))
 ?f<-(id-HM-source   ?id   ?hmng&~-   ?src)
 ?f1<- (id-HM-source-grp_ids ?id ?hnmg ?s $?ids)
 (test (neq (numberp ?hmng) TRUE))
 (test (neq (str-index "_" ?hmng) FALSE))
 (not (id_hmng_modified ?id))
 =>
        (retract ?f ?f1)
        (bind ?new_mng (remove_character "_" ?hmng " "))
        (assert (id-HM-source ?id ?new_mng ?src))
	(assert (id-HM-source-grp_ids ?id ?new_mng ?s $?ids)) 
        (assert (id_hmng_modified ?id))
 )
 ;-----------------------------------------------------------------------------------------------------------
 (defrule rm_@_in_hindi_mng
 (declare (salience 500))
 ?f<-(id-HM-source   ?id   ?hmng&~-   ?src)
 ?f1<- (id-HM-source-grp_ids ?id ?hnmg ?s $?ids)
 (test (neq (numberp ?hmng) TRUE))
 (not (id_hmng_modified ?id))
 =>
        (retract ?f ?f1)
        (bind ?new_mng (remove_character "-" (implode$ (create$  ?hmng)) " "))
        (bind ?new_mng (remove_character "@" (implode$ (create$  ?new_mng)) ""))
        (assert (id-HM-source ?id ?new_mng ?src))
	(assert (id-HM-source-grp_ids ?id ?new_mng ?s $?ids)) 
        (assert (id_hmng_modified ?id))
 )
 ;-----------------------------------------------------------------------------------------------------------
