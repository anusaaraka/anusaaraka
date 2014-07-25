
(defrule trace0
(declare (salience 5000))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tracing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pAraxarSaka_kAgaja_meM_nakala_uwAranA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  trace.clp  	trace0   "  ?id "  pAraxarSaka_kAgaja_meM_nakala_uwAranA )" crlf))
)

;"tracing","N","1.pAraxarSaka_kAgaja_meM_nakala_uwAranA"
;The students did the tracing of the pictures.
;
(defrule trace1
(declare (salience 4900))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trace.clp 	trace1   "  ?id "  niSAna )" crlf))
)

;"trace","N","1.niSAna"
;The thieves disappeared without a trace.
;--"2.kuCa"
;There is a trace of adulteration in the food.
;--"1.bAzXane_vAlA"
;Traces of horses are kept in the stables.
;
(defrule trace2
(declare (salience 4800))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id DUzDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trace.clp 	trace2   "  ?id "  DUzDa )" crlf))
)

;"trace","VT","1.DUzDanA"
;You have to trace the bag which you have misplaced.
;--"2.jadZeM_Koja_nikAlanA"
;The book traces the causes of the downfall of the Mughal empire.
;Harappan culture has been traced from the pots found during excavations.
;--"3.nakala_uwAranA"
;Trace the map of India.
;

;@@@ Added by Prachi Rathore[31-12-13]
;She traced a line in the sand. [oald]
;उसने रेत में लाइन बनाई . 
(defrule trace3
(declare (salience 5000))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?d1)
(id-root ?id1 line|pattern)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trace.clp 	trace3   "  ?id "  banA )" crlf))
)

;@@@ Added by Prachi Rathore[31-12-13]
;Trace the map of India.[sentence of this file]
;इंडिया के मानचित्र की नकल उतारो. 
(defrule trace4
(declare (salience 5000))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 map)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakala_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trace.clp 	trace4  "  ?id "  nakala_uwAra)" crlf))
)

;@@@ Added by Prachi Rathore[31-12-13]
;The phone company were unable to trace the call.[cambridge]
;टेलीफोन कम्पनियाँ काल का पता लगाने में असमर्थ थीं . 
(defrule trace5
(declare (salience 5000))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?d1)
(id-root ?id1 call)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trace.clp 	trace5  "  ?id "  pawA_lagA)" crlf))
)


;@@@ Added by Prachi Rathore[31-12-13]
;There was the faintest trace of a smile on her lips.[cambridge]
;उसके ओंठों पर  मुस्कुराहट का एकअस्पष्ट संकेत था . 
(defrule trace6
(declare (salience 5500))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 smile|sarcasm)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trace.clp 	trace6  "  ?id "  saMkewa)" crlf))
)

;@@@ Added by Prachi Rathore[31-12-13]
;"She learned to write her name by tracing out the letters. "[cambridge]
;उसने उसका नाम अक्षरों का अनुरेखन करके लिखना सीखा . 
(defrule trace7
(declare (salience 5500))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  ?id1 anureKana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trace.clp	trace7  "  ?id "  "  ?id1 "  anureKana_kara )" crlf))
)

;@@@ Added by Prachi Rathore[31-12-13]
;The book traces the causes of the downfall of the Mughal empire.[sentence of this file]
;पुस्तक मुगल साम्राज्य के पतन के कारण की जडें खोज निकालती है . 
(defrule trace8
(declare (salience 5500))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 book|culture)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jadZeM_Koja_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trace.clp 	trace7  "  ?id "  jadZeM_Koja_nikAla)" crlf))
)


;@@@ Added by Prachi Rathore[31-12-13]
;The leak was eventually traced to a broken seal.[oald]
;अन्त में छिद्र एक टूटी हुई मोहर में  मिला था . 
(defrule trace9
(declare (salience 5500))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?)
(kriyA-object  ?id ?id1)
(not(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str))))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trace.clp 	trace9  "  ?id "  mila)" crlf))
)

;@@@ Added by Prachi Rathore[31-12-13]
;There is a trace of adulteration in the food. [sentence from this file]
(defrule trace10
(declare (salience 5000))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpa_mAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trace.clp 	trace6  "  ?id "  alpa_mAwrA)" crlf))
)

;@@@ Added by Prachi Rathore
; He attempted to cover up all the traces of his crime.[cambridge]
; उसने उसके अपराध के सभी सुरागो को छिपाने का प्रयास किया . 
(defrule trace11
(declare (salience 5500))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 prisoner|crime)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id surAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trace.clp 	trace11  "  ?id "  surAga)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_trace4
(declare (salience 5000))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 map)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakala_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " trace.clp   sub_samA_trace4   "   ?id " nakala_uwAra)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_trace4
(declare (salience 5000))
(id-root ?id trace)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 map)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakala_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " trace.clp   obj_samA_trace4   "   ?id " nakala_uwAra)" crlf))
)
