 (defglobal ?*link_cat-file* = link_cat_fp)

 (deffacts link_cat_info
 (linkid-word)
 (parserid-wordid)
 (linkid-word-node_cat)
 (link_name-link_expansion)
 (link_name-link_lnode-link_rnode)
 (id-word_cap_info)
 (No complete linkages found)
 )
 
 (deffunction string_to_integer (?parser_id)
; Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

 ; Generates control fact for deciding category
 (defrule generate_control_fact
 (declare (salience 300))
 (parserid-word ?pid  ?)
 =>
 	(assert (category_to_be_decided ?pid))
 )
 ;----------------------------------------------------------------------------------------------------------------
  ;Please do accept the same; bless the Anusaaraka project to make speedy progress.
 (defrule handling_cat_for_punctuations
 (declare (salience 500))
 (linkid-word-node_cat ?pid ?word  ?cat)
 ?f0<-(category_to_be_decided ?pid)
 (test (or (eq ?word "\"")(eq ?word "?")(eq ?word "(")(eq ?word ")")(eq ?word ";")))
 =>
       (retract ?f0)
       (if  (eq ?word "\"") then
              (printout ?*link_cat-file* "(linkid-word-node_cat  " ?pid "  \"\\"  ?word"\" "?cat")" crlf)
       else
       (printout ?*link_cat-file* "(linkid-word-node_cat  " ?pid "   \"" ?word"\"  "?cat ")"crlf))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;if link category is g then take it as gerund
 (defrule gerund_rule
 (declare (salience 250))
 (linkid-word-node_cat ?pid ?word  g)
 ?f0<-(category_to_be_decided ?pid)
 =>
 	(retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?pid "  " ?word"  gerund)" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ; The game of life is played for winning  (M g p)
 ; if Mgp link then the right node is gerund
  (defrule gerund_rule_with_Mgp
  (declare (salience 200))
  (link_name-link_lnode-link_rnode Mgp ?l_node  ?r_node)
  (parserid-word ?r_node ?rword)
  ?f0<-(category_to_be_decided ?r_node)
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?r_node "  " ?rword"  gerund)" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
  ;;We sat and watched the sun setting .
  (defrule rule_with_Mg
  (declare (salience 200))
  (link_name-link_lnode-link_rnode Mg ?l_node  ?r_node)
  (parserid-word ?r_node ?rword)
  ?f0<-(category_to_be_decided ?r_node)
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?r_node "  " ?rword"  verb)" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ; if S link then take left node as noun/pronoun 
 (defrule sub_noun_rule1
 (declare (salience 200))
 (link_name-link_expansion  ?sub  S $?ids)
 (link_name-link_lnode-link_rnode ?sub  ?sl_node  ?sr_node)
 (parserid-word ?sl_node ?lword)
 ?f0<-(category_to_be_decided ?sl_node)
 (test (not (member$ I $?ids)) )
 =>
 	(retract ?f0)
        (assert (linkid-word-node_cat ?sl_node ?lword noun/pronoun))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;if SI link then take right node as noun/pronoun
 (defrule sub_noun_rule2
 (declare (salience 200))
 (link_name-link_expansion  ?sub  S $?ids)
 (link_name-link_lnode-link_rnode ?sub  ?sl_node  ?sr_node)
 (parserid-word ?sr_node ?rword)
 ?f0<-(category_to_be_decided ?sr_node)
 (test (member$ I $?ids) )
 =>
        (retract ?f0)
        (assert (linkid-word-node_cat ?sr_node ?rword noun/pronoun))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Rama is a good boy.
 ; if O link then take right node as noun/pronoun
 (defrule obj_noun_rule
 (declare (salience 200))
 (link_name-link_expansion  ?obj  O $?)
 (link_name-link_lnode-link_rnode ?obj  ?l_node  ?r_node)
 (parserid-word ?r_node ?rword)
 ?f0<-(category_to_be_decided ?r_node)
 =>
        (retract ?f0)
  	(assert (linkid-word-node_cat ?r_node ?rword noun/pronoun))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;This is a sample sentence for Anusaraka.
 ;if AN (compound noun) link then take left node as noun 
 (defrule compound_noun_rule
 (declare (salience 201))
 (link_name-link_expansion  ?adj  A N)
 (link_name-link_lnode-link_rnode ?adj  ?l_node  ?r_node)
 (parserid-word ?l_node ?lword)
 ?f0<-(category_to_be_decided ?l_node)
 =>
	(retract ?f0 )
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?l_node "  " ?lword"  noun)" crlf)
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
 (parserid-word ?sr_node ?sword)
 (parserid-word ?Pr_node ?pword)
 ?f1<-(category_to_be_decided ?sr_node)
 ?f0<-(category_to_be_decided ?Pr_node)
 =>
 	(retract ?f0 ?f1)
	(printout ?*link_cat-file* "(linkid-word-node_cat  " ?sr_node "  "?sword "  verb)" crlf)
	(printout ?*link_cat-file* "(linkid-word-node_cat  " ?Pr_node "  "?pword "  verb)" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule verb_rule_with_S_link
 (declare (salience 150))
 (link_name-link_expansion ?sub S $?ids)
 (link_name-link_lnode-link_rnode ?sub  ?sl_node  ?sr_node)
 (parserid-word ?sr_node ?rword&~that)
 ?f0<-(category_to_be_decided ?sr_node)
 (test (not (member$ I $?ids)) )
 =>
	(retract ?f0) 
   	(printout ?*link_cat-file* "(linkid-word-node_cat  " ?sr_node "  "?rword "  verb)" crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------
  (defrule verb_rule_with_SI_link
  (declare (salience 150))
  (link_name-link_expansion ?sub S $?ids)
  (link_name-link_lnode-link_rnode ?sub  ?sl_node  ?sr_node)
  (parserid-word ?sl_node ?lword&~that)
  ?f0<-(category_to_be_decided ?sl_node)
  (test (member$ I $?ids) )
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?sl_node "  "?lword "  verb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;I will keep on trying .
  (defrule verb_rule_with_pg_link
  (declare (salience 200))
  (or (link_name-link_expansion  ?P  P g ? b $?)(link_name-link_expansion  ?P  P v)(link_name-link_expansion  ?P  P v f)
  (link_name-link_expansion  ?P  P P)(link_name-link_expansion  ?P  P g)) 
  (link_name-link_lnode-link_rnode ?P ?l_node  ?r_node)
  (parserid-word ?r_node ?rword)
  ?f1<-(category_to_be_decided ?r_node)
  =>
         (retract ?f1 )
 	(printout ?*link_cat-file* "(linkid-word-node_cat  " ?r_node "  "?rword "  verb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;Do not waste Electricity. 
  (defrule verb_rule_with_Wi
  (declare (salience 200))
  (link_name-link_expansion  ?W  W i)
  (link_name-link_lnode-link_rnode ?W  ?l_node  ?r_node)
  (parserid-word ?r_node ?rword)
  ?f0<-(category_to_be_decided ?r_node)
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?r_node "  "?rword "  verb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
   ;He may drink milk or eat apples.
  (defrule verb_rule_with_I
  (declare (salience 200))
  (link_name-link_expansion  ?I  I $?)
  (link_name-link_lnode-link_rnode ?I  ?Il_node  ?Ir_node)
  (parserid-word ?Ir_node ?rword)
  ?f0<-(category_to_be_decided ?Ir_node)
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?Ir_node "  "?rword "  verb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;Coming as it does from Chaitanya's mouth , it surprises me .
  (defrule verb_rule_with_MV
  (declare (salience 120))
  (link_name-link_expansion  ?I  M V $?)
  (link_name-link_lnode-link_rnode ?I  ?Il_node  ?Ir_node)
  (parserid-word ?Il_node ?lword)
  ?f0<-(category_to_be_decided ?Il_node)
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?Il_node "  "?lword "  verb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;Rama is a good boy. Against my better judgment I gave him the job
  (defrule adjective_rule_with_A_link
  (declare (salience 200))
  (link_name-link_lnode-link_rnode A|Am  ?l_node  ?r_node)
  (parserid-word ?l_node ?lword)
  ?f0<-(category_to_be_decided ?l_node)
  =>
	(retract ?f0)
  	(printout ?*link_cat-file* "(linkid-word-node_cat  " ?l_node" "?lword "  adjective)"crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;It is easier to ignore the problem than to solve it.
  ;There is nothing wrong with being popular .
  (defrule adjective_rule_with_pa_or_Ma
  (declare (salience 150))
  (or (link_name-link_expansion  ?adj  P a $?)(link_name-link_expansion  ?adj  M a $?))
  (link_name-link_lnode-link_rnode ?adj  ?l_node  ?r_node)
  (parserid-word ?r_node ?rword)
  ?f0<-(category_to_be_decided ?r_node)
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?r_node " "?rword "  adjective)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; The trial is because he is extremely famous. 
  (defrule adverb_rule_with_E
  (declare (salience 150))
  (link_name-link_expansion ?adv E $?)
  (link_name-link_lnode-link_rnode ?adv ?l_node ?r_node)
  (parserid-word ?l_node ?lword)
  ?f0<-(category_to_be_decided ?l_node)
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?l_node "  "?lword "  adverb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; She works very carefully .
  (defrule adverb_with_MVa
  (declare (salience 150))
  (link_name-link_lnode-link_rnode MVa|EE ?l_node ?r_node)
  (parserid-word ?r_node ?rword)
  ?f0<-(category_to_be_decided ?r_node)
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?r_node "  "?rword "  adverb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; Jhon's book is on the table . (YS)
  ; She awakened to the sound of birds' singing .(YP) 
  (defrule YS_rule
  (declare (salience 210))
  (link_name-link_expansion ?det D $?)
  (link_name-link_lnode-link_rnode ?det ?l_node ?)
  (or (link_name-link_lnode-link_rnode YS ?l_node ?)(link_name-link_lnode-link_rnode YP ?l_node ?))
  (parserid-word ?l_node ?lword)
  ?f0<-(category_to_be_decided ?l_node)
  =>
        (retract ?f0)
        (bind ?id (string_to_integer (sub-string 1 (- (length ?l_node) 2) ?l_node)))
       	(assert (apos_linkid-word-node_cat apos ?id ?lword noun/pronoun))
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;Rama is a good boy.
  (defrule determiner_rule
  (declare (salience 200))
  (link_name-link_expansion ?det D $?)
  (link_name-link_lnode-link_rnode ?det ?l_node ?r_node)
  (parserid-word ?l_node ?lword)
  ?f0<-(category_to_be_decided ?l_node)
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?l_node "  "?lword "  determiner)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;This is a sample sentence for Anusaraka. 
  (defrule prep_rule_with_J
  (declare (salience 200))
  (link_name-link_expansion ?prep J $?)
  (link_name-link_lnode-link_rnode ?prep ?l_node ?r_node)
  (parserid-word ?l_node ?lword)
  (parserid-word ?r_node ?rword)
  ?f0<-(category_to_be_decided ?l_node)
  ?f1<-(category_to_be_decided ?r_node)
  =>
        (retract ?f0 ?f1)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?l_node "  "?lword "  preposition)" crlf)
        (assert (linkid-word-node_cat ?r_node ?rword noun/pronoun))
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; I saw her sitting in the garden.
  (defrule prep_rule_with_MVp_lnode
  (link_name-link_expansion ?prep M V p)
  (link_name-link_lnode-link_rnode ?prep ?l_node ?r_node)
  (not (link_name-link_lnode-link_rnode Pa|Paf ?pl_node ?l_node))
  (parserid-word ?l_node ?lword)
  ?f1<-(category_to_be_decided ?l_node)
  =>
        (retract ?f1)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?l_node "  "?lword "  verb)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;May I go outside. I do not go out as much now . I saw her sitting in the garden.
  (defrule prep_rule_with_MVp_rnode
  (declare (salience 100))
  (link_name-link_expansion ?prep M V p)
  (link_name-link_lnode-link_rnode ?prep ?l_node ?r_node)
  (parserid-word ?r_node ?rword)
  ?f1<-(category_to_be_decided ?r_node)
  =>
        (retract ?f1)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?r_node "  "?rword "  preposition)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; John Stuart Mill is an important author
  (defrule PropN_rule_with_G
  (declare (salience 100))
  (link_name-link_lnode-link_rnode G ?l_node ?r_node)
  (parserid-word ?l_node ?lword)
  ?f1<-(category_to_be_decided ?l_node)
  =>
    	(retract ?f1 )
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?l_node "  "?lword "  PropN)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;This is my friend Bob
  (defrule PropN_rule_with_G_right
  (declare (salience 100))
  (link_name-link_lnode-link_rnode G|GN ?l_node ?r_node)
  (parserid-word ?r_node ?rword)
  ?f0<-(category_to_be_decided ?r_node)
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?r_node "  "?rword "  PropN)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;This is my friend Bob
  (defrule noun_rule_with_GN_left
  (declare (salience 100))
  (link_name-link_lnode-link_rnode GN ?l_node ?r_node)
  (parserid-word ?r_node ?lword)
  ?f0<-(category_to_be_decided ?l_node)
  =>
        (retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?l_node "  "?lword "  noun)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;The better it is, the more people will use it.
  (defrule PropN_rule_with_DG_ER
  (declare (salience 100))
  (link_name-link_lnode-link_rnode DG ?dl_node ?dr_node)
  (link_name-link_lnode-link_rnode ER ?el_node ?er_node)
  (parserid-word ?dl_node ?dlword)
  (parserid-word ?dr_node ?drword)
  ?f0<-(category_to_be_decided ?dr_node)
  ?f1<-(category_to_be_decided ?dl_node)
  =>
        (retract ?f1)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?dl_node "  "?dlword "  determiner)" crlf)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?dr_node "  "?drword "  adjective)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;I left the moment I saw him
  (defrule PropN_rule_with_DG_Cs
  (declare (salience 100))
  (link_name-link_lnode-link_rnode DG ?dl_node ?dr_node)
  (link_name-link_lnode-link_rnode Cs ?el_node ?er_node)
  (parserid-word ?dl_node ?dlword)
  (parserid-word ?dr_node ?drword)
  ?f0<-(category_to_be_decided ?dr_node)
  ?f1<-(category_to_be_decided ?dl_node)
  =>
        (retract ?f1)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?dl_node "  "?dlword "  determiner)" crlf)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?dr_node "  "?drword "  noun)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------  
  ;The Emir of Kuwait died
  (defrule PropN_rule_with_DG
  (declare (salience 50))
  (link_name-link_lnode-link_rnode DG ?dl_node ?dr_node)
  (parserid-word ?dl_node ?dlword)
  (parserid-word ?dr_node ?drword)
  ?f0<-(category_to_be_decided ?dr_node)
  ?f1<-(category_to_be_decided ?dl_node)
  =>
        (retract ?f1)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?dl_node "  "?dlword "  determiner)" crlf)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?dr_node "  "?drword "  PropN)" crlf)
  )
  ;---------------------------------------------------------------------------------------------------------------- 
  (defrule default_rule
  (declare (salience 40))
  (link_name-link_lnode-link_rnode ? ?l_node ?r_node)
  (parserid-word ?r_node ?rword)
  (parserid-word ?l_node ?lword)
  ?f0<-(category_to_be_decided ?r_node)
  ?f1<-(category_to_be_decided ?l_node)
  =>
        (retract ?f0 ?f1)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?r_node "  "?rword "  -)" crlf)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?l_node "  "?lword "  -)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  (defrule default_rnode_rule
  (declare (salience 30))
  (link_name-link_lnode-link_rnode ? ? ?r_node)
  (parserid-word ?r_node ?rword)
  ?f0<-(category_to_be_decided ?r_node) 
  =>
 	(retract ?f0 )
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?r_node "  "?rword "  -)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  (defrule default_lnode_rule
  (declare (salience 30))
  (link_name-link_lnode-link_rnode ? ?l_node ?)
  (parserid-word ?l_node ?lword)
  ?f0<-(category_to_be_decided ?l_node)
  =>
        (retract ?f0 )
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?l_node "  "?lword "  -)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; if category is noun/pronoun and the first letter is capital then modify category as PropN
  ; Jane is soon coming . The Danes are nice people.
  (defrule pronoun_rule_first_cap
  (declare (salience 10))
  ?f0<-(linkid-word-node_cat ?pid ?lword noun/pronoun)
  (parserid-wordid  ?pid ?id)
  (id-word_cap_info ?id first_cap)
  (id-original_word ?wid ?word)
  (test (eq ?lword ?word))
  =>
  	(retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?pid "  "?lword"   PropN)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; if category is noun/pronoun and if word is he|she|they|this|we|all|I|it|you then modify category as pronoun
  ; How many people did you see
  (defrule pronoun_rule
  (declare (salience 20))
  ?f0<-(linkid-word-node_cat ?pid ? noun/pronoun)
  (parserid-word ?pid ?lword&he|she|they|this|we|all|I|it|you|me|her|him|us)
  =>
               (retract ?f0)
               (printout ?*link_cat-file* "(linkid-word-node_cat  " ?pid "  "?lword"  pronoun)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; if category is noun/pronoun and the above cases fail then modify category as noun
  (defrule pronoun_rule1
  (declare (salience 5))
  ?f0<-(linkid-word-node_cat ?pid ? noun/pronoun)
 ; (parserid-word ?pid ?lword)
  (parserid-word ?pid ?lword&:(not (numberp ?lword)))
  =>
                (retract ?f0)
                (printout ?*link_cat-file* "(linkid-word-node_cat  " ?pid "  "?lword"  noun)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  (defrule apos_pronoun_rule
  (declare (salience 20))
  ?f0<-(apos_linkid-word-node_cat apos ?id ?lword noun/pronoun)
  (parserid-word ?pid ?lword&he|she|they|this|we|all|I|it|you|her|him|us)
  (test (eq (string_to_integer (sub-string 1 (- (length ?pid) 2) ?pid)) ?id))
  =>
	(retract ?f0)         
	(printout ?*link_cat-file* "(linkid-word-node_cat  " ?pid "  "?lword"  pronoun)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ;John's book is given to John's sister.
  (defrule apos_PropN_rule
  (declare (salience 10)) 
  ?f0<-(apos_linkid-word-node_cat apos ?id ?lword noun/pronoun)	
  (parserid-wordid  ?pid ?wid)
  (id-word_cap_info ?wid first_cap)
  (id-original_word ?wid ?word)
  (test (eq (string_to_integer (sub-string 1 (- (length ?pid) 2) ?pid)) ?id))
  (test (eq ?lword ?word))
   =>
  	(retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?pid "  "?lword"   PropN)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  (defrule apos_noun 
  ?f0<-(apos_linkid-word-node_cat apos ?id ?lword noun/pronoun)
  (parserid-word ?pid ?lword)
  (test (eq (string_to_integer (sub-string 1 (- (length ?pid) 2) ?pid)) ?id))
  =>
  	(retract ?f0)
        (printout ?*link_cat-file* "(linkid-word-node_cat  " ?pid "  "?lword"  noun)" crlf)
  )
  ;----------------------------------------------------------------------------------------------------------------
  ; No complete linkage
  (defrule no_comp_link
  (declare (salience -10))
  (No complete linkages found)
  =>
	(printout ?*link_cat-file* "(No complete linkages found)" crlf)
  )
