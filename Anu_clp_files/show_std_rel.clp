 (load-facts "word.dat")
 (load-facts "relations_tmp1.dat")
 (load-facts "sd-relations_tmp.dat")
 (load-facts "parserid_wordid_mapping.dat")

 (open "user_std_rel_info.dat" rel_wd_fp "a")
 (defglobal ?*rel-word-file* = rel_wd_fp)


 ;(defrule std_rel
 ;(declare (salience 1010))
 ;=>
 ;(printout  ?*rel-word-file* "   STANDFORD_RELATIONS " crlf)
 ;(printout  ?*rel-word-file* "=======================" crlf)
 ;)

 
 (defrule std_elations2
 (declare (salience 1000))
 (rel_name-sids  ?rel ?id ?id1)
 (parserid-wordid ?id ?ID)
 (parserid-wordid ?id1 ?ID1)
 (id-word ?ID ?word)
 (id-word ?ID1 ?word1)
 =>
   (printout ?*rel-word-file*  "(" ?rel "	"?ID","?word"	" ?ID1","?word1 ")" crlf)
 )

 (defrule paninian_rel
 (declare (salience 910))
 =>
 ;(printout  ?*rel-word-file* "   MAPPED_PANINIAN_RELATIONS " crlf)
 ;(printout  ?*rel-word-file* "=======================" crlf)
 (printout ?*rel-word-file* crlf crlf)

 )


 (defrule relations1
 (declare (salience 900))
 (relation-parser_ids  ?rel ?id)
 (id-word ?id ?word)
 =>
   (printout ?*rel-word-file*  "(" ?rel "	"?id","?word ")" crlf)
 )

 (defrule relations2
 (declare (salience 900))
 (relation-parser_ids  ?rel ?id ?id1)
 (id-word ?id ?word)
 (id-word ?id1 ?word1)
 =>
   (printout ?*rel-word-file*  "(" ?rel "	"?id","?word"	" ?id1","?word1 ")" crlf)
 )


(run)
(close rel_wd_fp)
(exit)

