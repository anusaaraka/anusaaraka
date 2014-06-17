;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)19-Feb-2014
;modified the meaning from 'AvaSyakawA_se_aXika_Bara_jA' to 'Calaka_raha '
;jug brimmed over with water.
;jaga AvaSyakawA se aXika pAnI se Bara gayA
(defrule brim0
(declare (salience 5000))
(id-root ?id brim)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Calaka_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brim.clp	brim0  "  ?id "  " ?id1 "  Calaka_raha  )" crlf))
)


;**************************DEFAULT RULES*********************************

(defrule brim1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id brim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kagAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brim.clp 	brim1   "  ?id "  kagAra )" crlf))
)

;"brim","N","1.kagAra"
;The cup was filled till the brim.
;


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)19-Feb-2014
;Tears brimmed in her eyes.[oald]
;उसकी आँखो में आँसू भर गये
(defrule brim2
(declare (salience 0))
(id-root ?id brim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brim.clp 	brim2   "  ?id "  Bara_jA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)19-Feb-2014
;The team were brimming with confidence before the game.[oald]
;टीम खेल से पहले विश्वास से भरी हुयी थी 
(defrule brim3
(declare (salience 0))
(id-word ?id brimming)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brim.clp 	brim3   "  ?id "  BarI_ho )" crlf))
)

;**********************EXAMPLES***************************

;Tears brimmed in her eyes.
;Her eyes brimmed with tears.
;The team were brimming with confidence before the game.
;Her heart was brimming over with happiness.
