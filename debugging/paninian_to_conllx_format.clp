(defglobal ?*file_pt* = fp)
(open "paninian_to_conllx_format.dat" fp "w")
(load-facts "relations_tmp1.dat")
(load-facts "original_word.dat")
(load-facts "cat_consistency_check.dat")
(load-facts "lwg_info.dat")
(assert (id 1))

(defrule verb
(declare (salience 103))
(root-verbchunk-tam-chunkids ?root ?vc ?tam $?ids ?id)
(id-original_word ?id ?word)
(id-cat_coarse ?id ?cat)
?f<-(id ?id)
=>
(retract ?f)
(printout  ?*file_pt* ?id"	"?word"	_	"?cat"	"?cat"	_	0	root	_	_" crlf)
(bind ?id (+ ?id 1))
(assert (id ?id))
)

(defrule aux
(declare (salience 102))
(root-verbchunk-tam-chunkids ?root ?vc ?tam $?ids ?id1)
(id-original_word ?id ?word)
(id-cat_coarse ?id ?cat)
?f<-(id ?id)
(test (member$ ?id $?ids))
=>
(retract ?f)
(printout  ?*file_pt* ?id"	"?word"	_	"?cat"	"?cat"	_	"?id1"	aux	_	_" crlf)
(bind ?id (+ ?id 1))
(assert (id ?id))
)



(defrule print_conllx_format
(declare (salience 101))
(prep_id-relation-anu_ids ?pre ?rel ?id1 ?id)
(id-original_word ?id ?word)
(id-cat_coarse ?id ?cat)
?f<-(id ?id)
=>
(retract ?f)
(printout  ?*file_pt* ?id"	"?word"	_	"?cat"	"?cat"	_	"?id1"	"?rel"	_	_" crlf)
(bind ?id (+ ?id 1))
(assert (id ?id))
)


(defrule prep
(declare (salience 100))
(prep_id-relation-anu_ids ?prep_id ?rel ?id1 ?id)
(id-original_word ?prep_id ?word)
(id-cat_coarse ?prep_id ?cat)
?f<-(id ?prep_id)
=>
(retract ?f)
(printout  ?*file_pt* ?prep_id"	"?word"	_	"?cat"	"?cat"	_	"?id"	prep	_	_" crlf)
(bind ?prep_id (+ ?prep_id 1))
(assert (id ?prep_id))
)

(defrule print_conllx_format1
(declare (salience 99))
(id-original_word ?id ?word)
(id-cat_coarse ?id ?cat)
?f<-(id ?id)
=>
(retract ?f)
(printout  ?*file_pt* ?id"	"?word"	_	"?cat"	"?cat"	_	1000	rel	_	_" crlf)
(bind ?id (+ ?id 1))
(assert (id ?id))
)

(run)
(exit)

