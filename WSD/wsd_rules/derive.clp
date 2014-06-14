
(defrule derive0
(declare (salience 5000))
(id-root ?id derive)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 from)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " derive.clp	derive0  "  ?id "  " ?id1 "  nikala  )" crlf))
)

;The word 'Wasser' has derived from an old German word that means 'Water'.
;'vAsara' Sabxa kI uwpawwi eka purAne jarmana Sabxa se hui hE jisakA arWa 'pAnI' hE
(defrule derive1
(declare (salience 100))
(id-root ?id derive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara))   ;meaning modified by Pramila(BU) on 30-11-2013
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  derive.clp 	derive1   "  ?id "  prApwa_kara )" crlf))
)

;default_sense && category=verb	prApwa_kara	0
;"derive","VT","1.prApwa_karanA"
;She derives a great deal of pleasure from her neighbour's garden.
;--"2.uwpanna_honA
;The present name was  derived from an older form.
;
;LEVEL 
;Headword : derive
;
;Examples --
;
;"derive","VT","1.prApwa_karanA"
;She derives a great deal of pleasure from her neighbour's garden.
;vaha padosI ke bagIce se bahuwa Ananxa prApwa karawI hE <--padosI kA bagIcA use bahuwa Ananxa xewA hE<---padZosI kA bagIcA usake mana meM Ananxa uwpanna karawA hE
;--"2.vyuwpanna_honA
;The present name was  derived from an older form.
;yaha nAma eka purAne rUpa se vyuwpanna hE.
;
;anwarnihiwa sUwra ;
;
;vyuwpanna honA -uwpanna_honA-jo uwpanna huA vaha pAnA
;
;sUwra : prApwa_karanA[<vyuwpanna_honA]
;
;

;@@@ Added by Pramila(Banasthali University)
;Descrates derived the snell's law.

(defrule derive2
(declare (salience 4900))
(id-root ?id derive)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 law|rule)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niRpAxiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  derive.clp 	derive2   "  ?id "  niRpAxiwa_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 30-11-2013
;The origin of these derived forces is, however, very complex.           ;physics
;तथापि इन व्युत्पन्न बलों का उद्भव अत्यन्त जटिल है. 
(defrule derive4
(declare (salience 4900))
(id-root ?id derive)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id derived)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyuwpanna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  derive.clp 	derive4   "  ?id "  vyuwpanna )" crlf))
)

;@@@ Added by Pramila(BU) on 20-02-2014
;Rahul was the son of Buddha and the name Lahaul is derived from Rahul.   [was verified sentence problem]
;राहुल बुद्ध का बेटा था और नाम लाहुल राहुल से बना है.
(defrule derive5
(declare (salience 4900))
(id-root ?id derive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not(kriyA-object  ?id ?id2))
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  derive.clp 	derive5   "  ?id "  bana )" crlf))
)

;@@@ Added by Pramila(BU) on 10-03-2014
;Hence if we derive an expression for the length or distance of an object regardless of the symbols appearing in the original 
;mathematical relation when all the individual dimensions are simplified the remaining dimension must be that of length.   ;ncert
;अतः यदि हम किसी पिण्ड की लम्बाई (या दूरी) के लिए व्यञ्जक व्युत्पन्न करें, तो चाहे उसमें सम्मिलित प्रतीक कुछ भी हों, उनकी विमाओं को सरल करने पर अन्त में प्रत्येक पद में लम्बाई की विमा ही 
;शेष रहनी चाहिए.....
;The dimensional formulae of a large number and wide variety of physical quantities derived from the equations representing the 
;relationships among other physical quantities and expressed in terms of base quantities are given in Appendix 9 for your guidance and 
;ready reference.   ;ncert
;विविध प्रकार की बहुत सी भौतिक राशियों के विमीय सूत्र, जिन्हें अन्य भौतिक राशियों के मध्य सम्बन्धों को निरूपित करने वाले समीकरणों से व्युत्पन्न तथा मूल राशियों के पदों में व्यक्त किया गया है, 
;आपके मार्गदर्शन एवं तात्कालिक सन्दर्भ के लिए परिशिष्ट - 9 में दिए गए हैं..
(defrule derive6
(declare (salience 4800))
(id-root ?id derive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyuwpanna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  derive.clp 	derive6   "  ?id "  vyuwpanna_kara )" crlf))
)


;@@@ Added by Pramila(BU) on 10-03-2014
;The dimensional formulae of a large number and wide variety of physical quantities derived from the equations representing the 
;relationships among other physical quantities and expressed in terms of base quantities are given in Appendix 9 for your guidance and 
;ready reference.   ;ncert
;विविध प्रकार की बहुत सी भौतिक राशियों के विमीय सूत्र, जिन्हें अन्य भौतिक राशियों के मध्य सम्बन्धों को निरूपित करने वाले समीकरणों से व्युत्पन्न तथा मूल राशियों के पदों में व्यक्त किया गया है, 
;आपके मार्गदर्शन एवं तात्कालिक सन्दर्भ के लिए परिशिष्ट - 9 में दिए गए हैं..
(defrule derive7
(declare (salience 4800))
(id-root ?id derive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?id1)
(not(kriyA-object  ?id ?id2));[added because this rule was conflicting with 'She derives a great deal of pleasure from her neighbour's garden']
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyuwpanna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  derive.clp 	derive7   "  ?id "  vyuwpanna_kara )" crlf))
)

