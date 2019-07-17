;This file is added by Shirisha Manju on 09-07-2015

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(slot tam (default 0))(multislot tam_components (default 0))(multislot group_ids (default 0)))

;============================================== Modify Morph root ==========================
;(defrule get_morph_fact_for_chandrabinxu
;(declare (salience 1000))
;?f<-(man_word-root-cat  ?mng ?mng  dummy_cat)
;(test (eq (numberp ?mng) FALSE))
;(test (neq (str-index "yAM" ?mng) FALSE))
;=>
;	(bind ?n (str-cat (sub-string 1 (- (str-index "yAM" ?mng) 1) ?mng) "yAz"))
;	(assert (morph_word ?n))
;	(bind ?o (type (system "grep \"^mUrwiyAz\" $HOME_anu_test/new_hnd_mo/hi_expanded")))
;	(printout t (type ?n) " "(type ?o)crlf)
;;	(printout t (sub-string (+ (str-index ":" ?o) 1) (str-index "<" ?o) ?o) crlf)
;)

;isameM yaha ulleKa hE ki manuRya ko cAhie ki vaha SrIkqRNa ke Bakwa kI sahAyawA se saMvIkRaNa karawe hue BagavaxgIwA kA aXyayana kare Ora svArWa preriwa vyAKyAoM ke binA use samaJane kA prayAsa kare. 
(defrule get_kare_root
?f<-(man_word-root-cat  kare kare  dummy_cat)
=>
	(retract ?f)
	(assert (man_word-root-cat  kare kara  modified_cat))
)

(defrule get_kisI_root
?f<-(man_word-root-cat kisI kisI dummy_cat)
=>
	(retract ?f)
	(assert (man_word-root-cat kisI koI modified_cat))
)

(defrule get_pronoun_root
?f<-(man_word-root-cat  ?word&yahIM|yahI|inhIM|wumane|isI|vahIM|usI ?word  dummy_cat)
=>
	(retract ?f)
	(if (eq ?word wumane) then
		(assert (man_word-root-cat ?word wuma modified_cat))
		(assert (man_word-root-cat ?word wU modified_cat))
	else
             (if (eq (integerp (member$ ?word (create$ vahIM usI))) TRUE) then
		(assert (man_word-root-cat ?word vaha modified_cat))
	     else
		(assert (man_word-root-cat ?word yaha modified_cat))
	    )
	)
)
;-------------------------------------------------------------------------------------
;saxiSoM ==> saxiSa      kareM ==> kara 
(defrule modify_morph_root
?f<-(man_word-root-cat  ?word  ?word  dummy_cat)
(test (neq (numberp ?word) TRUE))
(test (or (eq (sub-string (- (length ?word) 1) (length ?word) ?word) "oM")(eq (sub-string (- (length ?word) 1) (length ?word) ?word) "eM")))
=>
        (retract ?f)
        (bind ?root (string-to-field (str-cat (sub-string 1 (- (length ?word) 2) ?word) "a")))
        (assert (man_word-root-cat ?word ?root modified_cat))
	(printout t "Warning: morph root missing " ?word crlf)
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
(test (neq (numberp ?word) TRUE))
(test (eq (sub-string (- (length ?word) 3) (length ?word) ?word) "ezge"))
=>
        (retract ?f0)
	(bind ?root (string-to-field (str-cat (sub-string 1 (- (length ?word) 4) ?word) "a")))
        (assert (man_word-root-cat  ?word ?root v))
	(printout t "Warning: morph root missing " ?word crlf)
)
;-------------------------------------------------------------------------------------
;Then, the dimension of λ A is the product of the dimensions of λ and A.
;awaeva λ@A kI [vimAez] λ va @A kI [vimAoM] ke guNanaPala ke barAbara hoMgI.
;vimAez= vimA; vimAoM= vimA  ; prawiBAeM = prawiBA
(defrule modify_morph_root2
(declare (salience 1100))
?f<-(man_word-root-cat  ?word  ?word  dummy_cat)
(test (neq (numberp ?word) TRUE))
(test (or (eq (sub-string (- (length ?word) 2) (length ?word) ?word) "Aez")(eq (sub-string (- (length ?word) 2) (length ?word) ?word) "AoM")(eq (sub-string (- (length ?word) 2) (length ?word) ?word) "AeM")))
=>
        (retract ?f)
        (bind ?root (string-to-field (sub-string 1 (- (length ?word) 2) ?word) ))
        (assert (man_word-root-cat ?word ?root modified_cat))
	(printout t "Warning: morph root missing " ?word crlf)
)
;-------------------------------------------------------------------------------------
;[solahavIM] SawAbxI se yUropa meM vijFAna ke kRewra meM awyaXika pragawi huI.
(defrule modify_cat_for_number
?f<-(man_word-root-cat  ?word  ?word  dummy_cat)
(test (eq (numberp ?word) FALSE))
(test (eq (sub-string (- (length ?word) 2) (length ?word)  ?word) "vIM"))
=>
        (retract ?f)
        (bind ?root (string-to-field (sub-string 1 (- (length ?word) 3) ?word)))
        (assert (man_word-root-cat  ?word  ?root  modified_cat))   
	(printout t "Warning: morph root missing " ?word crlf)
)

;-------------------------------------------------------------------------------------
(defrule modify_morph_root3
(declare (salience 1100))
?f<-(man_word-root-cat  naI   naI adj)
=>
        (retract ?f)
        (assert (man_word-root-cat naI nayA modified_cat))
)

(defrule modify_morph_root4
(declare (salience 1100))
?f<-(man_word-root-cat hUM hUM dummy_cat)
=>
        (retract ?f)
	(assert (man_word-root-cat hUM ho modified_cat))
)



;kyA howA hE , jaba kisI vyakwi ko eca.AI.vI. saMkramaNa ho jAwA hE ?
(defrule modify_abbr_root
(declare (salience 1100))
?f<-(man_word-root-cat  ?word  ?word  dummy_cat)
(manual_id-word ? ?w)
(test (eq (numberp ?w) FALSE))
(test (neq (str-index "." ?w) FALSE))
(test (eq (string-to-field (sub-string 1 (- (str-index "." ?w) 1) ?w)) ?word))
(not (man_word-root-cat ?w ?w modified_cat))
=>
        (retract ?f)
        (assert (man_word-root-cat ?w ?w modified_cat))
)
; BAga [2].
(defrule get_default_root
(declare (salience -1))
(manual_id-word ? ?w&~.)
(not (man_word-root-cat ?w $?))
=>
	(assert (man_word-root-cat ?w ?w dummy_cat))
)

;==================================== Modify chunk info ==================================

;If the box is stationary relative to the train, it is in fact accelerating along with the train.
;yaxi boYksa relagAdI ke ApekRa sWira hE @PUNCT-Comma wo vAswava meM vaha relagAdI ke sAWa wvariwa ho rahA hE.
;(chunk_name-chunk_ids VGF 7 8) -- where 8 is @PUNCT-Comma id
(defrule rm_punct_id_from_verb_chunk
?f<-(chunk_name-chunk_ids ?chnk $?pre ?mid $?pos)
(not (manual_word_info (group_ids $? ?mid $?) ))
=>
       (retract ?f)
       (assert (chunk_name-chunk_ids ?chnk  $?pre $?pos))
)
;----------------------------------------------------------------------------------------------------------
;Scalars can be added, subtracted, multiplied and divided just as the ordinary numbers.
;axiSoM ko hama TIka vEse hI joda sakawe hEM, GatA sakawe hEM, guNA yA [BAga kara sakawe hEM jEsA] ki hama sAmAnya safKyAoM ke sAWa karawe hEM .
;The word Science originates from the Latin verb Scientia meaning 'to know'.
;vitAmina-e se BarapUra AhAra [lenA BI] AzKoM ko svasWa banAe raKane meM maxaxagAra sAbiwa ho sakawA hE  .
(defrule rm_mng_after_hE_from_verb_chunk
?f<-(chunk_name-chunk_ids ?chnk&VGF|VGNF|VGNN $?pre ?mid ?lid)
(manual_word_info (group_ids $? ?mid $?))
(or (manual_id-word ?mid  hE|hEM|lie|karake|xeMge|karane)(manual_id-word ?lid ?w&BI|wo|he))
;(manual_word_info (head_id ?mid) (word $? hEM|gaI))
=>
        (retract ?f)
        (assert (chunk_name-chunk_ids ?chnk  $?pre ?mid))
        (assert (chunk_name-chunk_ids NP ?lid))
)
;----------------------------------------------------------------------------------------------------------
;If the objects under consideration are two trains, then for a person sitting on either of the two, the other train seems to go very fast.
;yaxi vicArAXIna vaswueMz xo relagAdiyAz hEM wo usa vyakwi ke lie jo kisI eka relagAdI meM bETA hE, xUsarI relagAdI bahuwa weja calawI [huI prawIwa howI hE] .
;if first mng is aux and already one more aux present then remove the first aux
;Ex: huI prawIwa howI hE  ==> prawIwa howI hE
; kala ravivAra [hogA, hE] nA ? [hogA, hE] ==> [hogA] [hE]
;guda kolestroYla kA 50 se kama honA Ora bEda kolestroYla kA 100 se aXika [honA KawaranAka hE]. [honA] [KawaranAka hE]
(defrule rm_first_aux_mng_from_verb_chunk
?f<-(chunk_name-chunk_ids ?chnk&VGF|VGNN ?fid $?pre ?mid)
(manual_id-word ?mid  hE|hEM)
;?f<-(chunk_name-chunk_ids ?chnk&VGF ?fid $?pre ?mid ?lid)
;(manual_word_info (head_id ?mid) (word $? howI|howA $?))
(or (manual_word_info (head_id ?fid) (word hogA|honA|huA ))
    (and (manual_id-word ?fid ?w)(test (eq (sub-string 1 1 ?w) "@"))))
=>
        (retract ?f)
;        (assert (chunk_name-chunk_ids ?chnk  $?pre ?mid ?lid))
        (assert (chunk_name-chunk_ids ?chnk  $?pre ?mid))
        (assert (chunk_name-chunk_ids VGNN ?fid))
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
(manual_id-word =(+ ?id 1) ?w&~se) ;xo se 
=>
	(retract ?f)
	(assert (chunk_name-chunk_ids NP  $?p))
	(assert (chunk_name-chunk_ids VGNF  ?id))
)
;----------------------------------------------------------------------------------------------------------
;One can go to the Cantonment through Banaras City with this route too. 
;isa rAswe se BI banArasa sitI howe hue [CAvanI jA sakawe hEM] . => [CAvanI] [jA sakawe hEM]
;ilAhAbAxa ke prayAga steSana se BI eka sIXI lAina kASI howe hue [banArasa CAvanI waka jAwI hE] => [banArasa CAvanI waka] [jAwI hE] 
(defrule modify_NP_as_VGNF1
?f<-(chunk_name-chunk_ids NP $?p ?id1 $?v ?lid)
(manual_word_info (head_id ?lid) (word hE|hEM))
(manual_word_info (head_id ?id1) (word ?word))
(man_word-root-cat ?word ?rt v)
(not (man_word-root-cat ?word ? n))
(not (man_word-root-cat ?word ? adj))
=>
	(retract ?f)
        (assert (chunk_name-chunk_ids NP  $?p ))
        (assert (chunk_name-chunk_ids VGNF  ?id1 $?v ?lid))
)
;----------------------------------------------------------------------------------------------------------
;His garret was under the roof of a high, five-storied house and was more like a cupboard than a room. 
;usakI xuCawwI eka pAzca-maFjilA , Uzce makAna kI ekaxama UparavAlI Cawa ke nIce WI. kamarA kyA WA , goyA eka alamArI WI. 
;(defrule modify_chunk_for_sen_boundary
;?f0<-(chunk_name-chunk_ids NP $?p ?id $?po)
;(test (or (neq (length $?p) 0) (neq (length $?po) 0)))
;?f<-(manual_word_info (head_id ?id) (word ?w)) 
;(test (neq (numberp ?w) TRUE))
;(test (neq (str-index "." ?w) FALSE))  
;(man_word-root-cat  ?w1	 ?    ?cat)
;(test (eq (string-to-field (sub-string 1  (- (str-index "." ?w) 1) ?w)) ?w1))
;=>
;	(retract ?f0)
;	(modify ?f (word ?w1))
;	(if (eq (length $?p) 0) then
;		(assert (chunk_name-chunk_ids NP $?po))
;	else
;		(assert (chunk_name-chunk_ids NP  $?p))
;		(assert (chunk_name-chunk_ids NP  $?po))
;	)
;	(if (eq ?cat v) then
;		(assert (chunk_name-chunk_ids VGF ?id))
;	else
;		(assert (chunk_name-chunk_ids NP ?id))
;	)
;)
;----------------------------------------------------------------------------------------------------------

;haswinApura meM prakRAla Ora [pUjA-arcanA] kA samaya subaha 8 baje se SAma 5 baje waka hE .
(defrule combine_roots_for_hyphen
(manual_id-word ?id ?mng)
(test (neq (numberp ?mng) TRUE))
(test (neq (str-index "-" ?mng) FALSE))
?f0<-(man_word-root-cat ?m1 ?root1 ?)
?f1<-(man_word-root-cat ?m2 ?root2 ?c)
(test (and (eq (string-to-field (sub-string 1  (- (str-index "-" ?mng) 1) ?mng)) ?m1)(eq (string-to-field (sub-string (+ (str-index "-" ?mng) 1) (length ?mng) ?mng)) ?m2)))
(not (man_word-root-cat ?mng $?))
=>
	(retract ?f0 ?f1)
	(bind ?r (string-to-field (str-cat ?root1"-"?root2)))
	(assert (man_word-root-cat ?mng ?r ?c))
)

