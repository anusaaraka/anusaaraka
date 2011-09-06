

;Modified by Meena(30.8.11)
;Stir the mixture with a wooden spoon. 
;The house was surrounded by a tall, wooden fence. 
(defrule wooden0
(declare (salience 0))
(id-root ?id wooden)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakadI_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  wooden.clp  	wooden0   "  ?id "  lakadI_kA )" crlf))
)

;"wooden","adj","1.lakadI_kA"
;I have a wooden toy.
;



;Added by Meena(30.8.11)
;All that was before Roger Ailes, the media consultant credited with putting George Bush in the White House, got down to work improving the rather wooden image of Mr Giuliani. 
;I thought the lead actor gave rather a wooden performance.
(defrule wooden1
(declare (salience 5000))
(id-root ?id wooden)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 actor|speaker|image|style|dance|act|movement|song|music|character|dialogue|performance)
(or(viSeRya-viSeRaNa ?id1 ?id)(subject-subject_samAnAXikaraNa ?id1 ?id))
(id-root ?id1 ?wrd)
=>
(if(or(eq ?wrd image)(eq ?wrd style)) then
(assert (id-wsd_root_mng ?id BaxxA))
(retract ?mng)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  wooden.clp     wooden1   "  ?id "  BaxxA )" crlf))
else
(assert (id-wsd_root_mng ?id beDangA))
(retract ?mng)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  wooden.clp  	wooden1   "  ?id "  beDangA )" crlf))
))

;"wooden","adj","1.bejAna"
;Her singing wa wooden.
;


;Modified by Meena(2.9.11)
;Our college team took the wooden spoon in the inter-collegiate league this season. 
(defrule wooden2
(declare (salience 5000))
(id-root ?id wooden)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) spoon)
(id-word =(- ?id 1) the)
(id-root ?id1 win|take|get|avoid|finish|hold|show|regret)
;(kriyA-object ?id1 =(+ ?id 1)) 
;(id-root ?id2 game|competition|series|tournament|round|worldcup|match|innings|winner|sports|prize|award|trophy|reward|totalshow|win|defeat|suffer|position|rank|determination|sure)
;(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) =(- ?id 1) anwima_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wooden.clp  wooden2  "  ?id "  "(- ?id 1)" "=(+ ?id 1)"  anwima_sWAna    )" crlf))
)




;Added by Meena(30.8.11)
;She gave a wooden smile to the camera.
;Her voice sounded wooden and lifeless as she struggled to control her feelings. 
;Fonda himself once again suffered the attribution of the word wooden. 
(defrule wooden3
(declare (salience 5000))
(id-root ?id wooden)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 smile|voice|attribution)
(or(subject-subject_samAnAXikaraNa ?id1 ?id)(viSeRya-viSeRaNa ?id1 ?id)(viSeRya-of_saMbanXI ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bejAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wooden.clp  	wooden3  "  ?id "  bejAna )" crlf))
)




