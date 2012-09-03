;This file is written by Maha Laxmi and Shirisha Manju

;Added by Shirisha Manju(21-08-12)
(defrule get_repeated_word
(declare (salience 100))
(id-word ?aid ?w)
(or (id-word ?aid1 ?w)(repeated_id-word ?aid1 ?w))
(test (neq ?aid ?aid1))
(test (member$ ?w (create$ the a an that there also too which and is it even of this)))
=>
        (assert (repeated_id-word ?aid ?w))
	(assert (repeated_id-word ?aid1 ?w))
)

(defrule retract_repeated_word
(declare (salience 101))
?f0<-(id-word ?aid ?w)
(repeated_id-word ?aid ?w)
=>
        (retract ?f0)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(deffunction get_slot_and_word_id (?sid ?wid ?type $?hin_order)
;	(printout t ?sid "  "?wid " initial"  crlf)
	(if (neq ?sid 0) then  (bind ?sid (- (member$ ?sid $?hin_order) 1)))
	(if (neq ?wid 0) then  (bind ?wid (- ?wid 1)))
;	(printout t ?wid "  "?sid crlf)
	(if (eq ?type sumleq) then	
		(if (eq ?sid 0) then
			(assert (fact_name-word_id-slot_id sumleq ?wid all_columns))			
		else
			(assert (fact_name-word_id-slot_id sumleq all_rows ?sid))
		)
	else
		(assert (fact_name-word_id-slot_id eq_or_sumleq ?wid ?sid))
	)
)

;=============================== Column constraints ===============================================
;yaha vahI UrjA hE jo nABikIya Sakwi janana waWA nABikIya kispotoM meM mukwa howI hE
;This is the energy which is released in a nuclear power generation and nuclear explosions.
;The reflected ray simply retraces the path. -- parAvarwiwa kiraNa kevala [apanA] paWa punaH anureKiwa karawI hE .
;Added by Maha Laxmi
(defrule potential_facts_for_article_the
(id-word ?aid the)
(manual_id-mng ?mapped_id vaha|isa|usa|vahI|isakA|uwanA|jiwanA|apanA)
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(get_slot_and_word_id ?aid ?mapped_id watched-or $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule potential_facts_for_article_the1
(id-word ?aid the)
(not (manual_id-mng ?mid vaha|isa|usa|vahI|isakA|uwanA|jiwanA|apanA))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(get_slot_and_word_id ?aid 0 sumleq $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
;This is a situation where the principle of conservation of angular momentum is applicable. 
(defrule potential_facts_for_article_a_and_an
(id-word ?aid a|an)
(or (manual_id-mng ?mapped_id eka|koI|prawi|kisI)(manual_id-mng ?mapped_id eka EsI))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(get_slot_and_word_id ?aid ?mapped_id watched-or $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule potential_facts_for_article_a_and_an1
(id-word ?aid a|an)
(not (manual_id-mng ?mid eka|koI|prawi|kisI))
(not (manual_id-mng ?mid eka EsI))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(get_slot_and_word_id ?aid 0 sumleq $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (30-07-12)
;Physicists try to discover the rules that are operating in nature, on the basis of observations, experimentation and analysis.
(defrule potential_facts_for_that
(id-word ?aid that)
(manual_id-mng ?mapped_id jo|isa|yaha|vaha|usa|ki|jinheM)
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(get_slot_and_word_id ?aid ?mapped_id watched-or $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (30-07-12)
(defrule potential_facts_for_that1
(id-word ?aid that)
(not (manual_id-mng ?mid jo|isa|yaha|vaha|usa|ki|jinheM))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(get_slot_and_word_id ?aid 0 sumleq $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (02-08-12)
(defrule potential_facts_for_there
(id-word ?aid there)
(manual_id-mng ?mapped_id vahAz|vaha)
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(get_slot_and_word_id ?aid ?mapped_id watched-or $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (02-08-12)
;There are also forces involving charged and magnetic bodies. 
(defrule potential_facts_for_there1
(id-word ?aid there)
(not (manual_id-mng ?mid vaha|vahAz))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(get_slot_and_word_id ?aid 0 sumleq $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule potential_facts_for_also
(id-word ?aid also)
(manual_id-mng ?mapped_id BI|Ora)
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(get_slot_and_word_id ?aid ?mapped_id watched-or $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi 
(defrule potential_facts_for_also1
(id-word ?aid also)
(not (manual_id-mng ?mid BI|Ora))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(get_slot_and_word_id ?aid 0 sumleq $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi 
(defrule potential_facts_for_too
(id-word ?aid too)
(manual_id-mng ?mapped_id BI)
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(get_slot_and_word_id ?aid ?mapped_id watched-or $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi 
(defrule potential_facts_for_too1
(id-word ?aid too)
(not (manual_id-mng ?mid BI))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(get_slot_and_word_id ?aid 0 sumleq $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (16-08-12)
(defrule potential_facts_for_which
(id-word ?aid which)
(manual_id-mng ?mapped_id kina|jo|jise|jinako|jisake|jinase|jisameM)
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(get_slot_and_word_id ?aid ?mapped_id watched-or $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (16-08-12)
(defrule potential_facts_for_which1
(id-word ?aid which)
(not (manual_id-mng ?mid kina|jo|jise|jinako|jinake|jisake|jinase|jisameM))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(get_slot_and_word_id ?aid 0 sumleq $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;;Added by Shirisha Manju (16-08-12)
;The angular acceleration is directly proportional to the applied torque and is inversely proportional to the moment of inertia of the body.
(defrule potential_facts_for_is
(id-word ?aid is)
(root-verbchunk-tam-chunkids ? is ? ?aid)
(manual_id-mng ?mapped_id $?w)
(test (or (eq $?w (create$ howA hE))(eq $?w (create$ hE))(eq $?w (create$ howI hE)) (eq $?w (create$ ho))(eq $?w (create$ howA hEM))))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
        (get_slot_and_word_id ?aid ?mapped_id watched-or $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;In vacuum, of course, the speed of light is independent of wavelength. 
;vAswava meM nirvAwa meM prakASa kI cAla warafgaxErGya para nirBara nahIM karawI 
;Added by Shirisha Manju (16-08-12)
(defrule potential_facts_for_is1
(id-word ?aid is)
(root-verbchunk-tam-chunkids ? is ? ?aid)
(not (manual_id-mng ?mid howA hE))
(not (manual_id-mng ?mid hE))
(not (manual_id-mng ?mid howI hE))
(not (manual_id-mng ?mid ho))
(not (manual_id-mng ?mid hEM))
(not (anu_id-anu_mng-sep-man_id-man_mng ?aid $?))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
        (get_slot_and_word_id ?aid 0 sumleq $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (16-08-12)
(defrule potential_facts_for_and
(id-word ?aid and)
(manual_id-mng ?mapped_id Ora|evaM|waWA)
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
        (get_slot_and_word_id ?aid ?mapped_id watched-or $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (16-08-12)
(defrule potential_facts_for_and1
(id-word ?aid and)
(not (manual_id-mng ?mid Ora|evaM|waWA))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
        (get_slot_and_word_id ?aid 0 sumleq $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (22-08-12)
(defrule potential_facts_for_it
(id-word ?aid it)
(manual_id-mng ?mapped_id yaha|vaha|isakA|usakI|isake)
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
        (get_slot_and_word_id ?aid ?mapped_id watched-or $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (22-08-12)
(defrule potential_facts_for_it1
(id-word ?aid it)
(not (manual_id-mng ?mid yaha|vaha|isakA|usakI|isake))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
        (get_slot_and_word_id ?aid 0 sumleq $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
;Eng sen  :: In fact, violet gets scattered even more than blue, having a shorter wavelength.
;Man tran :: vAswava meM bEfganI varNa kI warafgaxErGya Ora BI kama hone ke kAraNa yaha nIle varNa se [BI] aXika prabalawA se prakIrNa howA hE.
;Anu tran :: asala meM, PUla eka aXika CotA warafgaxErGya pAsa ho nIlA rafga se aXika, Ora wiwara-biwara_kara.
(defrule potential_facts_for_even
(id-word ?aid even)
(manual_id-mng ?mapped_id $?w)
(test (or (eq $?w (create$ BI))(eq $?w (create$ Ora BI) (eq $?w (create$ TIka))(eq $?w (create$ SAnwa))(eq $?w (create$ sannwuliwa))(eq $?w (create$ samawala)) (eq $?w (create$ samAna))(eq $?w (create$ sama))(eq $?w (create$ eka sA)) (eq $?w (create$ cOrasa)) (eq $?w (create$ kevala)))))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
        (get_slot_and_word_id ?aid ?mapped_id watched-or $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi 
(defrule potential_facts_for_even1
(id-word ?aid even)
(not (manual_id-mng ?mid BI))
(not (manual_id-mng ?mid Ora BI))
(not (manual_id-mng ?mid TIka))
(not (manual_id-mng ?mid SAnwa))
(not (manual_id-mng ?mid sannwuliwa))
(not (manual_id-mng ?mid samawala))
(not (manual_id-mng ?mid samAna))
(not (manual_id-mng ?mid sama))
(not (manual_id-mng ?mid eka sA))
(not (manual_id-mng ?mid cOrasa))
(not (manual_id-mng ?mid kevala))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
        (get_slot_and_word_id ?aid 0 sumleq $?hin_order)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi 
(defrule potential_facts_for_of
(id-word ?aid of)
(manual_id-mng ?mid $?w)
(test (or (eq $?w (create$ kA))(eq $?w (create$ se) (eq $?w (create$ ke bAre meM))(eq $?w (create$ meM kA))(eq $?w (create$ meM se)))))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
        (get_slot_and_word_id ?aid ?mid watched-or $?hin_order)
)
;-------------------------------------------------------------------------------------
;Added by Maha Laxmi 
(defrule potential_facts_for_of1
(id-word ?aid of)
(not (manual_id-mng ?mid kA))
(not (manual_id-mng ?mid se))
(not (manual_id-mng ?mid ke bAre meM))
(not (manual_id-mng ?mid  meM kA))
(not (manual_id-mng ?mid  meM se))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
        (get_slot_and_word_id ?aid 0 sumleq $?hin_order)
)
;-------------------------------------------------------------------------------------
;Added by Maha Laxmi
;Dispersion takes place because the refractive index of medium for different wavelengths (colors) [is] different.
;parikRepaNa kA kAraNa yaha [hE] ki kisI mAXyama kA apavarwanAfka viBinna warafgaxErGyoM (varNoM) ke lie Binna-Binna howA [hE].
;parikRepaNa xarjA lewA hE kyozki alaga warafga-xUrI ke lie (rafga) mAXyama kA refractive sUcaka alaga [hE].
;(fact_name-word_id-slot_id eq_or_sumleq 3 12)
;(fact_name-word_id-slot_id eq_or_sumleq 11 12) ==> (fact_name-word_id-slot_id eq_or_sumleq 3 11 12)
(defrule combine_words_pointing_to_same_slot
?f<-(fact_name-word_id-slot_id eq_or_sumleq $?mid ?sid)
?f1<-(fact_name-word_id-slot_id eq_or_sumleq ?mid1 ?sid)
(test (eq (member$ ?mid1 $?mid) FALSE))
=>
        (retract ?f ?f1)
        (assert (fact_name-word_id-slot_id eq_or_sumleq $?mid ?mid1 ?sid))
)
;===================================== Row contraints ==================================================
;Added by Maha laxmi
(defrule potential_facts_for_Ora
(manual_id-mng ?mid Ora|evaM|waWA)
(not (id-word ?aid and))
=>
        (get_slot_and_word_id 0 ?mid sumleq -)
)
;-------------------------------------------------------------------------------------
;Added by Maha Laxmi
;koI rAsAyanika aBikriyA mUla rUpa se viBinna aNuoM meM paramANuoM kI [punarvyavasWA hI] howI hE.
(defrule hI_rule
(manual_id-mng ?mid hI|BI)
(not (id-word ? only))
=>
        (get_slot_and_word_id 0 ?mid sumleq -)
)
;-------------------------------------------------------------------------------------
;Added by Maha Laxmi
;Sen:-The size of the image relative to the size of the object is another important quantity to consider.
;Man tran :-vaswu ke sAija ke sApekRa prawibimba kA sAija BI eka mahawvapUrNa vicAraNIya rASi hE
;Anu tran :- vaswu ke AkAra ke lie sambanXiwa prawimA kA AkAra vicAra karane ke lie xUsarA mahawvapUrNa parimANa hE.
(defrule BI_rule
(manual_id-mng ?mid hI|BI)
(not (id-word ? also))
(not (id-word ? too))
(not (id-word ? even))
=>
        (get_slot_and_word_id 0 ?mid sumleq -)
)

;-------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule ki_rule
(manual_id-mng ?mid ki)
(not (id-word ? that))
=>
        (get_slot_and_word_id 0 ?mid sumleq -)
)
                                                       
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi 
;(defrule potential_facts_for_this
;(id-word ?aid this)
;(manual_id-mng ?mid yaha|isa|isese|iwanA)
;(hindi_id_order $?hin_order)
;(test (neq (member$ ?aid $?hin_order) FALSE))
;=>
;        (get_slot_and_word_id ?aid ?mid watched-or $?hin_order)
;)
;
;;Added by Maha Laxmi 
;(defrule potential_facts_for_this1
;(id-word ?aid this)
;(not (manual_id-mng ?mid yaha|isa|isese|iwanA))
;(hindi_id_order $?hin_order)
;(test (neq (member$ ?aid $?hin_order) FALSE))
;=>
;        (get_slot_and_word_id ?aid 0 sumleq $?hin_order)
;)

;------------------------------------------------------------------------------------------------------------
