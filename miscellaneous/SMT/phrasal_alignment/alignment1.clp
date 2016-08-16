;This file is written by Shirisha Manju

(defglobal ?*lf-f* = lf)
(defglobal ?*catastrophe_file* = catas_fp)

(deftemplate score (slot anu_id (default 0))(slot man_id (default 0))(slot weightage_sum (default 0))(multislot heuristics (default 0))(multislot rule_names (default 0)))

(deftemplate alignment (slot anu_id (default 0))(slot man_id (default 0))(multislot anu_meaning (default 0))(multislot man_meaning(default 0)))

(deftemplate manual_word_info (slot head_id (default 0))(multislot word (default 0))(multislot word_components (default 0))(multislot root (default 0))(multislot root_components (default 0))(multislot vibakthi (default 0))(multislot vibakthi_components (default 0))(multislot group_ids (default 0)))

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(deffunction remove_character(?char ?str ?replace_char)
                        (bind ?new_str "")
                        (bind ?index (str-index ?char ?str))
                        (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                        (bind ?new_str (str-cat ?new_str (sub-string 1 (- ?index 1) ?str) ?replace_char))
                        (bind ?str (sub-string (+ ?index 1) (length ?str) ?str))
                        (bind ?index (str-index ?char ?str))
                        )
                        )
                (bind ?new_str (explode$ (str-cat ?new_str (sub-string 1 (length ?str) ?str))))
)

(defrule get_man_poss_roots
(declare (salience 2003))
(man_word-root-cat ?word ?root ?c)
(man_word-root-cat ?word ?root1 ?)
(test (neq ?root ?root1))
(not (man_word-poss_roots $? ?root $?))
=>
	(assert (man_word-poss_roots ?word ?root ?root1))
)

(defrule get_man_poss_roots1
(declare (salience 2004))
?f0<-(man_word-poss_roots ?word $?roots)
(man_word-root-cat ?word ?root ?)
(test (eq (member$ ?root $?roots) FALSE))
=>
	(retract ?f0)
	(assert (man_word-poss_roots ?word $?roots ?root))
)

(defrule get_man_poss_roots2
(declare (salience 2002))
(man_word-root-cat ?word ?root ?)
(not (man_word-poss_roots $? ?root $?))
=>
        (assert (man_word-poss_roots ?word ?root))
)



;============================  get_restricted word/mng info ====================

(defrule get_eng_dic
(declare (salience 2001))
(id-word ?aid ?wrd)
(test (eq (numberp ?wrd) FALSE ))
(test (neq (gdbm_lookup "restricted_eng_words.gdbm" ?wrd) "FALSE"))
=>
        (bind $?dic_list (create$ ))
        (bind ?new_mng (gdbm_lookup "restricted_eng_words.gdbm" ?wrd))
        (bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$  ?new_mng1)) " "))
                        (bind $?dic_list (create$ $?dic_list ?new_mng1 ,))
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )
        )
        (bind ?new_mng1 (str-cat (sub-string 1 (length ?new_mng) ?new_mng)))
        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
        (bind $?dic_list (create$ $?dic_list ?new_mng1))
        (assert (anu_id-word-possible_mngs ?aid ?wrd $?dic_list))
)
;-----------------------------------------------------------------------------------
(defrule get_hnd_dic
(declare (salience 2001))
(manual_word_info (head_id ?mid) (word ?mng))
(man_word-poss_roots ?mng $? ?root $?)
;(man_word-root-cat ?mng ?root ?)
(test (eq (numberp (implode$ (create$ ?mng))) FALSE ))
(test (or (neq (gdbm_lookup "restricted_hnd_words.gdbm" ?mng) "FALSE")(neq (gdbm_lookup "restricted_hnd_words.gdbm" ?root) "FALSE")))
=>
        (bind $?dic_list (create$ ))
        (bind ?new_mng (gdbm_lookup "restricted_hnd_words.gdbm" ?mng))
        (if (eq ?new_mng "FALSE") then
                (bind ?new_mng (gdbm_lookup "restricted_hnd_words.gdbm" ?root))
        )
        (bind ?slh_index (str-index "/" ?new_mng))
        (if (and (neq (length ?new_mng) 0)(neq ?slh_index FALSE)) then
                (while (neq ?slh_index FALSE)
                        (bind ?new_mng1 (sub-string 1 (- ?slh_index 1) ?new_mng))
                        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
                        (bind ?new_mng1 (remove_character "-" (implode$ (create$  ?new_mng1)) " "))
                        (bind $?dic_list (create$ $?dic_list ?new_mng1 ,))
                        (bind ?new_mng (sub-string (+ ?slh_index 1) (length ?new_mng) ?new_mng))
                        (bind ?slh_index (str-index "/" ?new_mng))
                )

        )
        (bind ?new_mng1 (str-cat (sub-string 1 (length ?new_mng) ?new_mng)))
        (bind ?new_mng1 (remove_character "_" ?new_mng1 " "))
        (bind ?new_mng1 (remove_character "-" (implode$ (create$ ?new_mng1)) " "))
        (bind $?dic_list (create$ $?dic_list ?new_mng1))
        (assert (man_id-word-possible_mngs ?mid ?mng $?dic_list))
)

;=========================== map aignment ================================

(defrule map_align_facts
(declare (salience 500))
?f1<-(alignment (anu_id ?aid) (man_id ?mid) (anu_meaning $?amng)(man_meaning $?mng))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
=>
        (retract ?f1)
        (if (eq (length $?amng) 0) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid - - ?mid $?mng))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?mid $?mng))
        )
)

;============================ Remove unrelated words ===========================================
(defrule rm_unrelated_wrds_from_eng_restrict
(declare (salience 450))
(anu_id-word-possible_mngs ?aid ?w $?pos_mngs)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? ? - ?mid $?)
(manual_word_info (head_id ?mid) (word ?mng )(root $?root)) 
(man_word-poss_roots ?mng $?roots)
(test (and (eq (member$ ?mng $?pos_mngs) FALSE)(eq (member$ $?root $?pos_mngs) FALSE)))
?f1<-(left_over_ids $?ids)
(not (added_emphatic ?mid))
(not (pronoun_align ?aid ?mid))
(not (score (anu_id ?aid) (man_id ?mid) (heuristics $? anu_exact_match $?)))
=>
	(bind ?c 0)
	(loop-for-count (?i 1 (length $?roots))
		(if (neq (member$ (nth$ ?i $?roots) $?pos_mngs) FALSE) then
			(bind ?c (+ ?c 1))
		)
	)
	(if (eq ?c 0) then
		(retract ?f0 ?f1)
	        (assert (removed_man_id_with-anu_id ?mid ?aid))
		(bind $?ids (sort > (create$ $?ids ?mid)))
		(assert (left_over_ids $?ids))
	)
)
;----------------------------------------------------------------------------------------------
(defrule rm_unrelated_wrds_from_hnd_restrict
(declare (salience 450))
(man_id-word-possible_mngs ?mid ? $?pos_mngs)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? ? - ?mid $?)
(id-word ?aid ?w)
(test (eq (integerp (member$ ?w $?pos_mngs)) FALSE))
?f1<-(left_over_ids $?ids)
(not (added_emphatic ?mid))
(not (pronoun_align ?aid ?mid))
;(not (score (anu_id ?aid) (man_id ?mid)(weightage_sum ?s&:(> ?s 10))))
=>
        (retract ?f0 ?f1)
        (assert (removed_man_id_with-anu_id ?mid ?aid))
	(bind $?ids (sort > (create$ $?ids ?mid)))
        (assert (left_over_ids $?ids))
)
;----------------------------------------------------------------------------------------------
;The night sky with its bright celestial objects [has fascinated] humans since time immemorial.
;anAxi kAla se hI rAwri ke AkASa meM camakane vAle KagolIya piMda [use sammohiwa karawe rahe hEM].
;Recent decades have seen much progress on this front.
;phrasal is aligning 'use kuCa hamane' in has, have
(defrule rm_unrelated_words_from_aux_verb
(declare (salience 450))
(root-verbchunk-tam-chunkids ? ? ? $? ?id $? ?h)
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid $?mng)
(test (eq (integerp (member$ $?mng (create$ hE hEM howA hE howI hE howe hEM hogA avaSya nahIM jarUra))) FALSE))
?f1<-(left_over_ids $?ids)
(id-word ?id ~let)
=>
        (retract ?f ?f1)
	(printout t $?mng crlf)
	(bind $?ids (sort > (create$ $?ids ?mid)))
        (assert (left_over_ids $?ids))
        (assert (removed_man_id_with-anu_id ?mid ?id))
)
;----------------------------------------------------------------------------------------------
;He had given up attending to matters of practical importance; he had lost all desire [to do] so.
;usane rojamarrA kI bAwoM kI ora XyAna xenA CodZa xiyA WA; isameM [usakI] koI icCA BI nahIM raha gaI WI
(defrule rm_unrelated_words_from_verb
(declare (salience 450))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $? ? - ?mid ?mng)
(id-cat_coarse ?id verb)
(man_word-root-cat ?mng ? ?c)
(test (or (eq ?c p) (eq (integerp (member$ ?mng (create$ usakA usakI use usa isa isakI hameM apanI apane kisa kisI hI BI yahAz kahIM jisameM jisakA sabako ora iwanA))) TRUE)))
?f1<-(left_over_ids $?ids)
=>
        (retract ?f ?f1)
	(bind $?ids (sort > (create$ $?ids ?mid)))
        (assert (left_over_ids $?ids))
        (assert (removed_man_id_with-anu_id ?mid ?id))
)
;----------------------------------------------------------------------------------------------
;He had [given up] attending to matters of practical importance; he had lost all desire to do so.
;Man: usane rojamarrA kI bAwoM kI ora XyAna xenA [CodZa xiyA WA]; isameM usakI koI icCA BI nahIM raha gaI WI
;Anu: usane vyAvahArika mahawva ke viRayoM ke lie upasWiwa howA huA ki [Coda xiyA WA]; usane EsA hI karane ke lie saBI icCA KoI WI.
(defrule rm_unrelated_words_from_particle
(declare (salience 450))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $?mng ?m1  - ?mid $?mng ?m1)
(id-cat_coarse ?id verb)
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1&:(= (+ ?id 1) ?id1) - - ?mid1 $?m)
(id-cat_coarse ?id1 particle)
?f1<-(left_over_ids $?ids)
=>
        (retract ?f ?f1)
	(bind $?ids (sort > (create$ $?ids ?mid1)))
        (assert (left_over_ids $?ids))
        (assert (removed_man_id_with-anu_id ?mid1 ?id1))
)
;----------------------------------------------------------------------------------------------
(defrule rm_unrelated_wrds_from_det
(declare (salience 450))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id ? - ?mid ?m)
(test (eq (integerp (member$ ?m (create$ wo awaH hE kara howI ki))) TRUE))
(id-cat_coarse ?id determiner|preposition)
?f1<-(left_over_ids $?ids)
=>
	(retract ?f0 ?f1)
	(bind $?ids (sort > (create$ $?ids ?mid)))
	(assert (left_over_ids $?ids))
        (assert (removed_man_id_with-anu_id ?mid ?id))
)
;----------------------------------------------------------------------------------------------
(defrule rm_unrelated_wrds_from_inf_to
(declare (salience 450))
(pada_info (group_head_id ?h) (group_cat infinitive) (group_ids ?to ?))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $? ?m)
(test (or (eq (integerp (member$ ?m (create$ lie liye karanA kA kI hEM))) TRUE)(eq (sub-string (- (length ?m) 1) (length ?m) ?m) "nA")))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?to $? ? - ?mid $?)
?f0<-(id-Apertium_output ?to $?)
?f<-(left_over_ids $?ids)
=>
        (retract ?f ?f0 ?f1)
	(bind $?ids (sort > (create$ $?ids ?mid)))
        (assert (left_over_ids $?ids))
        (assert (removed_man_id_with-anu_id ?mid ?to))
)

;================================= group hI/BI/jI/SrI/ora/kahIM/sabase/Pira ==============================

;Like velocity, acceleration can also be positive, negative or zero.
;[vega ke samAna] [hI] wvaraNa BI XanAwmaka, qNAwmaka aWavA SUnya ho sakawA hE .
(defrule group_hI
(declare (salience 400))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word hI))
(manual_word_info (head_id ?mid)(group_ids $?d ?id1&:(=(- ?id 1) ?id1)))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?m - ?mid $?m1)
=>
        (retract ?f ?f0)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?m - ?mid $?m1 hI))
        (assert (left_over_ids $?p $?p1))
)
;--------------------------------------------------------------------------------------------
;And each time he passed, the young man had a sick, frightened feeling, which made him scowl and feel ashamed.
;Ora uXara se gujarawe hue hara bAra usa nOjavAna ko [JiJaka BI] howI WI Ora [dara BI] lagawA WA, jisakI vajaha se usakI wyoriyoM para Sikana padZa jAwI WI Ora Sarma mahasUsa howI WI
(defrule group_BI
(declare (salience 400))
?f<-(left_over_ids $?p ?BI_id $?p1)
(manual_id-word ?BI_id BI)
(manual_word_info (head_id ?mid)(group_ids $?d ?id&:(=(- ?BI_id 1) ?id)))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?mid $?m_mng)
=>
	(retract ?f ?f0)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?mid $?m_mng BI))
	(assert (left_over_ids $?p $?p1))
	(assert (added_emphatic ?mid))
)
;--------------------------------------------------------------------------------------------
;prAcIna kAla meM piwAmaha [brahmA jI ne] kAMcI meM mAz BagavawI ke xarSana ke lie xuRkara wapasyA kI WI .
(defrule group_jI
(declare (salience 400))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id)(word jI)(vibakthi ?v)) 
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid&:(=(- ?id 1) ?mid) $?m_mng)
=>
        (retract ?f ?f0)
	(if (eq ?v 0) then	
	        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid $?m_mng jI))
	else
	        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid $?m_mng jI ?v))
	)
        (assert (left_over_ids $?p $?p1))
)
;--------------------------------------------------------------------------------------------
;ayoXyA  BagavAna [SrI rAma ke] avawAra  kI paviwra BUmi hE
(defrule group_SrI
(declare (salience 400))
?f<-(left_over_ids $?p ?id $?p1)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid&:(=(+ ?id 1) ?mid) $?m_mng)
(id-cat_coarse ?aid PropN)
(manual_word_info (head_id ?id)(word SrI)(vibakthi ?v)) 
=>
        (retract ?f ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid SrI $?m_mng ))
        (assert (left_over_ids $?p $?p1))
)
;--------------------------------------------------------------------------------------------
;With a sinking heart and a nervous tremor, he went up to a huge house which on one side looked on to the canal, and on the [other] into the street. 
;jaba vaha usa bade se makAna ke pAsa pahuzcA , jisake sAmane eka ora nahara WI Ora [xUsarI ora] sadaka , wo usakA xila dUba rahA WA .
(defrule group_ora
(declare (salience 400))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id)(word ora))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid&:(=(- ?id 1) ?mid) $?m_mng)
=>
        (retract ?f ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid $?m_mng ora))
        (assert (left_over_ids $?p $?p1))
)
;--------------------------------------------------------------------------------------------
;;Since the electromagnetic force is so much stronger than the gravitational force, it dominates all phenomena at atomic and molecular scales. 
;cUfki vixyuwa cumbakIya bala guruwvAkarRaNa bala kI apekRA [kahIM] [aXika] prabala howA hE yaha ANvika waWA paramANvIya pEmAne kI saBI pariGatanAoM para CAyA rahawA hE.
(defrule group_kahIM
(declare (salience 400))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id)(word kahIM))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid&:(=(+ ?id 1) ?mid) $?m_mng)
=>
        (retract ?f ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid kahIM $?m_mng))
        (assert (left_over_ids $?p $?p1))
)
;------------------------------------------------------------------
;In fact, he wants to screen this film for Prime Minister Manhoman Singh [first].
;xaraasala vaha isa Pilma ko [sabase pahale] praXAnamanwrI manamohana siMha ko xiKAnA cAhawe hEM .
;The [biggest] reasons are our slow moving justice system and an irresponsible government machinery.
;isakA [sabase badA] kAraNa hE hamArI DIlI nyAya praNAlI Ora lAparavAha sarakArI maSInarI .
(defrule group_sabase
(declare (salience 400))
?f0<-(left_over_ids $?p ?mid $?p0)
(manual_word_info (head_id ?mid) (word ?m&sabase))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1&:(=(+ ?mid 1) ?mid1) $?mng)
=>
        (retract ?f ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?m $?mng))
        (assert (left_over_ids $?p $?p0))
	(assert (added_emphatic ?mid))
)
;------------------------------------------------------------------
;It would be interesting to know what it is men are most afraid of.
;Man: yaha jAnanA BI kiwanA xilacaspa howA hE ki AxamI kisa cIja se [sabase jyAxA] darawA hE
;Anu: jAnakara rocaka rahegA ki jo AxamI hE se [sabase aXika] BayaBIwa hEM.
(defrule group_sabase1
(declare (salience 400))
?f0<-(left_over_ids $?p ?mid $?p0)
(manual_word_info (head_id ?mid) (word ?m))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1&:(=(- ?mid 1) ?mid1) sabase)
=>
        (retract ?f ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1 sabase ?m ))
        (assert (left_over_ids $?p $?p0))
)
;------------------------------------------------------------------
;'I want to attempt a thing -like that- and am frightened by these trifles,' he thought, with an odd smile.
;mEM EsA kAma karane kI koSiSa karanA cAhawA hUz [Ora Pira BI] CotI-CotI bAwoM se darawA hUz ,' usane eka ajIba-sI muskarAhata ke sAWa socA
(defrule grp_Pira
(declare (salience 400))
?f0<-(left_over_ids $?p ?mid $?p0)
(manual_word_info (head_id ?mid) (word ?m&Pira))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a  - ?mid1&:(=(- ?mid 1) ?mid1) Ora)
=>
        (retract ?f ?f0)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a  - ?mid Ora ?m))
        (assert (left_over_ids $?p $?p0))
	(assert (added_emphatic ?mid))
)

;=============================== Align 'hyphen word' ===============================================

;Often, in these situations, the force and the time duration are difficult to ascertain separately.
;Anu: aksara, ina parisWiwiyoM meM, bala Ora samaya avaXi [alaga-alaga] suniSciwa karake muSkila hEM.
;Man: prAyaH ina sWiwiyoM meM, bala waWA samayAvaXi ko [pqWaka - pqWaka] suniSciwa karanA kaTina howA hE.
(defrule aligh_hyphen_word
(declare (salience 400))
?f<-(left_over_ids ?id)
(manual_id-word =(+ ?id 1) -)
(manual_word_info (head_id ?id) (word $?mng))
(manual_word_info (head_id ?mid) (group_ids $?d =(- ?id 1) $? ))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ?mid $?)
(hindi_id_order $? ?aid ?a1 $?)
?f1<-(id-Apertium_output ?a1 $?am)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?a1 $? ))
=>
        (retract ?f ?f1)
	(if (eq (length $?am) 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?a1 - - ?id $?mng))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?a1 $?am - ?id $?mng))
	)
	(assert (left_over_ids))
)
;------------------------------------------------------------------
;Three or four door-keepers were employed on the building.
;Man: [wIna-cAra] xarabAna BI paharA xene ke lie We.
;Anu: [wIna] yA [cAra] door-keepers imArawa para kAma_para lagAyA gayA WA.
(defrule split_and_align_hyphen_word
(declare (salience 400))
?f0<-(left_over_ids $?p ?id $?p1)
(id-hyphen_word-vib ?id - ?w ?w1 - ?v)
?f1<-(id-Apertium_output ?aid ?w)
?f2<-(id-Apertium_output ?aid1 ?w1)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(test (and (<= (- ?aid1 ?aid) 2) (neq ?aid ?aid1)))
=>
        (retract ?f0 ?f1 ?f2)
	(if (eq ?v 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?w - ?id ?w))
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 ?w1 - ?id ?w1))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?w - ?id ?w))
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 ?w1 - ?id ?w1 ?v))
	)
	(assert (left_over_ids $?p $?p1))
)
;------------------------------------------------------------------
;[food and water] <=> anna-jala
(defrule rm_slot_for_conj_aligned_hyphen_word
(declare (salience 400))
(id-hyphen_word-vib ?id $?)
(score (anu_id ?aid) (man_id ?mid)(rule_names $? man_hyphen_wrd_match_using_dic_for_conj $?))
?f0<-(id-Apertium_output ?a1 $?)
?f<-(id-Apertium_output ?c ?)
?f1<-(id-Apertium_output ?aid pAnI)
(conj_head-left_head-right_head ?c ?a1 ?aid)
=>
	(retract ?f0 ?f ?f1)
)

;=============================== Align 'rUpa' =============================

;At maximum compression the kinetic energy of the car is converted [entirely] into the potential energy of the spring. 
;kAra kI gawija UrjA aXikawama sampIdana para [sampUrNa rUpa se] spriMga kI sWiwija UrjA meM parivarwiwa ho jAwI hE.
(defrule align_rUpa
(declare (salience 400))
?f<-(left_over_ids $?p ?mid $?p1)
(manual_word_info (head_id ?mid) (word rUpa)(vibakthi ?v))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1&:(=(- ?mid 1) ?mid1) $?m)
=>
        (retract ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1 $?m rUpa ?v))
        (assert (left_over_ids $?p $?p1))
)
;-----------------------------------------------------------------------------
;The second Law is [obviously] consistent with the first law. 
;[prawyakRa rUpa se] xviwIya niyama praWama niyama ke anurUpa hE.
(defrule align_rUpa1
(declare (salience 400))
?f<-(left_over_ids $?p ?mid $?p1)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1&:(=(+ ?mid 1) ?mid1) rUpa ?m)
(manual_word_info (head_id ?mid) (word ?mng)(vibakthi 0))
(id-cat_coarse ?aid adverb)
=>
        (retract ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1 ?mng rUpa ?m))
        (assert (left_over_ids $?p $?p1))
)

;====================================== Align 'paren word' ===========================

;A [bundle] of optical fibers can be put to several uses.
;prakASika wanwuoM ke [baNdala (gucCa) kA] kaI prakAra se upayoga kiyA jA sakawA hE.
(defrule align_paren_word
(declare (salience 400))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word ?m))
?f1<-(manual_id-word =(- ?id 1) @PUNCT-OpenParen)
?f2<-(manual_id-word =(+ ?id 1) @PUNCT-ClosedParen)
(manual_word_info (head_id ?mid&:(= (- ?id 2) ?mid)) (word $?word)(vibakthi ?v $?vib))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid  $?)
=>
        (retract ?f ?f0 ?f1 ?f2)
        (if (neq ?v 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid $?word @PUNCT-OpenParen ?m @PUNCT-ClosedParen ?v $?vib))
        else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid $?word @PUNCT-OpenParen ?m @PUNCT-ClosedParen))
        )
        (assert (left_over_ids $?p $?p1))
)
;----------------------------------------------------------------------------------------------
;For example, if we multiply a constant velocity vector by duration (of time), we get a displacement vector.
;uxAharaNasvarUpa, yaxi hama kisI acara vega saxiSa ko kisI (samaya) anwarAla se guNA kareM wo hameM eka visWApana saxiSa prApwa hogA .
(defrule align_paren_word1
(declare (salience 400))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word ?m)(vibakthi ?v $?vib))
?f1<-(manual_id-word =(+ ?id 1) @PUNCT-OpenParen)
(manual_word_info (head_id ?mid&:(= (+ ?id 2) ?mid)) (word $?word))
?f2<-(manual_id-word =(+ ?id 3) @PUNCT-ClosedParen)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid  $?)
=>
        (retract ?f ?f0 ?f1 ?f2)
        (assert (left_over_ids $?p $?p1))
        (if (neq ?v 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid ?m ?v $?vib @PUNCT-OpenParen $?word @PUNCT-ClosedParen))
        else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?mid ?m @PUNCT-OpenParen $?word @PUNCT-ClosedParen ))
        )
)
;========================= Modify mwe alignment ====================

;Similarly, the price or employment level of this representative good will reflect the general price and employment level of the economy.
;isI waraha, isa prawiniXi vaswu kA kImawa swara aWavA rojZagAra swara arWavyavasWA ke sAmAnya kImawa Ora [rojZagAra swara ko] prawibiMbiwa karegA.
(defrule modify_mwe_align
(declare (salience 390))
(or (ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(ids-domain_cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid  $?mng ?v&se|ko|meM|para|kI)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?mng - ?mid1  $?m)
(test (eq (integerp (member$ ?id $?ids)) TRUE))
(test (eq (integerp (member$ ?id1 $?ids)) TRUE))
(test (neq ?id ?id1))
?f2<-(left_over_ids $?l)
=>
        (retract ?f0 ?f1 ?f2)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?mng - ?mid $?mng ?v))
	(bind $?l (sort > (create$ $?l ?mid1)))
	(assert (left_over_ids $?l))
)
;------------------------------------------------------------------
;Why does a [railway track] have a particular shape like I?
;Man: [rela] [patarI kI] Akqwi @I ke samAna kyoM howI hE ?
;Anu: [rela paWa] mEM samAna rUpa kyoM howA hE?
(defrule modify_mwe_align1
(declare (salience 390))
(or (ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(ids-domain_cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid  $?pre ?m $?m1)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?p ?m $?amng - ?mid1  $?mng)
(test (eq (integerp (member$ ?id $?ids)) TRUE))
(test (eq (integerp (member$ ?id1 $?ids)) TRUE))
(test (and (neq $?mng ?m ) (eq (integerp (member$ ?m (create$ $?mng ne ki))) FALSE)))
?f<-(id-Apertium_output ?id $?)
=>
        (retract ?f0 ?f1 ?f)
	(if (> ?mid ?mid1) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?p ?m $?amng - ?mid1 $?mng $?pre ?m $?m1 ))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?p ?m $?amng - ?mid1 $?pre ?m $?m1 $?mng))
	)
	(assert (modified_mwe_slot ?mid))
)
;------------------------------------------------------------------
;He also gave an explicit form for the force for [gravitational attraction] between two bodies.
;unhoMne xo piMdoM ke bIca [guruwvAkarRaNa] bala ke lie suspaRta sUwra BI xiyA.
(defrule modify_mwe_align2
(declare (salience 380))
(or (ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(ids-domain_cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(id-HM-source-grp_ids ? $? physics_WSD_compound_phrase_root_mng|WSD_compound_phrase_root_mng $?ids))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid  $?m1)
(test (eq (integerp (member$ ?id $?ids)) TRUE))
?f<-(id-Apertium_output ?id1 $?a ?m $?a1)
(test (eq (integerp (member$ ?id1 $?ids)) TRUE))
(not (modified_mwe_slot ?mid))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?))
=>
	(retract ?f0 ?f)	
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?a ?m $?a1 - ?mid $?m1))
	(assert (modified_mwe_slot ?mid))
)
;------------------------------------------------------------------
;An expression of the profoundest disgust gleamed for a moment in the [young man's] refined face.
;usa [nOjavAna ke] susaMskqwa cehare para eka pala ke lie behaxa gaharI virakwi kI Jalaka najara AI .
(defrule modify_mwe_align3
(declare (salience 375))
(pada_info (group_ids $? ?adj ?aid))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?adj $? ? - ?mid $?m ?v&se|ko|kI|ke|ne|meM $?m1)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
(id-Apertium_output ?aid ?a $?d )
?f<-(id-Apertium_output ?adj $? )
=>
	(retract ?f ?f0)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?d - ?mid $?m ?v $?m1))
)
;------------------------------------------------------------------
;He [first] wants to show it to the [prime] Minister.
;vaha [pahale] apane praXAnamanwrI ko yaha Pilma xiKAnA cAhawe hEM .
(defrule rm_mwe_alignment
(declare (salience 370))
(or (ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(ids-domain_cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid - - ?mid  $?)
(test (eq (integerp (member$ ?aid $?ids)) TRUE))
(or (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?m - ?mid1 $?)(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?m ?v - ?mid1  $?))
(test (eq (integerp (member$ ?aid1 $?ids)) TRUE))
(test (neq ?aid ?aid1))
(or (manual_word_info (head_id ?mid1) (word $?m)) (id-hyphen_word-vib ?mid1 - $?m - ?v)
(and (manual_word_info (head_id ?mid1) (word ?m1 ?m2))(test (eq (create$ (string-to-field (str-cat ?m1 ?m2))) $?m))))
?f<-(left_over_ids $?l)
=>
	(retract ?f ?f1)
	(bind $?l (sort > (create$ $?l ?mid)))
	(assert (left_over_ids $?l ))
)
;------------------------------------------------------------------
;Prince Shreyanshkumar urged Adinatha Prabhu to accept [sugar cane] juice for ending the fast which he accepted.
;rAjakumAra SreyaMRakumAra ne AxinAWa praBu se vrawa ke samApana ke lie [ikRu] rasa grahaNa karane kI prArWanA kI jise unhoMne svIkAra kiyA .
;rAjakumAra shreyanshkumar ne adinatha praBu vaha weja jise usane svIkAra kiyA samApwa ho ke lie [gannA] rasa svIkAra karane ke lie ukasAyA.
(defrule rm_mwe_alignment_using_wordnet
(declare (salience 365))
(ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid - - ?mid ?mng)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 ?amng - ?mid1 $?)
(test (and (eq (integerp (member$ ?aid $?ids)) TRUE) (eq (integerp (member$ ?aid1 $?ids)) TRUE)))
(score (anu_id ?aid) (man_id ?mid) (heuristics $? hindi_wordnet_match $?))
?f1<-(id-Apertium_output ?aid)
?f2<-(left_over_ids $?l)
=>
	(retract ?f0 ?f ?f1 ?f2)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 ?amng - ?mid ?mng))
	(bind $?l (sort > (create$ $?l ?mid1)))
	(assert (left_over_ids $?l ))
)		
;------------------------------------------------------------------
;He first wants to show it to the prime Minister.
;vaha pahalI bAra [praXAna manwrI ko] isako xiKAnA cAhawA hE.
;vaha pahale apane [praXAnamanwrI ko] yaha Pilma xiKAnA cAhawe hEM . 
(defrule rm_mwe_ids
(declare (salience 360))
(or (ids-cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(ids-domain_cmp_mng-head-cat-mng_typ-priority $?ids ? ? ? ? ?)(id-HM-source-grp_ids  ?aid ? $? ?  $?ids))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?)
(test (eq (integerp (member$ ?aid $?ids)) TRUE))
?f0<-(id-Apertium_output ?aid1)
(test (eq (integerp (member$ ?aid1 $?ids)) TRUE))
(test (neq ?aid ?aid1))
=>
        (retract ?f0)
)

;================================== Modify aux/particle verb alignment ==================

;These [are bonded] together by interatomic or intermolecular forces and stay in a stable equilibrium position.
;yaha anwarA-paramANavika yA anwarA-ANavika baloM xvArA Apasa meM [bazXe] [howe hEM] Ora eka sWira sAmya avasWA meM rahawe hEM.
;In this book you [will be introduced] to some of the basic principles of macroeconomic analysis.
;isa puswaka meM ApakA [paricaya] samaRti arWaSAswrIya viSleRaNa ke kuCa mUla sixXAnwoM se [hogA] .
(defrule modify_aux_slot
(declare (salience 350))
(root-verbchunk-tam-chunkids ? ? ? $? ?id $? ?h)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?am - ?mid  $?m)
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid1  $?mng)
(test (eq (integerp (member$ $?mng (create$ $?m))) FALSE));In SI, there are seven base units as given in Table 2.1. 11-02
(id-word ?id ~let)
=>
		(retract ?f ?f0)
		(if (> ?mid ?mid1) then
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?am - ?mid $?mng $?m))
		else	
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h $?am - ?mid $?m $?mng))
		)
)
;---------------------------------------------------------------------------------
;Some physical quantities that are represented by vectors are displacement, velocity, acceleration and force.
;kuCa BOwika rASiyAz jinheM saxiSoM xvArA [vyakwa karawe hEM], ve [hEM] visWApana, vega, wvaraNa waWA bala .
(defrule modify_aux_slot_with_score
(declare (salience 340))
(root-verbchunk-tam-chunkids ? are|is ? ?h1)
(root-verbchunk-tam-chunkids ? ? ? ?id $? ?h)
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid  $?mng)
?f0<-(score (anu_id ?h1) (man_id ?mid) ) 
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h1 $?))
?f1<-(id-Apertium_output ?h1 $?m)
=>
        (retract ?f ?f0 ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?h1 $?m - ?mid $?mng))
)
;---------------------------------------------------------------------------------
(defrule rm_aux_alignment
(declare (salience 330))
(root-verbchunk-tam-chunkids ? ? ? ?id $? ?h)
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid  $?mng)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?h ? $? - ?mid1 $? $?mng)
?f0<-(left_over_ids $?ids)
=>
	(retract ?f ?f0)
	(bind $?ids (sort > (create$ $?ids ?mid)))
	(assert (left_over_ids $?ids ))
        (assert (removed_man_id_with-anu_id ?mid ?id))
)
;---------------------------------------------------------------------------------
;This statue of Chandra Prabhu Bhagawan had come out during the excavations of southern gate.
;canxrA praBu PropN-bhagawan-PropN kI isa prawimA ne xakRiNI xvAra kI una KuxAI ke xOrAna [hatAyA WA].
;canxra praBu BagavAna kI yaha mUrwi manxira ke xakRiNI geta kI KuxAI ke xOrAna [nikalI WI] .
(defrule modify_particle_alignment
(declare (salience 326))
(id-cat_coarse ?id particle)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid $?mng)
(id-Apertium_output ?id1&:(= (- ?id 1) ?id1) $?am)
?f<-(id-Apertium_output ?id $?)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?))
=>
	(retract ?f0 ?f)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?am - ?mid $?mng))
)

;---------------------------------------------------------------------------------
;When the statue was taken out after the excavation devotees meant this by it. 
;jaba vaha prawimA usa KuxAI ke bAxa [bAhara nikAlI gayI WI] Bakwa kA isake xvArA yaha wAwparya_hE.
;KuxAI karane ke paScAwa jisa samaya [mUrwi nikAlI gaI] SraxXAlu janoM ne isakA arWa yaha nikAlA .
(defrule modify_particle_alignment1
(declare (salience 325))
(id-cat_coarse ?id particle)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid ?m )
?f2<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1&:(= (- ?id 1) ?id1) $?a ?m $?a1 - ?mid1 $?m1)
?f3<-(left_over_ids $?pre )
=>
        (retract ?f0 ?f2 ?f3)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?a ?m $?a1 - ?mid  ?m $?m1))
	(bind $?pre (sort > (create$ $?pre ?mid1)))
	(assert (left_over_ids $?pre))
)
;---------------------------------------------------------------------------------
(defrule modify_inf_to_align
(declare (salience 325))
(id-cat_coarse ?id infinitive_to)
?f0<-(id-Apertium_output ?id $?)
?f<-(id-Apertium_output ?id1&:(= (+ ?id 1) ?id1) $?)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid $?mng ?m)
(test (eq (integerp (member$ ?m (create$ lie liye karanA kA kI hEM))) TRUE))
?f2<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?a ?a1 - ?mid1&:(= (- ?mid 1) ?mid1) ?m1)
(chunk_name-chunk_ids JJP ?mid1)
=>
	(retract ?f ?f0 ?f1 ?f2)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 $?a ?a1 - ?mid1 ?m1 $?mng ?m))
)
;---------------------------------------------------------------------------------
;to,note => karawe hEM, bAwa 
(defrule rm_inf_to_align
(declare (salience 324))
(id-cat_coarse ?id infinitive_to)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id - - ?mid $?)
?f3<-(left_over_ids $?pre )
=>
	(retract ?f1 ?f3)
	(bind $?pre (sort > (create$ $?pre ?mid)))
	(assert (left_over_ids $?pre))
)
;---------------------------------------------------------------------------------
(defrule rm_aux_or_particle_id
(declare (salience 320))
(or (root-verbchunk-tam-chunkids ? ? ? $? ?id $? ?h)(id-cat_coarse ?id particle|infinitive_to))
?f0<-(id-Apertium_output ?id)
=>
        (retract ?f0 )
)

;==================================== align conj left/right ===========================

;sandwiched between oxford street and marylebone lane is one of london's most appealing areas.
;lanxana ke sabase jyAxA AkarRiwa karane vAle kRewroM meM se eka AksaPorda [strIta] waWA merIlebona ke maXya hE .
(defrule align_conj_left
(declare (salience 310))
?f<-(left_over_ids $?p ?id $?p1)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid Ora|waWA - ?mid&:(= (+ ?id 1) ?mid ) ?)
(pada_info (group_ids $? ?aid1&:(= (- ?aid 1) ?aid1)))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(chunk_name-chunk_ids CCP ?mid)
(chunk_name-chunk_ids ? $? ?id)
(manual_word_info (head_id ?id) (word $?mng)(vibakthi ?v $?vib))
?f0<-(id-Apertium_output ?aid1 $?am)
=>
        (if (eq (length $?am) 0) then   (bind $?am -))
        (retract ?f ?f0)
        (assert (left_over_ids $?p $?p1))
        (if (eq ?v 0) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng ?v $?vib))
        )
)

;---------------------------------------------------------------------------------
;sandwiched between oxford street and marylebone lane is one of london's most appealing areas.
;lanxana ke sabase jyAxA AkarRiwa karane vAle kRewroM meM se eka AksaPorda strIta waWA [merIlebona] ke maXya hE .
(defrule align_conj_right
(declare (salience 310))
?f<-(left_over_ids $?p ?id $?p1)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid Ora|waWA - ?mid&:(= (- ?id 1) ?mid ) ?)
(pada_info (group_ids $? ?aid1&:(= (+ ?aid 1) ?aid1)))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(chunk_name-chunk_ids CCP ?mid)
(chunk_name-chunk_ids ? ?id $?)
(manual_word_info (head_id ?id) (word $?mng)(vibakthi ?v $?vib))
?f0<-(id-Apertium_output ?aid1 $?am)
(not (pada_info (group_head_id ?aid1) (group_cat VP)))
(id-word ?aid1 ?w&~the&~a)
=>
        (retract ?f ?f0)
        (assert (left_over_ids $?p $?p1))
        (if (eq (length $?am) 0) then   (bind $?am -))
        (if (eq ?v 0) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng ))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng ?v $?vib))
        )
)

;================================== verb rules =======================================

;Extensive security arrangements have been made by the administration for the festival and it does not want to leave anything to chance.
;Man : mahowsava kI surakRA vyavasWA ko lekara praSAsana ke xvArA kade iMwajAma kie gaye hEM Ora vaha kisI BI waraha kI kowAhI [nahIM barawanA cAhawA].
;Anu: viswqwa surakRA_ke iMwajAma wyOhAra ke lie praSAsana se banAe gaye hEM Ora samBAvanA ko kuCa BI CodanA [nahIM cAhawA hE].
(defrule group_nahIM_using_anu_out
(declare (salience 310))
?f0<-(left_over_ids $?pre ?id $?po)
(manual_word_info (head_id ?id) (word nahIM $?p))
?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?m nahIM $?amng - ?mid  $?mng)
(id-cat_coarse ?aid verb)
(test (eq (integerp (member$ $?mng (create$ $?m nahIM $?amng))) TRUE))
=>
        (retract ?f0 ?f)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid  $?m nahIM $?amng - ?mid  nahIM $?p $?mng))
        (assert (left_over_ids $?pre $?po))
)
;---------------------------------------------------------------------------------
;if noun is aligned in verb slot then combine the next word 
;Amidst all this the guide began to [track] tiger.
;isa bIca gAida ne tAigara ko [trEka] [karanA] SurU kara xiyA .
;You will see that the strips get attracted to the screen.
;Apa xeKeMge ki pattiyAz parxe kI ora [AkarRiwa] [ho jAwI hEM] .
(defrule group_verb_if-noun_aligned
(declare (salience 300))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?lid) (group_ids $? ?id $?)(word $?mng1 ?w)(vibakthi ?vib $?v))
(manual_word_info (head_id ?mid) (group_ids $? =(- ?lid 1) $?))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid  $?mng ?m )
(test (neq (integerp (member$ ?m (create$ WIM WA We WI hE hEM hue huI lie karanA kI kareM kareMge))) TRUE))
(id-cat_coarse ?aid verb)
(chunk_name-chunk_ids JJP|NP|VGNF|VGNN $? ?mid $?)
;(manual_word_info (head_id ?id) (word $?mng1 ?w)(vibakthi ?vib $?v))
(or (chunk_name-chunk_ids ?c&VGF|VGNN|VGNF $? ?id $?) (chunk_name-chunk_ids-words ?c&VGF|VGNN|VGNF $? ?id $?))
=>
        (retract ?f ?f0)
        (assert (left_over_ids $?p $?p1))
	(if (or (eq ?vib 0) (member$ ?w (create$ ?vib $?v))) then 
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid $?mng ?m $?mng1 ?w))
	else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid $?mng ?m $?mng1 ?w ?vib $?v))
	)
        (assert (modified_man_id ?mid ))
)
;---------------------------------------------------------------------------------
;if leftover id's next word is kara and if it is aligned then combine both.
;The principles [will be stated], as far as possible, in simple language.
;jahAz waka samBava hogA sixXAnwoM kA sarala BARA meM [varNana kiyA jAegA] .
;Within the category of industrial goods also output of different kinds of goods tend to rise or fall simultaneously.
;Oxyogika vaswuoM meM BI viBinna prakAra kI vaswuoM ke nirgawa meM eka sAWa vqxXi yA hrAsa kI [pravqwwi howI hE].
(defrule default_kara/ho_group
(declare (salience 290))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word ?mng)(vibakthi 0))
(man_word-root-cat ?mng ? ~p)
(test (eq (integerp (member$ ?mng (create$ BI hI yA))) FALSE))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid&:(= (+ ?id 1) ?mid) ?kara $?tam)
(man_word-root-cat ?kara&~hE kara|ho|karA|karavA v)
(id-word ?aid ?w&~to&~is&~are)
=>
        (retract ?f ?f1)
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?mng ?kara $?tam))
        (assert (left_over_ids $?p $?p1))
)
;---------------------------------------------------------------------------------
;We can easily check their equality.
;Man: hama inakI samAnawA kI [paraKa] AsAnI se [[kara sakawe hEM]] .
;Anu: hama unakA samawulyawA AsAnI se [jAzca sakawe hEM].
(defrule grp_with_score
(declare (salience 270))
?f<-(left_over_ids $?p ?id $?p1)
?f0<-(score (anu_id ?aid) (man_id ?id) (heuristics $? single_verb_match|tam_dict $?))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?mng)
(id-cat_coarse ?aid verb)
(test (and (neq ?id ?mid)(neq ?a ?mng)))
(chunk_name-chunk_ids JJP|NP|VGNF $? ?mid $?)
(manual_word_info (head_id ?id) (word $?mng1 ?w)(vibakthi ?v $?vib))
(test (neq ?w ?mng))
(id-word ?aid ~is)
=>
	(retract ?f ?f0 ?f1)
        (assert (left_over_ids $?p $?p1))
	(if (or (eq ?v 0) (member$ ?w (create$ ?v $?vib)) (eq ?v gA)) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?mng $?mng1 ?w))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid ?mng $?mng1 ?w ?v $?vib))
        )
	
)
;---------------------------------------------------------------------------------
;The great eruption of krakatau must have taken place around 416 ad, as reported in ancient javanese scriptures. 
;krakatau kA badA uxaBexana 416 krIswa paScAwa lagaBaga, huA hogA jEsA ki prAcIna joYvanIja XarmagranWoM meM [praswuwa kiyA].
;krakatU kA viSAla visPot lagaBaga 416 IsvI meM huA , jEsA ki prAcIna jAvanIja SAswroM meM [xarja hE ]
(defrule group_prev_wrd_if_hE_align
(declare (salience 200))
?f0<-(left_over_ids $?p ?mid $?p0)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1&:(= (+ ?mid 1) ?mid1)  hE)
(manual_word_info (head_id ?mid) (word ?mng)(vibakthi 0))
(root-verbchunk-tam-chunkids ? ?v&~are&~is ? $? ?aid $?) ;Ex: hogA,hEM -- ho
(id-word ?aid ~be)
=>
	(retract ?f0 ?f1 )
        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1 ?mng hE))
        (assert (left_over_ids $?p $?p0))
)
;---------------------------------------------------------------------------------
;The resultant vector R is directed from the common origin O along the diagonal (OS) of the parallelogram [Fig. 4SYMBOL-DOT6 (b)].
;pariNAmI saxiSa @R kI [xiSA] samAnwara cawurBuja ke mUla biMxu @O se katAna biMxu @S kI ora KIzce gae vikarNa @OS ke anuxiSa [hogI] [ciwra 4.6 (@b)]; 
;pariNAmI saxiSa oYra sArvajanika mUla biMxu se [paWa xiKAyA huA hE] samAnAnwara cawurBuja kA karNareKA (o esa) barAbara ova P21 ciwra 4.6 b.
;(defrule group_verb_if-noun_aligned1
;(declare (salience 20))
;?f<-(left_over_ids $?p ?id $?p1)
;?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?a - ?mid  $?mng ?m )
;(id-cat_coarse ?aid verb)
;(chunk_name-chunk_ids JJP|NP|VGNF $? ?mid $?)
;(test (neq ?a ?m))
;(test (and (neq (integerp (member$ ?m (create$ WIM WA We WI hE hEM hue huI hI BI lie se karanA karawA meM kI ki kareM kareMge xeMge kIjie lIjie gae gaI))) TRUE)
;	(neq (sub-string (- (length ?m) 1) (length ?m) ?m) "nA")))
;(manual_word_info (head_id ?id) (word $?mng1))
;(chunk_name-chunk_ids VGF $? ?id $?)
;(not (modified_man_id ?mid ))
;(test (> ?id ?mid))
;=>
;        (retract ?f ?f0)
;        (assert (left_over_ids $?p $?p1))
;        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng ?a - ?mid $?mng ?m $?mng1))
;        (assert (modified_man_id ?mid ))
;)


;======================  Alignment with manual and std scope ==================================

;There are [quite] a few interesting places to visit in gujarat, india.
;BArawa meM gujarAwa meM GUmane ke lie [sacamuwa] kuCa rocaka sWAna hEM .
;gujarAwa, BArawa meM xeKane jAne ke lie [kAPI] kuCa rocaka sWAna hEM.
(defrule align_adj_with_chunk_info
(declare (salience 170))
?f<-(left_over_ids $?p ?id $?p1)
(chunk_name-chunk_ids JJP ?id)
(chunk_name-chunk_ids NP ?mid&:(= (+ ?id 1) ?mid) $?)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id1 ? $? - ?mid $?)
(id-HM-source-grp_ids ?id1 $? ?  ?fid $?)
(test (and (neq (numberp ?fid) FALSE)(neq ?id1 ?fid)))
?f1<-(id-Apertium_output ?aid1&:(= (- ?fid 1) ?aid1) $?am)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(manual_word_info (head_id ?id) (word ?m $?mng)(vibakthi ?vib $?v))
=>
	(retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
        (if (eq ?vib 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?m $?mng))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?m $?mng ?vib $?v))
	)	
		
)
;---------------------------------------------------------------------------------

;The little flats in such houses always have bells that ring like that.
;isa waraha ke [Cote-Cote] PlEtoM kI GaNtiyAz hameSA isI waraha kI AvAja karawI hEM .
;There was a continual coming and going through the two gates and in the two courtyards of the house.
;Gara ke [xonoM] xaravAjoM se Ora usake [xonoM] xAlAnoM meM lagAwAra AvAjAhI rahawI WI
(defrule align_with_manual_scope_next_wrd
(declare (salience 160))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?mid) (group_ids $? =(+ ?id 1) $?))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ? $? - ?mid $?)
(or (and (chunk_name-chunk_ids ? $?grp)(test (and (integerp (member$ ?mid $?grp)) (integerp (member$ ?id $?grp)))))
    (and (chunk_name-chunk_ids ??ch&~VGF $? ?id)(chunk_name-chunk_ids ? $? ?mid $?)))
?f1<-(id-Apertium_output ?aid1&:(= (- ?aid 1) ?aid1) $?am)
(id-cat_coarse ?aid1 ?c1&~preposition&~verb)
(id-cat_coarse ?aid ?c&~preposition&~verb)
(id-word ?aid1 ?w&~the&~a)
(manual_word_info (head_id ?id) (word ?m $?mng)(vibakthi ?v $?vib))
(test (neq (integerp (member$ ?m (create$ wo hama lIjie yahAz))) TRUE)) 
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(not (checked_id ?id))
(not (removed_man_id_with-anu_id ?id ?aid1))
=>
        (retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
	(if (eq (length $?am) 0) then
		(if (eq ?v 0) then
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id ?m $?mng))
		else
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id ?m $?mng ?v $?vib))
		)
	else
		(if (eq ?v 0) then
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?m $?mng))
		else
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?m $?mng ?v $?vib))
		)
	)
        (assert (checked_id ?id))
)

;---------------------------------------------------------------------------------
;To check previous word
;The atmosphere soured at the 36th [International] [Film] [Festival] that began at Panaji on Thursday , when the security guards on duty there misbehaved with the Bollywood actress Bipasha [Basu] .
;bqhaspawivAra ko paNajZI meM SurU hue 36veM [aMwarrARtrIya] [Pilma] [mahowsava] ke raMga meM BaMga usa samaya padZA jaba vahAM para wEnAwa surakRAkarmiyoM ne boYlIvuda kI aBinewrI bipASA [basu ke sAWa] xuvyarvahAra kiyA .
;There are [several other dharamashalas] found easily in the same fashion.
;isI prakAra [anya kaI [XarmaSAlAez]] AsAnI se mila jAwI hEM .
;usa samAna warIke se AsAnI se pAe hue [kaI anya dharamashalas] hEM.
(defrule align_with_manual_scope_prev_wrd
(declare (salience 150))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?mid) (group_ids $? =(- ?id 1) $?))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ? $? - ?mid $?)
(or (and (chunk_name-chunk_ids ? $?grp)(test (and (integerp (member$ ?mid $?grp)) (integerp (member$ ?id $?grp)))))
    (and (chunk_name-chunk_ids ?ch&~VGF&~VGNF ?id $?)(chunk_name-chunk_ids ? $? ?mid $?)))
?f1<-(id-Apertium_output ?aid1&:(= (+ ?aid 1) ?aid1) $?am)
(id-cat_coarse ?aid1 ?c&~verb&~preposition&~wh-determiner&~conjunction&~pronoun)
(id-cat_coarse ?aid ?c1&~verb&~preposition&~wh-determiner&~determiner&~conjunction)
(id-word ?aid1 ?w&~the&~a&~to&~there&~and)
(id-word ?aid ?w1&~that)
(manual_word_info (head_id ?id) (word $?mng ?m)(vibakthi ?v $?vib))
(test (neq (integerp (member$ ?m (create$ wo hama lIjie apanI una))) TRUE)) 
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(not (checked_id ?id))
(not (removed_man_id_with-anu_id ?aid1 ?id))
=>
        (retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
        (if (eq (length $?am) 0) then
		(if (or (eq ?v 0) (member$ ?m (create$ ?v $?vib))) then
	                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id $?mng ?m))
		else
	                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id $?mng ?m ?v $?vib))
		)			
        else
		(if (or (eq ?v 0) (member$ ?m (create$ ?v $?vib))) then
	                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng ?m))
		else
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng ?m ?v $?vib))
		)
        )
        (assert (checked_id ?id))
)

;---------------------------------------------------------------------------------
;But he had to agree in the face of her strong determination.
;Anu: paranwu usako usakI xqDa xqDawA ke bAvajUxa sahamawa honA padA.
;Man: lekina , usakI xqDa [icCA ke Age] unheM JukanA padA .
(defrule align_with_std_scope_prev_wrd
(declare (salience 140))
?f<-(left_over_ids $?p ?id $?p1)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ? $? - ?mid&:(= (- ?id 1) ?mid) $?)
(pada_info (group_ids $?grp))
?f1<-(id-Apertium_output ?aid1&:(= (+ ?aid 1) ?aid1) $?am)
(id-cat_coarse ?aid1 ?c&~verb&~preposition)
(id-cat_coarse ?aid ?c1&~determiner&~preposition)
(id-word ?aid1 ?w1&~the&~a&~to&~and)
(id-word ?aid ?w2&~that)
(test (and (integerp (member$ ?aid $?grp)) (integerp (member$ ?aid1 $?grp))))
(manual_word_info (head_id ?id) (word $?mng ?w)(vibakthi ?v $?vib))
(chunk_name-chunk_ids ?ch&~VGF $? ?id $?)
(test (neq (integerp (member$ ?w (create$ wo hama una apanA apane apanI))) TRUE)) 
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(not (checked_id ?id))
(not (removed_man_id_with-anu_id ?aid1 ?id))
=>
	(retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
        (if (eq (length $?am) 0) then
                (if (or (eq ?v 0) (member$ ?w (create$ ?v $?vib))) then
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id $?mng ?w))
                else
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id $?mng ?w ?v $?vib))
                )
        else
                (if (or (eq ?v 0) (member$ ?w (create$ ?v $?vib))) then
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng ?w))
                else
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id $?mng ?w ?v $?vib))
                )
        )
)
;---------------------------------------------------------------------------------
;To thwart the Maoists' designs the state government must hold the [Panchayati] elections as soon as possible in the state.
;mAovAxiyoM ke isa kaxama ko nAkAma karane ke lie rAjya sarakAra ko cAhie ki vaha rAjya meM jalxa se jalxa [paFcAyawa] cunAva karAe .
(defrule align_with_std_scope_next_wrd
(declare (salience 130))
?f<-(left_over_ids $?p ?id $?p1)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ? $? - ?mid&:(= (+ ?id 1) ?mid) $?)
(pada_info (group_ids $?grp))
?f1<-(id-Apertium_output ?aid1&:(= (- ?aid 1) ?aid1) $?am)
(test (and (integerp (member$ ?aid $?grp)) (integerp (member$ ?aid1 $?grp))))
(id-cat_coarse ?aid1 ?c&~verb&~preposition)
(id-word ?aid1 ?w&~the&~a&~an&~to)
(manual_word_info (head_id ?id) (word ?mng $?rem)(vibakthi ?v $?vib))
(test (eq (integerp (member$ ?mng (create$ para bAxa yahAz isakI jisakA))) FALSE));para xeSa meM afgrejoM ne isa Anxolana ko kucala xiyA .
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
(not (checked_id ?id))
=>
        (retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
        (if (eq (length $?am) 0) then
                (if (eq ?v 0) then
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id ?mng $?rem))
                else
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id ?mng $?rem ?v $?vib))
                )
        else
                (if (eq ?v 0) then
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?mng $?rem))
                else
                        (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?mng $?rem ?v $?vib))
                )
        )
)
;================================== hnd pronoun rules ==============================
;Something new seemed to be taking place [within him], and with it he felt a sort of thirst for company
;lagawA WA [usake anxara] koI naI bAwa pExA ho rahI hE, Ora usake sAWa hI usameM kisI ke sAWa hone kI pyAsa-sI jAga rahI hE
(defrule align_hnd_pronoun_with_vib
(declare (salience 193))
?f<-(left_over_ids $?p ?id $?p1)
(manual_id-word ?id ?m&usakI|usake|unakI|unake|isakI|isake)
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ? - ?mid&:(= (+ ?id 1) ?mid) ?v)
(id-cat_coarse ?aid preposition)
(pada_info (group_head_id ?hid)(preposition ?aid))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?hid $?))
(id-Apertium_output ?hid $?am)
=>
  	(retract ?f ?f0)
	(assert (left_over_ids $?p $?p1))
	(if (eq (length $?am) 0) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?hid - - ?id ?m ?v))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?hid $?am - ?id ?m ?v))
        )
)
;---------------------------------------------------------------------------------
(defrule align_hnd_pronoun
(declare (salience 192))
?f<-(left_over_ids $?p ?id $?p1)
(manual_id-word ?id ?m&isa|isI|usa|use|usakA|usakI|usake|unakA|unakI|unake|isakA|isakI|apanA|apanI|apane|ina|EsI|Ese|EsA|yaha)
(chunk_name-chunk_ids ? $? ?id $? ?id1 $?)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ? $? - ?id1 $?)
?f1<-(id-Apertium_output ?aid1&:(= (- ?aid 1) ?aid1) $?am) 
(id-cat_coarse ?aid1 determiner|pronoun)
=>
	(retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
	(if (eq (length $?am) 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id ?m))
	else	
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?m))
	)
	(assert (pronoun_align ?aid1 ?id))
)
;---------------------------------------------------------------------------------
;He was crushed by poverty, but the anxieties of his position had of late ceased to weigh upon him.
;vaha garIbI ke xvArA kucalA gayA WA, paranwu [usakI] sWiwi kI uwsukawA ne usake Upara wolanA piCale xinoM rokA WA.
;garIbI ne use bilakula kucala kara raKa xiyA WA. wo BI iXara kuCa samaya se use [apanI] hAlawa para koI ciMwA nahIM raha gaI WI.
(defrule align_hnd_pronoun1
(declare (salience 192))
?f<-(left_over_ids $?p ?id $?p1)
(manual_id-word ?id ?m&isa|isI|usa|use|usakA|usakI|usake|unakA|unakI|unake|isakA|isakI|apanA|apanI|apane|ina|EsI|Ese|EsA|yaha)
(chunk_name-chunk_ids ? ?id)
(chunk_name-chunk_ids ? ?id1&:(= (+ ?id 1) ?id1) $?)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ? $? - ?id1 $?)
?f1<-(id-Apertium_output ?aid1&:(= (- ?aid 1) ?aid1) $?am)
(id-cat_coarse ?aid1 determiner|pronoun)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?))
=>
        (retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
        (if (eq (length $?am) 0) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id ?m))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?m))
        )
	(assert (pronoun_align ?aid1 ?id))
)
;---------------------------------------------------------------------------------
;Two vectors A and B are said to be equal if, and only if, they have the same magnitude and [the same direction].
;xo vektara e Ora bI bawAyA jAI ki samAna rahane vAlA hE yaxi Ora sirPa, iPZa unake samAna parimANa Ora [samAna xiSA] hEM.
;xo saxiSoM @A waWA @B ko kevala waBI barAbara kahA jA sakawA hE jaba unake parimANa barAbara hoM waWA [unakI xiSA samAna] ho. 
(defrule align_hnd_pronoun_with_std
(declare (salience 192))
?f<-(left_over_ids $?p ?id $?p1)
(manual_id-word ?id ?m&isa|isI|usa|use|usakA|usakI|usake|unakA|unakI|unake|isakA|isakI|apanA|apanI|apane|ina|EsI|Ese|EsA|yaha)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? ? - ?id1&:(= (+ ?id 1) ?id1) $?)
(pada_info (group_ids ?det $? ?aid $?))
?f1<-(id-Apertium_output ?det $?am)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?det $?))
=>
	(retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
        (if (eq (length $?am) 0) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?det - - ?id ?m))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?det $?am - ?id ?m))
        )
)
;---------------------------------------------------------------------------------
;Ajay Devgan has played the male lead against [her] in [the film].
;[isa] Pilma meM unake hIro ajaya xevagana bane hE .
(defrule modify_hnd_pronoun
(declare (salience 191))
(chunk_name-chunk_ids ? $? ?id ?id1 $?)
(manual_id-word ?id ?m&isa|isI|usa|use|usakA|usakI|usake|unakA|unakI|unake|isakA|isakI|apanA|apanI|apane|ina|EsI|Ese|EsA|yaha)
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? - ?id1 $?)
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp =(- ?aid 1) $?))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?a ? $? - ?id $?)
?f1<-(id-Apertium_output ?aid1&:(= (- ?aid 1) ?aid1) $?am)
(id-cat_coarse ?aid1 determiner)
(id-word ?aid ?a&~like)
=>
	(retract ?f0)
	(if (eq (length $?am) 0) then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 - - ?id ?m))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid1 $?am - ?id ?m))
	)
)

;========================== Alignment with phrasal ===================================
;In Hastinapur, Shree Adinath Prabhu, the first among the twenty four Tirthankaras of [Jainism], had ended his four hundred day fast by having juice of sugar cane from Shreyansh Kumar's hand.
;haswinApura meM [jEna Xarma ke] cObIsa wIrWaMkaroM meM se sabase pahale wIrWaMkara SrI AxinAWa praBu ne apane cAra sO xinoM ke vrawa ke paScAwa SreyaMRakumAra ke hAWoM se ganne kA rasa grahaNa kara apane vrawa kA samApana kiyA WA 
(defrule group_multi_word_with_phrasal
(declare (salience 81))
?f<-(left_over_ids $?p ?id ?id1 $?p1)
(manual_word_info (head_id ?id) (word $?mng  ?m))
(manual_word_info (head_id ?id1) (word $?mng1  ?m1)(vibakthi ?v $?vib))
(or (eng_id-eng_wrd-man_wrd ?aid ? $?pmng) (anu_id-anu_mng-man_mng ?aid ? $?pmng))
(test (eq (create$ $?mng  ?m $?mng1  ?m1) $?pmng))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
?f1<-(id-Apertium_output ?aid $?am)
(not (removed_man_id_with-anu_id ?id ?aid))
(id-cat_coarse ?aid ~determiner)
=>
        (retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
        (if (or (eq ?v 0) (member$ ?m1 (create$ ?v $?vib))) then
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?id1 $?mng ?m $?mng1 ?m1))
        else
                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?id $?mng ?m $?mng1 ?m1 ?v $?vib))
        )
)
;---------------------------------------------------------------------------------
;The young man, left standing alone in the [middle] of the room, listened inquisitively, thinking.
;kamare ke [maXya meM] akelA KadA honA calA jAyA, yuvaka ne, socawA huA jijFAsApUrvaka, sunA.
;nOjavAna kamare ke [bIcoMbIca] akelA raha gayA.
;(eng_id-eng_wrd-man_wrd 2 mentioned bawalAyA cukA) ; (manual_word_info (head_id 6) (word bawalAyA jA cukA hE))
(defrule align_with_phrasal
(declare (salience 80))
?f<-(left_over_ids $?p ?id $?p1)
(manual_word_info (head_id ?id) (word $?mng  ?m)(vibakthi ?v $?vib))
(or (eng_id-eng_wrd-man_wrd ?aid ? $?pmng) (anu_id-anu_mng-man_mng ?aid ? $?pmng))
(test (or (and (neq (length $?mng) 0) (neq (integerp (member$ $?mng (create$ $?pmng))) FALSE))
      (neq (integerp (member$ ?m (create$ $?pmng))) FALSE)(neq (integerp (member$ $?pmng (create$ $?mng ?m))) FALSE)(eq $?pmng (create$ $?mng ?m))))
(not (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?))
?f1<-(id-Apertium_output ?aid $?am)
(not (removed_man_id_with-anu_id ?id ?aid))
(id-cat_coarse ?aid ~determiner)
=>
	(retract ?f ?f1)
        (assert (left_over_ids $?p $?p1))
	(if (or (eq ?v 0) (member$ ?m (create$ ?v $?vib))) then	
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?id $?mng ?m))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?am - ?id $?mng ?m ?v $?vib))
	)
)
;---------------------------------------------------------------------------------
;The result [can be generalised] to any number of forces.
;isa pariNAma kA [vyApIkaraNa] baloM kI kisI BI safKyA ke lie [kiyA jA sakawA hE].
(defrule group_with_phrasal
(declare (salience 10))
?f<-(left_over_ids ?id )
(manual_word_info (head_id ?id) (word ?mng1)(vibakthi ?v $?vib) )
(man_word-root-cat ?mng1 ?r ~p)
(test (eq (integerp (member$ ?mng1 (create$ awaH wo yahAz jina))) FALSE))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid ?m $?mng)
(test (and (neq ?mng1 ?m) (neq ?a ?m)))
(id-cat_coarse ?aid verb|adjective)
(or (eng_id-eng_wrd-man_wrd ?aid ? $?pmng) (anu_id-anu_mng-man_mng ?aid ? $?pmng))
(test (neq (integerp (member$ ?mng1 (create$ $?pmng))) FALSE))
(not (removed_man_id_with-anu_id ?id ?aid))
(not (msg_printed))
=>
        (retract ?f ?f0)
	(assert (left_over_ids))
        (if (> ?mid ?id) then
	                (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid ?mng1 ?m $?mng))
        else
		(if (eq ?v 0) then
        	       (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid ?m $?mng ?mng1))
		else
        	       (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?mid ?m $?mng ?mng1 ?v $?vib))
		)
        )
)

;;---------------------------------- noun related rules---------------------------------------
;
;;The first model of atom was proposed by J. J. Thomson in 1898.
;;[san][1898 meM] je. je. toYmasana ne paramANu kA pahalA moYdala praswAviwa kiyA .
;(defrule group_prev_word_for_no
;(declare (salience 40))
;?f<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id ?no meM - ?mid ?no1 meM)
;(id-cat_coarse ?id number)
;(test (eq (string-to-field (str-cat "@" ?no)) ?no1))
;?f1<-(manual_word_info (head_id ?mid1&:(=(- ?mid 1) ?mid1)) (word san))
;?f0<-(left_over_ids $?p ?mid1 $?p0)
;=>
;	(retract ?f ?f0 ?f1)
;	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?id ?no meM - ?mid san ?no1 meM))
;	(assert (left_over_ids $?p $?p0))
;)
;;---------------------------------------------------------------------------------

;A descendant of the Emperor Ashoka also got many Jain temples made during his regime.
;usa samrAt aSoka kI eka sanwAna BI prApwa kiyA bahuwa jEna manxiroM ne usake [xOra ke xOrAna] banAyA.
;samrAta aSoka ke eka vaMSaja ne BI apane [SAsana kAla ke xOrAna] kaI jEna manxira banavAe .
(defrule grp_with_vib
(declare (salience 40))
?f<-(left_over_ids ?id)
(or (chunk_name-chunk_ids NP $? ?id1 ?id $?) (and (chunk_name-chunk_ids NP ?id $?)(chunk_name-chunk_ids NP $? ?id1&:(= (- ?id 1) ?id1))))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a ?v $?vib - ?id1 ?m)
(or (manual_word_info (head_id ?id) (word ?m1) (vibakthi ?v $?vib) )(manual_word_info (head_id ?id) (word ?m1) (vibakthi ?v $?vib1) ))
(not (msg_printed))
=>
       (retract ?f ?f1)
       (assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a ?v $?vib - ?id1 ?m ?m1 ?v $?vib))
       (assert (left_over_ids))
)

;============================== get leftover_anu_ids ==========================
(defrule rm_aligned_anu_ids
(declare (salience 11))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?id $?)
?f<-(hindi_id_order $?pre ?id $?po)
=>
        (retract ?f)
        (assert (hindi_id_order $?pre $?po))
)
;---------------------------------------------------------------------------------
(defrule get_left_over_ids
(declare (salience 10))
?f<-(hindi_id_order $?pre ?id $?po)
(not (id-Apertium_output ?id $?))
=>
        (retract ?f)
	(assert (hindi_id_order $?pre $?po))
)
;---------------------------------------------------------------------------------
;[The imagination] of eating food sitting on decorated tables there was thrilling in itself. 
;vahAz sajI mejoM para bETakara KAne kI [kalpanA] hI apane Apa meM behaxa romAFciwa kara xene vAlI WI .
(defrule rm_det_id
(declare (salience 9))
(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $? ? - ?mid $?)
(pada_info (group_head_id ?aid) (group_ids ?det ?aid))
(id-word ?det the)
(manual_word_info (group_ids ?mid))
?f<-(hindi_id_order $?pre ?det $?po)
=>
	(retract ?f)
        (assert (hindi_id_order $?pre $?po))
)

;==================================  Align single_anu_id with single_man_id ========================
(defrule align_single_id
(declare (salience 7))
?f<-(left_over_ids ?id)
?f1<-(hindi_id_order ?aid)
(id-Apertium_output ?aid $?amng)
(id-cat_coarse ?aid ~determiner)
(manual_word_info (head_id ?id) (word $?mng ?w)(vibakthi ?v $?vib))
(man_word-root-cat ?w ? ~p) 
(test (eq (integerp (member$ ?w (create$ awaH wo yaha vaha jise jisakA))) FALSE))
(not (msg_printed))
(not (removed_man_id_with-anu_id ?id ?aid))
=>
	(retract ?f ?f1)
	(assert (left_over_ids))
	(if (or (eq ?v 0)(member$ ?w (create$ ?v $?vib))) then
		(if (eq (length $?amng) 0) then
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid - - ?id @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
		else
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?id @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
		)
			
	else
		(if (eq (length $?amng) 0) then
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid - - ?id @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w ?v $?vib @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
		else
			(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?amng - ?id @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w ?v $?vib @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
		)
	)
	(printout t "single alignment" crlf)
)

;==================== Align single man_id when no anu_id left  ========================

;Automobiles and planes carry people from one place to the [other].
;motaragAdI Ora vAyuyAna yAwriyoM ko eka sWAna se [xUsare sWAna ko] le jAwe hEM .
;The connection between physics, technology and society can be seen in many examples.
;BOwikI, prOxyogikI waWA samAja ke bIca [pArasparika sambanXoM ko] bahuwa se uxAharaNoM meM xeKA jA sakawA hE.
(defrule align_single_id_for_no_slot_left
(declare (salience 6))
?f<-(left_over_ids ?id)
?f1<-(hindi_id_order)
?f2<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?id1&:(=(- ?id 1) ?id1) $?m)
(test (neq (create$ ?a $?amng) $?m))
(test (eq (integerp (member$ ?a (create$ ki jise yahAM ))) FALSE))
(manual_word_info (head_id ?id) (word $?mng ?w)(vibakthi ?v1 $?vib))
(test (neq (integerp (member$ ?w (create$ inhIM evaM wo ki waWA yaha yahAz vaha usake usakA isa isakI koI kisI eka))) TRUE))
(not (msg_printed))
(id-cat_coarse ?aid ?cat&~verb&~determiner&~pronoun)
=>
	(retract ?f ?f1 ?f2)
	(if (or (eq ?v1 0) (member$ ?w (create$ ?v1 $?vib)))  then
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?id1 ?m @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
	else
		(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?amng - ?id1 ?m @SYMBOL-@GREATERTHAN@SYMBOL-@GREATERTHAN $?mng ?w ?v1 $?vib @SYMBOL-@LESSTHAN@SYMBOL-@LESSTHAN))
	)
	(assert (left_over_ids ))
)	

;================== to print left over info in html ====================
(defrule save_left_over_facts
(declare (salience 5))
(left_over_ids $?d)
(not (msg_printed))
=>
	(save-facts "left_over_ids1.dat" local left_over_ids)
)

(defrule print_info
(declare (salience 4))
(left_over_ids ?id $?)
(not (msg_printed))
=>
       (printout ?*lf-f* "Un-assigned Hindi words:  " )
       (assert (msg_printed))
       (printout t "hnd_msg_printed")
)
;---------------------------------------------------------------------------------

(defrule print_single_left_over_wrd
(declare (salience 3))
?f0<-(left_over_ids ?id)
(manual_word_info (head_id ?id) (word $?mng)(vibakthi ?v $?vib) )
(chunk_name-chunk_ids ?c $? ?id $?)
=>
	(retract ?f0)
	(if (or (eq ?v 0) (eq ?c VGF) (eq ?c VGNF)(eq ?c VGNN)) then
		(printout ?*lf-f* (wx_utf8 (implode$ (create$ $?mng))) crlf)
	else
		(printout ?*lf-f* (wx_utf8 (implode$ (create$ $?mng ?v $?vib))) crlf)
	)
)
;---------------------------------------------------------------------------------

(defrule print_left_over_wrd
(declare (salience 2))
?f0<-(left_over_ids ?id $?p ?lid)
(manual_word_info (head_id ?id) (word $?mng)(vibakthi ?v $?vib))
(chunk_name-chunk_ids ?c $? ?id $?)
(not (left_over_ids ?))
=>
        (retract ?f0)
	(if (or (eq ?v 0) (eq ?c VGF) (eq ?c VGNF) (eq ?c VGNN)) then
		(printout ?*lf-f*  (str-cat (wx_utf8 (implode$ (create$ $?mng))) ", ") )
	else
		(printout ?*lf-f* (str-cat (wx_utf8 (implode$ (create$ $?mng ?v $?vib))) ", "))
	)
	(assert (left_over_ids $?p ?lid))
)

;======================= Add punctuations =================================

;Since momentum is a vector this implies three equations for the three directions {x, y, z}.
;cUzki saMvega eka saxiSa rASi hE, awaH yaha wIna xiSAoM [{@x], @y, @z} ke lie wIna samIkaraNa praxarSiwa karawA hE.
(defrule add_punct
(declare (salience -1))
?f<-(manual_id-word ?mid ?w&{|@PUNCT-OpenParen)
(manual_word_info (head_id ?h) (group_ids $? =(+ ?mid 1) $?))
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?h $?mng)
 =>
	(retract ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?h ?w $?mng))
)
;---------------------------------------------------------------------------------

(defrule add_punct1
(declare (salience -1))
?f<-(manual_id-word ?mid ?w&}|@PUNCT-ClosedParen)
?f1<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1&:(= (- ?mid 1) ?mid1) $?mng)
 =>
        (retract ?f ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid ?a $?am - ?mid1 $?mng ?w))
)

;===================== caution for hindi order ==================================

(defrule get_cautionary_fact_for_of
(declare (salience -10))
(pada_info (group_head_id ?h)(preposition ?pid) )
(id-word ?pid of)
=>
	(printout ?*catastrophe_file* "(sen_type-id-phrase hindi_order_for_of "?h"  prep)" crlf)
)

;=================== Get english lef over info ==================================

(defrule rm_det_if_no_man_left
(declare (salience -9))
(left_over_ids )
?f0<-(hindi_id_order $?pre ?id $?po)
(id-cat_coarse ?id determiner)
=>
	(retract ?f0)
	(assert (hindi_id_order $?pre $?po))
)

(defrule print_eng_info
(declare (salience -10))
(hindi_id_order ?id $?)
(not (eng_msg_printed))
=>
       (printout ?*lf-f* "Un-assigned English words:  " )
       (assert (eng_msg_printed))
       (printout t eng_msg_printed)
)

(defrule print_eng_left_over
(declare (salience -11))
?f0<-(hindi_id_order ?id )
(id-word ?id ?word)
=>
	(retract ?f0)
	(printout ?*lf-f* ?word crlf)
)

(defrule print_eng_left_over1
(declare (salience -12))
?f0<-(hindi_id_order ?id $?p ?lid)
(id-word ?id ?word)
=>
        (retract ?f0)
	(printout ?*lf-f* ?word ", " )
        (assert (hindi_id_order $?p ?lid))
)

