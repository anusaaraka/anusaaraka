
 (defglobal ?*root_cons_tmp-file* = root_cons_tmp_fp)
 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))
 ;--------------------------------------------------------------------------------------------------------------------
 ; He saw the "BROKEN" window. BROKEN windows need to be replaced
 ; if category is adjective and it also has verb with suf en/ing from morph then take the root of verb
 (defrule morph_root
 (declare (salience 100))
 (parser_id-cat_coarse  ?pid adjective)
 (parserid-wordid  ?pid ?wid)
 (id-original_word ?wid  ?word)
 (word-morph (original_word  ?word)(root ?root1)(category adjective))
 (word-morph (original_word  ?word)(root ?root)(category  verb)(suffix en|ing))
 ?f0<-(parser_id-root ?pid ?)
 (test (neq ?word left)) ; Some people write with their left hand .
 =>
   (retract ?f0)
   (printout ?*root_cons_tmp-file* "(parser_id-root " ?pid " " ?root ")" crlf)
 )
 ;--------------------------------------------------------------------------------------------------------------------
;The blacksmith made an assay of iron ore.
;Some people take a lot of time to acclimatize themselves to the new environment.
 (defrule default_root
 (declare (salience 50))
 (parser_id-root ?pid $?root)
 =>
  (printout ?*root_cons_tmp-file* "(parser_id-root " ?pid " " (implode$ $?root) ")" crlf)

 )
 ;--------------------------------------------------------------------------------------------------------------------
