(deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))

 (deffunction never-called ()
 (assert (missing-level-id) )
 (assert (id-original_word))
 (assert (id_w_adv-word))
 (assert (id-original_word))
 (assert (parser_id-root-category-suffix-number))
 (assert (parser_id-root))
 (assert (id-root-tam))
 (assert (linkid-word-node_cat))
 )
;--------------------------------------------------------------------------------------------------------------------------
;we are using "(parserid-wordid )" fact in every rule in this file, and this fact is generated iff parser runs successfully, but if parser fails we will not get this fact. so none of the rules in this file will work, but then also we will do sentence analysis on some other basis then we need this fact to get these rules run, therefore  by this rule we are generatting this fact.Asumming linkid is equal to word-id Eg:- if word id is 4 link-id is L4 

(defrule assert_dummy_linkid-wrdid_fact
(declare (salience 1000))
;(No complete linkages found)
(id-original_word  ?x ?word)
(not (parserid-wordid   ?  ?x))
=>
(bind ?y (explode$ (str-cat P ?x)))
(assert (parserid-wordid   ?y  ?x))
)
;--------------------------------------------------------------------------------------------------------------------------
;They found the lost book.
;They lost the book.
(defrule en_ed_rule
(declare (salience 100))
?f0<-(parser_id-root-category-suffix-number  ?y   ?rt verb en ?num)
(word-morph (root    ?rt)(category verb)(suffix	ed))
=>
	(retract ?f0)
	(assert (id-root-tam ?y ?rt ed_en))
)
;--------------------------------------------------------------------------------------------------------------------------
(defrule ed_en_rule
(declare (salience 100))
?f0<-(parser_id-root-category-suffix-number  ?y   ?rt verb ed ?num)
(word-morph (root    ?rt)(category verb)(suffix en))
=>
	(retract ?f0)
        (assert (id-root-tam  ?y ?rt ed_en))
)
;--------------------------------------------------------------------------------------------------------------------------
(defrule en_rule
(declare (salience 90))
?f0<-(parser_id-root-category-suffix-number  ?y   ?rt verb en ?num)
=>
	(retract ?f0)
        (assert (id-root-tam ?y  ?rt ed_en))
)
;-------------------------------------------------------------------------------------------------------------------------- 
(defrule rule1
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 CONTR)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) INF)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb s ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  CONTR_INF_"?word "  CONTR_INF_NEG   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule2
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 CONTR)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb s ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  CONTR_"?word "  CONTR_NEG   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  UNKN)
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule3
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 Do)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
;(parserid-wordid   ?y  ?x)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  Do_not_"?word "  Do_not_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;मत+0
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule4
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 Let)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) her)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  Let_her_"?word "  Let_her_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नाउसको{स्त्री.}दो
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule5
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 Let)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) him)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  Let_him_"?word "  Let_him_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नाउसको{पु.}दो
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule6
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 Let)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) me)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  Let_me_"?word "  Let_me_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;ताहूँमैंलाइए
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule7
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 Let)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) them)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  Let_them_"?word "  Let_them_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नाउनकोदो
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule8
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 Let)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) us)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  Let_us_"?word "  Let_us_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;चलियेहम+?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  subj)
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule9
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 NEG)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb PRES ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  NEG_"?word "  NEG_PRES   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;नहीं
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule10
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 TO)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb INF ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  TO_"?word "  TO_INF   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  nA)
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule11
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 ed)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  ed_"?word "  ed_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;या~[हुआ]
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule12
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 against)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  against_"?word "  against_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;नेकेविरुद्ध
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule13
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 am)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) being)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  am_being_"?word "  am_being_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;को:याजारहाहै{1.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule14
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 am)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  am_"?word "  am_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;यागयाहै{1.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule15
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 am)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  am_not_"?word "  am_not_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+याहै{1.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule16
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 am)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) en)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb born ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  am_en_"?word "  am_en_born   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याहै{1.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule17
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 am)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) going)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  am_going_to_"?word "  am_going_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नेवालाहै{1.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule18
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 am)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  going)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  am_not_going_to_"?word "  am_not_going_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+नेवालाहै{1.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule19
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 am)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  am_"?word "  am_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0रहाहै{1.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule20
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 am)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  being)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  am_not_being_"?word "  am_not_being_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:नहीं+याजारहाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule21
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 am)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  am_not_"?word "  am_not_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+0रहाहै{1.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule22
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 am)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  am_not_to_be_"?word "  am_not_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+याजानाहै{1.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule23
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 am)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  am_to_"?word "  am_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नेवालाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule24
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 am)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  am_not_to_"?word "  am_not_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+नेवालाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule25
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 am)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  am_to_be_"?word "  am_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;याजानाहै{1.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule26
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 are)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) being)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  are_being_"?word "  are_being_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याजारहाहै{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule27
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 are)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  are_"?word "  are_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;यागयाहै{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule28
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 are)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) en)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb born ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  are_en_"?word "  are_en_born   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याहै{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule29
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 are)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) going)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  are_going_to_"?word "  are_going_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नेवालाहै{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule30
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 are)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  going)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  are_not_going_to_"?word "  are_not_going_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+नेवालाहै{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule31
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 are)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
;(parser_id-root ?x ?rt)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  are_"?word "  are_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0रहाहै{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule32
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 are)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  are_not_"?word "  are_not_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+0रहाहै{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule33
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 are)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  being)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  are_not_being_"?word "  are_not_being_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+याजारहाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule34
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 are)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  are_not_"?word "  are_not_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+याहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule35
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 are)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  are_not_to_be_"?word "  are_not_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+याजानाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule36
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 are)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  are_not_to_"?word "  are_not_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+नेवालाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule37
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 are)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  are_to_"?word "  are_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नेवालाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule38
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 are)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  are_to_be_"?word "  are_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;याजानाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule39
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 before)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  before_"?word "  before_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;नेकेपहले
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule40
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 being)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  being_"?word "  being_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;याजारहा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule41
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 between)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  between_"?word "  between_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;नेकेबीच
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule42
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 beyond)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  beyond_"?word "  beyond_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;नेकेपरे
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule43
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 by)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  by_"?word "  by_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0कर
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule44
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 can)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  can_"?word "  can_0   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0सकताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule45
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 can)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  can_be_"?word "  can_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याजासकताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule46
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 can)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  can_not_"?word "  can_not_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+0सकताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule47
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 can)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) never)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  can_never_"?word "  can_never_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;कभी~नहीं+0सकताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule48
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 can)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) never)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  can_never_have_"?word "  can_never_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;कभी~नहीं+0सकता
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule49
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 can)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  can_not_be_"?word "  can_not_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+याजासकताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule50
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 can)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  help)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "can_not_help_"?word "  can_not_help_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:याबिना+नहीं+रहसकता
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule51
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 cannot)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  cannot_"?word "  cannot_0   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;नहीं+0सकताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule52
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 cannot)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  cannot_be_"?word "  cannot_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+याजासकताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule53
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 could)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  could_"?word "  could_0   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0सका
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule54
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 could)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  could_be_"?word "  could_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याजासकताहै
;(defrule rule55
;(declare (salience 30))
;?f0<-(id_w_adv-word ?id0 could)
;?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
;?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
;;(id-original_word  ?x ?word)
;;;(id-root-tam ?y  ?rt ed_en) 
;(lwgid-wordid  ?id0  ?ID0)
;(lwgid-wordid  ?id1  ?ID1)
;(lwgid-wordid  ?id2  ?ID2)
;(parserid-wordid   ?y  ?x)
;=>
; (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  could_be_"?word "  could_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 ;(retract ?f0 ?f1 ?f2 ))
;;याजासका
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule56
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 could)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  could_have_been_"?word "  could_have_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;याजासकताथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule57
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 could)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  could_have_been_"?word "  could_have_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;होसकताहै+ताहो
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule58
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 could)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  could_have_"?word "  could_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;0सकताथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule59
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 can)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  can_have_"?word "  can_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule60
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 cannot)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  cannot_have_"?word "  cannot_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+याहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule61
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 can)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  can_not_have_"?word "  can_not_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+याहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule62
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 could)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  could_not_"?word "  could_not_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+0सका
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule63
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 could)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  could_not_be_"?word "  could_not_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+याजासका
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule64
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 could)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  been)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  could_not_have_been_"?word "  could_not_have_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+याजासकताथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule65
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 could)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  been)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  could_not_have_been_"?word "  could_not_have_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;होसकताहैनहीं+ताहो
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule66
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 could)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  could_not_have_"?word "  could_not_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+0सकताथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule67
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 could)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  help)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  could_not_help_"?word "  could_not_help_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:याबिना+नहीं+रहसका
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule68
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 dare)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  dare_"?word "  dare_0   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;में:नाकीहिम्मतहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule69
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 did)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  did_"?word "  did_0   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;याथा~{निश्चय}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule70
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 did)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) dare)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  did_dare_"?word "  did_dare_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;में:नाकीहिम्मतथी
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule71
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 did)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  did_have_to_"?word "  did_have_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:नापडा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule72
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 did)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  did_have_to_be_"?word "  did_have_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नापडताथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule73
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 did)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  did_not_"?word "  did_not_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+याथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule74
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 did)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  dare)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  did_not_dare_"?word "  did_not_dare_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;में:नाकीहिम्मत+नहीं+थी
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule75
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 did)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  did_not_have_to_"?word "  did_not_have_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;को:ना+नहींपडा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule76
(declare (salience 60))
?f0<-(id_w_adv-word ?id0 did)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) be)
?f5<-(id_w_adv-word ?id5& :(=(+ ?id4 1) ?id5 )  ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
(lwgid-wordid  ?id5  ?ID5)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  did_not_have_to_be_"?word "  did_not_have_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 "  " ?ID5 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ?f5 ))
;ना+नहींपडताथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule77
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 did)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  like)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  did_not_like_to_"?word "  did_not_like_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नापसन्दनहींकरताथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule78
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 did)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  use)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  did_not_use_to_"?word "  did_not_use_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+याकरताथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule79
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 do)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  do_"?word "  do_0   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;ताहै{3.ए.}{निश्चय}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule80
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 do)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  do_have_to_"?word "  do_have_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को{कर्ता}:नापडेगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule81
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 do)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  do_have_to_be_"?word "  do_have_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;को{कर्म}:नापडेगा`
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule82
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 do)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  do_not_"?word "  do_not_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+ताहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule83
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 do)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  dare)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  do_not_dare_"?word "  do_not_dare_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;में:नाकीहिम्महै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule84
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 do)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  do_not_have_to_"?word "  do_not_have_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;को:नहीं+नाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule85
(declare (salience 60))
?f0<-(id_w_adv-word ?id0 do)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) be)
?f5<-(id_w_adv-word ?id5& :(=(+ ?id4 1) ?id5 )  ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
(lwgid-wordid  ?id5  ?ID5)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  do_not_have_to_be_"?word "  do_not_have_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 "  " ?ID5 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ?f5 ))
;नेकीज़रूरतनहींहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule86
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 do)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  like)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  do_not_like_to_"?word "  do_not_like_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नापसन्दनहींकरताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule87
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 does)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  does_"?word "  does_0   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;ताहै{निश्चय}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule88
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 does)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) dare)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  does_dare_"?word "  does_dare_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;में:नाकीहिम्मत+नहीं+है
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule89
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 does)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  does_have_to_"?word "  does_have_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:नापडेगा{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule90
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 does)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  does_have_to_be_"?word "  does_have_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;को{कर्म}:नापडेगा`{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule91
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 does)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  does_not_"?word "  does_not_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+ताहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule92
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 does)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  dare)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  does_not_dare_"?word "  does_not_dare_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;में:नाकीहिम्मत+नहीं+थी
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule93
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 does)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  does_not_have_to_"?word "  does_not_have_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;को:नहीं+नाहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule94
(declare (salience 60))
?f0<-(id_w_adv-word ?id0 does)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) be)
?f5<-(id_w_adv-word ?id5& :(=(+ ?id4 1) ?id5 )  ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
(lwgid-wordid  ?id5  ?ID5)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  does_not_have_to_be_"?word "  does_not_have_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 "  " ?ID5 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ?f5 ))
;नेकीज़रूरतनहींहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule95
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 does)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  like)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  does_not_like_to_"?word "  does_not_like_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नापसन्दनहींकरताहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule97
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 from)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  from_"?word "  from_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;नेसे
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule98
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 get)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  get_"?word "  get_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0होजाताहै{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule99
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 gets)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  gets_"?word "  gets_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0होजाताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule100
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 got)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  got_"?word "  got_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;यागया
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule101
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 had)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) been)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  had_been_"?word "  had_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;यागयाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule102
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 had)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) been)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  had_been_"?word "  had_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;तारहाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule103
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 had)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  had_"?word "  had_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0चुकाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule104
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 had)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) got)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  had_got_to_be_"?word "  had_got_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;0देनापडा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule105
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 had)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) just)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  had_just_"?word "  had_just_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याहीथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule106
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 had)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  had_not_been_"?word "  had_not_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+यागयाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule107
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 had)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  had_not_been_"?word "  had_not_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+0रहाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule108
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 had)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  had_not_"?word "  had_not_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+0चुकाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule109
(declare (salience 60))
?f0<-(id_w_adv-word ?id0 had)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  got)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) be)
?f5<-(id_w_adv-word ?id5& :(=(+ ?id4 1) ?id5 )  ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
(lwgid-wordid  ?id5  ?ID5)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  had_not_got_to_be_"?word "  had_not_got_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 "  " ?ID5 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ?f5 ))
;नहीं+0देनापडा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule110
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 had)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  had_not_to_be_"?word "  had_not_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+ना1पडेगाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule111
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 had)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt "  had_to_"?word "  had_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;को:नापडा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule112
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 had)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  had_to_be_"?word "  had_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नाहीथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule113
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 has)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) been)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  has_been_"?word "  has_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;यागयाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule114
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 has)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) been)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root ?x ?root)
(parser_id-root-category-suffix-number  ?y  ?root  verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
(printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?root   "  has_been_"?word "  has_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))

;तारहाहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule115
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 has)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  has_"?word "  has_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0चुकाहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule116
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 has)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) got)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  has_got_to_be_"?word "  has_got_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;याहीजानाहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule117
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 has)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  has_not_been_"?word "  has_not_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+यागयाहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule118
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 has)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  has_not_been_"?word "  has_not_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+तारहाहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule119
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 has)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  has_not_"?word "  has_not_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+0चुकाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule120
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 has)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) never)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  has_never_"?word "  has_never_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+0चुकाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule121
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 has)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) never)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  has_never_"?word "  has_never_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;कभीनहीं+0चुकाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule122
(declare (salience 60))
?f0<-(id_w_adv-word ?id0 has)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  got)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) be)
?f5<-(id_w_adv-word ?id5& :(=(+ ?id4 1) ?id5 )  ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
(lwgid-wordid  ?id5  ?ID5)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  has_not_got_to_be_"?word "  has_not_got_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 "  " ?ID5 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ?f5 ))
;हीनहीं+याजानाहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule123
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 has)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  has_not_to_be_"?word "  has_not_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+ना1पडेगा{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule124
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 has)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  has_to_"?word "  has_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;को:नाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule125
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 has)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  has_to_be_"?word "  has_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नाहीहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule126
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 have)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) been)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  have_been_"?word "  have_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;यागयाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule127
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 have)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) been)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  have_been_"?word "  have_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;तारहाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule128
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 have)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  have_"?word "  have_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0चुकाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule129
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 have)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) got)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  have_got_to_be_"?word "  have_got_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;याहीजानाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule130
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 have)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  have_not_been_"?word "  have_not_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+यागयाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule131
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 have)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  have_not_been_"?word "  have_not_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+तारहाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule132
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 have)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  have_not_"?word "  have_not_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+0चुकाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule133
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 have)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) never)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  have_never_"?word "  have_never_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+0चुकाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule134
(declare (salience 60))
?f0<-(id_w_adv-word ?id0 have)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  got)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) be)
?f5<-(id_w_adv-word ?id5& :(=(+ ?id4 1) ?id5 )  ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
(lwgid-wordid  ?id5  ?ID5)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  have_not_got_to_be_"?word "  have_not_got_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 "  " ?ID5 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ?f5 ))
;नहीं+याजानाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule135
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 have)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  have_not_to_be_"?word "  have_not_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+ना1पडेगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule136
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 have)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  have_to_"?word "  have_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;को:नाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule137
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 have)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  have_to_be_"?word "  have_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नाहीहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule138
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 having)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  having_"?word "  having_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0चुकनेकेबाद
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule139
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 in)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  in_"?word "  in_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;नेमें
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule140
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 into)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  into_"?word "  into_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;नेपर
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule141
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 is)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) being)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  is_being_"?word "  is_being_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याजारहाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule142
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 is)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  is_"?word "  is_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;यागयाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule143
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 gets)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  gets_"?word "  gets_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;याजाताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule144
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 get)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  get_"?word "  get_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;याजाताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule145
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 is)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) en)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb born ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  is_en_"?word "  is_en_born   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule146
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 is)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) going)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  is_going_to_"?word "  is_going_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नेवालाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule147
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 is)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  going)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  is_not_going_to_"?word "  is_not_going_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+नेवालाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule148
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 is)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  is_"?word "  is_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0रहाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule149
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 is)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) never)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  is_never_to_be_"?word "  is_never_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;कभीनहीं+याजानाहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule150
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 is)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  being)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  is_not_being_"?word "  is_not_being_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+याजारहाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule151
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 is)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  is_not_"?word "  is_not_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+यागयाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule152
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 is)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  is_not_"?word "  is_not_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+0रहाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule153
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 is)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  is_not_to_"?word "  is_not_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+नेवालाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule154
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 is)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  is_to_"?word "  is_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नेवालाहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule155
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 is)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  is_to_be_"?word "  is_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;याजानाहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule156
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 keep)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  keep_"?word "  keep_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))

;तारहताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule157
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 keep)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) on)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  keep_on_"?word "  keep_on_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;तारहताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule158
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 keeps)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  keeps_"?word "  keeps_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;तारहताहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule159
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 keeps)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) on)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  keeps_on_"?word "  keeps_on_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;तारहताहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule160
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 kept)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  kept_"?word "  kept_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;तारहा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule161
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 kept)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) on)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  kept_on_"?word "  kept_on_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;तारहा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule162
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 let)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) her)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  let_her_"?word "  let_her_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नाउसको{स्त्री.}दो
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule163
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 let)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) him)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  let_him_"?word "  let_him_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नाउसको{पु.}दो
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule164
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 let)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) me)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  let_me_"?word "  let_me_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;ताहूँमैंलाइए
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule165
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 let)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) them)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  let_them_"?word "  let_them_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नाउनकोदो
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule166
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 let)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) us)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  let_us_"?word "  let_us_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;चलियेहम+?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  subj)
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule167
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 like)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  like_to_"?word "  like_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नापसन्दकरताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule168
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 liked)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  liked_to_"?word "  liked_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नापसन्दकरताथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule169
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 likes)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  likes_to_"?word "  likes_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नापसन्दकरताहै{3.ए.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule170
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 may)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  may_"?word "  may_0   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0{सम्भावना}सकताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule171
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 may)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  may_be_"?word "  may_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याजासकताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule172
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 may)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  may_have_been_"?word "  may_have_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;होसकताहै+तारहाहो
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule173
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 may)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  may_have_"?word "  may_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule174
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 may)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  may_have_been_"?word "  may_have_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;यागयाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule175
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 may)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) need)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  may_need_to_"?word "  may_need_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नाकीजरूथपडसकतीहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule176
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 may)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  may_not_"?word "  may_not_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+0सकता~{संभावना}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule177
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 may)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  been)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  may_not_have_been_"?word "  may_not_have_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;होसकताहैनहीं+तारहाहो
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule178
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 may)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  may_not_have_"?word "  may_not_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+याहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule179
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 may)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  been)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  may_not_have_been_"?word "  may_not_have_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+यागयाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule180
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 might)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  might_"?word "  might_0   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0सकताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule181
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 might)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  might_be_"?word "  might_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याजासकताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule182
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 might)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  might_be_"?word "  might_be_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;होसकताहै+0रहाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule183
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 might)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  might_have_been_"?word "  might_have_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;याहुआहोसकताहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule184
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 might)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  might_have_"?word "  might_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;शायद+याहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule185
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 might)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  might_not_"?word "  might_not_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;होसकताहैनहीं+एँ
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule186
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 might)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "   might_not_be_"?word "  might_not_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+याजासके
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule187
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 might)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  might_not_be_"?word "  might_not_be_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;होसकताहैनहीं+याहो
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule188
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 might)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  been)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  might_not_have_been_"?word "  might_not_have_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+0रहाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule189
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 might)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  might_not_have_"?word "  might_not_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;होसकताहैनहीं+याहो
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule190
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 must)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  must_"?word "  must_0   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;को:नाचाहिये
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule191
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 must)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  must_be_"?word "  must_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule192
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 must)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  must_be_"?word "  must_be_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;तारहाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule193
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 must)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  must_have_been_"?word "  must_have_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;यागयाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule194
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 must)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  must_have_been_"?word "  must_have_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;0रहाहोगा{निश्चितरूपसे}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule195
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 must)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  must_have_"?word "  must_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याहोगा{निश्चितरूपसे}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule196
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 must)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  not)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  been)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  must_have_not_been_"?word "  must_have_not_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+तारहाहोगा{निश्चितरूपसे}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule197
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 must)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  not)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  must_have_not_"?word "  must_have_not_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+याहोगा{निश्चितरूपसे}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule198
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 must)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  must_not_"?word "  must_not_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;को:नहीं+नाचाहिये
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule199
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 must)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  must_not_be_"?word "  must_not_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+नाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule200
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 must)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  must_not_be_"?word "  must_not_be_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+तारहा[होगा]
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule201
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 must)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  been)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam ?y  ?rt ed_en) 
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  must_not_have_been_"?word "  must_not_have_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+यागयाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule202
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 must)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  been)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  must_not_have_been_"?word "  must_not_have_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+0रहाहोगा[सम्भवतः]
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule203
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 must)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  must_not_have_"?word "  must_not_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+याहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule204
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 need)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  need_not_"?word "  need_not_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;को:नहीं+नाकीज़रूरतहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule205
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 need)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  need_to_"?word "  need_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;को:नाकीज़रूरतहै
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule206
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 never)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  never_"?word "  never_0   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;कभीनहीं+0
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule207
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 not)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) having)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  not_having_"?word "  not_having_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+नाकेकारण
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule208
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 not)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  not_to_"?word "  not_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+ना
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule209
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 not)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  not_"?word "  not_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;नहीं+याहुआ
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule210
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 of)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  of_"?word "  of_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;नेकेबारेमें
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule211
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 on)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  on_"?word "  on_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;नेपर
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule212
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 ought)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  ought_not_to_"?word "  ought_not_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:नहीं+नाचाहिये
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule213
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 ought)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  ought_not_to_be_"?word "  ought_not_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;को:नहीं+याजानाचाहिये
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule214
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 ought)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  have)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  ought_not_to_have_"?word "  ought_not_to_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;को:नहीं+नाचाहियेथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule215
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 ought)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  ought_to_"?word "  ought_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;को:नाचाहिये
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule216
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 ought)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  ought_to_be_"?word "  ought_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:याजानाचाहिये
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule217
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 ought)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  ought_to_have_"?word "  ought_to_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:नाचाहियेथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule218
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 shall)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  shall_"?word "  shall_0   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;{शिष्ट}गा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule219
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 shall)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  shall_have_to_"?word "  shall_have_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule220
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 shall)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  shall_be_"?word "  shall_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याजायेगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule221
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 shall)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  shall_not_"?word "  shall_not_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+गा{शिष्ट}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule222
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 should)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  should_"?word "  should_0   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;को:नाचाहिये
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule223
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 should)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  should_be_"?word "  should_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याजानाचाहियेको:याजानाचाहिये
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule224
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 should)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  should_be_"?word "  should_be_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नाचाहिये
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule225
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 should)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  should_be_to_"?word "  should_be_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:नाकाचाहियेहोना
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule226
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 should)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  should_have_been_"?word "  should_have_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:नाचाहियेथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule227
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 should)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  should_have_been_"?word "  should_have_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:तारहनाचाहियेथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule228
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 should)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  should_have_"?word "  should_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;को:नाचाहियेथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule229
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 should)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  should_not_"?word "  should_not_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;को:नहीं+नाचाहिये
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule230
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 should)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) never)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  should_never_"?word "  should_never_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;को:कभीनहीं+नाचाहिये
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule231
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 should)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  should_not_be_"?word "  should_not_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:नहीं+0जानाचाहिये
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule232
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 should)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  should_not_be_to_"?word "  should_not_be_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहींचाहियेहोनाकाना
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule233
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 should)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  been)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  should_not_have_been_"?word "  should_not_have_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;को:नहीं+याचाहियेथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule234
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 should)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  been)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  should_not_have_been_"?word "  should_not_have_been_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;को:नहीं+तारहनाचाहियेथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule235
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 should)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  should_not_have_"?word "  should_not_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:नहीं+नाचाहियेथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule237
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 to)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  to_be_"?word "  to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याहुआहोना
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule238
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 to)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  to_be_"?word "  to_be_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;ताहुआ[होना]
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule239
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 towards)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  towards_"?word "  towards_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;नेकेलिये
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule240
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 used)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  used_to_"?word "  used_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याकरताथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule241
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 was)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) being)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  was_being_"?word "  was_being_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याजारहाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule242
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 was)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "   was_"?word "  was_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;यागयाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule243
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 got)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "   got_"?word "  got_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;यागया
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule244
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 was)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) never)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  was_never_"?word "  was_never_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;कभीनहीं+यागयाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule245
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 was)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) en)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb born ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  was_en_"?word "  was_en_born   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule246
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 was)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) going)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  was_going_to_"?word "  was_going_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नेवालाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule247
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 was)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  going)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  was_not_going_to_"?word "  was_not_going_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+नेवालाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule248
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 was)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  was_"?word "  was_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0रहाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule249
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 was)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  being)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  was_not_being_"?word "  was_not_being_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+याजारहाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule250
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 was)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  was_not_"?word "  was_not_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+याथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule251
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 was)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  was_not_"?word "  was_not_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+0रहाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule252
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 was)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  was_not_to_be_"?word "  was_not_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+याजानाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule253
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 was)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  was_not_to_"?word "  was_not_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+नेवालाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule254
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 was)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  was_to_"?word "  was_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नेवालाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule255
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 was)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  was_to_be_"?word "  was_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;याजानाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule256
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 were)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) being)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  were_being_"?word "  were_being_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याजारहाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule257
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 were)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "   were_"?word "  were_en   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;यागयाथा{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule258
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 were)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) en)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb born ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  were_en_"?word "  were_en_born   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याथा{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule259
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 were)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) going)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  were_going_to_"?word "  were_going_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नेवालाथा{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule260
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 were)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  going)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  were_not_going_to_"?word "  were_not_going_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+नेवालाथा{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule261
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 were)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  were_"?word "  were_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;0रहाथा{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule262
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 were)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  being)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  were_not_being_"?word "  were_not_being_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+याजारहाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule263
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 were)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  were_not_"?word "  were_not_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+याथा{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule264
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 were)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  were_not_"?word "  were_not_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+0रहाथा{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule265
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 were)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  were_not_to_be_"?word "  were_not_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+याजानाथा{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule266
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 was)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  was_not_to_"?word "  was_not_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+नेवालाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule267
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 were)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  were_to_"?word "  were_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नेवालाथा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule268
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 were)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) to)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  were_to_be_"?word "  were_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;याजानाथा{ब.}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule269
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_"?word "  will_0   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;गा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule270
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_be_"?word "  will_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याजायेगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule271
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_be_"?word "  will_be_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;0रहाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule272
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_have_"?word "  will_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;0लियाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule273
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_have_to_"?word "  will_have_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:नापडेगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule274
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) keep)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  on)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_keep_on_"?word "  will_keep_on_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:नाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule275
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_have_to_be_"?word "  will_have_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नापडेगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule276
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_have_been_"?word "  will_have_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;याहुआहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule277
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  been)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_not_have_been_"?word "  will_not_have_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;याहुआनहींहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule278
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) need)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "   will_need_to_"?word "  will_need_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नाकीज़रूरतहोगी
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule279
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) need)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_need_to_"?word "  will_need_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नापडेगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule280
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_not_"?word "  will_not_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+गा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule281
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) never)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_never_"?word "  will_never_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;कभीनहीं+गा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule282
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_not_be_"?word "  will_not_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+गा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule283
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_not_be_"?word "  will_not_be_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+0रहाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule284
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_not_have_"?word "  will_not_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+0लियाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule285
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_not_have_to_"?word "  will_not_have_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+नाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule286
(declare (salience 60))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) be)
?f5<-(id_w_adv-word ?id5& :(=(+ ?id4 1) ?id5 )  ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
(lwgid-wordid  ?id5  ?ID5)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_not_have_to_be_"?word "  will_not_have_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 "  " ?ID5 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ?f5 ))
;नहीं+ना2पडेगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule287
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 without)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "without_"?word"  without_ing   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;याबिना
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule288
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_"?word "  would_0   " ?ID0 "  " ?ID1 ")" crlf )
 (retract ?f0 ?f1 ))
;गा`
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule289
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_be_"?word "  would_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याजायेगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule290
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) be)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_be_"?word "  would_be_ing   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;0रहाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule291
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_have_been_"?word "  would_have_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;याहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule292
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_have_"?word "  would_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;याहोता
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule293
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_have_to_"?word "  would_have_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;को:नाहोगा{अनिश्चित}
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule294
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  be)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_have_to_be_"?word "  would_have_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule295
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) like)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_like_to_"?word "  would_like_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नापसन्दकरगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule296
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 should)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) like)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  to)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  should_like_to_"?word "  should_like_to_0   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नापसन्दकरगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule297
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) never)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_never_"?word "  would_never_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;कभीनहीं+गा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule298
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_not_"?word "  would_not_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+गा`
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule299
(declare (salience 30))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_not_"?word "  would_not_0   " ?ID0 "  " ?ID1 "  " ?ID2 ")" crlf )
 (retract ?f0 ?f1 ?f2 ))
;नहीं+या`होता
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule300
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_not_be_"?word "  would_not_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+याजायेगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule301
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  be)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ing ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_not_be_"?word "  would_not_be_ing   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+0रहाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule302
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  been)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_not_have_been_"?word "  would_not_have_been_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;नहीं+याहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule303
(declare (salience 40))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_not_have_"?word "  would_not_have_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ))
;नहीं+याहोता
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule304
(declare (salience 60))
?f0<-(id_w_adv-word ?id0 would)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) not)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  have)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  to)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) be)
?f5<-(id_w_adv-word ?id5& :(=(+ ?id4 1) ?id5 )  ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
(lwgid-wordid  ?id5  ?ID5)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  would_not_have_to_be_"?word "  would_not_have_to_be_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 "  " ?ID5 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ?f5 ))
;नहीं+नाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule305
(declare (salience 50))
?f0<-(id_w_adv-word ?id0 will)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) have)
?f2<-(id_w_adv-word ?id2& :(=(+ ?id1 1) ?id2 )  been)
?f3<-(id_w_adv-word ?id3& :(=(+ ?id2 1) ?id3 )  being)
?f4<-(id_w_adv-word ?id4& :(=(+ ?id3 1) ?id4 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
(lwgid-wordid  ?id2  ?ID2)
(lwgid-wordid  ?id3  ?ID3)
(lwgid-wordid  ?id4  ?ID4)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "  will_have_been_being_"?word "  will_have_been_being_en   " ?ID0 "  " ?ID1 "  " ?ID2 "  " ?ID3 "  " ?ID4 ")" crlf )
 (retract ?f0 ?f1 ?f2 ?f3 ?f4 ))
;जारहाहोगा
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule306
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 0)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb not ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt"   "?word"_not" "  0_not  " ?ID0  ")"  crlf )
 (retract ?f0 ?f1))
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule307
(declare (salience 20))
?f0<-(id_w_adv-word ?id0 TO)
?f1<-(id_w_adv-word ?id1& :(=(+ ?id0 1) ?id1 ) ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb INF ?num)
(lwgid-wordid  ?id0  ?ID0)
(lwgid-wordid  ?id1  ?ID1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "     "?word"_INF" " TO_INF  " ?ID0  ")"  crlf )
 (retract ?f0 ?f1))
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule308
?f0<-(id_w_adv-word ?id0 ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb COMP ?num)
(lwgid-wordid  ?id0  ?ID0)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt "     " ?word "  COMP  " ?ID0  ")"  crlf )
 (retract ?f0 ) ) 
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule309
?f0<-(id_w_adv-word ?id0 ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb SUPER ?num)
(lwgid-wordid  ?id0  ?ID0)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "     " ?word" SUPER  " ?ID0  ")"  crlf )
 (retract ?f0 ) )
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule310
?f0<-(id_w_adv-word ?id0 ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb ed ?num)
(lwgid-wordid  ?id0  ?ID0)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "     "?word" ed  " ?ID0  ")"  crlf )
 (retract ?f0 ) )
;--------------------------------------------------------------------------------------------------------------------------
; Modified the print statement from
;(printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "     "?word" en  " ?ID0  ")"  crlf )  to
;(printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "     "?word" ed_en  " ?ID0  ")"  crlf )
;(by Mahalaxmi 22-09-09 Eg:"The page turned from red to green ." )
(defrule rule311
?f0<-(id_w_adv-word ?id0 ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(id-root-tam  ?y ?rt ed_en)
(lwgid-wordid  ?id0  ?ID0)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "     "?word" ed_en  " ?ID0  ")"  crlf )
 (retract ?f0 ))
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule312
?f0<-(id_w_adv-word ?id0 ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb 0 ?num)
(lwgid-wordid  ?id0  ?ID0)
(id-original_word =(- ?x 1) ?word1&~to)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "     "?word" 0  " ?ID0  ")"  crlf )
 (retract ?f0 ) )
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule312_start_id
?f0<-(id_w_adv-word ?id0 ?word)
(id-original_word  1 ?word)
(parser_id-root-category-suffix-number  P1   ?rt verb 0 ?num)
(lwgid-wordid  1  1)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "     "?word" 0   1  )"  crlf )
 (retract ?f0 ) )
;--------------------------------------------------------------------------------------------------------------------------
(defrule rule313
?f0<-(id_w_adv-word ?id0 ?word)
(id-original_word  ?x ?word)
(parserid-wordid   ?y  ?x)
(parser_id-root-category-suffix-number  ?y   ?rt verb s ?num)
(lwgid-wordid  ?id0  ?ID0)
=>
 (printout  old_lwg_file  "(lwg_root-verbchunk-tam-chunkids   "  ?rt   "     "?word" s  " ?ID0  ")"  crlf )
 (retract ?f0 ) )


