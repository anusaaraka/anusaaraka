
(defrule form0
(declare (salience 5000))
(id-root ?id form)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  form.clp 	form0   "  ?id "  rUpa )" crlf))
)

(defrule form1
(declare (salience 4900))
(id-root ?id form)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  form.clp 	form1   "  ?id "  banA )" crlf))
)

;"form","V","1.banAnA"
;He formed a union in his organisation.
;The Prime Minister formed his cabinet within a week of his election.
;
;LEVEL 
;
;
; Headword : form
;
;Examples --
;
;`form" Sabxa ke viviXa prayoga--
; 
;"form","N","1.Akqwi"
;A dark form could be seen in the distance.
;--"2.Sabxa_rUpa"
;          ---- < Sabxa kI viviXa AkqwiyAz < Akqwi
;The past form of `write' is `wrote'.
;--"3.prArUpa/CapA_huA_PArma"
;          ---- < Xvani kA Akqwi-rUpa < Akqwi
;I got an application form.
;--"4.avasWA"
;          ---- < kisI kA BI Akqwi-viSeRa < Akqwi
;Water in the form of solid is ice.
;--"5.kAryaviXi"
;          ---- < kiye jAnevAle kArya kA (Akqwi) rUpa < Akqwi
;The assignments should be done in a proper form.
;--"6.prakAra
;          ---- < viBinna Akqwi-rUpoM meM se eka < Akqwi
;The modern form of the painting is often obscure.
;   
;"form","V","1.banAnA"
;          ---- < kisI ko Akqwi-rUpa xenA < Akqwi
;He formed a union in his organisation.
;The Prime Minister formed his cabinet within a week of his election.
;----------------------------------------------------------------------
;
;sUwra : prArUpa`[<Akqwi`]
;-------------
;
;  `form' Sabxa ke Upara xiye gaye viviXa prayoga vAswava meM Akqwi Sabxa ke 
;avasWA-viSeRa hEM . una avasWA-viSeRoM ke lie alaga-alaga Sabxa loka-prayoga
;meM hEM . veM hI Upara ke viBinna Sabxa hEM . Akqwi Sabxa se ye saBI samaJe jA 
;sakawe hEM . ye saBI Sabxa Akqwi Sabxa ke avasWA-viSeRa kEse hEM, inakI vyAKyA  
;xeKane se yaha spaRta ho jAyegA . 
;
;-- SabxarUpa vAswava meM kaI viBinna SabxoM kI AkqwiyoM ke mela se banA huA hE . 
;yA eka Sabxa kI viBinna AkqwiyAz hI SabxarUpa kahalAwI hEM . 
;
;-- prArUpa/CapA huA PArma . XvaniyoM(SabxoM Axi) ke prawyakRa AkqwiyoM(lipi) kA  
;Cape hue rUpa meM PArma ko xeKA jA sakawA hE . yaha XyAwavya hE ki prArUpa Sabxa meM  
;`rUpa' Akqwi kA hI vAcaka hE . 
;
;-- avasWA . prakAra . kisI BI Akqwi-viSeRa kI sWiwi avasWA kahalAwI hE . 
;viBinna Akqwi-viSeRoM meM se ciwa eka viSiRta Akqwi kI avasWA ko prakAra 
;kahawe hEM . 
;
;-- kArya-viXi . kiye jAnevAle kArya kA Akqwi-rUpa hI kArya-viXi hE . 
;
;-- banAnA . kisI ko Akqwi-rUpa xenA usakA banAnA kahalAwA hE . 
;
; 
;
