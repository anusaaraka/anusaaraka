;@@@ Added by jagriti(12.2.2014)
;Your idea was a stroke of genius.[oald]
; आपके विचार मौलिक थे .
(defrule stroke0
(declare (salience 5000))
(id-root ?id stroke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1) 
(id-root ?id1 genius)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mOlika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stroke.clp stroke0  "  ?id "  " ?id1 "  mOlika  )" crlf))
)
;@@@ Added by jagriti(12.2.2014)
;It was a stroke of luck that I found you here.[oald]
;यह  सौभाग्य था कि मैंने आपको यहाँ  पाया. 
(defrule stroke1
(declare (salience 4900))
(id-root ?id stroke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1) 
(id-root ?id1 luck)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sOBAgya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " stroke.clp stroke1  "  ?id "  " ?id1 "  sOBAgya  )" crlf))
)

;...default rule....
(defrule stroke5
(declare (salience 100))
(id-root ?id stroke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stroke.clp 	stroke5   "  ?id "  mAra )" crlf))
)

;"stroke","N","1.mAra"
;Strokes played by Martina mings are exciting.
;--"2.prahAra"
;His punishment was six strokes of the cane.
;--"3.GasIta"
;The student's name removed from the register with the stroke of a pen.
;--"4.tana-tana"
;At the first stroke it will be 9'o clock.
;--"5.wErawe_aWavA_nAzva_Kewe_samaya_kI_harakawa"
;For me free style is best stroke in swimming.
;--"6.halkA_sparSa"
;He gave his pet dog a stroke.
;--"7.kAmayAba_GatanA"
;It is a sheer stroke of luck that he arrived just when I needed him.
;--"8.xOrA"
;The stroke made him deaf.
;
(defrule stroke6
(declare (salience 100))
(id-root ?id stroke)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stroke.clp 	stroke6   "  ?id "  mAra )" crlf))
)

;"stroke","V","1.mAranA"
;Students who create fuss in class are stroked by teacher.
;--"2.sahalAnA"
;The master stroked his pet dog.  
;
