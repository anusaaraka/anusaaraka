
(defrule trip0
(declare (salience 5000))
(id-root ?id trip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 galawI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trip.clp	trip0  "  ?id "  " ?id1 "  galawI_kara  )" crlf))
)

(defrule trip1
(declare (salience 4900))
(id-root ?id trip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 galawI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trip.clp	trip1  "  ?id "  " ?id1 "  galawI_kara  )" crlf))
)

(defrule trip2
(declare (salience 4800))
(id-root ?id trip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 galawI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trip.clp	trip2  "  ?id "  " ?id1 "  galawI_kara  )" crlf))
)

(defrule trip3
(declare (salience 4700))
(id-root ?id trip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 galawI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trip.clp	trip3  "  ?id "  " ?id1 "  galawI_kara  )" crlf))
)

(defrule trip4
(declare (salience 4600))
(id-root ?id trip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ulaJa_kara_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trip.clp 	trip4   "  ?id "  ulaJa_kara_gira )" crlf))
)

(defrule trip5
(declare (salience 4500))
(id-root ?id trip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trip.clp 	trip5   "  ?id "  yAwrA )" crlf))
)

;"trip","N","1.yAwrA"
;We made a trip to Badrinath.
;--"2.ladaKadAhata"
;The drug gave him a trip.
;--"3.girAvata"
;
;LEVEL 
;Headword : trip
;
;Examples --
;"trip","V","1.PuxakanA/uCalanA
;She came tripping along the river bank.
;vaha naxI ke wata ke sAWa-sAWa PuxakawI huI AI.
;
;"2.ladZaKadZA kara giranA"-aXikawara jaba manuRya jyAxA uCalawA hE,wo usake ladZaKadZA kara 
;               girane ke avasara aXika ho jAwe hEM-uCalanA
;The boy tripped over a brick.
;ladZakA Izta ke Upara ladZaKadZA kara gira gayA
;
;"3.purje kA Cataka jAnA/ruka jAnA"-kisI BI kala purje kA vAswava meM eka waraha se
;giranA hI usakI kArya praNAlI ko Tappa kara xewA hE-CatakanA yA uCala kara giranA-uCalanA
;
;One of the units of the power station has tripped.
;vixxayuwa gqha kI ikAIyoM meM se eka ruka gayI hE.
;
;"4.mAxaka xravya lekara kalpanAjagawa meM rahanA" -evaM ladZaKadZAnA-uCalanA
;She was tripped out after taking drugs.
;naSIle paxArWa lene ke bAxa vaha kalpanA jagawa meM WI.
;
;"trip","N",1.yAwrA/BramaNa 
;She is going on a official trip.
;vaha eka sarakArI yAwrA para jA rahI hE.
;
;                                                          
;    nota:--yaxi'trip'Sabxa ke saBI vAkyoM ke arWoM ko XyAna se xeKeM wo saBI arWo 
;         ko xo nABikIya arWa se jodZa kara sUwra banAyA jA sakawA hE
;
;  sUwra : yAwrA[<uCalanA]
