
(defrule figure0
(declare (salience 5000))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id figured )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id alaMkqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  figure.clp  	figure0   "  ?id "  alaMkqwa )" crlf))
)

;"figured","Adj","1.alaMkqwa"
;
;
;I can't figure out his rudeness.
;mEM usakI beruKZI ko samaJa nahIM pA rahA hUz
(defrule figure1
(declare (salience 4900))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " figure.clp	figure1  "  ?id "  " ?id1 "  samaJa  )" crlf))
)

(defrule figure2
(declare (salience 4800))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-on_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumAna_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " figure.clp figure2 " ?id "  anumAna_kara )" crlf)) 
)

(defrule figure3
(declare (salience 4800))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anumAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " figure.clp	figure3  "  ?id "  " ?id1 "  anumAna_kara  )" crlf))
)

(defrule figure4
(declare (salience 4600))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samAXAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " figure.clp	figure4  "  ?id "  " ?id1 "  samAXAna_kara  )" crlf))
)

;I finally figured out why this program is so slow.
;Added by Sheetal(02-08-10)
(defrule figure5
(declare (salience 4500))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-subject ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawA_lagA))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " figure.clp	figure5  "  ?id "  " ?id1 "  pawA_lagA  )" crlf))
)

(defrule figure6
(declare (salience 4400))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAXAna_ho));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " figure.clp figure6 " ?id "  samAXAna_ho )" crlf)) 
)

(defrule figure7
(declare (salience 4300))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samAXAna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " figure.clp	figure7  "  ?id "  " ?id1 "  samAXAna_ho  )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 24-10-2013
;As seen from the figure, only the two faces 1 and 2 will contribute to the flux; electric field lines are parallel to
; the other [faces] and they, therefore, do not contribute to the total flux.             ;physics
;जैसा चित्र से दृष्टिगोचर होता है , केवल दो फलक1 तथा 2 ही फ्लक्स में योगदान देङ्गे; विद्युत क्षेत्र रेखाएँ अन्य फलकों के समान्तर हैं और वे इसीलिए कुल फ्लक्स में योगदान नहीं देतीं .
;The central figure in the painting is the artist's daughter.           ;oald
(defrule figure8
(declare (salience 4500))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-from_saMbanXI  ?id1 ?id)(viSeRya-in_saMbanXI  ?id ?id1))     ;condition added by Pramila on 22-11-2013 
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  figure.clp 	figure8   "  ?id "  ciwra )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 24-10-2013
;His name figures in the list of suspects.              [old clp] 
;उसका नाम संदिग्ध लोगों की सूची में आता है.
(defrule figure9
(declare (salience 4500))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  figure.clp 	figure9   "  ?id "  A )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 22-11-2013
;Figures for April show a slight improvement on previous months.  ;oald
;By 2009, this figure had risen to 14 million.             ;oald
(defrule figure10
(declare (salience 4500))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-for_saMbanXI  ?id ?id1)(and(kriyA-subject  ?id1 ?id)(id-root ?id1 rise)))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AzkadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  figure.clp 	figure10   "  ?id "  AzkadZA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 22-11-2013
;Are you any good at figures?               ;oald
(defrule figure11
(declare (salience 4500))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMka_gaNiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  figure.clp 	figure11   "  ?id "  aMka_gaNiwa )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 22-11-2013
;A political figure.      ;oald
;A figure of authority.     ;oald
;One of the most popular figures in athletics.   ;oald
(defrule figure12
(declare (salience 5000))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id ?id1)(viSeRya-of_saMbanXI  ?id ?id1))
(id-root ?id1 political|authority|popular)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  figure.clp 	figure12   "  ?id "  vyakwi )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 22-11-2013
;She's always had a good figure.                ;oald 
(defrule figure13
(declare (salience 4500))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(kriyA-subject  ?id1 ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dOla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  figure.clp 	figure13   "  ?id "  dOla )" crlf))
)
;-------------------------------default rules--------------------------------
;@@@ Added by Pramila(Banasthali University) on 22-11-2013
(defrule figure14
(declare (salience 4000))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  figure.clp 	figure14   "  ?id "  aMka )" crlf))
)

(defrule figure15
(declare (salience 4000))
(id-root ?id figure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalpanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  figure.clp 	figure15   "  ?id "  kalpanA_kara )" crlf))
)

;default_sense && category=verb	xiKAI_xe	0
;"figure","V","1.xiKAI_xenA"
;His name figures in the list of suspects.
;--"2.kalpanA_karanA"
;By the way they were talking he figured it out that they will not come.
;
;
