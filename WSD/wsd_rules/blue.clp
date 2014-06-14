
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 26-02-2014
;You can argue till you're blue in the face, but you won't change my mind.[oald]
;आप बहस कर सकते हैं जबतक आप थक नहीं जाते , परन्तु आप मेरा मन नहीं बदल पायेगें . 
(defrule blue2
(declare (salience 3000))
(id-root ?id blue)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI  ?id ?id1)
(id-word ?id1 face)
(id-word =(+ ?id 1) in)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 (+ ?id 1)Waka_nahIM_jAwe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " blue.clp 	blue2  "  ?id "  " ?id1 " "(+ ?id 1)" Waka_nahIM_jAwe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 26-02-2014
;He'd been feeling blue all week.[oald]
;वह पूरे सप्ताह उदास महसूस कर रहा था 
(defrule blue3
(declare (salience 3000))
(id-root ?id blue)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) feel)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uxAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  blue.clp 	blue3   "  ?id "  uxAsa )" crlf))
)
;*************************DEFAULT RULES*********************

(defrule blue0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id blue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blue.clp 	blue0   "  ?id "  nIlA )" crlf))
)

(defrule blue1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id blue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIlA_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blue.clp 	blue1   "  ?id "  nIlA_raMga )" crlf))
)

;default_sense && category=noun	nIlA_raMga	0
;"blue","N","1.nIlA_raMga"
;The sky is blue in colour.
;--"2.upAXi"
;He got blue for football.
;--"3.uxAsa_saMgIwa"
;Blue music is still very popular.
;
;
