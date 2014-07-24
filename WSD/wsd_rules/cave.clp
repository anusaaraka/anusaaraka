
(defrule cave0
(declare (salience 5000))
(id-root ?id cave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anxara_kI_ora_gira));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " cave.clp cave0 " ?id "  anxara_kI_ora_gira )" crlf)) 
)

;(defrule cave1
;(declare (salience 4900))
;(id-root ?id cave)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 in)
;(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id anxara_kI_ora_gira));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ;?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " cave.clp cave1 " ?id "  anxara_kI_ora_gira )" crlf)) 
;)

;(defrule cave2
;(declare (salience 4800))
;(id-root ?id cave)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 in)
;(kriyA-in_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id anxara_kI_ora_gira));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ;?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " cave.clp cave2 " ?id "  anxara_kI_ora_gira )" crlf)) 
;)

;(defrule cave3
;(declare (salience 4700))
;(id-root ?id cave)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 in)
;(kriyA-upasarga ?id ?id1)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anxara_kI_ora_gira))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cave.clp	cave3  "  ?id "  " ?id1 "  anxara_kI_ora_gira  )" crlf))
;)

(defrule cave4
;(declare (salience 4600));salience changed
(id-root ?id cave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guPA_Koxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cave.clp 	cave4   "  ?id "  guPA_Koxa )" crlf))
)

;@@@ Added by Preeti(17-4-14)
;Cave entrance in the side of a large rock in the sea. [yourdictionary.com]
;guPA samuxra meM eka badI cattAna ke waraPa meM xAKilA xewI hE.
(defrule cave5
(id-root ?id cave)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guPA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cave.clp 	cave5   "  ?id "  guPA )" crlf))
)

;@@@ Added by Preeti(17-4-14)
;The company has finally caved in to the demands of the unions. [Cambridge Learner’s Dictionary]
;kaMpanI ne anwawaH yUniyana kI mAzgoM ke Age  hAra_mAna lI hE.
(defrule cave6
(declare (salience 1000))
(id-root ?id cave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hAra_mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* " cave.clp cave6 " ?id " " ?id1 " hAra_mAna )" crlf)) 
)

;@@@ Added by Preeti(17-4-14)
;Parsar Problem
;The ceiling suddenly caved in on top of them. [Oxford Advanced Learner's Dictionary]
;BIwarI Cawa acAnaka se unake Upara girI.
(defrule cave7
(declare (salience 1050))
(id-root ?id cave)
?mng <-(meaning_to_be_decided ?id)
(id-word  =(+ ?id 1) in)
(id-cat_coarse ?id verb)
;(kriyA-upasarga  ?id ?id1)
(kriyA-subject  ?id ?id2)
(id-root ?id2 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  =(+ ?id 1) gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* " cave.clp cave7 " ?id " "(+ ?id 1) " gira )" crlf)) 
)

;default_sense && category=verb	guPA_KoxanA/kanxarA_banA	0
;"cave","V","1.guPA_KoxanA/kanxarA_banAnA"
;We like caving.
;
;
