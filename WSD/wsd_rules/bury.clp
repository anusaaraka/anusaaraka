;don't let the boss bury his head in sand (idiom: to ignore facts)


(defrule bury0
(declare (salience 5000))
(id-root ?id bury)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 sand)
(id-word ?id2 head)
(id-word ?id3 his|her|your|their)
(kriyA-in_saMbanXI ?id ?id1)
(kriyA-object ?id ?id2)
(viSeRya-RaRTI_viSeRaNa ?id2 ?id3)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ?id2 ?id3 anxeKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bury.clp	bury0  "  ?id "  " ?id1 " "?id2" "?id3" anxeKA  )" crlf))
)

;bury the hatched
;I think the best thing you can do is to keep away from your in-laws for a few weeks and then try to find a way to bury the hatchet.
;A weekend of fresh starts help you bury the hatchet with a friend.
;Raj and Kamal buried the hatchet after a nine year struggle .

(defrule bury2
(declare (salience 5000));salience changed by Garima Singh
(id-root ?id bury)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 hatchet)
(id-word ?id2 the)
(kriyA-object ?id ?id1)
(viSeRya-det_viSeRaNa ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ?id2 ApasI_manamutAva_mitA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bury.clp	bury2  "  ?id "  " ?id1 "  "?id2" ApasI_manamutAva_mitA  )" crlf))
)

;He took his to Ganga to bury.
;His wife wanted to bury him in consecrated ground.

(defrule bury3
(declare (salience 4000));salience reduced by Garima Singh. conflict 'bury7'
(id-root ?id bury)
?mng <-(meaning_to_be_decided ?id)
(to-infinitive ? ?id) 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaPana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bury.clp 	bury3   "  ?id "  xaPana_kara )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)11-Feb-2014
;Your letter got buried under a pile of papers.[oald]
;आपका पञ कागजों के ढेर के नीचे दब/छिप गया था . 
(defrule bury5
(declare (salience 4500))
(id-root ?id bury)
?mng <-(meaning_to_be_decided ?id)
(kriyA-under_saMbanXI  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-root ?id2 soil|rock|leaf|snow|paper)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bury.clp 	bury5   "  ?id "  xaba )" crlf))
)
;conflict:The house was buried under ten feet of snow.(active or passive voice could not be determined)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)11-Feb-2014
;Your letter got buried under a pile of papers.[oald]
;आपका पञ कागजों के ढेर के नीचे दब/छिप गया था . 
(defrule bury6
(declare (salience 4500))
(id-root ?id bury)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?id1)
(id-root ?id1 hand)
(kriyA-object  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CipA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bury.clp 	bury6   "  ?id "  CipA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)11-Feb-2014
;She had learnt to bury her feelings.[oald]
;वह अपनी भावनाओं को छिपाना सीख गयी है
(defrule bury7
(declare (salience 4500))
(id-root ?id bury)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?kri ?id )
(to-infinitive  =(- ?id 1) ?id)
;(kriyA-object  ?id ?id1);uncomment this and the line below if any conflict is found
;(id-root ?id1 feeling|emotion)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) CipA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bury.clp	bury7  "  ?id "  " (- ?id 1) "  CipA )" crlf))
)



;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)11-Feb-2014
;He walked slowly, his hands buried in his pockets.[oald]
;वह उसके हाथों को उसकी जेबों में घुसाये हुये धीरे धीरे चला, . 
(defrule bury8
(declare (salience 4500))
(id-root ?id bury)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(viSeRya-RaRTI_viSeRaNa  ?sub ?)
(kriyA-in_saMbanXI  ?id ?i)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GusA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bury.clp 	bury8   "  ?id "  GusA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)11-Feb-2014
;Since she left, he's buried himself in his work.[oald]
;जब से वह चली गई, उसने खुद को काम में पूरी तरह डुबा/लगा लिया है 
(defrule bury9
(declare (salience 4500))
(id-root ?id bury)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?)
(kriyA-object  ?id ?obj)
(id-word ?obj himself|herself|yourself)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrI_warah_se_dubA_le))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bury.clp 	bury9   "  ?id "  pUrI_warah_se_dubA_le )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " bury.clp    bury9   "  ?id " ko )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)11-Feb-2014
;The dog had buried its bone in the garden.[oald]
;कुत्ते ने हड्डी बगीचे में गाड़ दी
(defrule bury10
(declare (salience 100))
(id-root ?id bury)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject  ?id ?id1)(kriyA-object  ?id ?id1))
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bury.clp 	bury10   "  ?id "  gAdZa )" crlf))
)

;*******************************DEFAULT RULES*****************************************

;But so far only four men have been buried and no autopsy results have been disclosed.  
;Probably this deputation, sent from whatever authority it was that had stupidly persisted in burying her, had been sent to apologise.   
(defrule bury4
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id bury)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaPanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bury.clp 	bury4   "  ?id "  xaPanA )" crlf))
)



;*********************************EXAMPLES*********************************

;OALD EXAMPLES:
;***************
;He was buried in Highgate Cemetery.
;Their ambitions were finally dead and buried.
;She's 85 and has buried three husbands.
 
;Buried treasure.
;The dog had buried its bone in the garden.
 
;The house was buried under ten feet of snow.
;The miners were buried alive when the tunnel collapsed.
;Your letter got buried under a pile of papers.
;He buried his face in his hands and wept.
 
;She had learnt to bury her feelings.
 
;He walked slowly, his hands buried in his pockets.
;She always has her head buried in a book.

;After not speaking to each other for years, the two brothers decided to bury the hatchet.
;Since she left, he's buried himself in his work.
;She buried herself in the country to write a book.

