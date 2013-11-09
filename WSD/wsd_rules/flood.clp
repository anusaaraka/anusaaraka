
(defrule flood0
(declare (salience 5000))
(id-root ?id flood)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id flooding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bADZa_AnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flood.clp  	flood0   "  ?id "  bADZa_AnA )" crlf))
)

;"flooding","N","1.bADZa_AnA"
;Since no proper precautions were taken in advance the flooding of the area could not be checked.
;
;
(defrule flood1
(declare (salience 4900))
(id-root ?id flood)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bADZa_se_praBAviwa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " flood.clp flood1 " ?id "  bADZa_se_praBAviwa )" crlf)) 
)

(defrule flood2
(declare (salience 4800))
(id-root ?id flood)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bADZa_se_praBAviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flood.clp	flood2  "  ?id "  " ?id1 "  bADZa_se_praBAviwa  )" crlf))
)

(defrule flood3
(declare (salience 4700))
(id-root ?id flood)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bADZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flood.clp 	flood3   "  ?id "  bADZa )" crlf))
)

(defrule flood4
(declare (salience 4600))
(id-root ?id flood)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bADZa_se_praBAviwa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " flood.clp flood4 " ?id "  bADZa_se_praBAviwa )" crlf)) 
)

(defrule flood5
(declare (salience 4500))
(id-root ?id flood)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bADZa_se_praBAviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flood.clp	flood5  "  ?id "  " ?id1 "  bADZa_se_praBAviwa  )" crlf))
)

(defrule flood6
(declare (salience 4400))
(id-root ?id flood)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BaramAra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flood.clp 	flood6   "  ?id "  BaramAra_ho )" crlf))
)

;default_sense && category=noun	bADZa	0
;"flood","N","1.bADZa"
;The rivers are in spate due to flood.
;
;LEVEL 
;
;
;Headword : flood
;
;Examples --
;
;"flood","V","1.pAnI Bara jAnA"
;All low lying areas of this city get flooded during rainy season due to inadequa
;te drainage.
;isa nagara ke saBI nicale hissoM meM varRA ke xinoM me paryApwa nAliyAz na hone ke kAraNa pAnI Bara jAwA hE.<--bADZa AnA 
;
;--"2.bADZa AnA"
;The river is flooded due to heavy rains.
;aXika varRA ke kAraNa naxI meM bADZa AgayI.<--bADZa AnA
;
;--"3.bahuwAyawa se"
;Many companies flood the market with their goods during festival season to incre
;ase sales.                                                 
;bahuwa sI kampaniyAz wyohAra ke xOrAna bikrI baDZAne ke liye bAjZAra meM apane sAmAnoM kI bahuwAyawa kara xewI hEM.<--sAmAnoM kI bahuwAyawa honA <--sAmAnoM kI bADZa<--bADZa AnA                              
;
;--"4.Bara jAnA"                         
;This room is always flooded with light as it has large windows.
;yaha kamarA saxEva roSanI se BarA rahawA hE kyoM ki isameM badZI KidZakiyAz hEM.<--roSanI kI bADZa<--bADZa AnA
;
;I was flooded with relief when the work was completed.
;jaba kArya pUrNa ho gayA wo muJe cEna kI sAzsa milI.<--cEna kI sAzsa<--cEna kI bADZa<--bADZa AnA
;
;The office was flooded with applications for the sole available job.
;kAryAlaya Avexana pawroM se Bara gayA ekamAwra upalabXa sWAna ke liye.<--Avexana pawroM kI bADZa<--bADZa AnA
;
;--"5.Bara kara bahanA"
;Use the choke to start the car when the carborator is flooded.
;kAra stArta karane ke liye coka kA prayoga karo jaba kAraboretara Bara jAe.<--bADZa A jAe<--bADZa AnA
;
;--"flood","N","1.bADZa" 
;The heavy rain has caused floods in many parts of the city.
;BArI varRA ke kAraNa Sahara ke bahuwa se BAgoM meM bADZa A gayI<--bADZa AnA
;
;He uses a flood of abuses,whenever he sees a child.
;jaba kaBI vaha kisI bacce ko xeKawA hE gAliyoM kI varRA karawA hE<--gAliyoM kI bADZa<--bADZa kA AnA
;
;nota:-- yaxi hama Upara liKe saBI vAkyoM kA avalokana karawe hEM wo yaha niRkarRa nikAla sakawe
;      hEM ki saMjFA Ora kriyA ke samaswa vAkyoM meM 'flood' kA arWa eka hI Sabxa 
;       bADZa AnA se nikAlA jA sakawA hE
;          
;sUwra : bADZa` 
;
