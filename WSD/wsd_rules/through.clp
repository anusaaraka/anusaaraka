;;Added by Meena(1999999999.10.09)
;Fanned by a strong wind, the fire spread rapidly through the city.
(defrule through0
(declare (salience 5500))
(id-root ?id through)
?mng <-(meaning_to_be_decided ?id)
(kriyA-through_saMbanXI  ?id1 ?id2)
(id-root ?id2 city|jungle|forest) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  through.clp   through0   "  ?id "  meM )" crlf))
)



;Added by Meena(13.10.09)
;It struggled to force its body through that little hole . 
(defrule through1
(declare (salience 5000))
(id-root ?id through)
?mng <-(meaning_to_be_decided ?id)
(kriyA-through_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  through.clp   through1   "  ?id "  meM_se )" crlf))
)


(defrule through2
(declare (salience 5000))
(id-root ?id through)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_ora_se_xUsarI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  through.clp 	through2   "  ?id "  eka_ora_se_xUsarI_ora )" crlf))
)

;"through","Adv","1.eka_ora_se_xUsarI_ora"
;Put the chemical in the filter && let it pass through.
;--"2.SurU_se_anwa_waka"
;After the day's work the labourer slept right through.
;--"3.prawibanXa_ko_wodawe_hue"
;There was red signal but the car drove straight through'
;--"4.anwa_waka"
;We drove straight through from Chicago to Marshall.
;
(defrule through3
(declare (salience 4900))
(id-root ?id through)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_mAXyama_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  through.clp 	through3   "  ?id "  ke_mAXyama_se )" crlf))
)
;modified by Sukhada. Ex. We wish to invite participants from all across the world to participate through this site
;"through","Prep","1.meM_se"
;The thief entered the house through the window.
;--"2.se_waka"
;You stay in Birmingham Monday through Friday.
;--"3.ke_xvArA"
;You can get good results through hard work.
;--"4.Suru_se_anwa_waka"
;The children sat through the long concert.
;--"5.ke_kAraNa"
;The accident ocurred through his careless driving.
;
