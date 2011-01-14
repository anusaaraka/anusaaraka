
(defrule forge0
(declare (salience 5000))
(id-root ?id forge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BattI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forge.clp 	forge0   "  ?id "  BattI )" crlf))
)

(defrule forge1
(declare (salience 4900))
(id-root ?id forge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wapAkara_gaDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forge.clp 	forge1   "  ?id "  wapAkara_gaDZa )" crlf))
)

;"forge","VT","1.wapAkara gaDZanA/banAnA"
;The ironsmith forges the iron to give it a shape.
;--"2.jAlasAjZI_karanA
;He forged as a school teacher.
;
;LEVEL 
;Headword : forge
;
;Examples --
;
;"forge","N","1.BattI"
;The ironsmith heated the iron in the forge.
;lohAra ne lohe ko BattI meM wapAyA.
;
;"forge","VT","1.wapAkara_gaDZanA/banAnA"
;The ironsmith forges the iron to give it a shape.
;lohAra lohe ko AkAra xene ke liye wapAkara gaDZawA hE.
;There's is a friendship forged in their period of adversity.
;unakI xoswI unake kaTina samaya meM baDZI hE{wapa kara banI hE}.
;--"2.Age_baDZanA"
;He forged steadily onwards to the top position in his class.
;vaha apanI kakRA meM barAbara Age baDawA gayA, jaba waka vaha praWaM sWAna waka nahIM pahuzcA.
;--"3.jAlasAjZI_karanA"
;He forged his Principal's signature.
;usane apane praXAnAXyApaka ke jAlI haswAkRara kiye.
;
;"forgery","N","1.jAlasAjZI"
;He was arrested for a case of forgery.
;vaha jAlasAjZI ke eka mAmale meM pakadZA gayA WA.
;
;"forger","N","1.jAlasAja"
;He is suspected to be a forger.
;usake jAlasAjZa hone kA Saka hE.
;
;Upara xiye uxAharaNoM meM paraspara arWa kuCa asambanXa se lagawe hEM. EsA lagawA
;hE ki kriyA Sabxa 'forge' xo alaga alaga saMjFAoM se banA hE. eka 'forge'-
;'BattI' Ora xUsarA 'forgery'-'jAlasAjZI'. kinwu kriyA meM hI 'Age-baDZane'
;vAlA eka anya arWa BI hE. isa arWa ko 'wapAne' se jodZA jA sakawA hE. koI
;BI cIjZa jaba Aga meM jalawI hE wo XIme-XIme wapa kara wEyAra howI hE. XIme-XIme
;pariSrama ke sAWa Age baDZane meM BI vahI BAva hE. kriyA ke pahale arWa meM
;xUsarA vAkya SAyaxa 'wapane' Ora 'baDZane' ko jodZane meM sahAyawA karawA hE.
;
;awaH 'forge' meM xo alaga alaga saMjFA SabxoM ke kriyArUpa eka ho gae hEM. isaliye 'jAlasAjI_karanA' eka anya asambanXa arWa hE.   
;
;isakA anwarnihiwa sUwra hogA -
;
;anwarnihiwa sUwra ;
;
;BattI - BattI meM wapAnA yA wapanA -wapane se rUpa Axi baxalanA - Age_baDanA
;
;sUwra : gaDZanA[<BattI]/jAlasAjZI_karanA  
