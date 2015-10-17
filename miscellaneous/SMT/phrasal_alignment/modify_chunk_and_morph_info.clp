;This file is added by Shirisha Manju on 09-07-2015

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))


;============================================== Modify Morph root ==========================
;saxiSoM ==> saxiSa 
(defrule modify_morph_root
?f<-(man_word-root-cat  ?word  ?word  dummy_cat)
(test (eq (sub-string (- (length ?word) 1) (length ?word) ?word) "oM"))
=>
        (retract ?f)
        (bind ?root (string-to-field (str-cat (sub-string 1 (- (length ?word) 2) ?word) "a")))
        (assert (man_word-root-cat ?word ?root modified_cat))
)
;-------------------------------------------------------------------------------------
;karezge = kara ; xeKezge = xeKa
;You will appreciate from this table the multi-cultural, international character of the scientific endeavor.
;isake xvArA Apa vEjFAnika prayAsoM ke bahu-sAMskqwika, anwarrARtrIya svarUpa kA mUlyAfkana [karezge].
;We shall now discuss the nature of fundamental forces and the laws that govern the diverse phenomena of the physical world.
;aba hama mUla baloM kI prakqwi waWA isa BOwika jagawa ko niyanwriwa karane vAle viviXa niyamoM ke viRaya meM carcA [karezge].
;The other two forces, as we shall see, operate only at nuclear scales. 
;anya xo bala, jEsA ki hama Age [xeKezge], kevala nABikIya pEmAne para sakriya howe hEM.
(defrule modify_morph_root1
(declare (salience 1100))
?f0<-(man_word-root-cat  ?word  ?word       dummy_cat)
(test (eq (sub-string (- (length ?word) 3) (length ?word) ?word) "ezge"))
=>
        (retract ?f0)
	(bind ?root (string-to-field (str-cat (sub-string 1 (- (length ?word) 4) ?word) "a")))
        (assert (man_word-root-cat  ?word ?root v))
)
;-------------------------------------------------------------------------------------
;Then, the dimension of λ A is the product of the dimensions of λ and A.
;awaeva λ@A kI [vimAez] λ va @A kI [vimAoM] ke guNanaPala ke barAbara hoMgI.
;vimAez= vimA; vimAoM= vimA
(defrule modify_morph_root2
(declare (salience 1100))
?f<-(man_word-root-cat  ?word  ?word  dummy_cat)
(test (or (eq (sub-string (- (length ?word) 2) (length ?word) ?word) "Aez")(eq (sub-string (- (length ?word) 2) (length ?word) ?word) "AoM")))
=>
        (retract ?f)
        (bind ?root (string-to-field (str-cat (sub-string 1 (- (length ?word) 2) ?word) )))
        (assert (man_word-root-cat ?word ?root modified_cat))
)

;==================================== Modify chunk info ==================================

;If the box is stationary relative to the train, it is in fact accelerating along with the train.
;yaxi boYksa relagAdI ke ApekRa sWira hE @PUNCT-Comma wo vAswava meM vaha relagAdI ke sAWa wvariwa ho rahA hE.
;(chunk_name-chunk_ids VGF 7 8) -- where 8 is @PUNCT-Comma id
(defrule rm_punct_id_from_verb_chunk
?f<-(chunk_name-chunk_ids ?chnk&VGF|VGNN|VGNF $?pre ?mid $?pos)
(not (manual_word_info (group_ids $? ?mid $?) ))
=>
       (retract ?f)
       (assert (chunk_name-chunk_ids ?chnk  $?pre $?pos))
)
;----------------------------------------------------------------------------------------------------------
;Scalars can be added, subtracted, multiplied and divided just as the ordinary numbers.
;axiSoM ko hama TIka vEse hI joda sakawe hEM, GatA sakawe hEM, guNA yA [BAga kara sakawe hEM jEsA] ki hama sAmAnya safKyAoM ke sAWa karawe hEM .
(defrule rm_mng_after_hE_from_verb_chunk
?f<-(chunk_name-chunk_ids ?chnk&VGF $?pre ?mid ?lid)
(manual_word_info (head_id ?mid) (word hEM))
=>
        (retract ?f)
        (assert (chunk_name-chunk_ids ?chnk  $?pre ?mid))
        (assert (chunk_name-chunk_ids NP ?lid))
)
;----------------------------------------------------------------------------------------------------------
;The applications of physics are not always easy to foresee.
;BOwikI ke anuprayogoM kA saxEva pUrvajFAna raKanA sarala [nahIM hE].
(defrule modify_chunk_for_nahIM
?f<-(chunk_name-chunk_ids VGF ?id $?ids)
(manual_word_info (head_id ?id) (word nahIM))
(not (pada_info (group_head_id ?h) (group_cat VP) (preceeding_part_of_verb nahIM)))
=>
        (retract ?f)
        (assert (chunk_name-chunk_ids VGF $?ids))
        (assert (chunk_name-chunk_ids NP ?id))
)
;----------------------------------------------------------------------------------------------------------
;Note that when mole is used, the elementary entities must be specified.
;XyAna [xIjie], mola kA upayoga karawe samaya mUla sawwAoM kA viSeRa rUpa se ulleKa kiyA jAnA cAhie.
(defrule modify_NP_as_VGNF
?f<-(chunk_name-chunk_ids NP ?id $?p)
(manual_word_info (head_id ?id) (word ?word))
(man_word-root-cat ?word ?rt v)
(not (man_word-root-cat ?word ? n))
(not (man_word-root-cat ?word ? adj))
=>
	(retract ?f)
	(assert (chunk_name-chunk_ids NP  $?p))
	(assert (chunk_name-chunk_ids VGNF  ?id))
)
;----------------------------------------------------------------------------------------------------------
;His garret was under the roof of a high, five-storied house and was more like a cupboard than a room. 
;usakI xuCawwI eka pAzca-maFjilA , Uzce makAna kI ekaxama UparavAlI Cawa ke nIce WI. kamarA kyA WA , goyA eka alamArI WI. 
(defrule modify_chunk_for_sen_boundary
?f0<-(chunk_name-chunk_ids NP $?p ?id $?po)
(test (or (neq (length $?p) 0) (neq (length $?po) 0)))
?f<-(manual_word_info (head_id ?id) (word ?w)) 
(test (neq (str-index "." ?w) FALSE))  
(man_word-root-cat  ?w1	 ?    ?cat)
(test (eq (string-to-field (sub-string 1  (- (str-index "." ?w) 1) ?w)) ?w1))
=>
	(retract ?f0)
	(modify ?f (word ?w1))
	(if (eq (length $?p) 0) then
		(assert (chunk_name-chunk_ids NP $?po))
	else
		(assert (chunk_name-chunk_ids NP  $?p))
		(assert (chunk_name-chunk_ids NP  $?po))
	)
	(if (eq ?cat v) then
		(assert (chunk_name-chunk_ids VGF ?id))
	else
		(assert (chunk_name-chunk_ids NP ?id))
	)
)
	
