;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-Feb-2014
;He wore a button saying ‘Life begins at 40!’ [oald]
;उसने एक बिल्ला पहना हुआ था जिसपर लिखा था 'जीवन ४० पर शुरु होता है'
(defrule button4
(declare (salience 5000))
(id-root ?id button)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-root ?kri wear)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id billA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  button.clp 	button4   "  ?id "  billA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-Feb-2014
;We arrived at 4 o'clock on the button.[oald]
;हम एकदम सही समय पर ४ बजे पहुँचे
(defrule button5
(declare (salience 5000))
(id-root ?id button)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?kri ?id)
(id-root ?kri arrive)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekaxama_sahI_samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  button.clp 	button5   "  ?id "  ekaxama_sahI_samaya )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-Feb-2014
;The dress buttons at the back.[oald]
;लिबास पीछे बटन से बंधता है . 
(defrule button6
(declare (salience 4500))
(id-root ?id button)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id batana_se_baMXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  button.clp 	button6  "  ?id "  batana_se_baMXa )" crlf))
)


(defrule button0
(declare (salience 5000))
(id-root ?id button)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id batana_banxa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " button.clp button0 " ?id "  batana_banxa_kara )" crlf)) 
)

(defrule button1
(declare (salience 4900))
(id-root ?id button)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 batana_banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " button.clp	button1  "  ?id "  " ?id1 "  batana_banxa_kara  )" crlf))
)

;*********************DEFAULT RULES***********************************

(defrule button2
(declare (salience 0));salience changed by Garima Singh
(id-root ?id button)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id batana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  button.clp 	button2   "  ?id "  batana )" crlf))
)

(defrule button3
(declare (salience 0));salience changed by Garima Singh
(id-root ?id button)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id batana_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  button.clp 	button3   "  ?id "  batana_lagA )" crlf))
)

;"button","VT","1.batana_lagAnA"
;He always forgets to button his shirt.
;

;************************EXAMPLES********************************

;To sew on a button.
;Shirt buttons.
;A row of gilt buttons.
;The play/stop/rewind button.
;Adam pressed a button and waited for the lift.
;Choose ‘printer’ from the menu and click with the right mouse button.
;The windows slide down at the touch of a button.
;Click on the back button to go back to the previous screen.
;He wore a button saying ‘Life begins at 40!’
;We arrived at 4 o'clock on the button.
;You're on the button there!
;She hurriedly buttoned her blouse.
;The dress buttons at the back.
