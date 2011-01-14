
(defrule enjoy0
(declare (salience 5000))
(id-root ?id enjoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ananxa_uTA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enjoy.clp 	enjoy0   "  ?id "  Ananxa_uTA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  enjoy.clp     enjoy0   "  ?id " kA )" crlf)
)
)

;The industry enjoyed an abnormal profit this year.
;
;LEVEL 
;Headword : enjoy
;
;Examples --
;
;"enjoy","V","1.AnaMxa lenA"
;She enjoyed the evening at the beach.
;usane samuxra ke kinAre saMXyA kA AnaMxa liyA.
;"2.rasa lenA"-rasa lene meM BI AxamI ko AnaMxa kI anuBUwi howI hE,yAni AnaMxa lewA hE-AnaMxa lenA
;Did you enjoy the book? 
;kyA wumhe kiwAba paDZane meM rasa AyA
;"3.suKa lenA"-suKa kI prApwi meM BI AxamI ko AnaMxa milawA hE-AnaMxa lenA
;We have enjoyed ourselves very much in your company.
;hama logoM ne Apake sAniXya kA bahuwa suKa liyA
;She is enoying her good health after a prolong sickness.
;eka lambI bImArI ke paScAwa,vaha acCe svAsWya kA suKa uTA rahI hE.
;"4.majA lenA"-AnaMxa lenA
;They enjoyed the dinner very much. 
;unhone rAwri ke Bojana kA bahuwa majA liyA.
;"5.viSvAsapAwra hone kA Ananxa lenA"-kisI kA viSvAsapAwra banane meM kuCa pAne kA Ananxa hE -AnaMxa milanA-AnaMxa lenA
;She enjoys her boss's confidence.
;vaha apane bOsa kI viSvAsapAwra hone kA Ananxa uTA rahI hE
;
;nota:-- uparyukwa saBI vAkyoM meM 'enjoy'Sabxa kA arWa 'AnaMxa lene' se BalI-BAzwi nikala rahA hE awaH isakA sUwra nimna prakAra xe sakawe hEM
;
;sUwra : AnaMxa_lenA 
