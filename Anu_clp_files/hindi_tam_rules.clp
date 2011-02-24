(defglobal ?*Hin_tam_fp* = Hin_tam)

(deffacts dummy_facts 
 (missing-level-id) 
 (id-original_word)
 (verb_type-verb-causative_verb-tam)
 (verb_type-verb-kriyA_mUla-tam)
 (root-verbchunk-tam-chunkids)
)

(deftemplate tam_tmp_info (slot head_id (default 0))(slot eng_tam (default 0))(slot hin_tam (default 0))(slot subject_vibhakti (default 0))(slot preceding_part_of_the_verb (default 0)))

;-------------------------------------------------------------------------------------------------------------------------
(defrule end
(declare (salience -10))
=>
(close ?*Hin_tam_fp*)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam1
(root-verbchunk-tam-chunkids  ?root  ?orig-tam   NEG_PRES  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam NEG_PRES) (hin_tam  nahIM)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam2
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  TO_INF  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam TO_INF) (hin_tam  nA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;I suggested that  he go
(defrule sub
(root-verbchunk-tam-chunkids  ?root  ?chunk subj $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam subj) (hin_tam  subj) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;Do it the way you have always done it .
(defrule imp
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  imper  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam imper) (hin_tam  imper)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;Please pick up the sticks .
(defrule imp_0
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  imper_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam imper_0) (hin_tam  imper)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;Do not waste electricity
(defrule IMP_not
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  imper_not_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam imper_not_0) (hin_tam  imper) (preceding_part_of_the_verb  mawa))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam3
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam 0) (hin_tam  wA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam4
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  s  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam s) (hin_tam  wA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam5
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  ed  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam ed) (hin_tam  yA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam6
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam en) (hin_tam  yA_huA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam7
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  ed_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam ed_en) (hin_tam  yA_[huA])  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam9
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  Let_her_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam Let_her_0) (hin_tam  nA_usako_xo)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam10
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  Let_him_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam Let_him_0) (hin_tam  nA_usako_xo)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam11
(root-verbchunk-tam-chunkids  ?root  ?orig-tam Let_me_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam Let_me_0) (hin_tam  wA_hUz_mEM_lAie)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam12
(root-verbchunk-tam-chunkids  ?root  ?orig-tam   Let_them_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam Let_them_0) (hin_tam  nA_unako_xo)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam13
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  Let_us_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam Let_us_0) (preceding_part_of_the_verb  subj) (hin_tam  caliye_hama) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam14
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  0_not $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam 0_not) (preceding_part_of_the_verb  nahIM)(hin_tam 0) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam15
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  against_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam against_ing) (hin_tam ne_ke_viruxXa)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam16
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  am_being_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam am_being_en) (subject_vibhakti ko) (hin_tam yA_jA_rahA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam17
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  am_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam am_en) (hin_tam yA_gayA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam18
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  am_not_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam am_not_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam19
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  am_en_born $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam am_en_born) (hin_tam yA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam20
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  am_going_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam am_going_to_0) (hin_tam ne_vAlA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam21
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  am_not_going_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam am_not_going_to_0) (preceding_part_of_the_verb  nahIM) (hin_tam ne_vAlA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam22
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  am_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam am_ing) (hin_tam 0_rahA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam23
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  am_not_being_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam am_not_being_en) (subject_vibhakti ko) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jA_rahA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam24
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  am_not_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam am_not_ing) (preceding_part_of_the_verb  nahIM) (hin_tam 0_rahA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam25
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  am_not_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam am_not_to_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jAnA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam26
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  am_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam am_to_0) (hin_tam ne_vAlA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam27
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  am_not_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam am_not_to_0) (preceding_part_of_the_verb  nahIM) (hin_tam ne_vAlA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam28
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  am_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam am_to_be_en) (hin_tam yA_jAnA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam29
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  are_being_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam are_being_en) (hin_tam yA_jA_rahA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;Abandoned children are kept in orphanages .Such flowers are found mainly in Europe .
(defrule tam30
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  are_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam are_en) (hin_tam yA_gayA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam31
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  are_en_born $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam are_en_born) (hin_tam yA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam32
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  are_going_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam are_going_to_0) (hin_tam ne_vAlA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam33
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  are_not_going_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam are_not_going_to_0) (preceding_part_of_the_verb  nahIM) (hin_tam ne_vAlA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;The place where you are staying is very congested . 
(defrule tam34
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  are_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam are_ing) (hin_tam 0_rahA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam35
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  are_not_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam are_not_ing) (preceding_part_of_the_verb  nahIM) (hin_tam 0_rahA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam36
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  are_not_being_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam are_not_being_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jA_rahA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam37
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  are_not_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam are_not_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam38
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  are_not_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam are_not_to_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jAnA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam39
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  are_not_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam are_not_to_0) (preceding_part_of_the_verb  nahIM) (hin_tam ne_vAlA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam40
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  are_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam are_to_0) (hin_tam ne_vAlA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;These smugglers are to be captured .
(defrule tam41
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  are_to_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam are_to_be_en) (hin_tam yA_jAnA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam42
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  before_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam before_ing) (hin_tam ne_ke_pahale)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam43
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  being_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam being_en) (hin_tam yA_jA_rahA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam44
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  between_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam between_ing) (hin_tam ne_ke_bIca)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam45
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  beyond_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam beyond_ing) (hin_tam ne_ke_pare)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam46
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  by_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam by_ing) (hin_tam 0_kara)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;Teasing can be very cruel .
(defrule tam47
(root-verbchunk-tam-chunkids  ?root  ?orig-tam can_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam can_0) (hin_tam 0_sakawA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;Certain phenomena can be approached better by certain techniques .
(defrule tam48
(root-verbchunk-tam-chunkids  ?root  ?orig-tam can_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam can_be_en) (hin_tam yA_jA_sakawA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;I can not afford to buy a house .
(defrule tam49
(root-verbchunk-tam-chunkids  ?root  ?orig-tam can_not_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam can_not_0) (preceding_part_of_the_verb  nahIM) (hin_tam 0_sakawA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam50
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  can_not_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam can_not_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jA_sakawA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam51
(root-verbchunk-tam-chunkids  ?root  ?orig-tam cannot_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam cannot_0) (preceding_part_of_the_verb  nahIM) (hin_tam 0_sakawA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam52
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  cannot_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam cannot_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jA_sakawA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;He could hear a faint sound from the bushes .
(defrule tam53
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  could_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam could_0) (hin_tam 0_sakA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam54
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  could_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam could_be_en) (hin_tam yA_jA_sakawA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;I have been invited to head the department .
(defrule tam56
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  have_been_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam could_have_been_en) (hin_tam yA_jA_sakawA_WA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;I have been grading these stupid exams all day .
(defrule tam57
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  have_been_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam could_have_been_ing) (preceding_part_of_the_verb  ho_sakawA_hE) (hin_tam wA_ho) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam58
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  could_have_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam could_have_en) (hin_tam 0_sakawA_WA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam59
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  can_have_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam can_have_en) (hin_tam yA_hogA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam60
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  can_never_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam can_never_0) (preceding_part_of_the_verb  kaBI_nahIM) (hin_tam 0_sakawA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam61
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  can_never_have_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam can_never_have_en) (preceding_part_of_the_verb  kaBI_nahIM) (hin_tam 0_sakawA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam62
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  can_not_help_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam can_not_help_ing) (subject_vibhakti ko) (preceding_part_of_the_verb  yA_binA+nahIM) (hin_tam raha_sakawA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam63
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  cannot_have_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam cannot_have_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_hogA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam64
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  can_not_have_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam can_not_have_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_hogA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;It was so dark that I could not see anything .
(defrule tam65
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  could_not_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam could_not_0) (preceding_part_of_the_verb  nahIM) (hin_tam 0_sakA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam66
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  could_not_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam could_not_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jA_sakA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam67
(root-verbchunk-tam-chunkids  ?root  ?orig-tam could_not_have_been_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam could_not_have_been_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jA_sakawA_WA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam68
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  could_not_have_been_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam could_not_have_been_ing) (preceding_part_of_the_verb  ho_sakawA_hE_nahIM) (hin_tam wA_ho) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam69
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  could_not_have_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam could_not_have_en) (preceding_part_of_the_verb  nahIM) (hin_tam 0_sakawA_WA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam70
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  could_not_help_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam could_not_help_ing) (subject_vibhakti ko) (preceding_part_of_the_verb  yA_binA+nahIM) (hin_tam raha_sakA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam71
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  dare_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam dare_0)(hin_tam nA_kI_himmawa_hE)(subject_vibhakti meM) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam72
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  did_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam did_0) (hin_tam yA_WA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam73
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  did_dare_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam did_dare_0)(hin_tam nA_kI_himmawa_WI)(subject_vibhakti meM) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam74
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  did_have_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam did_have_to_0) (subject_vibhakti ko) (hin_tam nA_padA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam75
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  did_have_to_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam did_have_to_be_en) (hin_tam nA_padawA_WA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;She said she did not approve of my behavior .
(defrule tam76
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  did_not_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam did_not_0) (preceding_part_of_the_verb  nahIM) (hin_tam yA_WA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam77
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  did_not_dare_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam did_not_dare_0)(preceding_part_of_the_verb   nA_kI_himmawa+nahIM) (hin_tam WI)(subject_vibhakti meM))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam78
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  did_not_have_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam did_not_have_to_0) (subject_vibhakti ko) (preceding_part_of_the_verb  nA) (hin_tam nahIM_padA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam79
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  did_not_have_to_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam did_not_have_to_be_en) (preceding_part_of_the_verb  nA) (hin_tam nahIM_padawA_WA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam80
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  did_not_like_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam did_not_like_to_0) (hin_tam nA_pasanxa_nahIM_karawA_WA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam81
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  did_not_use_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam did_not_use_to_0) (preceding_part_of_the_verb  nahIM) (hin_tam yA_karawA_WA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam82
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  do_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam do_0) (hin_tam wA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam83
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  do_have_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam do_have_to_0)(hin_tam nA_padegA)(subject_vibhakti ko) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam84
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  do_have_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam do_have_to_be_en)(hin_tam nA_padegA`)(subject_vibhakti ko) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;I/We/They/You do not try very hard.
(defrule tam85
(root-verbchunk-tam-chunkids  ?root  ?orig-tam do_not_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam do_not_0) (preceding_part_of_the_verb  nahIM) (hin_tam wA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam86
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  do_not_dare_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam do_not_dare_0)(hin_tam nA_kI_himmahE)(subject_vibhakti meM) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam87
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  do_not_have_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam do_not_have_to_0) (subject_vibhakti ko) (preceding_part_of_the_verb  nahIM) (hin_tam nA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam88
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  do_not_have_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam do_not_have_to_be_en) (hin_tam ne_kI_jZarUrawa_nahIM_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam89
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  do_not_like_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam do_not_like_to_0) (hin_tam nA_pasanxa_nahIM_karawA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;Abrams does like programming .
(defrule tam90
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  does_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam does_0) (hin_tam wA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam91
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  does_dare_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam does_dare_0)(preceding_part_of_the_verb   nA_kI_himmawa+nahIM) (hin_tam hE)(subject_vibhakti meM))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam92
(root-verbchunk-tam-chunkids  ?root  ?orig-tam   does_not_dare_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam does_not_dare_0)(preceding_part_of_the_verb   nA_kI_himmawa+nahIM) (hin_tam WI)(subject_vibhakti meM))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam93
(root-verbchunk-tam-chunkids  ?root  ?orig-tam does_have_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam does_have_to_0) (subject_vibhakti ko) (hin_tam nA_padegA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam94
(root-verbchunk-tam-chunkids  ?root  ?orig-tam   does_have_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam does_have_to_be_en)(hin_tam nA_padegA)(subject_vibhakti ko) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;It does not matter what Ted does .
(defrule tam95
(root-verbchunk-tam-chunkids  ?root  ?orig-tam does_not_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam does_not_0) (preceding_part_of_the_verb  nahIM) (hin_tam wA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam96
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  does_not_have_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam does_not_have_to_0) (subject_vibhakti ko) (preceding_part_of_the_verb  nahIM) (hin_tam nA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam97
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  does_not_have_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam does_not_have_to_be_en) (hin_tam ne_kI_jZarUrawa_nahIM_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam98
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  does_not_like_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam does_not_like_to_0) (hin_tam nA_pasanxa_nahIM_karawA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam100
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  from_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam from_ing) (hin_tam ne_se)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam101
(root-verbchunk-tam-chunkids  ?root  ?orig-tam get_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam get_en) (hin_tam 0_ho_jAwA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam102
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  gets_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam gets_en) (hin_tam 0_ho_jAwA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam103
(root-verbchunk-tam-chunkids  ?root  ?orig-tam got_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam got_en) (hin_tam yA_gayA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;As had been expected , the party was a big success .
(defrule tam104
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  had_been_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam had_been_en) (hin_tam yA_gayA_WA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam105
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  had_been_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam had_been_ing) (hin_tam wA_rahA_WA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam106
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  had_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam had_en) (hin_tam 0_cukA_WA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam107
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  had_got_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam had_got_to_be_en) (hin_tam 0_xenA_padA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam108
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  had_just_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam had_just_en) (hin_tam yA_hI_WA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam109
(root-verbchunk-tam-chunkids  ?root  ?orig-tam had_not_been_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam had_not_been_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_gayA_WA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam110
(root-verbchunk-tam-chunkids  ?root  ?orig-tam had_not_been_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam had_not_been_ing) (preceding_part_of_the_verb  nahIM) (hin_tam 0_rahA_WA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam111
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  had_not_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam had_not_en) (preceding_part_of_the_verb  nahIM) (hin_tam 0_cukA_WA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam112
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  had_not_got_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam had_not_got_to_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam 0_xenA_padA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam113
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  had_not_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam had_not_to_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam nA1_padegA_WA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;A fat ugly boy had to eat fruits .
(defrule tam114
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  had_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam had_to_0) (subject_vibhakti ko) (hin_tam nA_padA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam115
(root-verbchunk-tam-chunkids  ?root  ?orig-tam had_to_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam had_to_be_en) (hin_tam nA_hI_WA)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam116
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  has_been_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam has_been_en) (hin_tam yA_gayA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam117
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  has_been_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam has_been_ing) (hin_tam wA_rahA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam118
(root-verbchunk-tam-chunkids  ?root  ?orig-tam has_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam has_en) (hin_tam 0_cukA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam119
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  has_got_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam has_got_to_be_en) (hin_tam yA_hI_jAnA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam120
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  has_not_been_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam has_not_been_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_gayA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam121
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  has_not_been_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam has_not_been_ing) (preceding_part_of_the_verb  nahIM) (hin_tam wA_rahA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam122
(root-verbchunk-tam-chunkids  ?root  ?orig-tam has_not_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam has_not_en) (preceding_part_of_the_verb  nahIM) (hin_tam 0_cukA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam123
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  has_never_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam has_never_en) (preceding_part_of_the_verb  nahIM) (hin_tam 0_cukA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam124
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  has_never_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam has_never_en) (preceding_part_of_the_verb  kaBI_nahIM) (hin_tam 0_cukA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam125
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  has_not_got_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam has_not_got_to_be_en) (preceding_part_of_the_verb  hI_nahIM) (hin_tam yA_jAnA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam126
(root-verbchunk-tam-chunkids  ?root  ?orig-tam has_not_to_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam has_not_to_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam nA1_padegA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam127
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  has_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam has_to_0) (subject_vibhakti ko) (hin_tam nA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam128
(root-verbchunk-tam-chunkids  ?root  ?orig-tam has_to_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam has_to_be_en) (hin_tam nA_hI_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam129
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  have_been_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam have_been_en) (hin_tam yA_gayA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam130
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  have_been_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam have_been_ing) (hin_tam wA_rahA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam131
(root-verbchunk-tam-chunkids  ?root  ?orig-tam have_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam have_en) (hin_tam 0_cukA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam132
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  have_got_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam have_got_to_be_en) (hin_tam yA_hI_jAnA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam133
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  have_not_been_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam have_not_been_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_gayA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam134
(root-verbchunk-tam-chunkids  ?root  ?orig-tam have_not_been_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam have_not_been_ing) (preceding_part_of_the_verb  nahIM) (hin_tam wA_rahA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam135
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  have_not_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam have_not_en) (preceding_part_of_the_verb  nahIM) (hin_tam 0_cukA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam136
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  have_never_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam have_never_en) (preceding_part_of_the_verb  nahIM) (hin_tam 0_cukA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam137
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  have_not_got_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam have_not_got_to_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jAnA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam138
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  have_not_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam have_not_to_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam nA1_padegA) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam139
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  have_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam have_to_0) (subject_vibhakti ko) (hin_tam nA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam140
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  have_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam have_to_be_en) (hin_tam nA_hI_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam141
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  having_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam having_en) (hin_tam 0_cukane_ke_bAxa)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam142
(root-verbchunk-tam-chunkids  ?root  ?orig-tam in_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam in_ing) (hin_tam ne_meM)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam143
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  into_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam into_ing) (hin_tam ne_para)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam144
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  is_being_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam is_being_en) (hin_tam yA_jA_rahA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam145
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  is_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam is_en) (hin_tam yA_huA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam146
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  gets_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam gets_en) (hin_tam yA_jAwA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam147
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  get_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam get_en) (hin_tam yA_jAwA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam148
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  is_en_born $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam is_en_born) (hin_tam yA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam149
(root-verbchunk-tam-chunkids  ?root  ?orig-tam is_going_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam is_going_to_0) (hin_tam ne_vAlA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam150
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  is_not_going_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam is_not_going_to_0) (preceding_part_of_the_verb  nahIM) (hin_tam ne_vAlA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam151
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  is_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam is_ing) (hin_tam 0_rahA_hE)  )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam152
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  is_never_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam is_never_to_be_en) (preceding_part_of_the_verb  kaBI_nahIM) (hin_tam yA_jAnA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam153
(root-verbchunk-tam-chunkids  ?root  ?orig-tam is_not_being_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam is_not_being_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jA_rahA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam154
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  is_not_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam is_not_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_gayA_hE) )" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam155
(root-verbchunk-tam-chunkids  ?root  ?orig-tam is_not_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam is_not_ing) (preceding_part_of_the_verb  nahIM) (hin_tam 0_rahA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam156
(root-verbchunk-tam-chunkids  ?root  ?orig-tam is_not_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam is_not_to_0) (preceding_part_of_the_verb  nahIM) (hin_tam ne_vAlA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam157
(root-verbchunk-tam-chunkids  ?root  ?orig-tam is_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam is_to_0) (hin_tam ne_vAlA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam158
(root-verbchunk-tam-chunkids  ?root  ?orig-tam is_to_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam is_to_be_en) (hin_tam yA_jAnA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam159
(root-verbchunk-tam-chunkids  ?root  ?orig-tam keep_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam keep_ing) (hin_tam wA_rahawA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam160
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  keep_on_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam keep_on_ing) (hin_tam wA_rahawA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam161
(root-verbchunk-tam-chunkids  ?root  ?orig-tam keeps_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam keeps_ing) (hin_tam wA_rahawA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam162
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  keeps_on_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam keeps_on_ing) (hin_tam wA_rahawA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam163
(root-verbchunk-tam-chunkids  ?root  ?orig-tam kept_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam kept_ing) (hin_tam wA_rahA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam164
(root-verbchunk-tam-chunkids  ?root  ?orig-tam kept_on_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam kept_on_ing) (hin_tam wA_rahA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam165
(root-verbchunk-tam-chunkids  ?root  ?orig-tam let_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam let_0) (hin_tam ne_xo))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam169
(root-verbchunk-tam-chunkids  ?root  ?orig-tam let_us_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam let_us_0) (preceding_part_of_the_verb  caliye_hama) (hin_tam subj))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam170
(root-verbchunk-tam-chunkids  ?root  ?orig-tam like_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam like_to_0) (hin_tam nA_pasanxa_karawA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam171
(root-verbchunk-tam-chunkids  ?root  ?orig-tam liked_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam liked_to_0) (hin_tam nA_pasanxa_karawA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam172
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  likes_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam likes_to_0) (hin_tam nA_pasanxa_karawA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam173
(root-verbchunk-tam-chunkids  ?root  ?orig-tam may_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam may_0) (hin_tam 0_sakawA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam174
(root-verbchunk-tam-chunkids  ?root  ?orig-tam may_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam may_be_en) (hin_tam yA_jA_sakawA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;He may not be related to me.
;Added by Mahalaxmi (24-10-09) suggested by Meena vipin
(defrule tam174_not
(root-verbchunk-tam-chunkids  ?root  ?orig-tam may_not_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam may_not_be_en) (hin_tam yA_jA_sakawA_hE)(preceding_part_of_the_verb  nahIM))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam175
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  may_have_been_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam may_have_been_ing) (preceding_part_of_the_verb  ho_sakawA_hE) (hin_tam wA_rahA_ho))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam176
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  may_have_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam may_have_en) (subject_vibhakti ne) (hin_tam yA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam177
(root-verbchunk-tam-chunkids  ?root  ?orig-tam may_have_been_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam may_have_been_en) (hin_tam yA_gayA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam178
(root-verbchunk-tam-chunkids  ?root  ?orig-tam may_need_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam may_need_to_0) (hin_tam nA_kI_jarUWawa_pada_sakawI_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam179
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  may_not_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam may_not_0) (preceding_part_of_the_verb  nahIM) (hin_tam 0_sakawA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam180
(root-verbchunk-tam-chunkids  ?root  ?orig-tam may_not_have_been_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam may_not_have_been_ing) (preceding_part_of_the_verb  ho_sakawA_hE_nahIM) (hin_tam wA_rahA_ho))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam181
(root-verbchunk-tam-chunkids  ?root  ?orig-tam may_not_have_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam may_not_have_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam182
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  may_not_have_been_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam may_not_have_been_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_gayA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam183
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  might_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam might_0) (hin_tam 0_sakawA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam184
(root-verbchunk-tam-chunkids  ?root  ?orig-tam might_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam might_be_en) (hin_tam yA_jA_sakawA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam185
(root-verbchunk-tam-chunkids  ?root  ?orig-tam might_be_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam might_be_ing) (preceding_part_of_the_verb  ho_sakawA_hE) (hin_tam 0_rahA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam186
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  might_have_been_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam might_have_been_ing) (hin_tam yA_huA_ho_sakawA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam187
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  might_have_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam might_have_en) (preceding_part_of_the_verb  SAyaxa) (hin_tam yA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam188
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  might_not_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam might_not_0) (preceding_part_of_the_verb  ho_sakawA_hE_nahIM) (hin_tam ez))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam189
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  might_not_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam might_not_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jA_sake))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam190
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  might_not_be_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam might_not_be_ing) (preceding_part_of_the_verb  ho_sakawA_hE_nahIM) (hin_tam yA_ho))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam191
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  might_not_have_been_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam might_not_have_been_ing) (preceding_part_of_the_verb  nahIM) (hin_tam 0_rahA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam192
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  might_not_have_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam might_not_have_en) (preceding_part_of_the_verb  ho_sakawA_hE_nahIM) (hin_tam yA_ho))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam193
(root-verbchunk-tam-chunkids  ?root  ?orig-tam must_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam must_0) (subject_vibhakti ko) (hin_tam nA_cAhiye))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam194
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  must_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam must_be_en) (hin_tam nA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam195
(root-verbchunk-tam-chunkids  ?root  ?orig-tam must_be_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam must_be_ing) (hin_tam wA_rahA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam196
(root-verbchunk-tam-chunkids  ?root  ?orig-tam must_have_been_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam must_have_been_en) (hin_tam yA_gayA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam197
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  must_have_been_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam must_have_been_ing) (hin_tam 0_rahA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam198
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  must_have_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam must_have_en) (hin_tam yA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam199
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  must_have_not_been_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam must_have_not_been_ing) (preceding_part_of_the_verb  nahIM) (hin_tam wA_rahA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam200
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  must_have_not_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam must_have_not_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam201
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  must_not_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam must_not_0) (subject_vibhakti ko) (preceding_part_of_the_verb  nahIM) (hin_tam nA_cAhiye))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam202
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  must_not_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam must_not_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam nA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam203
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  must_not_be_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam must_not_be_ing) (preceding_part_of_the_verb  nahIM) (hin_tam wA_rahA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam204
(root-verbchunk-tam-chunkids  ?root  ?orig-tam must_not_have_been_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam must_not_have_been_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_gayA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam205
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  must_not_have_been_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam must_not_have_been_ing) (preceding_part_of_the_verb  nahIM) (hin_tam 0_rahA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam206
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  must_not_have_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam must_not_have_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam207
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  need_not_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam need_not_0) (subject_vibhakti ko) (preceding_part_of_the_verb  nahIM) (hin_tam nA_kI_jZarUrawa_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam208
(root-verbchunk-tam-chunkids  ?root  ?orig-tam need_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam need_to_0) (subject_vibhakti ko) (hin_tam nA_kI_jZarUrawa_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam209
(root-verbchunk-tam-chunkids  ?root  ?orig-tam never_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam never_0) (preceding_part_of_the_verb  kaBI_nahIM) (hin_tam 0))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam210
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  not_having_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam not_having_en) (preceding_part_of_the_verb  nahIM) (hin_tam nA_ke_kAraNa))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam211
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  not_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam not_to_0) (preceding_part_of_the_verb  nahIM) (hin_tam nA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam212
(root-verbchunk-tam-chunkids  ?root  ?orig-tam not_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam not_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_huA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam213
(root-verbchunk-tam-chunkids  ?root  ?orig-tam of_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam of_ing) (hin_tam ne_ke_bAre_meM))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam214
(root-verbchunk-tam-chunkids  ?root  ?orig-tam on_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam on_ing) (hin_tam ne_para))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam215
(root-verbchunk-tam-chunkids  ?root  ?orig-tam ought_not_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam ought_not_to_0) (subject_vibhakti ko) (preceding_part_of_the_verb  nahIM) (hin_tam nA_cAhiye))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam216
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  ought_not_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam ought_not_to_be_en) (subject_vibhakti ko) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jAnA_cAhiye))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam217
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  ought_not_to_have_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam ought_not_to_have_en) (subject_vibhakti ko) (preceding_part_of_the_verb  nahIM) (hin_tam nA_cAhiye_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam218
(root-verbchunk-tam-chunkids  ?root  ?orig-tam ought_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam ought_to_0) (subject_vibhakti ko) (hin_tam nA_cAhiye))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam219
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  ought_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam ought_to_be_en) (subject_vibhakti ko) (hin_tam yA_jAnA_cAhiye))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam220
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  ought_to_have_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam ought_to_have_en) (subject_vibhakti ko) (hin_tam nA_cAhiye_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;How shall we collect the money?
(defrule tam221
(root-verbchunk-tam-chunkids  ?root  ?orig-tam shall_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam shall_0) (hin_tam gA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam222
(root-verbchunk-tam-chunkids  ?root  ?orig-tam shall_have_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam shall_have_to_0) (hin_tam nA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam223
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  shall_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam shall_be_en) (hin_tam yA_jAyegA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam224
(root-verbchunk-tam-chunkids  ?root  ?orig-tam shall_not_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam shall_not_0) (preceding_part_of_the_verb  nahIM) (hin_tam gA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam225
(root-verbchunk-tam-chunkids  ?root  ?orig-tam should_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_0) (subject_vibhakti ko) (hin_tam nA_cAhiye))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam226
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  should_be_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_be_ing) (hin_tam nA_cAhiye))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam227
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  should_be_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_be_to_0) (subject_vibhakti ko) (hin_tam nA_kA_cAhiye_honA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam228
(root-verbchunk-tam-chunkids  ?root  ?orig-tam should_have_been_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_have_been_en) (subject_vibhakti ko) (hin_tam nA_cAhiye_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam229
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  should_have_been_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_have_been_ing) (subject_vibhakti ko) (hin_tam wA_rahanA_cAhiye_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam230
(root-verbchunk-tam-chunkids  ?root  ?orig-tam should_have_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_have_en) (subject_vibhakti ko) (hin_tam nA_cAhiye_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam231
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  should_not_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_not_0) (subject_vibhakti ko) (preceding_part_of_the_verb  nahIM) (hin_tam nA_cAhiye))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam232
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  should_never_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_never_0) (subject_vibhakti ko) (preceding_part_of_the_verb  kaBI_nahIM) (hin_tam nA_cAhiye))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam233
(root-verbchunk-tam-chunkids  ?root  ?orig-tam should_not_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_not_be_en) (subject_vibhakti ko) (preceding_part_of_the_verb  nahIM) (hin_tam 0_jAnA_cAhiye))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam234
(root-verbchunk-tam-chunkids  ?root  ?orig-tam should_not_be_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_not_be_to_0) (hin_tam nahIM_cAhiye_honA_kA_nA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam235
(root-verbchunk-tam-chunkids  ?root  ?orig-tam should_not_have_been_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_not_have_been_en) (subject_vibhakti ko) (preceding_part_of_the_verb  nahIM) (hin_tam yA_cAhiye_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam236
(root-verbchunk-tam-chunkids  ?root  ?orig-tam should_not_have_been_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_not_have_been_ing) (subject_vibhakti ko) (preceding_part_of_the_verb  nahIM) (hin_tam wA_rahanA_cAhiye_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam237
(root-verbchunk-tam-chunkids  ?root  ?orig-tam should_not_have_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_not_have_en) (subject_vibhakti ko) (preceding_part_of_the_verb  nahIM) (hin_tam nA_cAhiye_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam239
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam to_be_en) (hin_tam yA_huA_honA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam240
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  to_be_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam to_be_ing) (hin_tam wA_huA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam241
(root-verbchunk-tam-chunkids  ?root  ?orig-tam towards_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam towards_ing) (hin_tam ne_ke_liye))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam242
(root-verbchunk-tam-chunkids  ?root  ?orig-tam used_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam used_to_0) (hin_tam yA_karawA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam243
(root-verbchunk-tam-chunkids  ?root  ?orig-tam was_being_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_being_en) (hin_tam yA_jA_rahA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam244
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  was_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_en) (hin_tam yA_gayA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam245
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  got_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam got_en) (hin_tam yA_gayA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam246
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  was_never_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_never_en) (preceding_part_of_the_verb  kaBI_nahIM) (hin_tam yA_gayA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam247
(root-verbchunk-tam-chunkids  ?root  ?orig-tam was_en_born  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_en_born) (hin_tam yA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam248
(root-verbchunk-tam-chunkids  ?root  ?orig-tam was_going_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_going_to_0) (hin_tam ne_vAlA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam249
(root-verbchunk-tam-chunkids  ?root  ?orig-tam   was_not_going_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_not_going_to_0) (preceding_part_of_the_verb  nahIM) (hin_tam ne_vAlA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam250
(root-verbchunk-tam-chunkids  ?root  ?orig-tam was_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_ing) (hin_tam 0_rahA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam251
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  was_not_being_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_not_being_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jA_rahA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam252
(root-verbchunk-tam-chunkids  ?root  ?orig-tam was_not_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_not_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam253
(root-verbchunk-tam-chunkids  ?root  ?orig-tam was_not_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_not_ing) (preceding_part_of_the_verb  nahIM) (hin_tam 0_rahA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam254
(root-verbchunk-tam-chunkids  ?root  ?orig-tam was_not_to_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_not_to_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jAnA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam255
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  was_not_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_not_to_0) (preceding_part_of_the_verb  nahIM) (hin_tam ne_vAlA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam256
(root-verbchunk-tam-chunkids  ?root  ?orig-tam was_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_to_0) (hin_tam ne_vAlA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam257
(root-verbchunk-tam-chunkids  ?root  ?orig-tam was_to_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_to_be_en) (hin_tam yA_jAnA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam258
(root-verbchunk-tam-chunkids  ?root  ?orig-tam were_being_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam were_being_en) (hin_tam yA_jA_rahA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam259
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  were_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam were_en) (hin_tam yA_gayA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam260
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  were_en_born $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam were_en_born) (hin_tam yA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam261
(root-verbchunk-tam-chunkids  ?root  ?orig-tam were_going_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam were_going_to_0) (hin_tam ne_vAlA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam262
(root-verbchunk-tam-chunkids  ?root  ?orig-tam were_not_going_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam were_not_going_to_0) (preceding_part_of_the_verb  nahIM) (hin_tam ne_vAlA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam263
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  were_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam were_ing) (hin_tam 0_rahA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam264
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  were_not_being_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam were_not_being_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jA_rahA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam265
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  were_not_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam were_not_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam266
(root-verbchunk-tam-chunkids  ?root  ?orig-tam were_not_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam were_not_ing) (preceding_part_of_the_verb  nahIM) (hin_tam 0_rahA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam267
(root-verbchunk-tam-chunkids  ?root  ?orig-tam were_not_to_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam were_not_to_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jAnA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam268
(root-verbchunk-tam-chunkids  ?root  ?orig-tam was_not_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_not_to_0) (preceding_part_of_the_verb  nahIM) (hin_tam ne_vAlA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam269
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  were_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam were_to_0) (hin_tam ne_vAlA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam270
(root-verbchunk-tam-chunkids  ?root  ?orig-tam were_to_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam were_to_be_en) (hin_tam yA_jAnA_WA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam271
(root-verbchunk-tam-chunkids  ?root  ?orig-tam will_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_0) (hin_tam gA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam272
(root-verbchunk-tam-chunkids  ?root  ?orig-tam will_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_be_en) (hin_tam yA_jAyegA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam273
(root-verbchunk-tam-chunkids  ?root  ?orig-tam will_be_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_be_ing) (hin_tam 0_rahA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam274
(root-verbchunk-tam-chunkids  ?root  ?orig-tam will_have_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_have_en) (hin_tam 0_liyA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam275
(root-verbchunk-tam-chunkids  ?root  ?orig-tam will_have_been_being_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_have_been_being_en) (hin_tam yA_jA_rahA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam276
(root-verbchunk-tam-chunkids  ?root  ?orig-tam will_have_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_have_to_0) (subject_vibhakti ko) (hin_tam nA_padegA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam277
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  will_have_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_have_to_0) (subject_vibhakti ko) (hin_tam nA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam278
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  will_have_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_have_to_be_en) (hin_tam nA_padegA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam279
(root-verbchunk-tam-chunkids  ?root  ?orig-tam will_have_been_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_have_been_en) (hin_tam yA_huA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam280
(root-verbchunk-tam-chunkids  ?root  ?orig-tam will_not_have_been_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_not_have_been_en) (hin_tam yA_huA_nahIM_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam281
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  will_need_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_need_to_0) (hin_tam nA_kI_jZarUrawa_hogI))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam282
(root-verbchunk-tam-chunkids  ?root  ?orig-tam will_need_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_need_to_0) (hin_tam nA_padegA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam283
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  will_not_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_not_0) (preceding_part_of_the_verb  nahIM) (hin_tam gA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam284
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  will_never_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_never_0) (preceding_part_of_the_verb  kaBI_nahIM) (hin_tam gA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam285
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  will_not_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_not_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam gA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam286
(root-verbchunk-tam-chunkids  ?root  ?orig-tam will_not_be_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_not_be_ing) (preceding_part_of_the_verb  nahIM) (hin_tam 0_rahA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam287
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  will_not_have_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_not_have_en) (preceding_part_of_the_verb  nahIM) (hin_tam 0_liyA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam288
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  will_not_have_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_not_have_to_0) (preceding_part_of_the_verb  nahIM) (hin_tam nA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam289
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  will_not_have_to_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_not_have_to_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam nA2_padegA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam290
(root-verbchunk-tam-chunkids  ?root  ?orig-tam without_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam without_ing) (hin_tam yA_binA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam291
(root-verbchunk-tam-chunkids  ?root  ?orig-tam   would_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam would_0) (hin_tam gA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam292
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  would_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam would_be_en) (hin_tam yA_jAyegA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam293
(root-verbchunk-tam-chunkids  ?root  ?orig-tam would_be_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam would_be_ing) (hin_tam 0_rahA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam294
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  would_have_been_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam would_have_been_en) (hin_tam yA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam295
(root-verbchunk-tam-chunkids  ?root  ?orig-tam would_have_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam would_have_en) (hin_tam yA_howA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam296
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  would_have_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam would_have_to_0) (subject_vibhakti ko) (hin_tam nA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam297
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  would_have_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam would_have_to_be_en) (hin_tam nA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam298
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  would_like_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam would_like_to_0) (hin_tam nA_pasanxa_kara_gA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam299
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  should_like_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_like_to_0) (hin_tam nA_pasanxa_kara_gA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam300
(root-verbchunk-tam-chunkids  ?root  ?orig-tam would_never_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam would_never_0) (preceding_part_of_the_verb  kaBI_nahIM) (hin_tam gA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;The mixture would not bind .
(defrule tam301
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  would_not_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam would_not_0) (preceding_part_of_the_verb  nahIM) (hin_tam gA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam303
(root-verbchunk-tam-chunkids  ?root  ?orig-tam would_not_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam would_not_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_jAyegA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam304
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  would_not_be_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam would_not_be_ing) (preceding_part_of_the_verb  nahIM) (hin_tam 0_rahA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam305
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  would_not_have_been_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam would_not_have_been_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam306
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  would_not_have_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam would_not_have_en) (preceding_part_of_the_verb  nahIM) (hin_tam yA_howA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam307
(root-verbchunk-tam-chunkids  ?root  ?orig-tam would_not_have_to_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam would_not_have_to_be_en) (preceding_part_of_the_verb  nahIM) (hin_tam nA_hogA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
(defrule tam308
(root-verbchunk-tam-chunkids  ?root  ?orig-tam made_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam made_0) (hin_tam Nic))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;Broken windows need to be replaced 
(defrule tam309
(root-verbchunk-tam-chunkids ?root ?orig-tam  need_to_be_en $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp* "(tam_tmp_info  (head_id  "?head_id") (eng_tam  need_to_be_en) (hin_tam yA_jAnA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;We shall be making continuous improvements to this site
(defrule tam310
(root-verbchunk-tam-chunkids  ?root  ?orig-tam shall_be_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam shall_be_ing) (hin_tam wA_rahegA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;He should be acquitted on the grounds that there is no evidence
(defrule tam311
(root-verbchunk-tam-chunkids  ?root  ?orig-tam should_be_en  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_be_en) (hin_tam yA_jAnA_cAhiye))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;I will keep on trying .
(defrule tam312
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  will_keep_on_ing  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_keep_on_ing) (hin_tam wA_rahUzgA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
; Will you be able to take the weight of the sacks .
(defrule tam313
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  will_be_able_to_0  $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam will_be_able_to_0) (hin_tam  0_pAyegA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
; He should not be running . 
(defrule tam314
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  should_not_be_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam should_not_be_ing) (hin_tam nA_cAhiye)(preceding_part_of_the_verb  nahIM))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
; He is able to think coherently.
(defrule tam315
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  is_able_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam is_able_to_0) (hin_tam 0_pAwA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;Finally, they are able to arrive here.
(defrule tam316
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  are_able_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam are_able_to_0) (hin_tam 0_pAwA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
; I am able to write the configuration file
(defrule tam317
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  am_able_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam am_able_to_0) (hin_tam 0_pAwA_hE))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;I was able to see my ads for several hours after setting up account.
(defrule tam318
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  was_able_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_able_to_0) (hin_tam 0_pAwA_wA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;It can't have been too hard if you were able to finish it in an hour.
(defrule tam319
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  were_able_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam were_able_to_0) (hin_tam 0_pAwA_wA))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
; Internet Explorer is unable to open Office documents from an SSL Web site.
(defrule tam320
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  is_unable_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam is_unable_to_0) (hin_tam 0_pAwA_hE)(preceding_part_of_the_verb  nahIM))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
; We are unable to process your request at this time.
(defrule tam321
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  are_unable_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam are_unable_to_0) (hin_tam 0_pAwA_hE)(preceding_part_of_the_verb  nahIM))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
; I am unable to retrieve my application.  I am unable to guard my tongue from backbiting
(defrule tam322
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  am_unable_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam am_unable_to_0) (hin_tam 0_pAwA_hE)(preceding_part_of_the_verb  nahIM))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;Server was unable to process the request 
(defrule tam323
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  was_unable_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam was_unable_to_0) (hin_tam 0_pAwA_wA)(preceding_part_of_the_verb  nahIM))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
; We were unable to update your account
(defrule tam324
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  were_unable_to_0 $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam were_unable_to_0) (hin_tam 0_pAwA_wA)(preceding_part_of_the_verb  nahIM))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------
;I have to keep running until I reach the destination .
(defrule tam325
(root-verbchunk-tam-chunkids  ?root  ?orig-tam  have_to_keep_ing $?ids ?head_id)
=>
(printout  ?*Hin_tam_fp*  "(tam_tmp_info  (head_id  "?head_id")  (eng_tam have_to_keep_ing) (hin_tam we_rahanA_hE)(subject_vibhakti ko))" crlf)
)
;-------------------------------------------------------------------------------------------------------------------------

