;@@@ Added by Preeti(19-12-13)
;A crowd had already[ collected] in front of the warehouse.[By mail]
;BIda goxAma ke sAmane pahale se hI iktTA_ho cukI WI.
(defrule collect2
(declare (salience 5050))
(id-root ?id collect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not(kriyA-object  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikatTA_ho));$$$ Corrected spelling 'iktTA_kara' to 'ikatTA_kara' by Roja(10-02-14)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  collect.clp 	collect2   "  ?id "  ikatTA_ho )" crlf))
)

(defrule collect0
(declare (salience 5000))
(id-root ?id collect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ikatTA_kara));$$$ Corrected spelling 'iktTA_kara' to 'ikatTA_kara' by Roja(10-02-14)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  collect.clp 	collect0   "  ?id "  ikatTA_kara )" crlf))
)

(defrule collect1
(declare (salience 4900))
(id-root ?id collect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotI_prArWanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  collect.clp 	collect1   "  ?id "  CotI_prArWanA )" crlf))
)

;"collect","N","1.CotI_prArWanA"
;Every Friday we sang the collect.
;
;LEVEL 
;
;
;               `collect' sUwra (nibanXa)
;               ---------
;
;`collect' ke viviXa prayoga--
;-----------------------  
;
;"collect","V","1.saMgrahIwa karanA"
;I collected all the required information from the agency.
;mEMne saBI AvaSyaka sUcanA ejeMsI se ekawriwa kara lI.
;
;--"2.ekawra honA"
;        ---- < saMgrahIwa honA < saMgrahIwa karanA
;A crowd collected where the accident occurred.
;xurGatanA ke sWAna para BIdZa ekawriwa ho gayI.
;
;--"3.caMxA ikatTA karanA"
;        ---- < saMgrahIwa karanA 
;We are collecting for cyclone victims.
;hama loga sAiklona se pRaBAviwa logoM ke liye caMxA ikaTTA kara rahe hEM.
;
;--"4.pAnA"
;        ---- < grahaNa karanA < saMgrahIwa karanA
;She collected the first prize for extempore.
;une BARaNa-prawiyogiwA meM praWama puraskAra prApwa kiyA.
;
;--"5.le jAnA{ekawriwa_kara_ke}"
;        ---- < saMgrahIwa karane kA eka pariNAma < saMgrahIwa karanA 
;The municipal worker came && collected the garbage.
;nigama kA karmacArI Akara kUdZA le gayA.
;
;--"6.svayaM_para_kAbU_lAnA"
;        ---- < mana ke viviXa vqwwiyoM ko saMgrahIwa karanA < saMgrahIwa karanA
;Somehow I collected myself for work after his departure.
;usake jAne ke bAxa kAma ke liye mEMne kisI waraha se apane para kAbU kiyA
;--------------------------------------------------------------
;
;sUwra : [kAbU]_pAnA[<saMgrahIwa_karanA`]
;-----------------------------
;
;    hinxI meM `collect' ke viviXa arWa samaJe jAwe hEM . isakA mUlArWa
;sUwravAlA 'saMgrahIwa karanA' mAnA jA sakawA hE . isIkA arWa-viswAra anya rUpoM meM huA
;lagawA hE . anya arWoM meM saMgrahIwa karane kA BAva kisI na kisI rUpa meM xeKA jA
;sakawA hE . tippaNiyoM se spaRta hE punarapi viSeRa vivaraNa yahAz xeKawe hEM . 
;
;-- caMxA ikatTA karanA . isa kriyA meM saBI se kisI kArya viSeRArWa Xana iwyAxi 
;kA saMgrahaNa kiyA jAwA hE . 
;
;-- pAne meM saMgrahIwa karane kA BAva jFAwa howA hE . samyak grahaNa hI saMgraha kahalAwA 
;hE, isameM kinhIM ke xvArA kinhIM se kuCa pAne kA BAva spaRta hE .  
;
;-- le jAnA . saMgrahIwa karane ke bAxa honevAlI eka kriyA . yaha kriyA saMgrahIwa karane
;ke bAxa kI jAne vAlI iwanI Ama kriyA hE ki isako BI saMgrahIwa karane kI kriyA 
;meM hI anwarBUwa mAnA jAwA hE . 
;
;-- svayaM para kAbU lAnA . svayaM para kAbU lAne se wAwparya iXara-uXara jAwI huI 
;vqwwiyoM ko saMgrahIwa karanA mAnA jAwA hE . saMgrahIwa karane meM hI isa kriyA 
;kI pariNawi ke kAraNa isa arWa meM isakA prayoga xeKA jA sakawA hE . 
;
;
