 (defglobal ?*link_cat-file* = link_cat_fp)
 (defglobal ?*link_word-file* = link_wrd_fp)

 (deffunction never-called ()
 (assert (parserid-word))
 (assert (parserid-wordid))
 (assert (link_name-link_expansion))
 (assert (link_name-link_lnode-link_rnode))
 (assert (id-word_cap_info))
 (assert (No complete linkages found))
 (assert (parser_id-cat_coarse))
 (assert (word-wordid-nertype))
 )
 
 (deffunction string_to_integer (?parser_id)
; Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

 ;----------------------------------------------------------------------------------------------------------------
 ; Generates control fact for deciding category
 (defrule generate_control_fact
 (declare (salience 300))
 (parserid-word ?pid ?)
 =>
       (assert (category_to_be_decided ?pid))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Running is good for health
 (defrule gerund_rule
 (declare (salience 250))
 (parserid-cat_coarse  ?id verbal_noun)
 ?f0<-(category_to_be_decided ?id)
 =>
 	(retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?id "   verbal_noun)" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ; The game of life is played for winning  (M g p)
 ; if Mgp link then the right node is gerund
  (defrule gerund_rule_with_Mgp
  (declare (salience 200))
  (link_name-link_lnode-link_rnode Mgp ?l_node  ?r_node)
  ?f0<-(category_to_be_decided  ?r_node )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?r_node "    verbal_noun)" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
  ;;We sat and watched the sun setting .
  (defrule rule_with_Mg
  (declare (salience 200))
  (link_name-link_lnode-link_rnode Mg ?l_node  ?r_node)
  ?f0<-(category_to_be_decided  ?r_node )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?r_node "   verb)" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ; if S link then take left node as noun/pronoun 
 (defrule sub_noun_rule1
 (declare (salience 200))
 (link_name-link_expansion  ?sub  S $?ids)
 (link_name-link_lnode-link_rnode ?sub  ?sl_node  ?sr_node)
 ?f0<-(category_to_be_decided  ?sl_node )
 (test (not (member$ I $?ids)) )
 =>
 	(retract ?f0)
        (assert (parser_id-cat_coarse ?sl_node  noun/pronoun))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;if SI link then take right node as noun/pronoun
 (defrule sub_noun_rule2
 (declare (salience 200))
 (link_name-link_expansion  ?sub  S $?ids)
 (link_name-link_lnode-link_rnode ?sub  ?sl_node  ?sr_node)
 (parserid-word ?sr_node ?rword)
 ?f0<-(category_to_be_decided  ?sr_node )
 (test (or (member$ I $?ids)(member$ J $?ids )))
 =>
        (retract ?f0)
        (assert (parser_id-cat_coarse ?sr_node  noun/pronoun))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Rama is a good boy.
 ; if O link then take right node as noun/pronoun
 (defrule obj_noun_rule
 (declare (salience 200))
 (link_name-link_expansion  ?obj  O $?)
 (link_name-link_lnode-link_rnode ?obj  ?l_node  ?r_node)
 ?f0<-(category_to_be_decided  ?r_node )
 =>
        (retract ?f0)
  	(assert (parser_id-cat_coarse ?r_node  noun/pronoun))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;This is a sample sentence for Anusaraka.
 ;if AN (compound noun) link then take left node as noun 
 (defrule compound_noun_rule
 (declare (salience 201))
 (link_name-link_expansion  ?adj  A N)
 (link_name-link_lnode-link_rnode ?adj  ?l_node  ?r_node)
 ?f0<-(category_to_be_decided  ?l_node )
 =>
	(retract ?f0 )
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?l_node "    noun)" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;she is sleeping.
 ;if S and Pg*b|Pv|pvf|PP then S right node and Pg*b|Pv|pvf|PP right node is verb
 (defrule verb_S_P_rule
 (declare (salience 200))
 (link_name-link_expansion  ?sub  S ~I $?)
 (or (link_name-link_expansion  ?P  P g ? b $?)(link_name-link_expansion  ?P  P v)(link_name-link_expansion  ?P  P v f)(link_name-link_expansion  ?P  P P))
 (link_name-link_lnode-link_rnode ?sub  ?sl_node  ?sr_node)
 (link_name-link_lnode-link_rnode ?P   ?sr_node  ?Pr_node)
 ?f0<-(category_to_be_decided  ?sr_node )
 ?f1<-(category_to_be_decided  ?Pr_node )
 =>
 	(retract ?f0 ?f1)
	(printout ?*link_cat-file* "(parser_id-cat_coarse	" ?sr_node "    verb)" crlf)
	(printout ?*link_cat-file* "(parser_id-cat_coarse  " ?Pr_node "    verb)" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Teddy will go home and study. Added : (16-02-11)
 (defrule verb_VJ_rule
 (declare (salience 200))
 (link_name-link_expansion  ?V  V J l|n $?) ;He neither plays nor reads.
 (link_name-link_expansion  ?V1 V J r $?)
 (link_name-link_lnode-link_rnode ?V  ?vl_node ?)
 (link_name-link_lnode-link_rnode ?V1 ?  ?v1r_node)
 ?f0<-(category_to_be_decided  ?vl_node )
 ?f1<-(category_to_be_decided  ?v1r_node )
 =>
        (retract ?f0 ?f1)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?vl_node "    verb)" crlf)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?v1r_node "   verb)" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule verb_rule_with_S_link
 (declare (salience 150))
 (link_name-link_expansion ?sub S $?ids)
 (link_name-link_lnode-link_rnode ?sub  ?sl_node  ?sr_node)
 (parserid-word ?sr_node ?rword&~that&~but)
 ?f0<-(category_to_be_decided  ?sr_node )
 (test (not (member$ I $?ids)) )
 =>
	(retract ?f0) 
   	(printout ?*link_cat-file* "(parser_id-cat_coarse  " ?sr_node "   verb)" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
  (defrule verb_rule_with_SI_link
  (declare (salience 150))
  (link_name-link_expansion ?sub S $?ids)
  (link_name-link_lnode-link_rnode ?sub  ?sl_node  ?sr_node)
  (parserid-word ?sl_node ?lword&~that)
  ?f0<-(category_to_be_decided  ?sl_node )
  (test (member$ I $?ids) )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?sl_node "   verb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;I will keep on trying .
  (defrule verb_rule_with_pg_link
  (declare (salience 200))
  (or (link_name-link_expansion  ?P  P g ? b $?)(link_name-link_expansion  ?P  P v)(link_name-link_expansion  ?P  P v f)
  (link_name-link_expansion  ?P  P P)(link_name-link_expansion  ?P  P g)) 
  (link_name-link_lnode-link_rnode ?P ?l_node  ?r_node)
  ?f0<-(category_to_be_decided  ?r_node )
  =>
        (retract ?f0 )
 	(printout ?*link_cat-file* "(parser_id-cat_coarse  " ?r_node "   verb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;Do not waste Electricity. 
  (defrule verb_rule_with_Wi
  (declare (salience 200))
  (link_name-link_expansion  ?W  W i)
  (link_name-link_lnode-link_rnode ?W  ?l_node  ?r_node)
  ?f0<-(category_to_be_decided  ?r_node )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?r_node "   verb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
   ;He may drink milk or eat apples.
  (defrule verb_rule_with_I
  (declare (salience 200))
  (link_name-link_expansion  ?I  I $?)
  (link_name-link_lnode-link_rnode ?I  ?Il_node  ?Ir_node)
  ?f0<-(category_to_be_decided  ?Ir_node )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?Ir_node "   verb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;Coming as it does from Chaitanya's mouth , it surprises me .
  (defrule verb_rule_with_MV
  (declare (salience 120))
  (link_name-link_expansion  ?I  M V $?)
  (link_name-link_lnode-link_rnode ?I  ?Il_node  ?Ir_node)
  ?f0<-(category_to_be_decided  ?Il_node )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?Il_node "   verb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;Rama is a good boy. Against my better judgment I gave him the job
  (defrule adjective_rule_with_A_link
  (declare (salience 200))
  (link_name-link_lnode-link_rnode A|Am  ?l_node  ?r_node)
  ?f0<-(category_to_be_decided  ?l_node )
  =>
	(retract ?f0)
  	(printout ?*link_cat-file* "(parser_id-cat_coarse  " ?l_node"   adjective)"crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;It is easier to ignore the problem than to solve it.
  ;There is nothing wrong with being popular .
  (defrule adjective_rule_with_pa_or_Ma
  (declare (salience 150))
  (or (link_name-link_expansion  ?adj  P a $?)(link_name-link_expansion  ?adj  M a $?))
  (link_name-link_lnode-link_rnode ?adj  ?l_node  ?r_node)
  ?f0<-(category_to_be_decided  ?r_node )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?r_node "   adjective)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; The trial is because he is extremely famous. 
  (defrule adverb_rule_with_E
  (declare (salience 150))
  (link_name-link_expansion ?adv E $?)
  (link_name-link_lnode-link_rnode ?adv ?l_node ?r_node)
  ?f0<-(category_to_be_decided  ?l_node )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?l_node "    adverb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; She works very carefully .
  (defrule adverb_with_MVa
  (declare (salience 150))
  (link_name-link_lnode-link_rnode MVa|EE ?l_node ?r_node)
  ?f0<-(category_to_be_decided  ?r_node )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?r_node "    adverb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; Jhon's book is on the table . (YS)
  ; She awakened to the sound of birds' singing .(YP) 
  (defrule YS_rule
  (declare (salience 210))
  (link_name-link_expansion ?det D $?)
  (link_name-link_lnode-link_rnode ?det ?l_node ?)
  (or (link_name-link_lnode-link_rnode YS ?l_node ?)(link_name-link_lnode-link_rnode YP ?l_node ?))
  ?f0<-(category_to_be_decided  ?l_node )
  =>
        (retract ?f0)
        (bind ?id (string_to_integer (sub-string 1 (- (length ?l_node) 2) ?l_node)))
       	(assert (apos_parser_id-cat_coarse apos ?id  noun/pronoun))
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;Rama is a good boy.
  (defrule determiner_rule
  (declare (salience 200))
  (link_name-link_expansion ?det D $?)
  (link_name-link_lnode-link_rnode ?det ?l_node ?r_node)
  ?f0<-(category_to_be_decided  ?l_node )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?l_node "   determiner)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;This is a sample sentence for Anusaraka. 
  (defrule prep_rule_with_J
  (declare (salience 210))
  (link_name-link_expansion ?prep J $?)
  (link_name-link_lnode-link_rnode ?prep ?l_node ?r_node)
  ?f0<-(category_to_be_decided  ?l_node )
  ?f1<-(category_to_be_decided ?r_node )
  =>
        (retract ?f0 ?f1)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?l_node "   preposition)" crlf)
        (assert (parser_id-cat_coarse ?r_node  noun/pronoun))
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; I saw her sitting in the garden.
  (defrule prep_rule_with_MVp_lnode
  (link_name-link_expansion ?prep M V p)
  (link_name-link_lnode-link_rnode ?prep ?l_node ?r_node)
  (not (link_name-link_lnode-link_rnode Pa|Paf ?pl_node ?l_node))
  ?f0<-(category_to_be_decided  ?l_node )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?l_node "   verb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;I do not go out as much now . I saw her sitting in the garden.
  ;I have doubts about inviting him.
  (defrule prep_rule_with_MVp_rnode
  (declare (salience 100))
  (link_name-link_expansion ?prep M V p)
  (link_name-link_lnode-link_rnode ?prep ?l_node ?r_node)
  (link_name-link_lnode-link_rnode J|Js|Jp|Mgp ?r_node  ?jr_node)
  ?f0<-(category_to_be_decided  ?r_node )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?r_node "    preposition)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;The planet that we live on is of medium size.
  (defrule prep_rule_with_MVp_and_B
  (declare (salience 100))
  (link_name-link_expansion ?prep M V p)
  (link_name-link_lnode-link_rnode ?prep ?l_node ?r_node)
  (link_name-link_lnode-link_rnode Bs|Bp ?bl_node  ?r_node)
  ?f0<-(category_to_be_decided  ?r_node )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?r_node "    preposition)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;May I go outside. I do not go out as much now . 
  (defrule prep_rule_with_MVp_rnode1
  (declare (salience 99))
  (link_name-link_expansion ?prep M V p)
  (link_name-link_lnode-link_rnode ?prep ?l_node ?r_node)
  (not (link_name-link_lnode-link_rnode J|Js|Jp ?r_node  ?jr_node))
  ?f0<-(category_to_be_decided  ?r_node )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?r_node "    adverb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; John Stuart Mill is an important author
  (defrule PropN_rule_with_G
  (declare (salience 100))
  (link_name-link_lnode-link_rnode G ?l_node ?r_node)
  ?f0<-(category_to_be_decided  ?l_node )
  =>
    	(retract ?f0 )
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?l_node "   PropN)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;This is my friend Bob
  (defrule PropN_rule_with_G_right
  (declare (salience 100))
  (link_name-link_lnode-link_rnode G|GN ?l_node ?r_node)
  ?f0<-(category_to_be_decided  ?r_node )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?r_node "   PropN)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;This is my friend Bob
  (defrule noun_rule_with_GN_left
  (declare (salience 100))
  (link_name-link_lnode-link_rnode GN ?l_node ?r_node)
  ?f0<-(category_to_be_decided  ?l_node )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?l_node "    noun)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  (defrule default_rnode_rule
  (declare (salience 30))
  (link_name-link_lnode-link_rnode ? ? ?r_node)
  ?f0<-(category_to_be_decided  ?r_node )
  =>
 	(retract ?f0 )
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?r_node "    -)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  (defrule default_lnode_rule
  (declare (salience 30))
  (link_name-link_lnode-link_rnode ? ?l_node )
  ?f0<-(category_to_be_decided  ?l_node )
  =>
        (retract ?f0 )
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?l_node "    -)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; if category is noun/pronoun and ner type is PERSON/LOCATION/ORGANIZATION then modify category as PropN
  ; Jane is soon coming . The Danes are nice people.
  (defrule PropN_rule
  (declare (salience 10))
  ?f0<-(parser_id-cat_coarse ?pid noun/pronoun)
  (parserid-wordid  ?pid ?id)
  (parserid-word ?pid ?lword)
  (word-wordid-nertype ?word ?id PERSON|LOCATION|ORGANIZATION)
  (test (eq ?lword ?word))
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?pid "    PropN)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; if category is noun/pronoun and the first letter is capital then modify category as PropN
  ; Jane is soon coming . The Danes are nice people.
  (defrule pronoun_rule_first_cap
  (declare (salience 5))
  ?f0<-(parser_id-cat_coarse ?pid noun/pronoun)
  (parserid-wordid  ?pid ?id)
  (parserid-word ?pid ?lword)
  (id-word_cap_info ?id first_cap|all_caps) ;They accused the US of interfering in the internal affairs of other nations.
  (id-original_word ?wid ?word)
  (test (and (eq ?lword ?word)(neq ?wid 1))) ;Cancer and heart disease are the UK's biggest killers. 
  =>
  	(retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?pid "    PropN)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; if category is noun/pronoun and if word is he|she|they|this|we|all|I|it|you then modify category as pronoun
  ; How many people did you see
  (defrule pronoun_rule
  (declare (salience 20))
  ?f0<-(parser_id-cat_coarse ?pid  noun/pronoun)
  (parserid-word ?pid ?lword&he|she|they|this|we|all|I|it|you|me|her|him|us)
  =>
               (retract ?f0)
               (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?pid "    pronoun)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; if category is noun/pronoun and the above cases fail then modify category as noun
  (defrule pronoun_rule1
  (declare (salience 5))
  ?f0<-(parser_id-cat_coarse ?pid  noun/pronoun)
  (parserid-word ?pid ?lword&:(not (numberp ?lword)))
  =>
                (retract ?f0)
                (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?pid "    noun)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  (defrule apos_pronoun_rule
  (declare (salience 20))
  ?f0<-(apos_parser_id-cat_coarse apos ?id  noun/pronoun)
  (parserid-wordid ?pid ?id)
  (parserid-word ?pid ?lword&he|she|they|this|we|all|I|it|you|her|him|us)
  =>
	(retract ?f0)         
	(printout ?*link_cat-file* "(parser_id-cat_coarse  " ?pid "   pronoun)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;John's book is given to John's sister.
  (defrule apos_PropN_rule
  (declare (salience 10)) 
  ?f0<-(apos_parser_id-cat_coarse apos ?id noun/pronoun)	
  (parserid-wordid  ?pid ?id)
  (parserid-word ?pid  ?lword)
  (id-word_cap_info ?id first_cap)
  (id-original_word ?id ?word)
  (test (eq ?lword ?word))
  =>
  	(retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?pid "    PropN)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  (defrule apos_noun 
  ?f0<-(apos_parser_id-cat_coarse apos ?id  noun/pronoun)
  (parserid-wordid  ?pid ?id)
  =>
  	(retract ?f0)
        (printout ?*link_cat-file* "(parser_id-cat_coarse  " ?pid "   noun)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; No complete linkage
  (defrule no_comp_link
  (declare (salience -10))
  (No complete linkages found)
  =>
	(printout ?*link_cat-file* "(No complete linkages found)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  (defrule close_files
  (declare (salience -20))
  =>
	(close ?*link_cat-file*)
  )
